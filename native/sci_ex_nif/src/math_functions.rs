use ndarray::{Array1, Array2, Array3, Array4, Array5, Array6};
use libm;
use crate::datatypes::*;

// Math operations on f64
// ----------------------

#[rustler::nif]
pub fn float64_array1_acos(ex_array: ExFloat64Array1) -> ExFloat64Array1 {
    let array: &Array1<f64> = &ex_array.resource.0;
    let result: Array1<f64> = array.mapv(f64::acos);
    ExFloat64Array1::new(result)
}

#[rustler::nif]
pub fn float64_array1_acosh(ex_array: ExFloat64Array1) -> ExFloat64Array1 {
    let array: &Array1<f64> = &ex_array.resource.0;
    let result: Array1<f64> = array.mapv(f64::acosh);
    ExFloat64Array1::new(result)
}

#[rustler::nif]
pub fn float64_array1_asin(ex_array: ExFloat64Array1) -> ExFloat64Array1 {
    let array: &Array1<f64> = &ex_array.resource.0;
    let result: Array1<f64> = array.mapv(f64::asin);
    ExFloat64Array1::new(result)
}

#[rustler::nif]
pub fn float64_array1_asinh(ex_array: ExFloat64Array1) -> ExFloat64Array1 {
    let array: &Array1<f64> = &ex_array.resource.0;
    let result: Array1<f64> = array.mapv(f64::asinh);
    ExFloat64Array1::new(result)
}

#[rustler::nif]
pub fn float64_array1_atan(ex_array: ExFloat64Array1) -> ExFloat64Array1 {
    let array: &Array1<f64> = &ex_array.resource.0;
    let result: Array1<f64> = array.mapv(f64::atan);
    ExFloat64Array1::new(result)
}

#[rustler::nif]
pub fn float64_array1_atan2(ex_array: ExFloat64Array1, other: f64) -> ExFloat64Array1 {
    let array: &Array1<f64> = &ex_array.resource.0;
    let result: Array1<f64> = array.mapv(|x| x.atan2(other));
    ExFloat64Array1::new(result)
}

#[rustler::nif]
pub fn float64_array1_atanh(ex_array: ExFloat64Array1) -> ExFloat64Array1 {
    let array: &Array1<f64> = &ex_array.resource.0;
    let result: Array1<f64> = array.mapv(f64::atanh);
    ExFloat64Array1::new(result)
}

#[rustler::nif]
pub fn float64_array1_cbrt(ex_array: ExFloat64Array1) -> ExFloat64Array1 {
    let array: &Array1<f64> = &ex_array.resource.0;
    let result: Array1<f64> = array.mapv(f64::cbrt);
    ExFloat64Array1::new(result)
}

#[rustler::nif]
pub fn float64_array1_ceil(ex_array: ExFloat64Array1) -> ExFloat64Array1 {
    let array: &Array1<f64> = &ex_array.resource.0;
    let result: Array1<f64> = array.mapv(f64::ceil);
    ExFloat64Array1::new(result)
}

#[rustler::nif]
pub fn float64_array1_cos(ex_array: ExFloat64Array1) -> ExFloat64Array1 {
    let array: &Array1<f64> = &ex_array.resource.0;
    let result: Array1<f64> = array.mapv(f64::cos);
    ExFloat64Array1::new(result)
}

#[rustler::nif]
pub fn float64_array1_cosh(ex_array: ExFloat64Array1) -> ExFloat64Array1 {
    let array: &Array1<f64> = &ex_array.resource.0;
    let result: Array1<f64> = array.mapv(f64::cosh);
    ExFloat64Array1::new(result)
}

#[rustler::nif]
pub fn float64_array1_div_euclid(ex_array: ExFloat64Array1, rhs: f64) -> ExFloat64Array1 {
    let array: &Array1<f64> = &ex_array.resource.0;
    let result: Array1<f64> = array.mapv(|x| x.div_euclid(rhs));
    ExFloat64Array1::new(result)
}

#[rustler::nif]
pub fn float64_array1_erf(ex_array: ExFloat64Array1) -> ExFloat64Array1 {
    let array: &Array1<f64> = &ex_array.resource.0;
    let result: Array1<f64> = array.mapv(libm::erf);
    ExFloat64Array1::new(result)
}

#[rustler::nif]
pub fn float64_array1_erfc(ex_array: ExFloat64Array1) -> ExFloat64Array1 {
    let array: &Array1<f64> = &ex_array.resource.0;
    let result: Array1<f64> = array.mapv(libm::erfc);
    ExFloat64Array1::new(result)
}

#[rustler::nif]
pub fn float64_array1_exp(ex_array: ExFloat64Array1) -> ExFloat64Array1 {
    let array: &Array1<f64> = &ex_array.resource.0;
    let result: Array1<f64> = array.mapv(f64::exp);
    ExFloat64Array1::new(result)
}

#[rustler::nif]
pub fn float64_array1_exp2(ex_array: ExFloat64Array1) -> ExFloat64Array1 {
    let array: &Array1<f64> = &ex_array.resource.0;
    let result: Array1<f64> = array.mapv(f64::exp2);
    ExFloat64Array1::new(result)
}

#[rustler::nif]
pub fn float64_array1_exp_m1(ex_array: ExFloat64Array1) -> ExFloat64Array1 {
    let array: &Array1<f64> = &ex_array.resource.0;
    let result: Array1<f64> = array.mapv(f64::exp_m1);
    ExFloat64Array1::new(result)
}

#[rustler::nif]
pub fn float64_array1_floor(ex_array: ExFloat64Array1) -> ExFloat64Array1 {
    let array: &Array1<f64> = &ex_array.resource.0;
    let result: Array1<f64> = array.mapv(f64::floor);
    ExFloat64Array1::new(result)
}

#[rustler::nif]
pub fn float64_array1_fract(ex_array: ExFloat64Array1) -> ExFloat64Array1 {
    let array: &Array1<f64> = &ex_array.resource.0;
    let result: Array1<f64> = array.mapv(f64::fract);
    ExFloat64Array1::new(result)
}

#[rustler::nif]
pub fn float64_array1_hypot(ex_array: ExFloat64Array1, other: f64) -> ExFloat64Array1 {
    let array: &Array1<f64> = &ex_array.resource.0;
    let result: Array1<f64> = array.mapv(|x| x.hypot(other));
    ExFloat64Array1::new(result)
}

#[rustler::nif]
pub fn float64_array1_j0(ex_array: ExFloat64Array1) -> ExFloat64Array1 {
    let array: &Array1<f64> = &ex_array.resource.0;
    let result: Array1<f64> = array.mapv(libm::j0);
    ExFloat64Array1::new(result)
}

#[rustler::nif]
pub fn float64_array1_j1(ex_array: ExFloat64Array1) -> ExFloat64Array1 {
    let array: &Array1<f64> = &ex_array.resource.0;
    let result: Array1<f64> = array.mapv(libm::j1);
    ExFloat64Array1::new(result)
}

#[rustler::nif]
pub fn float64_array1_lgamma(ex_array: ExFloat64Array1) -> ExFloat64Array1 {
    let array: &Array1<f64> = &ex_array.resource.0;
    let result: Array1<f64> = array.mapv(libm::lgamma);
    ExFloat64Array1::new(result)
}

#[rustler::nif]
pub fn float64_array1_ln(ex_array: ExFloat64Array1) -> ExFloat64Array1 {
    let array: &Array1<f64> = &ex_array.resource.0;
    let result: Array1<f64> = array.mapv(f64::ln);
    ExFloat64Array1::new(result)
}

#[rustler::nif]
pub fn float64_array1_ln_1p(ex_array: ExFloat64Array1) -> ExFloat64Array1 {
    let array: &Array1<f64> = &ex_array.resource.0;
    let result: Array1<f64> = array.mapv(f64::ln_1p);
    ExFloat64Array1::new(result)
}

#[rustler::nif]
pub fn float64_array1_log(ex_array: ExFloat64Array1, base: f64) -> ExFloat64Array1 {
    let array: &Array1<f64> = &ex_array.resource.0;
    let result: Array1<f64> = array.mapv(|x| x.log(base));
    ExFloat64Array1::new(result)
}

#[rustler::nif]
pub fn float64_array1_log10(ex_array: ExFloat64Array1) -> ExFloat64Array1 {
    let array: &Array1<f64> = &ex_array.resource.0;
    let result: Array1<f64> = array.mapv(f64::log10);
    ExFloat64Array1::new(result)
}

#[rustler::nif]
pub fn float64_array1_log2(ex_array: ExFloat64Array1) -> ExFloat64Array1 {
    let array: &Array1<f64> = &ex_array.resource.0;
    let result: Array1<f64> = array.mapv(f64::log2);
    ExFloat64Array1::new(result)
}

#[rustler::nif]
pub fn float64_array1_mul_add(ex_array: ExFloat64Array1, a: f64, b: f64) -> ExFloat64Array1 {
    let array: &Array1<f64> = &ex_array.resource.0;
    let result: Array1<f64> = array.mapv(|x| x.mul_add(a, b));
    ExFloat64Array1::new(result)
}

#[rustler::nif]
pub fn float64_array1_powf(ex_array: ExFloat64Array1, n: f64) -> ExFloat64Array1 {
    let array: &Array1<f64> = &ex_array.resource.0;
    let result: Array1<f64> = array.mapv(|x| x.powf(n));
    ExFloat64Array1::new(result)
}

#[rustler::nif]
pub fn float64_array1_powi(ex_array: ExFloat64Array1, n: i32) -> ExFloat64Array1 {
    let array: &Array1<f64> = &ex_array.resource.0;
    let result: Array1<f64> = array.mapv(|x| x.powi(n));
    ExFloat64Array1::new(result)
}

