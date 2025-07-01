use rustler::{NifStruct, NifTaggedEnum};

use continuous_density_estimation::{
    DiffusionKDE,
    ClassicalKDE,
    ContinuousDensityEstimator1D,
    ContinuousDensityResult1D
};

use kernel_density_estimation::bandwidth;
use kernel_density_estimation::kernel;

use ndarray::Array1;

use crate::datatypes::{ExFloat64Array1, ExFloat32Array1, ExOption};

#[derive(NifStruct)]
#[module = "SciEx.Float64.ContinuousDensityResult1D"]
pub struct ExFloat64ContinuousDensityResult1D {
    pub grid: ExFloat64Array1,
    pub density: ExFloat64Array1,
    pub bandwidth: Option<f64>
}

#[derive(NifStruct)]
#[module = "SciEx.Float32.ContinuousDensityResult1D"]
pub struct ExFloat32ContinuousDensityResult1D {
    pub grid: ExFloat32Array1,
    pub density: ExFloat32Array1,
    pub bandwidth: Option<f32>
}

impl ExFloat64ContinuousDensityResult1D {
    pub fn new(continuous_density_result: ContinuousDensityResult1D<f64>) -> Self {
        Self {
            grid: ExFloat64Array1::new(Array1::from_vec(continuous_density_result.grid)),
            density: ExFloat64Array1::new(Array1::from_vec(continuous_density_result.density)),
            bandwidth: continuous_density_result.bandwidth
        }
    }
}

impl ExFloat32ContinuousDensityResult1D {
    pub fn new(continuous_density_result: ContinuousDensityResult1D<f32>) -> Self {
        Self {
            grid: ExFloat32Array1::new(Array1::from_vec(continuous_density_result.grid)),
            density: ExFloat32Array1::new(Array1::from_vec(continuous_density_result.density)),
            bandwidth: continuous_density_result.bandwidth
        }
    }
}

#[derive(NifTaggedEnum)]
pub enum ExBandwidthStrategy {
    Scott,
    Silverman
}

#[derive(NifTaggedEnum)]
pub enum ExContinuousDensityEstimator1D {
    BotevDiffusion,
    Normal(ExBandwidthStrategy),
    Epanechenikov(ExBandwidthStrategy),
    Cosine(ExBandwidthStrategy)
}

// Avoid code repetition while dealing with the fact that
// Classical KDEs and diffusion-based KDEs have been implemented
// as different types
// TODO: maybe change something upstream so that they are the same type?
macro_rules! kde_result_from_estimator {
    ($ex_array:expr, $grid_size:expr, $estimator:expr, $limits:expr) => {
        match $estimator {
            ExContinuousDensityEstimator1D::BotevDiffusion => {
                DiffusionKDE::new($grid_size, $limits).eval(&$ex_array.resource.0.to_vec())
            },

            ExContinuousDensityEstimator1D::Cosine(ExBandwidthStrategy::Scott) => {
                ClassicalKDE::new(
                    bandwidth::scott::Scott,
                    kernel::cosine::Cosine,
                    $grid_size,
                    $limits
                )
                .eval(&$ex_array.resource.0.to_vec())
            },

            ExContinuousDensityEstimator1D::Cosine(ExBandwidthStrategy::Silverman) => {
                ClassicalKDE::new(
                    bandwidth::silverman::Silverman,
                    kernel::cosine::Cosine,
                    $grid_size,
                    $limits
                )
                .eval(&$ex_array.resource.0.to_vec())
            },

            ExContinuousDensityEstimator1D::Epanechenikov(ExBandwidthStrategy::Scott) => {
                ClassicalKDE::new(
                    bandwidth::scott::Scott,
                    kernel::epanechnikov::Epanechnikov,
                    $grid_size,
                    $limits
                )
                .eval(&$ex_array.resource.0.to_vec())
            },

            ExContinuousDensityEstimator1D::Epanechenikov(ExBandwidthStrategy::Silverman) => {
                ClassicalKDE::new(
                    bandwidth::silverman::Silverman,
                    kernel::epanechnikov::Epanechnikov,
                    $grid_size,
                    $limits
                )
                .eval(&$ex_array.resource.0.to_vec())
            },

            ExContinuousDensityEstimator1D::Normal(ExBandwidthStrategy::Scott) => {
                ClassicalKDE::new(
                    bandwidth::scott::Scott,
                    kernel::normal::Normal,
                    $grid_size,
                    $limits
                )
                .eval(&$ex_array.resource.0.to_vec())
            },

            ExContinuousDensityEstimator1D::Normal(ExBandwidthStrategy::Silverman) => {
                ClassicalKDE::new(
                    bandwidth::silverman::Silverman,
                    kernel::normal::Normal,
                    $grid_size,
                    $limits
                )
                .eval(&$ex_array.resource.0.to_vec())
            },
        }
    }
}

#[derive(NifStruct)]
#[module = "SciEx.Statistics.ContinuousDensityLimits1D"]
struct ExContinuousDensityLimits<T> {
    lower: ExOption<T>,
    upper: ExOption<T>
}

impl<T> ExContinuousDensityLimits<T> {
    fn to_tuple(self) -> (Option<T>, Option<T>) {
        (self.lower.to_option(), self.upper.to_option())
    }
}

#[rustler::nif]
pub fn kde_float64_eval(
            ex_array: ExFloat64Array1,
            grid_size: usize,
            ex_estimator: ExContinuousDensityEstimator1D,
            ex_limits: ExContinuousDensityLimits<f64>,
        ) -> ExFloat64ContinuousDensityResult1D {
    
    let limits = ex_limits.to_tuple(); 
    let kde_result = kde_result_from_estimator!(ex_array, grid_size, ex_estimator, limits);

    ExFloat64ContinuousDensityResult1D::new(kde_result)
}

#[rustler::nif]
pub fn kde_float32_eval(
            ex_array: ExFloat32Array1,
            grid_size: usize,
            ex_estimator: ExContinuousDensityEstimator1D,
            limits: (Option<f32>, Option<f32>)
        ) -> ExFloat32ContinuousDensityResult1D {
    
    let kde_result = kde_result_from_estimator!(ex_array, grid_size, ex_estimator, limits);

    ExFloat32ContinuousDensityResult1D::new(kde_result)
}