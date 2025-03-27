use crate::datatypes::*;

use ndarray::{Array1, Array2, Array3, Array4, Array5, Array6};

use ndrustfft;
use ndrustfft::DctHandler;

// ----------------------------------
// Discrete cosine transform
// ----------------------------------

#[rustler::nif]
pub fn float64_dct1_array1(data: ExFloat64Array1, axis: usize) -> ExFloat64Array1 {
    let dims = data.resource.0.raw_dim();
    let dim = dims[axis];
    let mut output: Array1<f64> = Array1::zeros(dims);
    let mut handler: DctHandler<f64> = DctHandler::new(dim);
    ndrustfft::nddct1(&data.resource.0, &mut output, &mut handler, axis);
    // Now, the `output` has been mutated into the right value
    ExFloat64Array1::new(output)
}

#[rustler::nif]
pub fn float64_dct1_array2(data: ExFloat64Array2, axis: usize) -> ExFloat64Array2 {
    let dims = data.resource.0.raw_dim();
    let dim = dims[axis];
    let mut output: Array2<f64> = Array2::zeros(dims);
    let mut handler: DctHandler<f64> = DctHandler::new(dim);
    ndrustfft::nddct1(&data.resource.0, &mut output, &mut handler, axis);
    // Now, the `output` has been mutated into the right value
    ExFloat64Array2::new(output)
}

#[rustler::nif]
pub fn float64_dct1_array3(data: ExFloat64Array3, axis: usize) -> ExFloat64Array3 {
    let dims = data.resource.0.raw_dim();
    let dim = dims[axis];
    let mut output: Array3<f64> = Array3::zeros(dims);
    let mut handler: DctHandler<f64> = DctHandler::new(dim);
    ndrustfft::nddct1(&data.resource.0, &mut output, &mut handler, axis);
    // Now, the `output` has been mutated into the right value
    ExFloat64Array3::new(output)
}

#[rustler::nif]
pub fn float64_dct1_array4(data: ExFloat64Array4, axis: usize) -> ExFloat64Array4 {
    let dims = data.resource.0.raw_dim();
    let dim = dims[axis];
    let mut output: Array4<f64> = Array4::zeros(dims);
    let mut handler: DctHandler<f64> = DctHandler::new(dim);
    ndrustfft::nddct1(&data.resource.0, &mut output, &mut handler, axis);
    // Now, the `output` has been mutated into the right value
    ExFloat64Array4::new(output)
}

#[rustler::nif]
pub fn float64_dct1_array5(data: ExFloat64Array5, axis: usize) -> ExFloat64Array5 {
    let dims = data.resource.0.raw_dim();
    let dim = dims[axis];
    let mut output: Array5<f64> = Array5::zeros(dims);
    let mut handler: DctHandler<f64> = DctHandler::new(dim);
    ndrustfft::nddct1(&data.resource.0, &mut output, &mut handler, axis);
    // Now, the `output` has been mutated into the right value
    ExFloat64Array5::new(output)
}

#[rustler::nif]
pub fn float64_dct1_array6(data: ExFloat64Array6, axis: usize) -> ExFloat64Array6 {
    let dims = data.resource.0.raw_dim();
    let dim = dims[axis];
    let mut output: Array6<f64> = Array6::zeros(dims);
    let mut handler: DctHandler<f64> = DctHandler::new(dim);
    ndrustfft::nddct1(&data.resource.0, &mut output, &mut handler, axis);
    // Now, the `output` has been mutated into the right value
    ExFloat64Array6::new(output)
}

#[rustler::nif]
pub fn float64_dct2_array1(data: ExFloat64Array1, axis: usize) -> ExFloat64Array1 {
    let dims = data.resource.0.raw_dim();
    let dim = dims[axis];
    let mut output: Array1<f64> = Array1::zeros(dims);
    let mut handler: DctHandler<f64> = DctHandler::new(dim);
    ndrustfft::nddct2(&data.resource.0, &mut output, &mut handler, axis);
    // Now, the `output` has been mutated into the right value
    ExFloat64Array1::new(output)
}

#[rustler::nif]
pub fn float64_dct2_array2(data: ExFloat64Array2, axis: usize) -> ExFloat64Array2 {
    let dims = data.resource.0.raw_dim();
    let dim = dims[axis];
    let mut output: Array2<f64> = Array2::zeros(dims);
    let mut handler: DctHandler<f64> = DctHandler::new(dim);
    ndrustfft::nddct2(&data.resource.0, &mut output, &mut handler, axis);
    // Now, the `output` has been mutated into the right value
    ExFloat64Array2::new(output)
}