#[rustler::nif]
pub fn float64_array1_rem_euclid(ex_array: ExFloat64Array1, rhs: f64) -> ExFloat64Array1 {
    let array: &Array1<f64> = &ex_array.resource.0;
    let result: Array1<f64> = array.mapv(|x| x.rem_euclid(rhs));
    ExFloat64Array1::new(result)
}

#[rustler::nif]
pub fn float64_array1_round(ex_array: ExFloat64Array1) -> ExFloat64Array1 {
    let array: &Array1<f64> = &ex_array.resource.0;
    let result: Array1<f64> = array.mapv(f64::round);
    ExFloat64Array1::new(result)
}

#[rustler::nif]
pub fn float64_array1_round_ties_even(ex_array: ExFloat64Array1) -> ExFloat64Array1 {
    let array: &Array1<f64> = &ex_array.resource.0;
    let result: Array1<f64> = array.mapv(f64::round_ties_even);
    ExFloat64Array1::new(result)
}

#[rustler::nif]
pub fn float64_array1_sin(ex_array: ExFloat64Array1) -> ExFloat64Array1 {
    let array: &Array1<f64> = &ex_array.resource.0;
    let result: Array1<f64> = array.mapv(f64::sin);
    ExFloat64Array1::new(result)
}

#[rustler::nif]
pub fn float64_array1_sinh(ex_array: ExFloat64Array1) -> ExFloat64Array1 {
    let array: &Array1<f64> = &ex_array.resource.0;
    let result: Array1<f64> = array.mapv(f64::sinh);
    ExFloat64Array1::new(result)
}

#[rustler::nif]
pub fn float64_array1_sqrt(ex_array: ExFloat64Array1) -> ExFloat64Array1 {
    let array: &Array1<f64> = &ex_array.resource.0;
    let result: Array1<f64> = array.mapv(f64::sqrt);
    ExFloat64Array1::new(result)
}

#[rustler::nif]
pub fn float64_array1_tan(ex_array: ExFloat64Array1) -> ExFloat64Array1 {
    let array: &Array1<f64> = &ex_array.resource.0;
    let result: Array1<f64> = array.mapv(f64::tan);
    ExFloat64Array1::new(result)
}

#[rustler::nif]
pub fn float64_array1_tanh(ex_array: ExFloat64Array1) -> ExFloat64Array1 {
    let array: &Array1<f64> = &ex_array.resource.0;
    let result: Array1<f64> = array.mapv(f64::tanh);
    ExFloat64Array1::new(result)
}

#[rustler::nif]
pub fn float64_array1_trunc(ex_array: ExFloat64Array1) -> ExFloat64Array1 {
    let array: &Array1<f64> = &ex_array.resource.0;
    let result: Array1<f64> = array.mapv(f64::trunc);
    ExFloat64Array1::new(result)
}

#[rustler::nif]
pub fn float64_array1_y0(ex_array: ExFloat64Array1) -> ExFloat64Array1 {
    let array: &Array1<f64> = &ex_array.resource.0;
    let result: Array1<f64> = array.mapv(libm::y0);
    ExFloat64Array1::new(result)
}

#[rustler::nif]
pub fn float64_array1_y1(ex_array: ExFloat64Array1) -> ExFloat64Array1 {
    let array: &Array1<f64> = &ex_array.resource.0;
    let result: Array1<f64> = array.mapv(libm::y1);
    ExFloat64Array1::new(result)
}

#[rustler::nif]
pub fn float64_array2_acos(ex_array: ExFloat64Array2) -> ExFloat64Array2 {
    let array: &Array2<f64> = &ex_array.resource.0;
    let result: Array2<f64> = array.mapv(f64::acos);
    ExFloat64Array2::new(result)
}

#[rustler::nif]
pub fn float64_array2_acosh(ex_array: ExFloat64Array2) -> ExFloat64Array2 {
    let array: &Array2<f64> = &ex_array.resource.0;
    let result: Array2<f64> = array.mapv(f64::acosh);
    ExFloat64Array2::new(result)
}

#[rustler::nif]
pub fn float64_array2_asin(ex_array: ExFloat64Array2) -> ExFloat64Array2 {
    let array: &Array2<f64> = &ex_array.resource.0;
    let result: Array2<f64> = array.mapv(f64::asin);
    ExFloat64Array2::new(result)
}

#[rustler::nif]
pub fn float64_array2_asinh(ex_array: ExFloat64Array2) -> ExFloat64Array2 {
    let array: &Array2<f64> = &ex_array.resource.0;
    let result: Array2<f64> = array.mapv(f64::asinh);
    ExFloat64Array2::new(result)
}

#[rustler::nif]
pub fn float64_array2_atan(ex_array: ExFloat64Array2) -> ExFloat64Array2 {
    let array: &Array2<f64> = &ex_array.resource.0;
    let result: Array2<f64> = array.mapv(f64::atan);
    ExFloat64Array2::new(result)
}

#[rustler::nif]
pub fn float64_array2_atan2(ex_array: ExFloat64Array2, other: f64) -> ExFloat64Array2 {
    let array: &Array2<f64> = &ex_array.resource.0;
    let result: Array2<f64> = array.mapv(|x| x.atan2(other));
    ExFloat64Array2::new(result)
}

#[rustler::nif]
pub fn float64_array2_atanh(ex_array: ExFloat64Array2) -> ExFloat64Array2 {
    let array: &Array2<f64> = &ex_array.resource.0;
    let result: Array2<f64> = array.mapv(f64::atanh);
    ExFloat64Array2::new(result)
}

#[rustler::nif]
pub fn float64_array2_cbrt(ex_array: ExFloat64Array2) -> ExFloat64Array2 {
    let array: &Array2<f64> = &ex_array.resource.0;
    let result: Array2<f64> = array.mapv(f64::cbrt);
    ExFloat64Array2::new(result)
}

#[rustler::nif]
pub fn float64_array2_ceil(ex_array: ExFloat64Array2) -> ExFloat64Array2 {
    let array: &Array2<f64> = &ex_array.resource.0;
    let result: Array2<f64> = array.mapv(f64::ceil);
    ExFloat64Array2::new(result)
}

#[rustler::nif]
pub fn float64_array2_cos(ex_array: ExFloat64Array2) -> ExFloat64Array2 {
    let array: &Array2<f64> = &ex_array.resource.0;
    let result: Array2<f64> = array.mapv(f64::cos);
    ExFloat64Array2::new(result)
}

#[rustler::nif]
pub fn float64_array2_cosh(ex_array: ExFloat64Array2) -> ExFloat64Array2 {
    let array: &Array2<f64> = &ex_array.resource.0;
    let result: Array2<f64> = array.mapv(f64::cosh);
    ExFloat64Array2::new(result)
}

#[rustler::nif]
pub fn float64_array2_div_euclid(ex_array: ExFloat64Array2, rhs: f64) -> ExFloat64Array2 {
    let array: &Array2<f64> = &ex_array.resource.0;
    let result: Array2<f64> = array.mapv(|x| x.div_euclid(rhs));
    ExFloat64Array2::new(result)
}

#[rustler::nif]
pub fn float64_array2_erf(ex_array: ExFloat64Array2) -> ExFloat64Array2 {
    let array: &Array2<f64> = &ex_array.resource.0;
    let result: Array2<f64> = array.mapv(libm::erf);
    ExFloat64Array2::new(result)
}

#[rustler::nif]
pub fn float64_array2_erfc(ex_array: ExFloat64Array2) -> ExFloat64Array2 {
    let array: &Array2<f64> = &ex_array.resource.0;
    let result: Array2<f64> = array.mapv(libm::erfc);
    ExFloat64Array2::new(result)
}

#[rustler::nif]
pub fn float64_array2_exp(ex_array: ExFloat64Array2) -> ExFloat64Array2 {
    let array: &Array2<f64> = &ex_array.resource.0;
    let result: Array2<f64> = array.mapv(f64::exp);
    ExFloat64Array2::new(result)
}

#[rustler::nif]
pub fn float64_array2_exp2(ex_array: ExFloat64Array2) -> ExFloat64Array2 {
    let array: &Array2<f64> = &ex_array.resource.0;
    let result: Array2<f64> = array.mapv(f64::exp2);
    ExFloat64Array2::new(result)
}

#[rustler::nif]
pub fn float64_array2_exp_m1(ex_array: ExFloat64Array2) -> ExFloat64Array2 {
    let array: &Array2<f64> = &ex_array.resource.0;
    let result: Array2<f64> = array.mapv(f64::exp_m1);
    ExFloat64Array2::new(result)
}

#[rustler::nif]
pub fn float64_array2_floor(ex_array: ExFloat64Array2) -> ExFloat64Array2 {
    let array: &Array2<f64> = &ex_array.resource.0;
    let result: Array2<f64> = array.mapv(f64::floor);
    ExFloat64Array2::new(result)
}

#[rustler::nif]
pub fn float64_array2_fract(ex_array: ExFloat64Array2) -> ExFloat64Array2 {
    let array: &Array2<f64> = &ex_array.resource.0;
    let result: Array2<f64> = array.mapv(f64::fract);
    ExFloat64Array2::new(result)
}

#[rustler::nif]
pub fn float64_array2_hypot(ex_array: ExFloat64Array2, other: f64) -> ExFloat64Array2 {
    let array: &Array2<f64> = &ex_array.resource.0;
    let result: Array2<f64> = array.mapv(|x| x.hypot(other));
    ExFloat64Array2::new(result)
}

#[rustler::nif]
pub fn float64_array2_j0(ex_array: ExFloat64Array2) -> ExFloat64Array2 {
    let array: &Array2<f64> = &ex_array.resource.0;
    let result: Array2<f64> = array.mapv(libm::j0);
    ExFloat64Array2::new(result)
}

