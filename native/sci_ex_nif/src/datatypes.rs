use rustler::{Resource, ResourceArc, NifStruct};
use ndarray::{Array1, Array2, Array3, Array4, Array5, Array6};

macro_rules! elixirize {
    ($rust_ty:ident, $element_ty:ident, $ex_module:expr, $ex_ref_ty:ident, $ex_ty:ident) => {
        pub struct $ex_ref_ty(pub $rust_ty<$element_ty>);
        
        #[rustler::resource_impl]
        impl Resource for $ex_ref_ty {}

        #[derive(NifStruct)]
        #[module = $ex_module]
        pub struct $ex_ty {
            pub resource: ResourceArc<$ex_ref_ty>,
        }

        impl std::panic::RefUnwindSafe for $ex_ty {}

        impl $ex_ty {
            pub fn new(array: $rust_ty<$element_ty>) -> Self {
                Self {
                    resource: ResourceArc::new($ex_ref_ty(array)),
                }
            }
        }
    }
}

elixirize!(Array1, f64, "SciEx.Float64.Array1", ExFloat64Array1Ref, ExFloat64Array1);
elixirize!(Array2, f64, "SciEx.Float64.Array2", ExFloat64Array2Ref, ExFloat64Array2);
elixirize!(Array3, f64, "SciEx.Float64.Array3", ExFloat64Array3Ref, ExFloat64Array3);
elixirize!(Array4, f64, "SciEx.Float64.Array4", ExFloat64Array4Ref, ExFloat64Array4);
elixirize!(Array5, f64, "SciEx.Float64.Array5", ExFloat64Array5Ref, ExFloat64Array5);
elixirize!(Array6, f64, "SciEx.Float64.Array6", ExFloat64Array6Ref, ExFloat64Array6);

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

elixirize!(Array1, f32, "SciEx.Float32.Array1", ExFloat32Array1Ref, ExFloat32Array1);
elixirize!(Array2, f32, "SciEx.Float32.Array2", ExFloat32Array2Ref, ExFloat32Array2);
elixirize!(Array3, f32, "SciEx.Float32.Array3", ExFloat32Array3Ref, ExFloat32Array3);
elixirize!(Array4, f32, "SciEx.Float32.Array4", ExFloat32Array4Ref, ExFloat32Array4);
elixirize!(Array5, f32, "SciEx.Float32.Array5", ExFloat32Array5Ref, ExFloat32Array5);
elixirize!(Array6, f32, "SciEx.Float32.Array6", ExFloat32Array6Ref, ExFloat32Array6);

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