#[rustler::nif]
pub fn float64_dct2_array3(data: ExFloat64Array3, axis: usize) -> ExFloat64Array3 {
    let dims = data.resource.0.raw_dim();
    let dim = dims[axis];
    let mut output: Array3<f64> = Array3::zeros(dims);
    let mut handler: DctHandler<f64> = DctHandler::new(dim);
    ndrustfft::nddct2(&data.resource.0, &mut output, &mut handler, axis);
    // Now, the `output` has been mutated into the right value
    ExFloat64Array3::new(output)
}

#[rustler::nif]
pub fn float64_dct2_array4(data: ExFloat64Array4, axis: usize) -> ExFloat64Array4 {
    let dims = data.resource.0.raw_dim();
    let dim = dims[axis];
    let mut output: Array4<f64> = Array4::zeros(dims);
    let mut handler: DctHandler<f64> = DctHandler::new(dim);
    ndrustfft::nddct2(&data.resource.0, &mut output, &mut handler, axis);
    // Now, the `output` has been mutated into the right value
    ExFloat64Array4::new(output)
}

#[rustler::nif]
pub fn float64_dct2_array5(data: ExFloat64Array5, axis: usize) -> ExFloat64Array5 {
    let dims = data.resource.0.raw_dim();
    let dim = dims[axis];
    let mut output: Array5<f64> = Array5::zeros(dims);
    let mut handler: DctHandler<f64> = DctHandler::new(dim);
    ndrustfft::nddct2(&data.resource.0, &mut output, &mut handler, axis);
    // Now, the `output` has been mutated into the right value
    ExFloat64Array5::new(output)
}

#[rustler::nif]
pub fn float64_dct2_array6(data: ExFloat64Array6, axis: usize) -> ExFloat64Array6 {
    let dims = data.resource.0.raw_dim();
    let dim = dims[axis];
    let mut output: Array6<f64> = Array6::zeros(dims);
    let mut handler: DctHandler<f64> = DctHandler::new(dim);
    ndrustfft::nddct2(&data.resource.0, &mut output, &mut handler, axis);
    // Now, the `output` has been mutated into the right value
    ExFloat64Array6::new(output)
}

#[rustler::nif]
pub fn float64_dct3_array1(data: ExFloat64Array1, axis: usize) -> ExFloat64Array1 {
    let dims = data.resource.0.raw_dim();
    let dim = dims[axis];
    let mut output: Array1<f64> = Array1::zeros(dims);
    let mut handler: DctHandler<f64> = DctHandler::new(dim);
    ndrustfft::nddct3(&data.resource.0, &mut output, &mut handler, axis);
    // Now, the `output` has been mutated into the right value
    ExFloat64Array1::new(output)
}

#[rustler::nif]
pub fn float64_dct3_array2(data: ExFloat64Array2, axis: usize) -> ExFloat64Array2 {
    let dims = data.resource.0.raw_dim();
    let dim = dims[axis];
    let mut output: Array2<f64> = Array2::zeros(dims);
    let mut handler: DctHandler<f64> = DctHandler::new(dim);
    ndrustfft::nddct3(&data.resource.0, &mut output, &mut handler, axis);
    // Now, the `output` has been mutated into the right value
    ExFloat64Array2::new(output)
}

#[rustler::nif]
pub fn float64_dct3_array3(data: ExFloat64Array3, axis: usize) -> ExFloat64Array3 {
    let dims = data.resource.0.raw_dim();
    let dim = dims[axis];
    let mut output: Array3<f64> = Array3::zeros(dims);
    let mut handler: DctHandler<f64> = DctHandler::new(dim);
    ndrustfft::nddct3(&data.resource.0, &mut output, &mut handler, axis);
    // Now, the `output` has been mutated into the right value
    ExFloat64Array3::new(output)
}

#[rustler::nif]
pub fn float64_dct3_array4(data: ExFloat64Array4, axis: usize) -> ExFloat64Array4 {
    let dims = data.resource.0.raw_dim();
    let dim = dims[axis];
    let mut output: Array4<f64> = Array4::zeros(dims);
    let mut handler: DctHandler<f64> = DctHandler::new(dim);
    ndrustfft::nddct3(&data.resource.0, &mut output, &mut handler, axis);
    // Now, the `output` has been mutated into the right value
    ExFloat64Array4::new(output)
}