#[rustler::nif]
pub fn float64_array2_j1(ex_array: ExFloat64Array2) -> ExFloat64Array2 {
    let array: &Array2<f64> = &ex_array.resource.0;
    let result: Array2<f64> = array.mapv(libm::j1);
    ExFloat64Array2::new(result)
}

#[rustler::nif]
pub fn float64_array2_lgamma(ex_array: ExFloat64Array2) -> ExFloat64Array2 {
    let array: &Array2<f64> = &ex_array.resource.0;
    let result: Array2<f64> = array.mapv(libm::lgamma);
    ExFloat64Array2::new(result)
}

#[rustler::nif]
pub fn float64_array2_ln(ex_array: ExFloat64Array2) -> ExFloat64Array2 {
    let array: &Array2<f64> = &ex_array.resource.0;
    let result: Array2<f64> = array.mapv(f64::ln);
    ExFloat64Array2::new(result)
}

#[rustler::nif]
pub fn float64_array2_ln_1p(ex_array: ExFloat64Array2) -> ExFloat64Array2 {
    let array: &Array2<f64> = &ex_array.resource.0;
    let result: Array2<f64> = array.mapv(f64::ln_1p);
    ExFloat64Array2::new(result)
}

#[rustler::nif]
pub fn float64_array2_log(ex_array: ExFloat64Array2, base: f64) -> ExFloat64Array2 {
    let array: &Array2<f64> = &ex_array.resource.0;
    let result: Array2<f64> = array.mapv(|x| x.log(base));
    ExFloat64Array2::new(result)
}

#[rustler::nif]
pub fn float64_array2_log10(ex_array: ExFloat64Array2) -> ExFloat64Array2 {
    let array: &Array2<f64> = &ex_array.resource.0;
    let result: Array2<f64> = array.mapv(f64::log10);
    ExFloat64Array2::new(result)
}

#[rustler::nif]
pub fn float64_array2_log2(ex_array: ExFloat64Array2) -> ExFloat64Array2 {
    let array: &Array2<f64> = &ex_array.resource.0;
    let result: Array2<f64> = array.mapv(f64::log2);
    ExFloat64Array2::new(result)
}

#[rustler::nif]
pub fn float64_array2_mul_add(ex_array: ExFloat64Array2, a: f64, b: f64) -> ExFloat64Array2 {
    let array: &Array2<f64> = &ex_array.resource.0;
    let result: Array2<f64> = array.mapv(|x| x.mul_add(a, b));
    ExFloat64Array2::new(result)
}

#[rustler::nif]
pub fn float64_array2_powf(ex_array: ExFloat64Array2, n: f64) -> ExFloat64Array2 {
    let array: &Array2<f64> = &ex_array.resource.0;
    let result: Array2<f64> = array.mapv(|x| x.powf(n));
    ExFloat64Array2::new(result)
}

#[rustler::nif]
pub fn float64_array2_powi(ex_array: ExFloat64Array2, n: i32) -> ExFloat64Array2 {
    let array: &Array2<f64> = &ex_array.resource.0;
    let result: Array2<f64> = array.mapv(|x| x.powi(n));
    ExFloat64Array2::new(result)
}

#[rustler::nif]
pub fn float64_array2_rem_euclid(ex_array: ExFloat64Array2, rhs: f64) -> ExFloat64Array2 {
    let array: &Array2<f64> = &ex_array.resource.0;
    let result: Array2<f64> = array.mapv(|x| x.rem_euclid(rhs));
    ExFloat64Array2::new(result)
}

#[rustler::nif]
pub fn float64_array2_round(ex_array: ExFloat64Array2) -> ExFloat64Array2 {
    let array: &Array2<f64> = &ex_array.resource.0;
    let result: Array2<f64> = array.mapv(f64::round);
    ExFloat64Array2::new(result)
}

#[rustler::nif]
pub fn float64_array2_round_ties_even(ex_array: ExFloat64Array2) -> ExFloat64Array2 {
    let array: &Array2<f64> = &ex_array.resource.0;
    let result: Array2<f64> = array.mapv(f64::round_ties_even);
    ExFloat64Array2::new(result)
}

#[rustler::nif]
pub fn float64_array2_sin(ex_array: ExFloat64Array2) -> ExFloat64Array2 {
    let array: &Array2<f64> = &ex_array.resource.0;
    let result: Array2<f64> = array.mapv(f64::sin);
    ExFloat64Array2::new(result)
}

#[rustler::nif]
pub fn float64_array2_sinh(ex_array: ExFloat64Array2) -> ExFloat64Array2 {
    let array: &Array2<f64> = &ex_array.resource.0;
    let result: Array2<f64> = array.mapv(f64::sinh);
    ExFloat64Array2::new(result)
}

#[rustler::nif]
pub fn float64_array2_sqrt(ex_array: ExFloat64Array2) -> ExFloat64Array2 {
    let array: &Array2<f64> = &ex_array.resource.0;
    let result: Array2<f64> = array.mapv(f64::sqrt);
    ExFloat64Array2::new(result)
}

#[rustler::nif]
pub fn float64_array2_tan(ex_array: ExFloat64Array2) -> ExFloat64Array2 {
    let array: &Array2<f64> = &ex_array.resource.0;
    let result: Array2<f64> = array.mapv(f64::tan);
    ExFloat64Array2::new(result)
}

#[rustler::nif]
pub fn float64_array2_tanh(ex_array: ExFloat64Array2) -> ExFloat64Array2 {
    let array: &Array2<f64> = &ex_array.resource.0;
    let result: Array2<f64> = array.mapv(f64::tanh);
    ExFloat64Array2::new(result)
}

#[rustler::nif]
pub fn float64_array2_trunc(ex_array: ExFloat64Array2) -> ExFloat64Array2 {
    let array: &Array2<f64> = &ex_array.resource.0;
    let result: Array2<f64> = array.mapv(f64::trunc);
    ExFloat64Array2::new(result)
}

#[rustler::nif]
pub fn float64_array2_y0(ex_array: ExFloat64Array2) -> ExFloat64Array2 {
    let array: &Array2<f64> = &ex_array.resource.0;
    let result: Array2<f64> = array.mapv(libm::y0);
    ExFloat64Array2::new(result)
}

#[rustler::nif]
pub fn float64_array2_y1(ex_array: ExFloat64Array2) -> ExFloat64Array2 {
    let array: &Array2<f64> = &ex_array.resource.0;
    let result: Array2<f64> = array.mapv(libm::y1);
    ExFloat64Array2::new(result)
}

#[rustler::nif]
pub fn float64_array3_acos(ex_array: ExFloat64Array3) -> ExFloat64Array3 {
    let array: &Array3<f64> = &ex_array.resource.0;
    let result: Array3<f64> = array.mapv(f64::acos);
    ExFloat64Array3::new(result)
}

#[rustler::nif]
pub fn float64_array3_acosh(ex_array: ExFloat64Array3) -> ExFloat64Array3 {
    let array: &Array3<f64> = &ex_array.resource.0;
    let result: Array3<f64> = array.mapv(f64::acosh);
    ExFloat64Array3::new(result)
}

#[rustler::nif]
pub fn float64_array3_asin(ex_array: ExFloat64Array3) -> ExFloat64Array3 {
    let array: &Array3<f64> = &ex_array.resource.0;
    let result: Array3<f64> = array.mapv(f64::asin);
    ExFloat64Array3::new(result)
}

#[rustler::nif]
pub fn float64_array3_asinh(ex_array: ExFloat64Array3) -> ExFloat64Array3 {
    let array: &Array3<f64> = &ex_array.resource.0;
    let result: Array3<f64> = array.mapv(f64::asinh);
    ExFloat64Array3::new(result)
}

#[rustler::nif]
pub fn float64_array3_atan(ex_array: ExFloat64Array3) -> ExFloat64Array3 {
    let array: &Array3<f64> = &ex_array.resource.0;
    let result: Array3<f64> = array.mapv(f64::atan);
    ExFloat64Array3::new(result)
}

#[rustler::nif]
pub fn float64_array3_atan2(ex_array: ExFloat64Array3, other: f64) -> ExFloat64Array3 {
    let array: &Array3<f64> = &ex_array.resource.0;
    let result: Array3<f64> = array.mapv(|x| x.atan2(other));
    ExFloat64Array3::new(result)
}

#[rustler::nif]
pub fn float64_array3_atanh(ex_array: ExFloat64Array3) -> ExFloat64Array3 {
    let array: &Array3<f64> = &ex_array.resource.0;
    let result: Array3<f64> = array.mapv(f64::atanh);
    ExFloat64Array3::new(result)
}

#[rustler::nif]
pub fn float64_array3_cbrt(ex_array: ExFloat64Array3) -> ExFloat64Array3 {
    let array: &Array3<f64> = &ex_array.resource.0;
    let result: Array3<f64> = array.mapv(f64::cbrt);
    ExFloat64Array3::new(result)
}

#[rustler::nif]
pub fn float64_array3_ceil(ex_array: ExFloat64Array3) -> ExFloat64Array3 {
    let array: &Array3<f64> = &ex_array.resource.0;
    let result: Array3<f64> = array.mapv(f64::ceil);
    ExFloat64Array3::new(result)
}

#[rustler::nif]
pub fn float64_array3_cos(ex_array: ExFloat64Array3) -> ExFloat64Array3 {
    let array: &Array3<f64> = &ex_array.resource.0;
    let result: Array3<f64> = array.mapv(f64::cos);
    ExFloat64Array3::new(result)
}

