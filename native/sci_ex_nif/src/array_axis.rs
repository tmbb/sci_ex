use crate::datatypes::*;
use ndarray::Axis;


#[rustler::nif]
pub fn float32_array1_invert_axis(ex_array1: ExFloat32Array1, axis_nr: usize) -> ExFloat32Array1 {
    let mut array_clone = ex_array1.resource.0.clone();
    array_clone.invert_axis(Axis(axis_nr));
    ExFloat32Array1::new(array_clone)
}

#[rustler::nif]
pub fn float32_array2_invert_axis(ex_array2: ExFloat32Array2, axis_nr: usize) -> ExFloat32Array2 {
    let mut array_clone = ex_array2.resource.0.clone();
    array_clone.invert_axis(Axis(axis_nr));
    ExFloat32Array2::new(array_clone)
}

#[rustler::nif]
pub fn float32_array3_invert_axis(ex_array3: ExFloat32Array3, axis_nr: usize) -> ExFloat32Array3 {
    let mut array_clone = ex_array3.resource.0.clone();
    array_clone.invert_axis(Axis(axis_nr));
    ExFloat32Array3::new(array_clone)
}

#[rustler::nif]
pub fn float32_array4_invert_axis(ex_array4: ExFloat32Array4, axis_nr: usize) -> ExFloat32Array4 {
    let mut array_clone = ex_array4.resource.0.clone();
    array_clone.invert_axis(Axis(axis_nr));
    ExFloat32Array4::new(array_clone)
}

#[rustler::nif]
pub fn float32_array5_invert_axis(ex_array5: ExFloat32Array5, axis_nr: usize) -> ExFloat32Array5 {
    let mut array_clone = ex_array5.resource.0.clone();
    array_clone.invert_axis(Axis(axis_nr));
    ExFloat32Array5::new(array_clone)
}

#[rustler::nif]
pub fn float32_array6_invert_axis(ex_array6: ExFloat32Array6, axis_nr: usize) -> ExFloat32Array6 {
    let mut array_clone = ex_array6.resource.0.clone();
    array_clone.invert_axis(Axis(axis_nr));
    ExFloat32Array6::new(array_clone)
}

#[rustler::nif]
pub fn float64_array1_invert_axis(ex_array1: ExFloat64Array1, axis_nr: usize) -> ExFloat64Array1 {
    let mut array_clone = ex_array1.resource.0.clone();
    array_clone.invert_axis(Axis(axis_nr));
    ExFloat64Array1::new(array_clone)
}

#[rustler::nif]
pub fn float64_array2_invert_axis(ex_array2: ExFloat64Array2, axis_nr: usize) -> ExFloat64Array2 {
    let mut array_clone = ex_array2.resource.0.clone();
    array_clone.invert_axis(Axis(axis_nr));
    ExFloat64Array2::new(array_clone)
}

#[rustler::nif]
pub fn float64_array3_invert_axis(ex_array3: ExFloat64Array3, axis_nr: usize) -> ExFloat64Array3 {
    let mut array_clone = ex_array3.resource.0.clone();
    array_clone.invert_axis(Axis(axis_nr));
    ExFloat64Array3::new(array_clone)
}

#[rustler::nif]
pub fn float64_array4_invert_axis(ex_array4: ExFloat64Array4, axis_nr: usize) -> ExFloat64Array4 {
    let mut array_clone = ex_array4.resource.0.clone();
    array_clone.invert_axis(Axis(axis_nr));
    ExFloat64Array4::new(array_clone)
}

#[rustler::nif]
pub fn float64_array5_invert_axis(ex_array5: ExFloat64Array5, axis_nr: usize) -> ExFloat64Array5 {
    let mut array_clone = ex_array5.resource.0.clone();
    array_clone.invert_axis(Axis(axis_nr));
    ExFloat64Array5::new(array_clone)
}

#[rustler::nif]
pub fn float64_array6_invert_axis(ex_array6: ExFloat64Array6, axis_nr: usize) -> ExFloat64Array6 {
    let mut array_clone = ex_array6.resource.0.clone();
    array_clone.invert_axis(Axis(axis_nr));
    ExFloat64Array6::new(array_clone)
}

