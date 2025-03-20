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

elixirize!(Array1, f64, "SciEx.Array1", ExArray1Ref, ExArray1);
elixirize!(Array2, f64, "SciEx.Array2", ExArray2Ref, ExArray2);
elixirize!(Array3, f64, "SciEx.Array3", ExArray3Ref, ExArray3);
elixirize!(Array4, f64, "SciEx.Array4", ExArray4Ref, ExArray4);
elixirize!(Array5, f64, "SciEx.Array5", ExArray5Ref, ExArray5);
elixirize!(Array6, f64, "SciEx.Array6", ExArray6Ref, ExArray6);

macro_rules! array1_func_arity_1 {
    ($sci_ex_fun:ident; $rust_mod:ident; $rust_fun:ident) => {
        #[rustler::nif]
        pub fn $sci_ex_fun(ex_array1: ExArray1) -> ExArray1 {
            let array1: &Array1<f64> = &ex_array1.resource.0;
            let result: Array1<f64> = array1.mapv($rust_mod::$rust_fun);
            ExArray1::new(result)
        }
    }
}

macro_rules! array2_func_arity_1 {
    ($sci_ex_fun:ident; $rust_mod:ident; $rust_fun:ident) => {
        #[rustler::nif]
        pub fn $sci_ex_fun(ex_array2: ExArray2) -> ExArray2 {
            let array2: &Array2<f64> = &ex_array2.resource.0;
            let result: Array2<f64> = array2.mapv($rust_mod::$rust_fun);
            ExArray2::new(result)
        }
    }
}

#[rustler::nif]
pub fn array1_zeros(n: usize) -> ExArray1 {
    ExArray1::new(Array1::zeros(n))
}

#[rustler::nif]
pub fn array2_zeros(n1: usize, n2: usize) -> ExArray2 {
    ExArray2::new(Array2::zeros((n1, n2)))
}

#[rustler::nif]
pub fn array1_inspect(ex_array1: ExArray1) -> String {
    let array1: &Array1<f64> = &ex_array1.resource.0;
    format!("{:?}", &array1)
}

#[rustler::nif]
pub fn array2_inspect(ex_array2: ExArray2) -> String {
    let array2: &Array2<f64> = &ex_array2.resource.0;
    format!("{:?}", &array2)
}

array1_func_arity_1!(array1_sin; f64; sin);
array1_func_arity_1!(array1_cos; f64; cos);
array1_func_arity_1!(array1_exp; f64; exp);
array1_func_arity_1!(array1_log; f64; ln);
array1_func_arity_1!(array1_sqrt; f64; sqrt);

array2_func_arity_1!(array2_sin; f64; sin);
array2_func_arity_1!(array2_cos; f64; cos);
array2_func_arity_1!(array2_exp; f64; exp);
array2_func_arity_1!(array2_log; f64; ln);
array2_func_arity_1!(array2_sqrt; f64; sqrt);

rustler::init!("Elixir.SciEx.SciExNif");