#[rustler::nif]
pub fn float64_array3_cosh(ex_array: ExFloat64Array3) -> ExFloat64Array3 {
    let array: &Array3<f64> = &ex_array.resource.0;
    let result: Array3<f64> = array.mapv(f64::cosh);
    ExFloat64Array3::new(result)
}

#[rustler::nif]
pub fn float64_array3_div_euclid(ex_array: ExFloat64Array3, rhs: f64) -> ExFloat64Array3 {
    let array: &Array3<f64> = &ex_array.resource.0;
    let result: Array3<f64> = array.mapv(|x| x.div_euclid(rhs));
    ExFloat64Array3::new(result)
}

#[rustler::nif]
pub fn float64_array3_erf(ex_array: ExFloat64Array3) -> ExFloat64Array3 {
    let array: &Array3<f64> = &ex_array.resource.0;
    let result: Array3<f64> = array.mapv(libm::erf);
    ExFloat64Array3::new(result)
}

#[rustler::nif]
pub fn float64_array3_erfc(ex_array: ExFloat64Array3) -> ExFloat64Array3 {
    let array: &Array3<f64> = &ex_array.resource.0;
    let result: Array3<f64> = array.mapv(libm::erfc);
    ExFloat64Array3::new(result)
}

#[rustler::nif]
pub fn float64_array3_exp(ex_array: ExFloat64Array3) -> ExFloat64Array3 {
    let array: &Array3<f64> = &ex_array.resource.0;
    let result: Array3<f64> = array.mapv(f64::exp);
    ExFloat64Array3::new(result)
}

#[rustler::nif]
pub fn float64_array3_exp2(ex_array: ExFloat64Array3) -> ExFloat64Array3 {
    let array: &Array3<f64> = &ex_array.resource.0;
    let result: Array3<f64> = array.mapv(f64::exp2);
    ExFloat64Array3::new(result)
}

#[rustler::nif]
pub fn float64_array3_exp_m1(ex_array: ExFloat64Array3) -> ExFloat64Array3 {
    let array: &Array3<f64> = &ex_array.resource.0;
    let result: Array3<f64> = array.mapv(f64::exp_m1);
    ExFloat64Array3::new(result)
}

#[rustler::nif]
pub fn float64_array3_floor(ex_array: ExFloat64Array3) -> ExFloat64Array3 {
    let array: &Array3<f64> = &ex_array.resource.0;
    let result: Array3<f64> = array.mapv(f64::floor);
    ExFloat64Array3::new(result)
}

#[rustler::nif]
pub fn float64_array3_fract(ex_array: ExFloat64Array3) -> ExFloat64Array3 {
    let array: &Array3<f64> = &ex_array.resource.0;
    let result: Array3<f64> = array.mapv(f64::fract);
    ExFloat64Array3::new(result)
}

#[rustler::nif]
pub fn float64_array3_hypot(ex_array: ExFloat64Array3, other: f64) -> ExFloat64Array3 {
    let array: &Array3<f64> = &ex_array.resource.0;
    let result: Array3<f64> = array.mapv(|x| x.hypot(other));
    ExFloat64Array3::new(result)
}

#[rustler::nif]
pub fn float64_array3_j0(ex_array: ExFloat64Array3) -> ExFloat64Array3 {
    let array: &Array3<f64> = &ex_array.resource.0;
    let result: Array3<f64> = array.mapv(libm::j0);
    ExFloat64Array3::new(result)
}

#[rustler::nif]
pub fn float64_array3_j1(ex_array: ExFloat64Array3) -> ExFloat64Array3 {
    let array: &Array3<f64> = &ex_array.resource.0;
    let result: Array3<f64> = array.mapv(libm::j1);
    ExFloat64Array3::new(result)
}

#[rustler::nif]
pub fn float64_array3_lgamma(ex_array: ExFloat64Array3) -> ExFloat64Array3 {
    let array: &Array3<f64> = &ex_array.resource.0;
    let result: Array3<f64> = array.mapv(libm::lgamma);
    ExFloat64Array3::new(result)
}

#[rustler::nif]
pub fn float64_array3_ln(ex_array: ExFloat64Array3) -> ExFloat64Array3 {
    let array: &Array3<f64> = &ex_array.resource.0;
    let result: Array3<f64> = array.mapv(f64::ln);
    ExFloat64Array3::new(result)
}

#[rustler::nif]
pub fn float64_array3_ln_1p(ex_array: ExFloat64Array3) -> ExFloat64Array3 {
    let array: &Array3<f64> = &ex_array.resource.0;
    let result: Array3<f64> = array.mapv(f64::ln_1p);
    ExFloat64Array3::new(result)
}

#[rustler::nif]
pub fn float64_array3_log(ex_array: ExFloat64Array3, base: f64) -> ExFloat64Array3 {
    let array: &Array3<f64> = &ex_array.resource.0;
    let result: Array3<f64> = array.mapv(|x| x.log(base));
    ExFloat64Array3::new(result)
}

#[rustler::nif]
pub fn float64_array3_log10(ex_array: ExFloat64Array3) -> ExFloat64Array3 {
    let array: &Array3<f64> = &ex_array.resource.0;
    let result: Array3<f64> = array.mapv(f64::log10);
    ExFloat64Array3::new(result)
}

#[rustler::nif]
pub fn float64_array3_log2(ex_array: ExFloat64Array3) -> ExFloat64Array3 {
    let array: &Array3<f64> = &ex_array.resource.0;
    let result: Array3<f64> = array.mapv(f64::log2);
    ExFloat64Array3::new(result)
}

#[rustler::nif]
pub fn float64_array3_mul_add(ex_array: ExFloat64Array3, a: f64, b: f64) -> ExFloat64Array3 {
    let array: &Array3<f64> = &ex_array.resource.0;
    let result: Array3<f64> = array.mapv(|x| x.mul_add(a, b));
    ExFloat64Array3::new(result)
}

#[rustler::nif]
pub fn float64_array3_powf(ex_array: ExFloat64Array3, n: f64) -> ExFloat64Array3 {
    let array: &Array3<f64> = &ex_array.resource.0;
    let result: Array3<f64> = array.mapv(|x| x.powf(n));
    ExFloat64Array3::new(result)
}

#[rustler::nif]
pub fn float64_array3_powi(ex_array: ExFloat64Array3, n: i32) -> ExFloat64Array3 {
    let array: &Array3<f64> = &ex_array.resource.0;
    let result: Array3<f64> = array.mapv(|x| x.powi(n));
    ExFloat64Array3::new(result)
}

#[rustler::nif]
pub fn float64_array3_rem_euclid(ex_array: ExFloat64Array3, rhs: f64) -> ExFloat64Array3 {
    let array: &Array3<f64> = &ex_array.resource.0;
    let result: Array3<f64> = array.mapv(|x| x.rem_euclid(rhs));
    ExFloat64Array3::new(result)
}

#[rustler::nif]
pub fn float64_array3_round(ex_array: ExFloat64Array3) -> ExFloat64Array3 {
    let array: &Array3<f64> = &ex_array.resource.0;
    let result: Array3<f64> = array.mapv(f64::round);
    ExFloat64Array3::new(result)
}

#[rustler::nif]
pub fn float64_array3_round_ties_even(ex_array: ExFloat64Array3) -> ExFloat64Array3 {
    let array: &Array3<f64> = &ex_array.resource.0;
    let result: Array3<f64> = array.mapv(f64::round_ties_even);
    ExFloat64Array3::new(result)
}

#[rustler::nif]
pub fn float64_array3_sin(ex_array: ExFloat64Array3) -> ExFloat64Array3 {
    let array: &Array3<f64> = &ex_array.resource.0;
    let result: Array3<f64> = array.mapv(f64::sin);
    ExFloat64Array3::new(result)
}

#[rustler::nif]
pub fn float64_array3_sinh(ex_array: ExFloat64Array3) -> ExFloat64Array3 {
    let array: &Array3<f64> = &ex_array.resource.0;
    let result: Array3<f64> = array.mapv(f64::sinh);
    ExFloat64Array3::new(result)
}

#[rustler::nif]
pub fn float64_array3_sqrt(ex_array: ExFloat64Array3) -> ExFloat64Array3 {
    let array: &Array3<f64> = &ex_array.resource.0;
    let result: Array3<f64> = array.mapv(f64::sqrt);
    ExFloat64Array3::new(result)
}

#[rustler::nif]
pub fn float64_array3_tan(ex_array: ExFloat64Array3) -> ExFloat64Array3 {
    let array: &Array3<f64> = &ex_array.resource.0;
    let result: Array3<f64> = array.mapv(f64::tan);
    ExFloat64Array3::new(result)
}

#[rustler::nif]
pub fn float64_array3_tanh(ex_array: ExFloat64Array3) -> ExFloat64Array3 {
    let array: &Array3<f64> = &ex_array.resource.0;
    let result: Array3<f64> = array.mapv(f64::tanh);
    ExFloat64Array3::new(result)
}

#[rustler::nif]
pub fn float64_array3_trunc(ex_array: ExFloat64Array3) -> ExFloat64Array3 {
    let array: &Array3<f64> = &ex_array.resource.0;
    let result: Array3<f64> = array.mapv(f64::trunc);
    ExFloat64Array3::new(result)
}

#[rustler::nif]
pub fn float64_array3_y0(ex_array: ExFloat64Array3) -> ExFloat64Array3 {
    let array: &Array3<f64> = &ex_array.resource.0;
    let result: Array3<f64> = array.mapv(libm::y0);
    ExFloat64Array3::new(result)
}

#[rustler::nif]
pub fn float64_array3_y1(ex_array: ExFloat64Array3) -> ExFloat64Array3 {
    let array: &Array3<f64> = &ex_array.resource.0;
    let result: Array3<f64> = array.mapv(libm::y1);
    ExFloat64Array3::new(result)
}

