use crate::datatypes::*;
use rustler::{NifStruct};
use ndarray::Array2;
use kodama;
use kodama::Dendrogram;


#[derive(NifStruct)]
#[module = "Elixir.SciEx.Clustering.DendrogramStep"]
struct ExDendrogramStep {
    cluster1: usize,
    cluster2: usize,
    dissimilarity: f32,
    size: usize
}

impl ExDendrogramStep {
    pub fn from_step32(step: &kodama::Step<f32>) -> Self {
        Self {
            cluster1: step.cluster1,
            cluster2: step.cluster2,
            dissimilarity: step.dissimilarity,
            size: step.size
        }
    }

    pub fn from_step64(step: &kodama::Step<f64>) -> Self {
        Self {
            cluster1: step.cluster1,
            cluster2: step.cluster2,
            dissimilarity: step.dissimilarity as f32,
            size: step.size
        }
    }
}

#[rustler::nif]
pub fn dendrogram32(dissimilarity_matrix: ExFloat32Array2, method: ClusteringMethod)
        -> Vec<ExDendrogramStep> {
    let array2: &Array2<f32> = &dissimilarity_matrix.resource.0;
    
    // Assert the matrix is square
    let s1: usize = array2.shape()[0];
    let s2: usize = array2.shape()[1];
    assert_eq!(s1, s2);

    let mut compact_dissimilarity_matrix: Vec<f32> = Vec::with_capacity(s1 * (s1 - 1));
    for i in 1..s1 {
        for j in 0..i {
            compact_dissimilarity_matrix.push(*array2.get((i, j)).unwrap())
        }
    }

    let dendrogram: Dendrogram<f32> = kodama::linkage(
        &mut compact_dissimilarity_matrix,
        s1,
        method.to_kodama()
    );

    dendrogram
        .steps()
        .into_iter()
        .map(|step| ExDendrogramStep::from_step32(step))
        .collect::<Vec<_>>()
}

#[rustler::nif]
pub fn dendrogram64(dissimilarity_matrix: ExFloat64Array2, method: ClusteringMethod)
        -> Vec<ExDendrogramStep> {
    let array2: &Array2<f64> = &dissimilarity_matrix.resource.0;
    
    // Assert the matrix is square
    let s1: usize = array2.shape()[0];
    let s2: usize = array2.shape()[1];
    assert_eq!(s1, s2);

    let mut compact_dissimilarity_matrix: Vec<f64> = Vec::with_capacity(s1 * (s1 - 1));
    for i in 1..s1 {
        for j in 0..i {
            compact_dissimilarity_matrix.push(*array2.get((i, j)).unwrap())
        }
    }

    let dendrogram: Dendrogram<f64> = kodama::linkage(
        &mut compact_dissimilarity_matrix,
        s1,
        method.to_kodama()
    );

    dendrogram
        .steps()
        .into_iter()
        .map(|step| ExDendrogramStep::from_step64(step))
        .collect::<Vec<_>>()
}