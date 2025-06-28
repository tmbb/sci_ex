use contour::{ContourBuilder, Contour};
use geo_types::{MultiPolygon, Polygon, LineString, Coord};
use ndarray::Array2;
use ndarray_images::Image;

use crate::datatypes::{ExFloat64Array2, ExFloat32Array2};

use rustler::NifStruct;

#[derive(NifStruct)]
#[module = "SciEx.Visualization.Coord2D"]
pub struct ExCoord2D {
    pub x: f64,
    pub y: f64
}

#[derive(NifStruct)]
#[module = "SciEx.Visualization.LineString2D"]
pub struct ExLineString2D {
    pub points: Vec<ExCoord2D>
}

#[derive(NifStruct)]
#[module = "SciEx.Visualization.Polygon"]
pub struct ExPolygon {
    pub exterior: ExLineString2D,
    pub interior: Vec<ExLineString2D>
}

#[derive(NifStruct)]
#[module = "SciEx.Visualization.Contour"]
pub struct ExContour {
    pub geometry: Vec<ExPolygon>,
    pub threshold: f64
}

fn coord_to_ex_coord_2d(coord: Coord) -> ExCoord2D {
    ExCoord2D {
        x: coord.x,
        y: coord.y
    }
}

fn line_string_to_ex_line_string(line_string: LineString) -> ExLineString2D {
    ExLineString2D {
        points: line_string
            .into_iter()
            .map(coord_to_ex_coord_2d)
            .collect()
    }
}

fn polygon_to_ex_polygon(polygon: &Polygon) -> ExPolygon {
    // TODO: do we really need to clone this?
    let (exterior, interior) = polygon.clone().into_inner();

    let converted_exterior = line_string_to_ex_line_string(exterior);
    let converted_interior = interior
        .into_iter()
        .map(line_string_to_ex_line_string)
        .collect();      

    ExPolygon {
        exterior: converted_exterior,
        interior: converted_interior
    }
}

fn multi_polygon_to_ex_polygons(multi_polygon: &MultiPolygon) -> Vec<ExPolygon> {
    multi_polygon
        .into_iter()
        .map(polygon_to_ex_polygon)
        .collect()
}

fn contour_to_ex_contour(contour: Contour) -> ExContour {
    let multi_polygon: &MultiPolygon = contour.geometry();
    let ex_polygons: Vec<ExPolygon> = multi_polygon_to_ex_polygons(multi_polygon);
    
    ExContour {
        geometry: ex_polygons,
        threshold: contour.threshold()
    }
}

#[rustler::nif]
pub fn visualization_float64_contour_builder(
            ex_array2: ExFloat64Array2,
            thresholds: Vec<f64>,
            smoothing: bool
        ) -> Vec<ExContour> {
    // Unwrap the array inside the complex elixir struct
    let array = &ex_array2.resource.0;
    // Get the dimensions to feed the ContourBuilder
    let (dim_x, dim_y): (usize, usize) = array.dim();
    // Clone because we need the original array to be available to the Elixir side
    let (vec, _offset) = array.clone().into_raw_vec_and_offset();

    let contour_builder = ContourBuilder::new(dim_x, dim_y, smoothing);
    let contours: Vec<Contour> = contour_builder.contours(&vec, &thresholds).unwrap();
    
    contours
        .into_iter()
        .map(contour_to_ex_contour)
        .collect()
}

#[rustler::nif]
pub fn visualization_float32_contour_builder(
            ex_array2: ExFloat32Array2,
            thresholds: Vec<f64>,
            smoothing: bool
        ) -> Vec<ExContour> {
    // Convert f32 into f64 because we've decided we're going to use
    // 64-bit floats for this.
    //
    // TODO: make the code as generic as possible so that we don't need
    // to convert 32-bit floats into 64-bit floats, which by the way
    // is very wasteful in terms of space.
    let array: Array2<f64> = ex_array2.resource.0.mapv(f64::from);

    // Get the dimensions to feed the ContourBuilder
    let (dim_x, dim_y): (usize, usize) = array.dim();
    // Clone because we need the original array to be available to the Elixir side
    let (vec, _offset) = array.clone().into_raw_vec_and_offset();

    let contour_builder = ContourBuilder::new(dim_x, dim_y, smoothing);
    let contours: Vec<Contour> = contour_builder.contours(&vec, &thresholds).unwrap();
    
    contours
        .into_iter()
        .map(contour_to_ex_contour)
        .collect()
}

#[rustler::nif]
pub fn visualization_float64_array2_from_gray_image(path: String) -> ExFloat64Array2 {
    let image: Array2<f64> = Array2::load(path).unwrap();
    ExFloat64Array2::new(image)
}

#[rustler::nif]
pub fn visualization_float32_array2_from_gray_image(path: String) -> ExFloat32Array2 {
    let image: Array2<f32> = Array2::load(path).unwrap();
    ExFloat32Array2::new(image)
}