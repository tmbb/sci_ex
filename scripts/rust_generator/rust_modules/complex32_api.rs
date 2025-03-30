impl<f32> Complex<f32>
    pub exclude const fn new(re: f32, im: f32) -> Complex<f32>
    pub exclude fn i() -> Complex<f32>
    pub exclude fn norm_sqr(self) -> f32
    pub exclude fn scale(self, t: f32) -> Complex<f32>
    pub exclude fn unscale(self, t: f32) -> Complex<f32>
    pub exclude fn powu(self, exp: u32) -> Complex<f32>
    pub exclude fn conj(self) -> Complex<f32>
    pub exclude fn inv(self) -> Complex<f32>
    pub exclude fn powi(self, exp: i32) -> Complex<f32>
    pub fn l1_norm(self) -> f32
    pub fn norm(self) -> f32
    pub fn arg(self) -> f32
    pub exclude fn to_polar(self) -> (f32, f32)
    pub fn from_polar(r: f32, theta: f32) -> Complex<f32>
    pub fn exp(self) -> Complex<f32>
    pub fn ln(self) -> Complex<f32>
    pub fn sqrt(self) -> Complex<f32>
    pub fn cbrt(self) -> Complex<f32>
    pub fn powf(self, exp: f32) -> Complex<f32>
    pub fn log(self, base: f32) -> Complex<f32>
    pub fn powc(self, exp: Complex<f32>) -> Complex<f32>
    pub fn expf(self, base: f32) -> Complex<f32>
    pub fn sin(self) -> Complex<f32>
    pub fn cos(self) -> Complex<f32>
    pub fn tan(self) -> Complex<f32>
    pub fn asin(self) -> Complex<f32>
    pub fn acos(self) -> Complex<f32>
    pub fn atan(self) -> Complex<f32>
    pub fn sinh(self) -> Complex<f32>
    pub fn cosh(self) -> Complex<f32>
    pub fn tanh(self) -> Complex<f32>
    pub fn asinh(self) -> Complex<f32>
    pub fn acosh(self) -> Complex<f32>
    pub fn atanh(self) -> Complex<f32>
    pub fn finv(self) -> Complex<f32>
    pub exclude fn fdiv(self, other: Complex<f32>) -> Complex<f32>
    pub exclude fn is_nan(self) -> bool
    pub exclude fn is_infinite(self) -> bool
    pub exclude fn is_finite(self) -> bool
    pub exclude fn is_normal(self) -> bool