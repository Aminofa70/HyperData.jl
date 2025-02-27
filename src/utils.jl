include("data.jl")

# """
#     function to read  experimental data for some hyperelastic materials
    
#     Main Reference:
#     Afshin Anssari-Benam
#     A generalised W(I1, I2) strain energy function of binomial
#     form with unified applicability across various isotropic
#     incompressible soft solids

#     Supported data names:
#     Treloar_1944
#     L. Treloar
#     Stress-strain data for vulcanized rubber under various types of deformation
#     Rubber Chem Technol, 17 (4) (1944), pp. 813-825

#     ---------------------------------------------------------------------------
#     Yohsuke
#     Yohsuke, B., Urayama, K., Takigawa, T., Ito, K.: Biaxial strain testing of extremely soft polymer gels. Soft Matter 7,
#     2632–2638 (2011). https://doi.org/10.1039/C0SM00955E

#     ---------------------------------------------------------------------------
#     Meunier
#     Meunier, L., Chagnon, G., Favier, D., Orgeas, L., Vacher, P.: Mechanical experimental characterisation and numerical
#     modelling of an unfilled silicone rubber. Polym. Test. 27, 765–777 (2008). https://doi.org/10.1016/j.polymertesting.2008.05.
#     011

#     ---------------------------------------------------------------------------
#     Mai
#     Mai, T.-T., Matsuda, T., Nakajima, T., Gong, J.P., Urayama, K.: Distinctive characteristics of internal fracture in tough double
#     network hydrogels revealed by various modes of stretching. Macromolecules 51, 5245–5257 (2018). https://doi.org/10.1021/
#     acs.macromol.8b01033

#     data_type:  :uniaxial, :equibiaxial, :pure_shear
#     data_name: :Treloar_1944, :Yohsuke, :Meunier, :Mai

#     ```
#     λ, P =  read_data!(data_name, data_type)

#     ```

# """

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
    if data_name == Treloar_1944
        if data_type == uniaxial
            file_path = treloar_uni()
        elseif data_type == equibiaxial
            file_path =treloar_equibi()
        elseif data_type == pure_shear
            file_path = treloar_shear()
        else
            error("data type is not valid")
        end
    elseif data_name == Yohsuke
        if data_type == uniaxial
            file_path = Yohsuke_uni()
        elseif data_type == equibiaxial
            file_path = Yohsuke_equibiax()
        elseif data_type == pure_shear
            file_path =Yohsuke_pure_shear()
        else
            error("data type is not valid")
        end
    elseif data_name == Meunier
        if data_type == uniaxial
            file_path = Meunier_uniax() 
        elseif data_type == equibiaxial
            file_path = Meunier_equbiax()
        elseif data_type == pure_shear
            file_path = Meunier_shear()
        else
            error("data type is not valid")
        end
    elseif data_name == Mai
        if data_type == uniaxial
            file_path = Mai_unia()
        elseif data_type == equibiaxial
            file_path = Mai_biax()
        elseif data_type == pure_shear
            file_path = Mai_shear()
        else
            error("data type is not valid")
        end
    else
        error("data name is not valid")
    end

    data = file_path
    λ = data[:, 1]
    P = data[:, 2]
    
    return λ, P
end  # end function

