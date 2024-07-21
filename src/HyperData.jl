module HyperData

using DelimitedFiles

# Exported functions and constants
export read_data!, Treloar_1944, Yohsuke, Meunier, Mai, uniaxial, equibiaxial, pure_shear

# Include additional utility functions from another file
include("utils.jl")

# Function to read and return data
function call_data()
    λ, P = read_data!(Treloar_1944, uniaxial)
    return λ, P
end

export call_data
end # module HyperData

