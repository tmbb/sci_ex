use std::option::Option;

use rustler::{Resource, ResourceArc, NifStruct, NifTaggedEnum};
use ndarray::{Array1, Array2, Array3, Array4, Array5, Array6, ArrayBase, RawData, Dimension};
use ndrustfft::Complex;

#[derive(NifTaggedEnum)]
pub enum ParallelizationStrategy {
    NeverParallel,
    AlwaysParallel,
    SizeCutoff(usize)
}

#[derive(NifTaggedEnum)]
pub enum ExOption<T> {
    Some(T),
    None
}

impl<T> ExOption<T> {
    pub fn to_option(self) -> Option<T> {
        match self  {
            ExOption::Some(t) => Option::Some(t),
            ExOption::None => Option::None
        }
    }
}

impl ParallelizationStrategy {
    pub fn should_be_parallel<S: RawData, D: Dimension>(self, array: &ArrayBase<S, D>) -> bool {
        match self {
            ParallelizationStrategy::NeverParallel => false,
            ParallelizationStrategy::AlwaysParallel => true,
            ParallelizationStrategy::SizeCutoff(size) => {
                let total_array_size: usize = array.shape().iter().product();
                total_array_size >= size
            }
        }
    }
}

macro_rules! elixirize {
    ($rust_ty:ident, $n_dims:expr, $element_ty:ty, $ex_module:expr, $ex_ref_ty:ident, $ex_ty:ident) => {
        pub struct $ex_ref_ty(pub $rust_ty<$element_ty>);
        
        #[rustler::resource_impl]
        impl Resource for $ex_ref_ty {}

        #[derive(NifStruct)]
        #[module = $ex_module]
        pub struct $ex_ty {
            pub n_dims: usize,
            pub resource: ResourceArc<$ex_ref_ty>,
        }

        impl std::panic::RefUnwindSafe for $ex_ty {}

        impl $ex_ty {
            pub fn new(array: $rust_ty<$element_ty>) -> Self {
                Self {
                    n_dims: $n_dims,
                    resource: ResourceArc::new($ex_ref_ty(array)),
                }
            }
        }
    }
}

elixirize!(Array1, 1, f64, "SciEx.Float64.Array1", ExFloat64Array1Ref, ExFloat64Array1);
elixirize!(Array2, 2, f64, "SciEx.Float64.Array2", ExFloat64Array2Ref, ExFloat64Array2);
elixirize!(Array3, 3, f64, "SciEx.Float64.Array3", ExFloat64Array3Ref, ExFloat64Array3);
elixirize!(Array4, 4, f64, "SciEx.Float64.Array4", ExFloat64Array4Ref, ExFloat64Array4);
elixirize!(Array5, 5, f64, "SciEx.Float64.Array5", ExFloat64Array5Ref, ExFloat64Array5);
elixirize!(Array6, 6, f64, "SciEx.Float64.Array6", ExFloat64Array6Ref, ExFloat64Array6);

elixirize!(Array1, 1, f32, "SciEx.Float32.Array1", ExFloat32Array1Ref, ExFloat32Array1);
elixirize!(Array2, 2, f32, "SciEx.Float32.Array2", ExFloat32Array2Ref, ExFloat32Array2);
elixirize!(Array3, 3, f32, "SciEx.Float32.Array3", ExFloat32Array3Ref, ExFloat32Array3);
elixirize!(Array4, 4, f32, "SciEx.Float32.Array4", ExFloat32Array4Ref, ExFloat32Array4);
elixirize!(Array5, 5, f32, "SciEx.Float32.Array5", ExFloat32Array5Ref, ExFloat32Array5);
elixirize!(Array6, 6, f32, "SciEx.Float32.Array6", ExFloat32Array6Ref, ExFloat32Array6);

elixirize!(Array1, 1, Complex<f64>, "SciEx.Complex64.Array1", ExComplex64Array1Ref, ExComplex64Array1);
elixirize!(Array2, 2, Complex<f64>, "SciEx.Complex64.Array2", ExComplex64Array2Ref, ExComplex64Array2);
elixirize!(Array3, 3, Complex<f64>, "SciEx.Complex64.Array3", ExComplex64Array3Ref, ExComplex64Array3);
elixirize!(Array4, 4, Complex<f64>, "SciEx.Complex64.Array4", ExComplex64Array4Ref, ExComplex64Array4);
elixirize!(Array5, 5, Complex<f64>, "SciEx.Complex64.Array5", ExComplex64Array5Ref, ExComplex64Array5);
elixirize!(Array6, 6, Complex<f64>, "SciEx.Complex64.Array6", ExComplex64Array6Ref, ExComplex64Array6);

