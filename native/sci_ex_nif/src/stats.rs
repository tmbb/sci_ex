use crate::datatypes::*;

use ndarray::Array1;

use core::iter;

use rand_chacha::rand_core::SeedableRng;
use rand_chacha::ChaCha12Rng;

use rand::distributions::Distribution;

// Before we can deal with distributions that take on
// integer arguments, we must first implement
// arrays that contain integers, both on the rust side
// and on the elixir side.
use statrs::distribution::{
    Continuous, ContinuousCDF,
    Beta, Cauchy, Chi, ChiSquared, Dirac, Erlang, Exp,
    FisherSnedecor, Gamma, Gumbel, InverseGamma, Laplace,
    LogNormal,Normal, Pareto,
    StudentsT, Triangular, Uniform, Weibull
};

macro_rules! draw_from_univariate_dist {
    ($seed:expr; $dist:expr; $nr_of_draws:expr) => {
        {
            let dist = $dist.unwrap();
            let mut rng = ChaCha12Rng::seed_from_u64($seed);
    
            let values: Array1<_> =
                iter::repeat_with(|| dist.sample(&mut rng))
                .take($nr_of_draws as usize)
                .collect::<Array1<_>>();
    
            ExFloat64Array1::new(values)
        }
    };
}

macro_rules! define_continuous_dist_functions {
    // Distributions with 1 parameter
    ($dist_struct:ident;
     $pstats_name:ident; $cstats_name:ident; $inv_cstats_name:ident;
     ($p1:ident : $t1:ident)) => {
        #[rustler::nif(schedule = "DirtyCpu")]
        pub fn $pstats_name(ex_array1: ExFloat64Array1, $p1: $t1) -> ExFloat64Array1 {
            let x: &Array1<_> = &ex_array1.resource.0;
            let dist: $dist_struct = $dist_struct::new($p1).unwrap();
            ExFloat64Array1::new(x.mapv(|x_i| dist.pdf(x_i)))
        }

        #[rustler::nif(schedule = "DirtyCpu")]
        pub fn $cstats_name(ex_array1: ExFloat64Array1, $p1: $t1) -> ExFloat64Array1  {
            let x: &Array1<_> = &ex_array1.resource.0;
            let dist: $dist_struct = $dist_struct::new($p1).unwrap();
            ExFloat64Array1::new(x.mapv(|x_i| dist.cdf(x_i)))
        }

        #[rustler::nif(schedule = "DirtyCpu")]
        pub fn $inv_cstats_name(ex_array1: ExFloat64Array1, $p1: $t1) -> ExFloat64Array1 {
            let x: &Array1<_> = &ex_array1.resource.0;
            let dist: $dist_struct = $dist_struct::new($p1).unwrap();
            ExFloat64Array1::new(x.mapv(|x_i| dist.inverse_cdf(x_i)))
        }
    };

    // Distributions with 2 parameters
    ($dist_struct:ident;
     $pstats_name:ident; $cstats_name:ident; $inv_cstats_name:ident;
     ($p1:ident : $t1:ident ; $p2:ident : $t2:ident)) => {
        #[rustler::nif(schedule = "DirtyCpu")]
        pub fn $pstats_name(ex_array1: ExFloat64Array1, $p1: $t1, $p2: $t2) -> ExFloat64Array1 {
            let x: &Array1<_> = &ex_array1.resource.0;
            let dist: $dist_struct = $dist_struct::new($p1, $p2).unwrap();
            ExFloat64Array1::new(x.mapv(|x_i| dist.pdf(x_i)))
        }

        #[rustler::nif(schedule = "DirtyCpu")]
        pub fn $cstats_name(ex_array1: ExFloat64Array1, $p1: $t1, $p2: $t2) -> ExFloat64Array1 {
            let x: &Array1<_> = &ex_array1.resource.0;
            let dist: $dist_struct = $dist_struct::new($p1, $p2).unwrap();
            ExFloat64Array1::new(x.mapv(|x_i| dist.cdf(x_i)))
        }

        #[rustler::nif(schedule = "DirtyCpu")]
        pub fn $inv_cstats_name(ex_array1: ExFloat64Array1, $p1: $t1, $p2: $t2) -> ExFloat64Array1 {
            let x: &Array1<_> = &ex_array1.resource.0;
            let dist: $dist_struct = $dist_struct::new($p1, $p2).unwrap();
            ExFloat64Array1::new(x.mapv(|x_i| dist.inverse_cdf(x_i)))
        }
    };

    // Distributions with 3 parameters
    ($dist_struct:ident;
        $pstats_name:ident; $cstats_name:ident; $inv_cstats_name:ident;
        ($p1:ident : $t1:ident ; $p2:ident : $t2:ident; $p3:ident : $t3:ident)) => {
           #[rustler::nif(schedule = "DirtyCpu")]
           pub fn $pstats_name(ex_array1: ExFloat64Array1, $p1: $t1, $p2: $t2, $p3: $t3) -> ExFloat64Array1 {
                let x: &Array1<_> = &ex_array1.resource.0;
                let dist: $dist_struct = $dist_struct::new($p1, $p2, $p3).unwrap();
                ExFloat64Array1::new(x.mapv(|x_i| dist.pdf(x_i)))
           }
   
           #[rustler::nif(schedule = "DirtyCpu")]
           pub fn $cstats_name(ex_array1: ExFloat64Array1, $p1: $t1, $p2: $t2, $p3: $t3) -> ExFloat64Array1 {
                let x: &Array1<_> = &ex_array1.resource.0;
                let dist: $dist_struct = $dist_struct::new($p1, $p2, $p3).unwrap();
                ExFloat64Array1::new(x.mapv(|x_i| dist.cdf(x_i)))
           }
   
           #[rustler::nif(schedule = "DirtyCpu")]
           pub fn $inv_cstats_name(ex_array1: ExFloat64Array1, $p1: $t1, $p2: $t2, $p3: $t3) -> ExFloat64Array1 {
                let x: &Array1<_> = &ex_array1.resource.0;
                let dist: $dist_struct = $dist_struct::new($p1, $p2, $p3).unwrap();
                ExFloat64Array1::new(x.mapv(|x_i| dist.inverse_cdf(x_i)))
           }
       };
}