#[rustler::nif]
pub fn float64_array4_acos(ex_array: ExFloat64Array4) -> ExFloat64Array4 {
    let array: &Array4<f64> = &ex_array.resource.0;
    let result: Array4<f64> = array.mapv(f64::acos);
    ExFloat64Array4::new(result)
}

#[rustler::nif]
pub fn float64_array4_acosh(ex_array: ExFloat64Array4) -> ExFloat64Array4 {
    let array: &Array4<f64> = &ex_array.resource.0;
    let result: Array4<f64> = array.mapv(f64::acosh);
    ExFloat64Array4::new(result)
}

#[rustler::nif]
pub fn float64_array4_asin(ex_array: ExFloat64Array4) -> ExFloat64Array4 {
    let array: &Array4<f64> = &ex_array.resource.0;
    let result: Array4<f64> = array.mapv(f64::asin);
    ExFloat64Array4::new(result)
}

#[rustler::nif]
pub fn float64_array4_asinh(ex_array: ExFloat64Array4) -> ExFloat64Array4 {
    let array: &Array4<f64> = &ex_array.resource.0;
    let result: Array4<f64> = array.mapv(f64::asinh);
    ExFloat64Array4::new(result)
}

#[rustler::nif]
pub fn float64_array4_atan(ex_array: ExFloat64Array4) -> ExFloat64Array4 {
    let array: &Array4<f64> = &ex_array.resource.0;
    let result: Array4<f64> = array.mapv(f64::atan);
    ExFloat64Array4::new(result)
}

#[rustler::nif]
pub fn float64_array4_atan2(ex_array: ExFloat64Array4, other: f64) -> ExFloat64Array4 {
    let array: &Array4<f64> = &ex_array.resource.0;
    let result: Array4<f64> = array.mapv(|x| x.atan2(other));
    ExFloat64Array4::new(result)
}

#[rustler::nif]
pub fn float64_array4_atanh(ex_array: ExFloat64Array4) -> ExFloat64Array4 {
    let array: &Array4<f64> = &ex_array.resource.0;
    let result: Array4<f64> = array.mapv(f64::atanh);
    ExFloat64Array4::new(result)
}

#[rustler::nif]
pub fn float64_array4_cbrt(ex_array: ExFloat64Array4) -> ExFloat64Array4 {
    let array: &Array4<f64> = &ex_array.resource.0;
    let result: Array4<f64> = array.mapv(f64::cbrt);
    ExFloat64Array4::new(result)
}

#[rustler::nif]
pub fn float64_array4_ceil(ex_array: ExFloat64Array4) -> ExFloat64Array4 {
    let array: &Array4<f64> = &ex_array.resource.0;
    let result: Array4<f64> = array.mapv(f64::ceil);
    ExFloat64Array4::new(result)
}

#[rustler::nif]
pub fn float64_array4_cos(ex_array: ExFloat64Array4) -> ExFloat64Array4 {
    let array: &Array4<f64> = &ex_array.resource.0;
    let result: Array4<f64> = array.mapv(f64::cos);
    ExFloat64Array4::new(result)
}

#[rustler::nif]
pub fn float64_array4_cosh(ex_array: ExFloat64Array4) -> ExFloat64Array4 {
    let array: &Array4<f64> = &ex_array.resource.0;
    let result: Array4<f64> = array.mapv(f64::cosh);
    ExFloat64Array4::new(result)
}

#[rustler::nif]
pub fn float64_array4_div_euclid(ex_array: ExFloat64Array4, rhs: f64) -> ExFloat64Array4 {
    let array: &Array4<f64> = &ex_array.resource.0;
    let result: Array4<f64> = array.mapv(|x| x.div_euclid(rhs));
    ExFloat64Array4::new(result)
}

#[rustler::nif]
pub fn float64_array4_erf(ex_array: ExFloat64Array4) -> ExFloat64Array4 {
    let array: &Array4<f64> = &ex_array.resource.0;
    let result: Array4<f64> = array.mapv(libm::erf);
    ExFloat64Array4::new(result)
}

#[rustler::nif]
pub fn float64_array4_erfc(ex_array: ExFloat64Array4) -> ExFloat64Array4 {
    let array: &Array4<f64> = &ex_array.resource.0;
    let result: Array4<f64> = array.mapv(libm::erfc);
    ExFloat64Array4::new(result)
}

#[rustler::nif]
pub fn float64_array4_exp(ex_array: ExFloat64Array4) -> ExFloat64Array4 {
    let array: &Array4<f64> = &ex_array.resource.0;
    let result: Array4<f64> = array.mapv(f64::exp);
    ExFloat64Array4::new(result)
}

#[rustler::nif]
pub fn float64_array4_exp2(ex_array: ExFloat64Array4) -> ExFloat64Array4 {
    let array: &Array4<f64> = &ex_array.resource.0;
    let result: Array4<f64> = array.mapv(f64::exp2);
    ExFloat64Array4::new(result)
}

#[rustler::nif]
pub fn float64_array4_exp_m1(ex_array: ExFloat64Array4) -> ExFloat64Array4 {
    let array: &Array4<f64> = &ex_array.resource.0;
    let result: Array4<f64> = array.mapv(f64::exp_m1);
    ExFloat64Array4::new(result)
}

#[rustler::nif]
pub fn float64_array4_floor(ex_array: ExFloat64Array4) -> ExFloat64Array4 {
    let array: &Array4<f64> = &ex_array.resource.0;
    let result: Array4<f64> = array.mapv(f64::floor);
    ExFloat64Array4::new(result)
}

#[rustler::nif]
pub fn float64_array4_fract(ex_array: ExFloat64Array4) -> ExFloat64Array4 {
    let array: &Array4<f64> = &ex_array.resource.0;
    let result: Array4<f64> = array.mapv(f64::fract);
    ExFloat64Array4::new(result)
}

#[rustler::nif]
pub fn float64_array4_hypot(ex_array: ExFloat64Array4, other: f64) -> ExFloat64Array4 {
    let array: &Array4<f64> = &ex_array.resource.0;
    let result: Array4<f64> = array.mapv(|x| x.hypot(other));
    ExFloat64Array4::new(result)
}

#[rustler::nif]
pub fn float64_array4_j0(ex_array: ExFloat64Array4) -> ExFloat64Array4 {
    let array: &Array4<f64> = &ex_array.resource.0;
    let result: Array4<f64> = array.mapv(libm::j0);
    ExFloat64Array4::new(result)
}

#[rustler::nif]
pub fn float64_array4_j1(ex_array: ExFloat64Array4) -> ExFloat64Array4 {
    let array: &Array4<f64> = &ex_array.resource.0;
    let result: Array4<f64> = array.mapv(libm::j1);
    ExFloat64Array4::new(result)
}

#[rustler::nif]
pub fn float64_array4_lgamma(ex_array: ExFloat64Array4) -> ExFloat64Array4 {
    let array: &Array4<f64> = &ex_array.resource.0;
    let result: Array4<f64> = array.mapv(libm::lgamma);
    ExFloat64Array4::new(result)
}

#[rustler::nif]
pub fn float64_array4_ln(ex_array: ExFloat64Array4) -> ExFloat64Array4 {
    let array: &Array4<f64> = &ex_array.resource.0;
    let result: Array4<f64> = array.mapv(f64::ln);
    ExFloat64Array4::new(result)
}

#[rustler::nif]
pub fn float64_array4_ln_1p(ex_array: ExFloat64Array4) -> ExFloat64Array4 {
    let array: &Array4<f64> = &ex_array.resource.0;
    let result: Array4<f64> = array.mapv(f64::ln_1p);
    ExFloat64Array4::new(result)
}

#[rustler::nif]
pub fn float64_array4_log(ex_array: ExFloat64Array4, base: f64) -> ExFloat64Array4 {
    let array: &Array4<f64> = &ex_array.resource.0;
    let result: Array4<f64> = array.mapv(|x| x.log(base));
    ExFloat64Array4::new(result)
}

#[rustler::nif]
pub fn float64_array4_log10(ex_array: ExFloat64Array4) -> ExFloat64Array4 {
    let array: &Array4<f64> = &ex_array.resource.0;
    let result: Array4<f64> = array.mapv(f64::log10);
    ExFloat64Array4::new(result)
}

#[rustler::nif]
pub fn float64_array4_log2(ex_array: ExFloat64Array4) -> ExFloat64Array4 {
    let array: &Array4<f64> = &ex_array.resource.0;
    let result: Array4<f64> = array.mapv(f64::log2);
    ExFloat64Array4::new(result)
}

#[rustler::nif]
pub fn float64_array4_mul_add(ex_array: ExFloat64Array4, a: f64, b: f64) -> ExFloat64Array4 {
    let array: &Array4<f64> = &ex_array.resource.0;
    let result: Array4<f64> = array.mapv(|x| x.mul_add(a, b));
    ExFloat64Array4::new(result)
}

#[rustler::nif]
pub fn float64_array4_powf(ex_array: ExFloat64Array4, n: f64) -> ExFloat64Array4 {
    let array: &Array4<f64> = &ex_array.resource.0;
    let result: Array4<f64> = array.mapv(|x| x.powf(n));
    ExFloat64Array4::new(result)
}

#[rustler::nif]
pub fn float64_array4_powi(ex_array: ExFloat64Array4, n: i32) -> ExFloat64Array4 {
    let array: &Array4<f64> = &ex_array.resource.0;
    let result: Array4<f64> = array.mapv(|x| x.powi(n));
    ExFloat64Array4::new(result)
}

