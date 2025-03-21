use ndarray::{Array1, Array2, Array3, Array4, Array5, Array6};
use crate::datatypes::*;

// Array builders
// --------------

// Array of zeros
#[rustler::nif]
pub fn float64_array1_zeros(n1: usize) -> ExFloat64Array1 {
    ExFloat64Array1::new(Array1::zeros(n1))
}

#[rustler::nif]
pub fn float64_array2_zeros(n1: usize, n2: usize) -> ExFloat64Array2 {
    ExFloat64Array2::new(Array2::zeros((n1, n2)))
}

#[rustler::nif]
pub fn float64_array3_zeros(n1: usize, n2: usize, n3: usize) -> ExFloat64Array3 {
    ExFloat64Array3::new(Array3::zeros((n1, n2, n3)))
}

#[rustler::nif]
pub fn float64_array4_zeros(n1: usize, n2: usize, n3: usize, n4: usize) -> ExFloat64Array4 {
    ExFloat64Array4::new(Array4::zeros((n1, n2, n3, n4)))
}

#[rustler::nif]
pub fn float64_array5_zeros(n1: usize, n2: usize, n3: usize, n4: usize, n5: usize) -> ExFloat64Array5 {
    ExFloat64Array5::new(Array5::zeros((n1, n2, n3, n4, n5)))
}

#[rustler::nif]
pub fn float64_array6_zeros(n1: usize, n2: usize, n3: usize, n4: usize, n5: usize, n6: usize) -> ExFloat64Array6 {
    ExFloat64Array6::new(Array6::zeros((n1, n2, n3, n4, n5, n6)))
}


// Array of ones
#[rustler::nif]
pub fn float64_array1_ones(n1: usize) -> ExFloat64Array1 {
    ExFloat64Array1::new(Array1::ones(n1))
}

#[rustler::nif]
pub fn float64_array2_ones(n1: usize, n2: usize) -> ExFloat64Array2 {
    ExFloat64Array2::new(Array2::ones((n1, n2)))
}

#[rustler::nif]
pub fn float64_array3_ones(n1: usize, n2: usize, n3: usize) -> ExFloat64Array3 {
    ExFloat64Array3::new(Array3::ones((n1, n2, n3)))
}

#[rustler::nif]
pub fn float64_array4_ones(n1: usize, n2: usize, n3: usize, n4: usize) -> ExFloat64Array4 {
    ExFloat64Array4::new(Array4::ones((n1, n2, n3, n4)))
}

#[rustler::nif]
pub fn float64_array5_ones(n1: usize, n2: usize, n3: usize, n4: usize, n5: usize) -> ExFloat64Array5 {
    ExFloat64Array5::new(Array5::ones((n1, n2, n3, n4, n5)))
}

#[rustler::nif]
pub fn float64_array6_ones(n1: usize, n2: usize, n3: usize, n4: usize, n5: usize, n6: usize) -> ExFloat64Array6 {
    ExFloat64Array6::new(Array6::ones((n1, n2, n3, n4, n5, n6)))
}