#[rustler::nif]
pub fn float64_dct3_array5(data: ExFloat64Array5, axis: usize) -> ExFloat64Array5 {
    let dims = data.resource.0.raw_dim();
    let dim = dims[axis];
    let mut output: Array5<f64> = Array5::zeros(dims);
    let mut handler: DctHandler<f64> = DctHandler::new(dim);
    ndrustfft::nddct3(&data.resource.0, &mut output, &mut handler, axis);
    // Now, the `output` has been mutated into the right value
    ExFloat64Array5::new(output)
}

#[rustler::nif]
pub fn float64_dct3_array6(data: ExFloat64Array6, axis: usize) -> ExFloat64Array6 {
    let dims = data.resource.0.raw_dim();
    let dim = dims[axis];
    let mut output: Array6<f64> = Array6::zeros(dims);
    let mut handler: DctHandler<f64> = DctHandler::new(dim);
    ndrustfft::nddct3(&data.resource.0, &mut output, &mut handler, axis);
    // Now, the `output` has been mutated into the right value
    ExFloat64Array6::new(output)
}

#[rustler::nif]
pub fn float64_dct4_array1(data: ExFloat64Array1, axis: usize) -> ExFloat64Array1 {
    let dims = data.resource.0.raw_dim();
    let dim = dims[axis];
    let mut output: Array1<f64> = Array1::zeros(dims);
    let mut handler: DctHandler<f64> = DctHandler::new(dim);
    ndrustfft::nddct4(&data.resource.0, &mut output, &mut handler, axis);
    // Now, the `output` has been mutated into the right value
    ExFloat64Array1::new(output)
}

#[rustler::nif]
pub fn float64_dct4_array2(data: ExFloat64Array2, axis: usize) -> ExFloat64Array2 {
    let dims = data.resource.0.raw_dim();
    let dim = dims[axis];
    let mut output: Array2<f64> = Array2::zeros(dims);
    let mut handler: DctHandler<f64> = DctHandler::new(dim);
    ndrustfft::nddct4(&data.resource.0, &mut output, &mut handler, axis);
    // Now, the `output` has been mutated into the right value
    ExFloat64Array2::new(output)
}

#[rustler::nif]
pub fn float64_dct4_array3(data: ExFloat64Array3, axis: usize) -> ExFloat64Array3 {
    let dims = data.resource.0.raw_dim();
    let dim = dims[axis];
    let mut output: Array3<f64> = Array3::zeros(dims);
    let mut handler: DctHandler<f64> = DctHandler::new(dim);
    ndrustfft::nddct4(&data.resource.0, &mut output, &mut handler, axis);
    // Now, the `output` has been mutated into the right value
    ExFloat64Array3::new(output)
}

#[rustler::nif]
pub fn float64_dct4_array4(data: ExFloat64Array4, axis: usize) -> ExFloat64Array4 {
    let dims = data.resource.0.raw_dim();
    let dim = dims[axis];
    let mut output: Array4<f64> = Array4::zeros(dims);
    let mut handler: DctHandler<f64> = DctHandler::new(dim);
    ndrustfft::nddct4(&data.resource.0, &mut output, &mut handler, axis);
    // Now, the `output` has been mutated into the right value
    ExFloat64Array4::new(output)
}

#[rustler::nif]
pub fn float64_dct4_array5(data: ExFloat64Array5, axis: usize) -> ExFloat64Array5 {
    let dims = data.resource.0.raw_dim();
    let dim = dims[axis];
    let mut output: Array5<f64> = Array5::zeros(dims);
    let mut handler: DctHandler<f64> = DctHandler::new(dim);
    ndrustfft::nddct4(&data.resource.0, &mut output, &mut handler, axis);
    // Now, the `output` has been mutated into the right value
    ExFloat64Array5::new(output)
}

#[rustler::nif]
pub fn float64_dct4_array6(data: ExFloat64Array6, axis: usize) -> ExFloat64Array6 {
    let dims = data.resource.0.raw_dim();
    let dim = dims[axis];
    let mut output: Array6<f64> = Array6::zeros(dims);
    let mut handler: DctHandler<f64> = DctHandler::new(dim);
    ndrustfft::nddct4(&data.resource.0, &mut output, &mut handler, axis);
    // Now, the `output` has been mutated into the right value
    ExFloat64Array6::new(output)
}