#[rustler::nif]
pub fn float64_array4_rem_euclid(ex_array: ExFloat64Array4, rhs: f64) -> ExFloat64Array4 {
    let array: &Array4<f64> = &ex_array.resource.0;
    let result: Array4<f64> = array.mapv(|x| x.rem_euclid(rhs));
    ExFloat64Array4::new(result)
}

#[rustler::nif]
pub fn float64_array4_round(ex_array: ExFloat64Array4) -> ExFloat64Array4 {
    let array: &Array4<f64> = &ex_array.resource.0;
    let result: Array4<f64> = array.mapv(f64::round);
    ExFloat64Array4::new(result)
}

#[rustler::nif]
pub fn float64_array4_round_ties_even(ex_array: ExFloat64Array4) -> ExFloat64Array4 {
    let array: &Array4<f64> = &ex_array.resource.0;
    let result: Array4<f64> = array.mapv(f64::round_ties_even);
    ExFloat64Array4::new(result)
}

#[rustler::nif]
pub fn float64_array4_sin(ex_array: ExFloat64Array4) -> ExFloat64Array4 {
    let array: &Array4<f64> = &ex_array.resource.0;
    let result: Array4<f64> = array.mapv(f64::sin);
    ExFloat64Array4::new(result)
}

#[rustler::nif]
pub fn float64_array4_sinh(ex_array: ExFloat64Array4) -> ExFloat64Array4 {
    let array: &Array4<f64> = &ex_array.resource.0;
    let result: Array4<f64> = array.mapv(f64::sinh);
    ExFloat64Array4::new(result)
}

#[rustler::nif]
pub fn float64_array4_sqrt(ex_array: ExFloat64Array4) -> ExFloat64Array4 {
    let array: &Array4<f64> = &ex_array.resource.0;
    let result: Array4<f64> = array.mapv(f64::sqrt);
    ExFloat64Array4::new(result)
}

#[rustler::nif]
pub fn float64_array4_tan(ex_array: ExFloat64Array4) -> ExFloat64Array4 {
    let array: &Array4<f64> = &ex_array.resource.0;
    let result: Array4<f64> = array.mapv(f64::tan);
    ExFloat64Array4::new(result)
}

#[rustler::nif]
pub fn float64_array4_tanh(ex_array: ExFloat64Array4) -> ExFloat64Array4 {
    let array: &Array4<f64> = &ex_array.resource.0;
    let result: Array4<f64> = array.mapv(f64::tanh);
    ExFloat64Array4::new(result)
}

#[rustler::nif]
pub fn float64_array4_trunc(ex_array: ExFloat64Array4) -> ExFloat64Array4 {
    let array: &Array4<f64> = &ex_array.resource.0;
    let result: Array4<f64> = array.mapv(f64::trunc);
    ExFloat64Array4::new(result)
}

#[rustler::nif]
pub fn float64_array4_y0(ex_array: ExFloat64Array4) -> ExFloat64Array4 {
    let array: &Array4<f64> = &ex_array.resource.0;
    let result: Array4<f64> = array.mapv(libm::y0);
    ExFloat64Array4::new(result)
}

#[rustler::nif]
pub fn float64_array4_y1(ex_array: ExFloat64Array4) -> ExFloat64Array4 {
    let array: &Array4<f64> = &ex_array.resource.0;
    let result: Array4<f64> = array.mapv(libm::y1);
    ExFloat64Array4::new(result)
}

#[rustler::nif]
pub fn float64_array5_acos(ex_array: ExFloat64Array5) -> ExFloat64Array5 {
    let array: &Array5<f64> = &ex_array.resource.0;
    let result: Array5<f64> = array.mapv(f64::acos);
    ExFloat64Array5::new(result)
}

#[rustler::nif]
pub fn float64_array5_acosh(ex_array: ExFloat64Array5) -> ExFloat64Array5 {
    let array: &Array5<f64> = &ex_array.resource.0;
    let result: Array5<f64> = array.mapv(f64::acosh);
    ExFloat64Array5::new(result)
}

#[rustler::nif]
pub fn float64_array5_asin(ex_array: ExFloat64Array5) -> ExFloat64Array5 {
    let array: &Array5<f64> = &ex_array.resource.0;
    let result: Array5<f64> = array.mapv(f64::asin);
    ExFloat64Array5::new(result)
}

#[rustler::nif]
pub fn float64_array5_asinh(ex_array: ExFloat64Array5) -> ExFloat64Array5 {
    let array: &Array5<f64> = &ex_array.resource.0;
    let result: Array5<f64> = array.mapv(f64::asinh);
    ExFloat64Array5::new(result)
}

#[rustler::nif]
pub fn float64_array5_atan(ex_array: ExFloat64Array5) -> ExFloat64Array5 {
    let array: &Array5<f64> = &ex_array.resource.0;
    let result: Array5<f64> = array.mapv(f64::atan);
    ExFloat64Array5::new(result)
}

#[rustler::nif]
pub fn float64_array5_atan2(ex_array: ExFloat64Array5, other: f64) -> ExFloat64Array5 {
    let array: &Array5<f64> = &ex_array.resource.0;
    let result: Array5<f64> = array.mapv(|x| x.atan2(other));
    ExFloat64Array5::new(result)
}

#[rustler::nif]
pub fn float64_array5_atanh(ex_array: ExFloat64Array5) -> ExFloat64Array5 {
    let array: &Array5<f64> = &ex_array.resource.0;
    let result: Array5<f64> = array.mapv(f64::atanh);
    ExFloat64Array5::new(result)
}

#[rustler::nif]
pub fn float64_array5_cbrt(ex_array: ExFloat64Array5) -> ExFloat64Array5 {
    let array: &Array5<f64> = &ex_array.resource.0;
    let result: Array5<f64> = array.mapv(f64::cbrt);
    ExFloat64Array5::new(result)
}

#[rustler::nif]
pub fn float64_array5_ceil(ex_array: ExFloat64Array5) -> ExFloat64Array5 {
    let array: &Array5<f64> = &ex_array.resource.0;
    let result: Array5<f64> = array.mapv(f64::ceil);
    ExFloat64Array5::new(result)
}

#[rustler::nif]
pub fn float64_array5_cos(ex_array: ExFloat64Array5) -> ExFloat64Array5 {
    let array: &Array5<f64> = &ex_array.resource.0;
    let result: Array5<f64> = array.mapv(f64::cos);
    ExFloat64Array5::new(result)
}

#[rustler::nif]
pub fn float64_array5_cosh(ex_array: ExFloat64Array5) -> ExFloat64Array5 {
    let array: &Array5<f64> = &ex_array.resource.0;
    let result: Array5<f64> = array.mapv(f64::cosh);
    ExFloat64Array5::new(result)
}

#[rustler::nif]
pub fn float64_array5_div_euclid(ex_array: ExFloat64Array5, rhs: f64) -> ExFloat64Array5 {
    let array: &Array5<f64> = &ex_array.resource.0;
    let result: Array5<f64> = array.mapv(|x| x.div_euclid(rhs));
    ExFloat64Array5::new(result)
}

#[rustler::nif]
pub fn float64_array5_erf(ex_array: ExFloat64Array5) -> ExFloat64Array5 {
    let array: &Array5<f64> = &ex_array.resource.0;
    let result: Array5<f64> = array.mapv(libm::erf);
    ExFloat64Array5::new(result)
}

#[rustler::nif]
pub fn float64_array5_erfc(ex_array: ExFloat64Array5) -> ExFloat64Array5 {
    let array: &Array5<f64> = &ex_array.resource.0;
    let result: Array5<f64> = array.mapv(libm::erfc);
    ExFloat64Array5::new(result)
}

#[rustler::nif]
pub fn float64_array5_exp(ex_array: ExFloat64Array5) -> ExFloat64Array5 {
    let array: &Array5<f64> = &ex_array.resource.0;
    let result: Array5<f64> = array.mapv(f64::exp);
    ExFloat64Array5::new(result)
}

#[rustler::nif]
pub fn float64_array5_exp2(ex_array: ExFloat64Array5) -> ExFloat64Array5 {
    let array: &Array5<f64> = &ex_array.resource.0;
    let result: Array5<f64> = array.mapv(f64::exp2);
    ExFloat64Array5::new(result)
}

#[rustler::nif]
pub fn float64_array5_exp_m1(ex_array: ExFloat64Array5) -> ExFloat64Array5 {
    let array: &Array5<f64> = &ex_array.resource.0;
    let result: Array5<f64> = array.mapv(f64::exp_m1);
    ExFloat64Array5::new(result)
}

#[rustler::nif]
pub fn float64_array5_floor(ex_array: ExFloat64Array5) -> ExFloat64Array5 {
    let array: &Array5<f64> = &ex_array.resource.0;
    let result: Array5<f64> = array.mapv(f64::floor);
    ExFloat64Array5::new(result)
}

#[rustler::nif]
pub fn float64_array5_fract(ex_array: ExFloat64Array5) -> ExFloat64Array5 {
    let array: &Array5<f64> = &ex_array.resource.0;
    let result: Array5<f64> = array.mapv(f64::fract);
    ExFloat64Array5::new(result)
}

#[rustler::nif]
pub fn float64_array5_hypot(ex_array: ExFloat64Array5, other: f64) -> ExFloat64Array5 {
    let array: &Array5<f64> = &ex_array.resource.0;
    let result: Array5<f64> = array.mapv(|x| x.hypot(other));
    ExFloat64Array5::new(result)
}

#[rustler::nif]
pub fn float64_array5_j0(ex_array: ExFloat64Array5) -> ExFloat64Array5 {
    let array: &Array5<f64> = &ex_array.resource.0;
    let result: Array5<f64> = array.mapv(libm::j0);
    ExFloat64Array5::new(result)
}

