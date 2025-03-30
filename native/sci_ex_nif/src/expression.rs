use rustler::{NifTaggedEnum};

#[derive(NifTaggedEnum)]
pub enum FCall {
    Add((Expr, Expr)),
    Subtract((Expr, Expr)),
    Multiply((Expr, Expr)),
    Divide((Expr, Expr)),
}

#[derive(NifTaggedEnum)]
pub enum Expr {
    FCall(Box<FCall>),
    Num(f64)
}

#[rustler::nif]
pub fn eval(e: Expr) -> f64 {
    match e {
        Expr::FCall(f_call) =>
            match *f_call {
                FCall::Add((lhs, rhs)) =>
                    eval(lhs) + eval(rhs),

                FCall::Subtract((lhs, rhs)) =>
                    eval(lhs) - eval(rhs),
                
                FCall::Multiply((lhs, rhs)) =>
                    eval(lhs) * eval(rhs),
                
                FCall::Divide((lhs, rhs)) =>
                    eval(lhs) / eval(rhs),
            },
        
        Expr::Num(x) =>
            x
    }
}
