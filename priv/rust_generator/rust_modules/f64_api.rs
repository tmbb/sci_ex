impl f64
    pub fn floor(self) -> f64
    pub fn ceil(self) -> f64
    pub fn round(self) -> f64
    pub fn round_ties_even(self) -> f64
    pub fn trunc(self) -> f64
    pub fn fract(self) -> f64
    pub fn mul_add(self, a: f64, b: f64) -> f64
    pub fn div_euclid(self, rhs: f64) -> f64
    pub fn rem_euclid(self, rhs: f64) -> f64
    pub fn powi(self, n: i32) -> f64
    pub fn powf(self, n: f64) -> f64
    pub fn sqrt(self) -> f64
    pub fn exp(self) -> f64
    pub fn exp2(self) -> f64
    pub fn ln(self) -> f64
    pub fn log(self, base: f64) -> f64
    pub fn log2(self) -> f64
    pub fn log10(self) -> f64
    pub fn hypot(self, other: f64) -> f64
    pub fn sin(self) -> f64
    pub fn cos(self) -> f64
    pub fn tan(self) -> f64
    pub fn asin(self) -> f64
    pub fn acos(self) -> f64
    pub fn atan(self) -> f64
    pub fn atan2(self, other: f64) -> f64
    pub fn sin_cos(self) -> (f64, f64)
    pub fn exp_m1(self) -> f64
    pub fn ln_1p(self) -> f64
    pub fn sinh(self) -> f64
    pub fn cosh(self) -> f64
    pub fn tanh(self) -> f64
    pub fn asinh(self) -> f64
    pub fn acosh(self) -> f64
    pub fn atanh(self) -> f64
    pub const RADIX: u32 = 2u32
    pub const MANTISSA_DIGITS: u32 = 53u32
    pub const DIGITS: u32 = 15u32
    pub const EPSILON: f64 = 2.2204460492503131E-16f64
    pub const MIN: f64 = -1.7976931348623157E+308f64
    pub const MIN_POSITIVE: f64 = 2.2250738585072014E-308f64
    pub const MAX: f64 = 1.7976931348623157E+308f64
    pub const MIN_EXP: i32 = -1_021i32
    pub const MAX_EXP: i32 = 1_024i32
    pub const MIN_10_EXP: i32 = -307i32
    pub const MAX_10_EXP: i32 = 308i32
    pub const NAN: f64 = NaN_f64
    pub const INFINITY: f64 = +Inf_f64
    pub const NEG_INFINITY: f64 = -Inf_f64
    pub const fn is_nan(self) -> bool
    pub const fn is_infinite(self) -> bool
    pub const fn is_finite(self) -> bool
    pub const fn is_subnormal(self) -> bool
    pub const fn is_normal(self) -> bool
    pub const fn classify(self) -> FpCategory
    pub const fn is_sign_positive(self) -> bool
    pub const fn is_sign_negative(self) -> bool
    pub const fn recip(self) -> f64
    pub const fn to_degrees(self) -> f64
    pub const fn to_radians(self) -> f64
    pub const fn max(self, other: f64) -> f64
    pub const fn min(self, other: f64) -> f64
    pub const fn to_bits(self) -> u64
    pub const fn from_bits(v: u64) -> f64
    pub fn total_cmp(&self, other: &f64) -> Ordering
    pub const fn clamp(self, min: f64, max: f64) -> f64
    pub const fn abs(self) -> f64
    pub const fn signum(self) -> f64
    pub const fn copysign(self, sign: f64) -> f64