#[rustler::nif]
pub fn complex32_array1_invert_axis(ex_array1: ExComplex32Array1, axis_nr: usize) -> ExComplex32Array1 {
    let mut array_clone = ex_array1.resource.0.clone();
    array_clone.invert_axis(Axis(axis_nr));
    ExComplex32Array1::new(array_clone)
}

#[rustler::nif]
pub fn complex32_array2_invert_axis(ex_array2: ExComplex32Array2, axis_nr: usize) -> ExComplex32Array2 {
    let mut array_clone = ex_array2.resource.0.clone();
    array_clone.invert_axis(Axis(axis_nr));
    ExComplex32Array2::new(array_clone)
}

#[rustler::nif]
pub fn complex32_array3_invert_axis(ex_array3: ExComplex32Array3, axis_nr: usize) -> ExComplex32Array3 {
    let mut array_clone = ex_array3.resource.0.clone();
    array_clone.invert_axis(Axis(axis_nr));
    ExComplex32Array3::new(array_clone)
}

#[rustler::nif]
pub fn complex32_array4_invert_axis(ex_array4: ExComplex32Array4, axis_nr: usize) -> ExComplex32Array4 {
    let mut array_clone = ex_array4.resource.0.clone();
    array_clone.invert_axis(Axis(axis_nr));
    ExComplex32Array4::new(array_clone)
}

#[rustler::nif]
pub fn complex32_array5_invert_axis(ex_array5: ExComplex32Array5, axis_nr: usize) -> ExComplex32Array5 {
    let mut array_clone = ex_array5.resource.0.clone();
    array_clone.invert_axis(Axis(axis_nr));
    ExComplex32Array5::new(array_clone)
}

#[rustler::nif]
pub fn complex32_array6_invert_axis(ex_array6: ExComplex32Array6, axis_nr: usize) -> ExComplex32Array6 {
    let mut array_clone = ex_array6.resource.0.clone();
    array_clone.invert_axis(Axis(axis_nr));
    ExComplex32Array6::new(array_clone)
}

#[rustler::nif]
pub fn complex64_array1_invert_axis(ex_array1: ExComplex64Array1, axis_nr: usize) -> ExComplex64Array1 {
    let mut array_clone = ex_array1.resource.0.clone();
    array_clone.invert_axis(Axis(axis_nr));
    ExComplex64Array1::new(array_clone)
}

#[rustler::nif]
pub fn complex64_array2_invert_axis(ex_array2: ExComplex64Array2, axis_nr: usize) -> ExComplex64Array2 {
    let mut array_clone = ex_array2.resource.0.clone();
    array_clone.invert_axis(Axis(axis_nr));
    ExComplex64Array2::new(array_clone)
}

#[rustler::nif]
pub fn complex64_array3_invert_axis(ex_array3: ExComplex64Array3, axis_nr: usize) -> ExComplex64Array3 {
    let mut array_clone = ex_array3.resource.0.clone();
    array_clone.invert_axis(Axis(axis_nr));
    ExComplex64Array3::new(array_clone)
}

#[rustler::nif]
pub fn complex64_array4_invert_axis(ex_array4: ExComplex64Array4, axis_nr: usize) -> ExComplex64Array4 {
    let mut array_clone = ex_array4.resource.0.clone();
    array_clone.invert_axis(Axis(axis_nr));
    ExComplex64Array4::new(array_clone)
}

#[rustler::nif]
pub fn complex64_array5_invert_axis(ex_array5: ExComplex64Array5, axis_nr: usize) -> ExComplex64Array5 {
    let mut array_clone = ex_array5.resource.0.clone();
    array_clone.invert_axis(Axis(axis_nr));
    ExComplex64Array5::new(array_clone)
}

#[rustler::nif]
pub fn complex64_array6_invert_axis(ex_array6: ExComplex64Array6, axis_nr: usize) -> ExComplex64Array6 {
    let mut array_clone = ex_array6.resource.0.clone();
    array_clone.invert_axis(Axis(axis_nr));
    ExComplex64Array6::new(array_clone)
}
