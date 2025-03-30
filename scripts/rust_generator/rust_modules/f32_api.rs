impl f32
    pub fn floor(self) -> f32
    pub fn ceil(self) -> f32
    pub fn round(self) -> f32
    pub fn round_ties_even(self) -> f32
    pub fn trunc(self) -> f32
    pub fn fract(self) -> f32
    pub fn mul_add(self, a: f32, b: f32) -> f32
    pub fn div_euclid(self, rhs: f32) -> f32
    pub fn rem_euclid(self, rhs: f32) -> f32
    pub fn powi(self, n: i32) -> f32
    pub fn powf(self, n: f32) -> f32
    pub fn sqrt(self) -> f32
    pub fn exp(self) -> f32
    pub fn exp2(self) -> f32
    pub fn ln(self) -> f32
    pub fn log(self, base: f32) -> f32
    pub fn log2(self) -> f32
    pub fn log10(self) -> f32
    pub fn hypot(self, other: f32) -> f32
    pub fn sin(self) -> f32
    pub fn cos(self) -> f32
    pub fn tan(self) -> f32
    pub fn asin(self) -> f32
    pub fn acos(self) -> f32
    pub fn atan(self) -> f32
    pub fn atan2(self, other: f32) -> f32
    pub fn sin_cos(self) -> (f32, f32)
    pub fn exp_m1(self) -> f32
    pub fn ln_1p(self) -> f32
    pub fn sinh(self) -> f32
    pub fn cosh(self) -> f32
    pub fn tanh(self) -> f32
    pub fn asinh(self) -> f32
    pub fn acosh(self) -> f32
    pub fn atanh(self) -> f32
    pub const RADIX: u32 = 2u32
    pub const MANTISSA_DIGITS: u32 = 24u32
    pub const DIGITS: u32 = 6u32
    pub const EPSILON: f32 = 1.1920929E-7f32
    pub const MIN: f32 = -3.40282347E+38f32
    pub const MIN_POSITIVE: f32 = 1.17549435E-38f32
    pub const MAX: f32 = 3.40282347E+38f32
    pub const MIN_EXP: i32 = -125i32
    pub const MAX_EXP: i32 = 128i32
    pub const MIN_10_EXP: i32 = -37i32
    pub const MAX_10_EXP: i32 = 38i32
    pub const NAN: f32 = NaN_f32
    pub const INFINITY: f32 = +Inf_f32
    pub const NEG_INFINITY: f32 = -Inf_f32
    pub const fn is_nan(self) -> bool
    pub const fn is_infinite(self) -> bool
    pub const fn is_finite(self) -> bool
    pub const fn is_subnormal(self) -> bool
    pub const fn is_normal(self) -> bool
    pub const fn classify(self) -> FpCategory
    pub const fn is_sign_positive(self) -> bool
    pub const fn is_sign_negative(self) -> bool
    pub const fn recip(self) -> f32
    pub const fn to_degrees(self) -> f32
    pub const fn to_radians(self) -> f32
    pub const fn max(self, other: f32) -> f32
    pub const fn min(self, other: f32) -> f32
    pub const fn to_bits(self) -> u32
    pub const fn from_bits(v: u32) -> f32
    pub fn total_cmp(&self, other: &f32) -> Ordering
    pub const fn clamp(self, min: f32, max: f32) -> f32
    pub const fn abs(self) -> f32
    pub const fn signum(self) -> f32
    pub const fn copysign(self, sign: f32) -> f32