#[rustler::nif]
pub fn float64_array5_j1(ex_array: ExFloat64Array5) -> ExFloat64Array5 {
    let array: &Array5<f64> = &ex_array.resource.0;
    let result: Array5<f64> = array.mapv(libm::j1);
    ExFloat64Array5::new(result)
}

#[rustler::nif]
pub fn float64_array5_lgamma(ex_array: ExFloat64Array5) -> ExFloat64Array5 {
    let array: &Array5<f64> = &ex_array.resource.0;
    let result: Array5<f64> = array.mapv(libm::lgamma);
    ExFloat64Array5::new(result)
}

#[rustler::nif]
pub fn float64_array5_ln(ex_array: ExFloat64Array5) -> ExFloat64Array5 {
    let array: &Array5<f64> = &ex_array.resource.0;
    let result: Array5<f64> = array.mapv(f64::ln);
    ExFloat64Array5::new(result)
}

#[rustler::nif]
pub fn float64_array5_ln_1p(ex_array: ExFloat64Array5) -> ExFloat64Array5 {
    let array: &Array5<f64> = &ex_array.resource.0;
    let result: Array5<f64> = array.mapv(f64::ln_1p);
    ExFloat64Array5::new(result)
}

#[rustler::nif]
pub fn float64_array5_log(ex_array: ExFloat64Array5, base: f64) -> ExFloat64Array5 {
    let array: &Array5<f64> = &ex_array.resource.0;
    let result: Array5<f64> = array.mapv(|x| x.log(base));
    ExFloat64Array5::new(result)
}

#[rustler::nif]
pub fn float64_array5_log10(ex_array: ExFloat64Array5) -> ExFloat64Array5 {
    let array: &Array5<f64> = &ex_array.resource.0;
    let result: Array5<f64> = array.mapv(f64::log10);
    ExFloat64Array5::new(result)
}

#[rustler::nif]
pub fn float64_array5_log2(ex_array: ExFloat64Array5) -> ExFloat64Array5 {
    let array: &Array5<f64> = &ex_array.resource.0;
    let result: Array5<f64> = array.mapv(f64::log2);
    ExFloat64Array5::new(result)
}

#[rustler::nif]
pub fn float64_array5_mul_add(ex_array: ExFloat64Array5, a: f64, b: f64) -> ExFloat64Array5 {
    let array: &Array5<f64> = &ex_array.resource.0;
    let result: Array5<f64> = array.mapv(|x| x.mul_add(a, b));
    ExFloat64Array5::new(result)
}

#[rustler::nif]
pub fn float64_array5_powf(ex_array: ExFloat64Array5, n: f64) -> ExFloat64Array5 {
    let array: &Array5<f64> = &ex_array.resource.0;
    let result: Array5<f64> = array.mapv(|x| x.powf(n));
    ExFloat64Array5::new(result)
}

#[rustler::nif]
pub fn float64_array5_powi(ex_array: ExFloat64Array5, n: i32) -> ExFloat64Array5 {
    let array: &Array5<f64> = &ex_array.resource.0;
    let result: Array5<f64> = array.mapv(|x| x.powi(n));
    ExFloat64Array5::new(result)
}

#[rustler::nif]
pub fn float64_array5_rem_euclid(ex_array: ExFloat64Array5, rhs: f64) -> ExFloat64Array5 {
    let array: &Array5<f64> = &ex_array.resource.0;
    let result: Array5<f64> = array.mapv(|x| x.rem_euclid(rhs));
    ExFloat64Array5::new(result)
}

#[rustler::nif]
pub fn float64_array5_round(ex_array: ExFloat64Array5) -> ExFloat64Array5 {
    let array: &Array5<f64> = &ex_array.resource.0;
    let result: Array5<f64> = array.mapv(f64::round);
    ExFloat64Array5::new(result)
}

#[rustler::nif]
pub fn float64_array5_round_ties_even(ex_array: ExFloat64Array5) -> ExFloat64Array5 {
    let array: &Array5<f64> = &ex_array.resource.0;
    let result: Array5<f64> = array.mapv(f64::round_ties_even);
    ExFloat64Array5::new(result)
}

#[rustler::nif]
pub fn float64_array5_sin(ex_array: ExFloat64Array5) -> ExFloat64Array5 {
    let array: &Array5<f64> = &ex_array.resource.0;
    let result: Array5<f64> = array.mapv(f64::sin);
    ExFloat64Array5::new(result)
}

#[rustler::nif]
pub fn float64_array5_sinh(ex_array: ExFloat64Array5) -> ExFloat64Array5 {
    let array: &Array5<f64> = &ex_array.resource.0;
    let result: Array5<f64> = array.mapv(f64::sinh);
    ExFloat64Array5::new(result)
}

#[rustler::nif]
pub fn float64_array5_sqrt(ex_array: ExFloat64Array5) -> ExFloat64Array5 {
    let array: &Array5<f64> = &ex_array.resource.0;
    let result: Array5<f64> = array.mapv(f64::sqrt);
    ExFloat64Array5::new(result)
}

#[rustler::nif]
pub fn float64_array5_tan(ex_array: ExFloat64Array5) -> ExFloat64Array5 {
    let array: &Array5<f64> = &ex_array.resource.0;
    let result: Array5<f64> = array.mapv(f64::tan);
    ExFloat64Array5::new(result)
}

#[rustler::nif]
pub fn float64_array5_tanh(ex_array: ExFloat64Array5) -> ExFloat64Array5 {
    let array: &Array5<f64> = &ex_array.resource.0;
    let result: Array5<f64> = array.mapv(f64::tanh);
    ExFloat64Array5::new(result)
}

#[rustler::nif]
pub fn float64_array5_trunc(ex_array: ExFloat64Array5) -> ExFloat64Array5 {
    let array: &Array5<f64> = &ex_array.resource.0;
    let result: Array5<f64> = array.mapv(f64::trunc);
    ExFloat64Array5::new(result)
}

#[rustler::nif]
pub fn float64_array5_y0(ex_array: ExFloat64Array5) -> ExFloat64Array5 {
    let array: &Array5<f64> = &ex_array.resource.0;
    let result: Array5<f64> = array.mapv(libm::y0);
    ExFloat64Array5::new(result)
}

#[rustler::nif]
pub fn float64_array5_y1(ex_array: ExFloat64Array5) -> ExFloat64Array5 {
    let array: &Array5<f64> = &ex_array.resource.0;
    let result: Array5<f64> = array.mapv(libm::y1);
    ExFloat64Array5::new(result)
}

#[rustler::nif]
pub fn float64_array6_acos(ex_array: ExFloat64Array6) -> ExFloat64Array6 {
    let array: &Array6<f64> = &ex_array.resource.0;
    let result: Array6<f64> = array.mapv(f64::acos);
    ExFloat64Array6::new(result)
}

#[rustler::nif]
pub fn float64_array6_acosh(ex_array: ExFloat64Array6) -> ExFloat64Array6 {
    let array: &Array6<f64> = &ex_array.resource.0;
    let result: Array6<f64> = array.mapv(f64::acosh);
    ExFloat64Array6::new(result)
}

#[rustler::nif]
pub fn float64_array6_asin(ex_array: ExFloat64Array6) -> ExFloat64Array6 {
    let array: &Array6<f64> = &ex_array.resource.0;
    let result: Array6<f64> = array.mapv(f64::asin);
    ExFloat64Array6::new(result)
}

#[rustler::nif]
pub fn float64_array6_asinh(ex_array: ExFloat64Array6) -> ExFloat64Array6 {
    let array: &Array6<f64> = &ex_array.resource.0;
    let result: Array6<f64> = array.mapv(f64::asinh);
    ExFloat64Array6::new(result)
}

#[rustler::nif]
pub fn float64_array6_atan(ex_array: ExFloat64Array6) -> ExFloat64Array6 {
    let array: &Array6<f64> = &ex_array.resource.0;
    let result: Array6<f64> = array.mapv(f64::atan);
    ExFloat64Array6::new(result)
}

#[rustler::nif]
pub fn float64_array6_atan2(ex_array: ExFloat64Array6, other: f64) -> ExFloat64Array6 {
    let array: &Array6<f64> = &ex_array.resource.0;
    let result: Array6<f64> = array.mapv(|x| x.atan2(other));
    ExFloat64Array6::new(result)
}

#[rustler::nif]
pub fn float64_array6_atanh(ex_array: ExFloat64Array6) -> ExFloat64Array6 {
    let array: &Array6<f64> = &ex_array.resource.0;
    let result: Array6<f64> = array.mapv(f64::atanh);
    ExFloat64Array6::new(result)
}

#[rustler::nif]
pub fn float64_array6_cbrt(ex_array: ExFloat64Array6) -> ExFloat64Array6 {
    let array: &Array6<f64> = &ex_array.resource.0;
    let result: Array6<f64> = array.mapv(f64::cbrt);
    ExFloat64Array6::new(result)
}

#[rustler::nif]
pub fn float64_array6_ceil(ex_array: ExFloat64Array6) -> ExFloat64Array6 {
    let array: &Array6<f64> = &ex_array.resource.0;
    let result: Array6<f64> = array.mapv(f64::ceil);
    ExFloat64Array6::new(result)
}

#[rustler::nif]
pub fn float64_array6_cos(ex_array: ExFloat64Array6) -> ExFloat64Array6 {
    let array: &Array6<f64> = &ex_array.resource.0;
    let result: Array6<f64> = array.mapv(f64::cos);
    ExFloat64Array6::new(result)
}

#[rustler::nif]
pub fn float64_array6_cosh(ex_array: ExFloat64Array6) -> ExFloat64Array6 {
    let array: &Array6<f64> = &ex_array.resource.0;
    let result: Array6<f64> = array.mapv(f64::cosh);
    ExFloat64Array6::new(result)
}