elixirize!(Array1, 1, Complex<f32>, "SciEx.Complex32.Array1", ExComplex32Array1Ref, ExComplex32Array1);
elixirize!(Array2, 2, Complex<f32>, "SciEx.Complex32.Array2", ExComplex32Array2Ref, ExComplex32Array2);
elixirize!(Array3, 3, Complex<f32>, "SciEx.Complex32.Array3", ExComplex32Array3Ref, ExComplex32Array3);
elixirize!(Array4, 4, Complex<f32>, "SciEx.Complex32.Array4", ExComplex32Array4Ref, ExComplex32Array4);
elixirize!(Array5, 5, Complex<f32>, "SciEx.Complex32.Array5", ExComplex32Array5Ref, ExComplex32Array5);
elixirize!(Array6, 6, Complex<f32>, "SciEx.Complex32.Array6", ExComplex32Array6Ref, ExComplex32Array6);

#[rustler::nif]
pub fn float64_array1_from_list(vec: Vec<f64>) -> ExFloat64Array1 {
    ExFloat64Array1::new(Array1::from_vec(vec))
}

#[rustler::nif]
pub fn float32_array1_from_list(vec: Vec<f32>) -> ExFloat32Array1 {
    ExFloat32Array1::new(Array1::from_vec(vec))
}

#[rustler::nif]
pub fn float64_array1_inspect(ex_array1: ExFloat64Array1) -> String {
    let array1: &Array1<f64> = &ex_array1.resource.0;
    format!("{:?}", &array1)
}

#[rustler::nif]
pub fn float64_array2_inspect(ex_array2: ExFloat64Array2) -> String {
    let array2: &Array2<f64> = &ex_array2.resource.0;
    format!("{:?}", &array2)
}

#[rustler::nif]
pub fn float64_array3_inspect(ex_array3: ExFloat64Array3) -> String {
    let array3: &Array3<f64> = &ex_array3.resource.0;
    format!("{:?}", &array3)
}

#[rustler::nif]
pub fn float64_array4_inspect(ex_array4: ExFloat64Array4) -> String {
    let array4: &Array4<f64> = &ex_array4.resource.0;
    format!("{:?}", &array4)
}

#[rustler::nif]
pub fn float64_array5_inspect(ex_array5: ExFloat64Array5) -> String {
    let array5: &Array5<f64> = &ex_array5.resource.0;
    format!("{:?}", &array5)
}

#[rustler::nif]
pub fn float64_array6_inspect(ex_array6: ExFloat64Array6) -> String {
    let array6: &Array6<f64> = &ex_array6.resource.0;
    format!("{:?}", &array6)
}

#[rustler::nif]
pub fn float32_array1_inspect(ex_array1: ExFloat32Array1) -> String {
    let array1: &Array1<f32> = &ex_array1.resource.0;
    format!("{:?}", &array1)
}

#[rustler::nif]
pub fn float32_array2_inspect(ex_array2: ExFloat32Array2) -> String {
    let array2: &Array2<f32> = &ex_array2.resource.0;
    format!("{:?}", &array2)
}

#[rustler::nif]
pub fn float32_array3_inspect(ex_array3: ExFloat32Array3) -> String {
    let array3: &Array3<f32> = &ex_array3.resource.0;
    format!("{:?}", &array3)
}

#[rustler::nif]
pub fn float32_array4_inspect(ex_array4: ExFloat32Array4) -> String {
    let array4: &Array4<f32> = &ex_array4.resource.0;
    format!("{:?}", &array4)
}

#[rustler::nif]
pub fn float32_array5_inspect(ex_array5: ExFloat32Array5) -> String {
    let array5: &Array5<f32> = &ex_array5.resource.0;
    format!("{:?}", &array5)
}

#[rustler::nif]
pub fn float32_array6_inspect(ex_array6: ExFloat32Array6) -> String {
    let array6: &Array6<f32> = &ex_array6.resource.0;
    format!("{:?}", &array6)
}

pub struct ExComplex64Ref(pub Complex<f64>);

#[rustler::resource_impl]
impl Resource for ExComplex64Ref {}

#[derive(NifStruct)]
#[module = "SciEx.Complex64"]
pub struct ExComplex64 {
    pub resource: ResourceArc<ExComplex64Ref>
}