define_continuous_dist_functions!(
    Beta; stats_array1_beta_pdf; stats_array1_beta_cdf; stats_array1_beta_inverse_cdf;
    (shape_a: f64; shape_b: f64)
);

define_continuous_dist_functions!(
    Cauchy; stats_array1_cauchy_pdf; stats_array1_cauchy_cdf; stats_array1_cauchy_inverse_cdf;
    (location: f64; scale: f64)
);

define_continuous_dist_functions!(
    Chi; stats_array1_chi_pdf; stats_array1_chi_cdf; stats_array1_chi_inverse_cdf;
    (freedom: u64)
);

define_continuous_dist_functions!(
    ChiSquared; stats_array1_chi_squared_pdf; stats_array1_chi_squared_cdf; stats_array1_chi_squared_inverse_cdf;
    (freedom: f64)
);

// The Dirac function doesn't have a PDF, only a CDF
#[rustler::nif(schedule = "DirtyCpu")]
pub fn stats_array1_dirac_cdf(ex_array1: ExFloat64Array1, v: f64) -> ExFloat64Array1{
    let x: &Array1<f64> = &ex_array1.resource.0;
    let dist: Dirac = Dirac::new(v).unwrap();
    ExFloat64Array1::new(x.mapv(|x_i| dist.cdf(x_i)))
}

#[rustler::nif(schedule = "DirtyCpu")]
pub fn stats_array1_dirac_inverse_cdf(ex_array1: ExFloat64Array1, v: f64) -> ExFloat64Array1 {
    let x: &Array1<f64> = &ex_array1.resource.0;
    let dist: Dirac = Dirac::new(v).unwrap();
    ExFloat64Array1::new(x.mapv(|x_i| dist.inverse_cdf(x_i)))
}

define_continuous_dist_functions!(
    Erlang; stats_array1_erlang_pdf; stats_array1_erlang_cdf; stats_array1_erlang_inverse_cdf;
    (shape: u64; rate: f64)
);

define_continuous_dist_functions!(
    Exp; stats_array1_exp_pdf; stats_array1_exp_cdf; stats_array1_exp_inverse_cdf;
    (rate: f64)
);

define_continuous_dist_functions!(
    FisherSnedecor;
    stats_array1_fisher_snedecor_pdf; stats_array1_fisher_snedecor_cdf; stats_array1_fisher_snedecor_inverse_cdf;
    (freedom_1: f64; freedom_2: f64)
);

