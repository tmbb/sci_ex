impl<f64> Complex<f64>
    pub exclude const fn new(re: f64, im: f64) -> Complex<f64>
    pub exclude fn i() -> Complex<f64>
    pub exclude fn norm_sqr(self) -> f64
    pub exclude fn scale(self, t: f64) -> Complex<f64>
    pub exclude fn unscale(self, t: f64) -> Complex<f64>
    pub exclude fn powu(self, exp: u32) -> Complex<f64>
    pub exclude fn conj(self) -> Complex<f64>
    pub exclude fn inv(self) -> Complex<f64>
    pub exclude fn powi(self, exp: i32) -> Complex<f64>
    pub fn l1_norm(self) -> f64
    pub fn norm(self) -> f64
    pub fn arg(self) -> f64
    pub exclude fn to_polar(self) -> (f64, f64)
    pub fn from_polar(r: f64, theta: f64) -> Complex<f64>
    pub fn exp(self) -> Complex<f64>
    pub fn ln(self) -> Complex<f64>
    pub fn sqrt(self) -> Complex<f64>
    pub fn cbrt(self) -> Complex<f64>
    pub fn powf(self, exp: f64) -> Complex<f64>
    pub fn log(self, base: f64) -> Complex<f64>
    pub fn powc(self, exp: Complex<f64>) -> Complex<f64>
    pub fn expf(self, base: f64) -> Complex<f64>
    pub fn sin(self) -> Complex<f64>
    pub fn cos(self) -> Complex<f64>
    pub fn tan(self) -> Complex<f64>
    pub fn asin(self) -> Complex<f64>
    pub fn acos(self) -> Complex<f64>
    pub fn atan(self) -> Complex<f64>
    pub fn sinh(self) -> Complex<f64>
    pub fn cosh(self) -> Complex<f64>
    pub fn tanh(self) -> Complex<f64>
    pub fn asinh(self) -> Complex<f64>
    pub fn acosh(self) -> Complex<f64>
    pub fn atanh(self) -> Complex<f64>
    pub fn finv(self) -> Complex<f64>
    pub exclude fn fdiv(self, other: Complex<f64>) -> Complex<f64>
    pub exclude fn is_nan(self) -> bool
    pub exclude fn is_infinite(self) -> bool
    pub exclude fn is_finite(self) -> bool
    pub exclude fn is_normal(self) -> bool