#[rustler::nif]
pub fn float64_array6_div_euclid(ex_array: ExFloat64Array6, rhs: f64) -> ExFloat64Array6 {
    let array: &Array6<f64> = &ex_array.resource.0;
    let result: Array6<f64> = array.mapv(|x| x.div_euclid(rhs));
    ExFloat64Array6::new(result)
}

#[rustler::nif]
pub fn float64_array6_erf(ex_array: ExFloat64Array6) -> ExFloat64Array6 {
    let array: &Array6<f64> = &ex_array.resource.0;
    let result: Array6<f64> = array.mapv(libm::erf);
    ExFloat64Array6::new(result)
}

#[rustler::nif]
pub fn float64_array6_erfc(ex_array: ExFloat64Array6) -> ExFloat64Array6 {
    let array: &Array6<f64> = &ex_array.resource.0;
    let result: Array6<f64> = array.mapv(libm::erfc);
    ExFloat64Array6::new(result)
}

#[rustler::nif]
pub fn float64_array6_exp(ex_array: ExFloat64Array6) -> ExFloat64Array6 {
    let array: &Array6<f64> = &ex_array.resource.0;
    let result: Array6<f64> = array.mapv(f64::exp);
    ExFloat64Array6::new(result)
}

#[rustler::nif]
pub fn float64_array6_exp2(ex_array: ExFloat64Array6) -> ExFloat64Array6 {
    let array: &Array6<f64> = &ex_array.resource.0;
    let result: Array6<f64> = array.mapv(f64::exp2);
    ExFloat64Array6::new(result)
}

#[rustler::nif]
pub fn float64_array6_exp_m1(ex_array: ExFloat64Array6) -> ExFloat64Array6 {
    let array: &Array6<f64> = &ex_array.resource.0;
    let result: Array6<f64> = array.mapv(f64::exp_m1);
    ExFloat64Array6::new(result)
}

#[rustler::nif]
pub fn float64_array6_floor(ex_array: ExFloat64Array6) -> ExFloat64Array6 {
    let array: &Array6<f64> = &ex_array.resource.0;
    let result: Array6<f64> = array.mapv(f64::floor);
    ExFloat64Array6::new(result)
}

#[rustler::nif]
pub fn float64_array6_fract(ex_array: ExFloat64Array6) -> ExFloat64Array6 {
    let array: &Array6<f64> = &ex_array.resource.0;
    let result: Array6<f64> = array.mapv(f64::fract);
    ExFloat64Array6::new(result)
}

#[rustler::nif]
pub fn float64_array6_hypot(ex_array: ExFloat64Array6, other: f64) -> ExFloat64Array6 {
    let array: &Array6<f64> = &ex_array.resource.0;
    let result: Array6<f64> = array.mapv(|x| x.hypot(other));
    ExFloat64Array6::new(result)
}

#[rustler::nif]
pub fn float64_array6_j0(ex_array: ExFloat64Array6) -> ExFloat64Array6 {
    let array: &Array6<f64> = &ex_array.resource.0;
    let result: Array6<f64> = array.mapv(libm::j0);
    ExFloat64Array6::new(result)
}

#[rustler::nif]
pub fn float64_array6_j1(ex_array: ExFloat64Array6) -> ExFloat64Array6 {
    let array: &Array6<f64> = &ex_array.resource.0;
    let result: Array6<f64> = array.mapv(libm::j1);
    ExFloat64Array6::new(result)
}

#[rustler::nif]
pub fn float64_array6_lgamma(ex_array: ExFloat64Array6) -> ExFloat64Array6 {
    let array: &Array6<f64> = &ex_array.resource.0;
    let result: Array6<f64> = array.mapv(libm::lgamma);
    ExFloat64Array6::new(result)
}

#[rustler::nif]
pub fn float64_array6_ln(ex_array: ExFloat64Array6) -> ExFloat64Array6 {
    let array: &Array6<f64> = &ex_array.resource.0;
    let result: Array6<f64> = array.mapv(f64::ln);
    ExFloat64Array6::new(result)
}

#[rustler::nif]
pub fn float64_array6_ln_1p(ex_array: ExFloat64Array6) -> ExFloat64Array6 {
    let array: &Array6<f64> = &ex_array.resource.0;
    let result: Array6<f64> = array.mapv(f64::ln_1p);
    ExFloat64Array6::new(result)
}

#[rustler::nif]
pub fn float64_array6_log(ex_array: ExFloat64Array6, base: f64) -> ExFloat64Array6 {
    let array: &Array6<f64> = &ex_array.resource.0;
    let result: Array6<f64> = array.mapv(|x| x.log(base));
    ExFloat64Array6::new(result)
}

#[rustler::nif]
pub fn float64_array6_log10(ex_array: ExFloat64Array6) -> ExFloat64Array6 {
    let array: &Array6<f64> = &ex_array.resource.0;
    let result: Array6<f64> = array.mapv(f64::log10);
    ExFloat64Array6::new(result)
}

#[rustler::nif]
pub fn float64_array6_log2(ex_array: ExFloat64Array6) -> ExFloat64Array6 {
    let array: &Array6<f64> = &ex_array.resource.0;
    let result: Array6<f64> = array.mapv(f64::log2);
    ExFloat64Array6::new(result)
}

#[rustler::nif]
pub fn float64_array6_mul_add(ex_array: ExFloat64Array6, a: f64, b: f64) -> ExFloat64Array6 {
    let array: &Array6<f64> = &ex_array.resource.0;
    let result: Array6<f64> = array.mapv(|x| x.mul_add(a, b));
    ExFloat64Array6::new(result)
}

#[rustler::nif]
pub fn float64_array6_powf(ex_array: ExFloat64Array6, n: f64) -> ExFloat64Array6 {
    let array: &Array6<f64> = &ex_array.resource.0;
    let result: Array6<f64> = array.mapv(|x| x.powf(n));
    ExFloat64Array6::new(result)
}

#[rustler::nif]
pub fn float64_array6_powi(ex_array: ExFloat64Array6, n: i32) -> ExFloat64Array6 {
    let array: &Array6<f64> = &ex_array.resource.0;
    let result: Array6<f64> = array.mapv(|x| x.powi(n));
    ExFloat64Array6::new(result)
}

#[rustler::nif]
pub fn float64_array6_rem_euclid(ex_array: ExFloat64Array6, rhs: f64) -> ExFloat64Array6 {
    let array: &Array6<f64> = &ex_array.resource.0;
    let result: Array6<f64> = array.mapv(|x| x.rem_euclid(rhs));
    ExFloat64Array6::new(result)
}

#[rustler::nif]
pub fn float64_array6_round(ex_array: ExFloat64Array6) -> ExFloat64Array6 {
    let array: &Array6<f64> = &ex_array.resource.0;
    let result: Array6<f64> = array.mapv(f64::round);
    ExFloat64Array6::new(result)
}

#[rustler::nif]
pub fn float64_array6_round_ties_even(ex_array: ExFloat64Array6) -> ExFloat64Array6 {
    let array: &Array6<f64> = &ex_array.resource.0;
    let result: Array6<f64> = array.mapv(f64::round_ties_even);
    ExFloat64Array6::new(result)
}

#[rustler::nif]
pub fn float64_array6_sin(ex_array: ExFloat64Array6) -> ExFloat64Array6 {
    let array: &Array6<f64> = &ex_array.resource.0;
    let result: Array6<f64> = array.mapv(f64::sin);
    ExFloat64Array6::new(result)
}

#[rustler::nif]
pub fn float64_array6_sinh(ex_array: ExFloat64Array6) -> ExFloat64Array6 {
    let array: &Array6<f64> = &ex_array.resource.0;
    let result: Array6<f64> = array.mapv(f64::sinh);
    ExFloat64Array6::new(result)
}

#[rustler::nif]
pub fn float64_array6_sqrt(ex_array: ExFloat64Array6) -> ExFloat64Array6 {
    let array: &Array6<f64> = &ex_array.resource.0;
    let result: Array6<f64> = array.mapv(f64::sqrt);
    ExFloat64Array6::new(result)
}

#[rustler::nif]
pub fn float64_array6_tan(ex_array: ExFloat64Array6) -> ExFloat64Array6 {
    let array: &Array6<f64> = &ex_array.resource.0;
    let result: Array6<f64> = array.mapv(f64::tan);
    ExFloat64Array6::new(result)
}

#[rustler::nif]
pub fn float64_array6_tanh(ex_array: ExFloat64Array6) -> ExFloat64Array6 {
    let array: &Array6<f64> = &ex_array.resource.0;
    let result: Array6<f64> = array.mapv(f64::tanh);
    ExFloat64Array6::new(result)
}

#[rustler::nif]
pub fn float64_array6_trunc(ex_array: ExFloat64Array6) -> ExFloat64Array6 {
    let array: &Array6<f64> = &ex_array.resource.0;
    let result: Array6<f64> = array.mapv(f64::trunc);
    ExFloat64Array6::new(result)
}

#[rustler::nif]
pub fn float64_array6_y0(ex_array: ExFloat64Array6) -> ExFloat64Array6 {
    let array: &Array6<f64> = &ex_array.resource.0;
    let result: Array6<f64> = array.mapv(libm::y0);
    ExFloat64Array6::new(result)
}

#[rustler::nif]
pub fn float64_array6_y1(ex_array: ExFloat64Array6) -> ExFloat64Array6 {
    let array: &Array6<f64> = &ex_array.resource.0;
    let result: Array6<f64> = array.mapv(libm::y1);
    ExFloat64Array6::new(result)
}