define_continuous_dist_functions!(
    Gamma;
    stats_array1_gamma_pdf; stats_array1_gamma_cdf; stats_array1_gamma_inverse_cdf;
    (shape: f64; rate: f64)
);

define_continuous_dist_functions!(
    Gumbel;
    stats_array1_gumbel_pdf; stats_array1_gumbel_cdf; stats_array1_gumbel_inverse_cdf;
    (location: f64; scale: f64)
);

define_continuous_dist_functions!(
    InverseGamma;
    stats_array1_inverse_gamma_pdf; stats_array1_inverse_gamma_cdf; stats_array1_inverse_gamma_inverse_cdf;
    (shape: f64; rate: f64)
);

define_continuous_dist_functions!(
    Laplace;
    stats_array1_laplace_pdf; stats_array1_laplace_cdf; stats_array1_laplace_inverse_cdf;
    (location: f64; scale: f64)
);

#[rustler::nif(schedule = "DirtyCpu")]
pub fn stats_draw_from_beta(seed: u64, a: f64, b: f64, nr_of_draws: usize) -> ExFloat64Array1 {
    draw_from_univariate_dist!(seed; Beta::new(a, b); nr_of_draws)
}

// #[rustler::nif(schedule = "DirtyCpu")]
// pub fn stats_draw_from_skew_normal(seed: u64, loc: f64, scale: f64, shape: f64, nr_of_draws: usize)
//             -> Result<ExDataFrame, ExplorerError> {
//     draw_from_univariate_dist!(seed; SkewNormal::new(loc, scale, shape); nr_of_draws)
// }

#[rustler::nif(schedule = "DirtyCpu")]
pub fn stats_draw_from_cauchy(seed: u64, median: f64, scale: f64, nr_of_draws: usize) -> ExFloat64Array1 {
    draw_from_univariate_dist!(seed; Cauchy::new(median, scale); nr_of_draws)
}

#[rustler::nif(schedule = "DirtyCpu")]
pub fn stats_draw_from_chi(seed: u64, freedom: u64, nr_of_draws: usize) -> ExFloat64Array1 {
    draw_from_univariate_dist!(seed; Chi::new(freedom); nr_of_draws)
}

#[rustler::nif(schedule = "DirtyCpu")]
pub fn stats_draw_from_chi_squared(seed: u64, freedom: f64, nr_of_draws: usize) -> ExFloat64Array1 {
    draw_from_univariate_dist!(seed; ChiSquared::new(freedom); nr_of_draws)
}

#[rustler::nif(schedule = "DirtyCpu")]
pub fn stats_draw_from_dirac(seed: u64, v: f64, nr_of_draws: usize) -> ExFloat64Array1 {
    draw_from_univariate_dist!(seed; Dirac::new(v); nr_of_draws)
}

#[rustler::nif(schedule = "DirtyCpu")]
pub fn stats_draw_from_erlang(seed: u64, shape: u64, rate: f64, nr_of_draws: usize) -> ExFloat64Array1 {
    draw_from_univariate_dist!(seed; Erlang::new(shape, rate); nr_of_draws)
}

#[rustler::nif(schedule = "DirtyCpu")]
pub fn stats_draw_from_exp(seed: u64, rate: f64, nr_of_draws: usize) -> ExFloat64Array1 {
    draw_from_univariate_dist!(seed; Exp::new(rate); nr_of_draws)
}

#[rustler::nif(schedule = "DirtyCpu")]
pub fn stats_draw_from_fisher_snedecor(seed: u64, freedom_1: f64, freedom_2: f64, nr_of_draws: usize) -> ExFloat64Array1 {
    draw_from_univariate_dist!(seed; FisherSnedecor::new(freedom_1, freedom_2); nr_of_draws)
}

// // TODO: find why the Distribution trait is implemented twice!
// #[rustler::nif(schedule = "DirtyCpu")]
// pub fn stats_draw_from_geometric(seed: u64, p: f64, nr_of_draws: usize)
//             -> Result<ExDataFrame, ExplorerError> {
//     draw_from_univariate_dist!(seed; Geometric::new(p); nr_of_draws)
// }

#[rustler::nif(schedule = "DirtyCpu")]
pub fn stats_draw_from_gumbel(seed: u64, location: f64, scale: f64, nr_of_draws: usize) -> ExFloat64Array1 {
    draw_from_univariate_dist!(seed; Gumbel::new(location, scale); nr_of_draws)
}

