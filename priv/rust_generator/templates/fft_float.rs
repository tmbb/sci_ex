use crate::datatypes::*;

use ndarray::{Array1, Array2, Array3, Array4, Array5, Array6};

use ndrustfft;
use ndrustfft::DctHandler;

// ----------------------------------
// Discrete cosine transform
// ----------------------------------
<%= for dct_nr <- 1..4, n_dim <- 1..6 do %>
#[rustler::nif]
pub fn float<%= @bits %>_dct<%= dct_nr %>_array<%= n_dim %>(data: ExFloat<%= @bits %>Array<%= n_dim %>, axis: usize) -> ExFloat<%= @bits %>Array<%= n_dim %> {
    let dims = data.resource.0.raw_dim();
    let dim = dims[axis];
    let mut output: Array<%= n_dim %><f<%= @bits %>> = Array<%= n_dim %>::zeros(dims);
    let mut handler: DctHandler<f<%= @bits %>> = DctHandler::new(dim);
    ndrustfft::nddct<%= dct_nr %>(&data.resource.0, &mut output, &mut handler, axis);
    // Now, the `output` has been mutated into the right value
    ExFloat<%= @bits %>Array<%= n_dim %>::new(output)
}
<% end %>