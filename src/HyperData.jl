module HyperData
# Write your package code here.
using DelimitedFiles

# Define constants for data names
const Treloar_1944 = 1
const Yohsuke = 2
const Meunier = 3
const Mai = 4

# Define constants for data types
const uniaxial = 1
const equibiaxial = 2
const pure_shear = 3

function read_data!(data_name::Int, data_type::Int)
    base_path = joinpath(@__DIR__, "..", "data")
    
    if data_name == Treloar_1944
        if data_type == uniaxial
            file_path = joinpath(base_path, "TestData_Treloar", "treloar-uni.txt")
        elseif data_type == equibiaxial
            file_path = joinpath(base_path, "TestData_Treloar", "treloar-equibi.txt")
        elseif data_type == pure_shear
            file_path = joinpath(base_path, "TestData_Treloar", "treloar-shear.txt")
        else
            error("data type is not valid")
        end
    elseif data_name == Yohsuke
        if data_type == uniaxial
            file_path = joinpath(base_path, "TestData_Yohsuke", "Yohsuke_uni.txt")
        elseif data_type == equibiaxial
            file_path = joinpath(base_path, "TestData_Yohsuke", "Yohsuke_equibiax.txt")
        elseif data_type == pure_shear
            file_path = joinpath(base_path, "TestData_Yohsuke", "Yohsuke_pure_shear.txt")
        else
            error("data type is not valid")
        end
    elseif data_name == Meunier
        if data_type == uniaxial
            file_path = joinpath(base_path, "data_Meunier", "Meunier_uniax.txt")
        elseif data_type == equibiaxial
            file_path = joinpath(base_path, "data_Meunier", "Meunier_equbiax.txt")
        elseif data_type == pure_shear
            file_path = joinpath(base_path, "data_Meunier", "Meunier_shear.txt")
        else
            error("data type is not valid")
        end
    elseif data_name == Mai
        if data_type == uniaxial
            file_path = joinpath(base_path, "data_Mai", "Mai_unia.txt")
        elseif data_type == equibiaxial
            file_path = joinpath(base_path, "data_Mai", "Mai_biax.txt")
        elseif data_type == pure_shear
            file_path = joinpath(base_path, "data_Mai", "Mai_shear.txt")
        else
            error("data type is not valid")
        end
    else
        error("data name is not valid")
    end

    data = readdlm(file_path)
    λ = data[:, 1]
    P = data[:, 2]
    
    return λ, P
end





export read_data!, Treloar_1944, Yohsuke, Meunier, Mai, uniaxial, equibiaxial, pure_shear

# include("utils.jl")


end