// // TODO: find why the Distribution trait is implemented twice!
// #[rustler::nif(schedule = "DirtyCpu")]
// pub fn stats_draw_from_hypergeometric(seed: u64, pop_size: u64, success_states: u64,
//                                    sample_size: u64, nr_of_draws: usize)
//             -> Result<ExDataFrame, ExplorerError> {
//     draw_from_univariate_dist!(
//         seed;
//         Hypergeometric::new(pop_size, success_states, sample_size);
//         nr_of_draws
//     )
// }

#[rustler::nif(schedule = "DirtyCpu")]
pub fn stats_draw_from_inverse_gamma(seed: u64, shape: f64, rate: f64, nr_of_draws: usize) -> ExFloat64Array1 {
    draw_from_univariate_dist!(seed; InverseGamma::new(shape, rate); nr_of_draws)
}

#[rustler::nif(schedule = "DirtyCpu")]
pub fn stats_draw_from_laplace(seed: u64, location: f64, scale: f64, nr_of_draws: usize) -> ExFloat64Array1 {
    draw_from_univariate_dist!(seed; Laplace::new(location, scale); nr_of_draws)
}

#[rustler::nif(schedule = "DirtyCpu")]
pub fn stats_draw_from_log_normal(seed: u64, mean: f64, variance: f64, nr_of_draws: usize) -> ExFloat64Array1 {
    draw_from_univariate_dist!(seed; LogNormal::new(mean, variance); nr_of_draws)
}

#[rustler::nif(schedule = "DirtyCpu")]
pub fn stats_draw_from_gamma(seed: u64, shape: f64, rate: f64, nr_of_draws: usize) -> ExFloat64Array1 {
    draw_from_univariate_dist!(seed; Gamma::new(shape, rate); nr_of_draws)
}

// #[rustler::nif(schedule = "DirtyCpu")]
// pub fn stats_draw_from_negative_binomial(seed: u64, r: f64, p: f64, nr_of_draws: usize)
//         -> Result<ExDataFrame, ExplorerError> {
//     draw_from_univariate_dist!(seed; NegativeBinomial::new(r, p); nr_of_draws)
// }

#[rustler::nif(schedule = "DirtyCpu")]
pub fn stats_draw_from_normal(seed: u64, mu: f64, sigma: f64, nr_of_draws: usize) -> ExFloat64Array1 {
    draw_from_univariate_dist!(seed; Normal::new(mu, sigma); nr_of_draws)
}

#[rustler::nif(schedule = "DirtyCpu")]
pub fn stats_draw_from_pareto(seed: u64, scale: f64, shape: f64, nr_of_draws: usize) -> ExFloat64Array1 {
    draw_from_univariate_dist!(seed; Pareto::new(scale, shape); nr_of_draws)
}

// #[rustler::nif(schedule = "DirtyCpu")]
// pub fn stats_draw_from_poisson(seed: u64, lambda: f64, nr_of_draws: usize)
//             -> Result<ExDataFrame, ExplorerError> {
//     draw_from_univariate_dist!(seed; Poisson::new(lambda); nr_of_draws)
// }

#[rustler::nif(schedule = "DirtyCpu")]
pub fn stats_draw_from_students_t(seed: u64, location: f64, scale: f64, freedom: f64, nr_of_draws: usize) -> ExFloat64Array1 {
    draw_from_univariate_dist!(seed; StudentsT::new(location, scale, freedom); nr_of_draws)
}

#[rustler::nif(schedule = "DirtyCpu")]
pub fn stats_draw_from_triangular(seed: u64, min: f64, max: f64, mode: f64, nr_of_draws: usize) -> ExFloat64Array1 {
    draw_from_univariate_dist!(seed; Triangular::new(min, max, mode); nr_of_draws)
}

#[rustler::nif(schedule = "DirtyCpu")]
pub fn stats_draw_from_uniform(seed: u64, min: f64, max: f64, nr_of_draws: usize) -> ExFloat64Array1 {
    draw_from_univariate_dist!(seed; Uniform::new(min, max); nr_of_draws)
}

#[rustler::nif(schedule = "DirtyCpu")]
pub fn stats_draw_from_weibull(seed: u64, shape: f64, scale: f64, nr_of_draws: usize) -> ExFloat64Array1 {
    draw_from_univariate_dist!(seed; Weibull::new(shape, scale); nr_of_draws)
}