impl std::panic::RefUnwindSafe for ExComplex64 {}

impl ExComplex64 {
    pub fn new(z: Complex<f64>) -> Self {
        Self {
            resource: ResourceArc::new(ExComplex64Ref(z))
        }
    }
}

#[rustler::nif]
fn complex64_new(re: f64, im: f64) -> ExComplex64 {
    ExComplex64::new(Complex::new(re, im))
}

#[rustler::nif]
fn complex64_inspect(z: ExComplex64) -> String {
    let z0: Complex<f64> = z.resource.0;
    format!("{} + {}i", z0.re, z0.im)
}

pub struct ExComplex32Ref(pub Complex<f32>);

#[rustler::resource_impl]
impl Resource for ExComplex32Ref {}

#[derive(NifStruct)]
#[module = "SciEx.Complex32"]
pub struct ExComplex32 {
    pub resource: ResourceArc<ExComplex32Ref>
}

impl std::panic::RefUnwindSafe for ExComplex32 {}

impl ExComplex32 {
    pub fn new(z: Complex<f32>) -> Self {
        Self {
            resource: ResourceArc::new(ExComplex32Ref(z))
        }
    }
}

#[rustler::nif]
fn complex32_new(re: f32, im: f32) -> ExComplex32 {
    ExComplex32::new(Complex::new(re, im))
}

#[rustler::nif]
fn complex32_inspect(z: ExComplex32) -> String {
    let z0: Complex<f32> = z.resource.0;
    format!("{} + {}i", z0.re, z0.im)
}
#[rustler::nif]
pub fn complex64_array1_inspect(ex_array1: ExComplex64Array1) -> String {
    let array1: &Array1<Complex<f64>> = &ex_array1.resource.0;
    format!("{:?}", &array1)
}

#[rustler::nif]
pub fn complex64_array2_inspect(ex_array2: ExComplex64Array2) -> String {
    let array2: &Array2<Complex<f64>> = &ex_array2.resource.0;
    format!("{:?}", &array2)
}

#[rustler::nif]
pub fn complex64_array3_inspect(ex_array3: ExComplex64Array3) -> String {
    let array3: &Array3<Complex<f64>> = &ex_array3.resource.0;
    format!("{:?}", &array3)
}

#[rustler::nif]
pub fn complex64_array4_inspect(ex_array4: ExComplex64Array4) -> String {
    let array4: &Array4<Complex<f64>> = &ex_array4.resource.0;
    format!("{:?}", &array4)
}

#[rustler::nif]
pub fn complex64_array5_inspect(ex_array5: ExComplex64Array5) -> String {
    let array5: &Array5<Complex<f64>> = &ex_array5.resource.0;
    format!("{:?}", &array5)
}

#[rustler::nif]
pub fn complex64_array6_inspect(ex_array6: ExComplex64Array6) -> String {
    let array6: &Array6<Complex<f64>> = &ex_array6.resource.0;
    format!("{:?}", &array6)
}

#[rustler::nif]
pub fn complex32_array1_inspect(ex_array1: ExComplex32Array1) -> String {
    let array1: &Array1<Complex<f32>> = &ex_array1.resource.0;
    format!("{:?}", &array1)
}

#[rustler::nif]
pub fn complex32_array2_inspect(ex_array2: ExComplex32Array2) -> String {
    let array2: &Array2<Complex<f32>> = &ex_array2.resource.0;
    format!("{:?}", &array2)
}

#[rustler::nif]
pub fn complex32_array3_inspect(ex_array3: ExComplex32Array3) -> String {
    let array3: &Array3<Complex<f32>> = &ex_array3.resource.0;
    format!("{:?}", &array3)
}

#[rustler::nif]
pub fn complex32_array4_inspect(ex_array4: ExComplex32Array4) -> String {
    let array4: &Array4<Complex<f32>> = &ex_array4.resource.0;
    format!("{:?}", &array4)
}

#[rustler::nif]
pub fn complex32_array5_inspect(ex_array5: ExComplex32Array5) -> String {
    let array5: &Array5<Complex<f32>> = &ex_array5.resource.0;
    format!("{:?}", &array5)
}

#[rustler::nif]
pub fn complex32_array6_inspect(ex_array6: ExComplex32Array6) -> String {
    let array6: &Array6<Complex<f32>> = &ex_array6.resource.0;
    format!("{:?}", &array6)
}