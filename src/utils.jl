"""
    function to read  experimental data for some hyperelastic materials
    
    Main Reference:
    Afshin Anssari-Benam
    A generalised W(I1, I2) strain energy function of binomial
    form with unified applicability across various isotropic
    incompressible soft solids

    Supported data names:
    Treloar_1944
    L. Treloar
    Stress-strain data for vulcanized rubber under various types of deformation
    Rubber Chem Technol, 17 (4) (1944), pp. 813-825

    ---------------------------------------------------------------------------
    Yohsuke
    Yohsuke, B., Urayama, K., Takigawa, T., Ito, K.: Biaxial strain testing of extremely soft polymer gels. Soft Matter 7,
    2632–2638 (2011). https://doi.org/10.1039/C0SM00955E

    ---------------------------------------------------------------------------
    Meunier
    Meunier, L., Chagnon, G., Favier, D., Orgeas, L., Vacher, P.: Mechanical experimental characterisation and numerical
    modelling of an unfilled silicone rubber. Polym. Test. 27, 765–777 (2008). https://doi.org/10.1016/j.polymertesting.2008.05.
    011

    ---------------------------------------------------------------------------
    Mai
    Mai, T.-T., Matsuda, T., Nakajima, T., Gong, J.P., Urayama, K.: Distinctive characteristics of internal fracture in tough double
    network hydrogels revealed by various modes of stretching. Macromolecules 51, 5245–5257 (2018). https://doi.org/10.1021/
    acs.macromol.8b01033

    data_type: uniaxial, equibiaxial, pure_shear
    data_name: Treloar_1944, Yohsuke, Meunier, Mai

    ```
    λ, P =  read_data!(data_name, data_type)

    ```

"""




# Define constants for data names
const Treloar_1944 = :Treloar_1944
const Yohsuke = :Yohsuke
const Meunier = :Meunier
const Mai = :Mai

# Define constants for data types
const uniaxial = :uniaxial
const equibiaxial = :equibiaxial
const pure_shear = :pure_shear

function read_data!(data_name, data_type)
    if data_name == Treloar_1944
        if data_type == uniaxial
            uniaxial_file_path = "TestData_Treloar/treloar-uni.txt"
            uniaxial_data = readdlm(uniaxial_file_path)
            λ = uniaxial_data[:, 1]
            P = uniaxial_data[:, 2]
        elseif data_type == equibiaxial
            equibiaxial_file_path = "TestData_Treloar/treloar-equibi.txt"
            equibiaxial_data = readdlm(equibiaxial_file_path)
            λ = equibiaxial_data[:, 1]
            P = equibiaxial_data[:, 2]
        elseif data_type == pure_shear
            pure_shear_file_path = "TestData_Treloar/treloar-shear.txt"
            pure_shear_data = readdlm(pure_shear_file_path)
            λ = pure_shear_data[:, 1]
            P = pure_shear_data[:, 2]
        else 
            error("data type is not valid")
        end 
    elseif data_name == Yohsuke
        if data_type == uniaxial
            uniaxial_file_path = "TestData_Yohsuke/Yohsuke_uni.txt"
            uniaxial_data = readdlm(uniaxial_file_path)
            λ = uniaxial_data[:, 1]
            P = uniaxial_data[:, 2]
        elseif data_type == equibiaxial
            equibiaxial_file_path = "TestData_Yohsuke/Yohsuke_equibiax.txt"
            equibiaxial_data = readdlm(equibiaxial_file_path)
            λ = equibiaxial_data[:, 1]
            P = equibiaxial_data[:, 2]
        elseif data_type == pure_shear
            pure_shear_file_path = "TestData_Yohsuke/Yohsuke_pure_shear.txt"
            pure_shear_data = readdlm(pure_shear_file_path)
            λ = pure_shear_data[:, 1]
            P = pure_shear_data[:, 2]
        else 
            error("data type is not valid")
        end 
    elseif data_name == Meunier
        if data_type == uniaxial
            uniaxial_file_path = "data_Meunier/Meunier_uniax.txt"
            uniaxial_data = readdlm(uniaxial_file_path)
            λ = uniaxial_data[:, 1]
            P = uniaxial_data[:, 2]
        elseif data_type == equibiaxial
            equibiaxial_file_path = "data_Meunier/Meunier_equbiax.txt"
            equibiaxial_data = readdlm(equibiaxial_file_path)
            λ = equibiaxial_data[:, 1]
            P = equibiaxial_data[:, 2]
        elseif data_type == pure_shear
            pure_shear_file_path = "data_Meunier/Meunier_shear.txt"
            pure_shear_data = readdlm(pure_shear_file_path)
            λ = pure_shear_data[:, 1]
            P = pure_shear_data[:, 2]
        else 
            error("data type is not valid")
        end
    elseif data_name == Mai
        if data_type == uniaxial
            uniaxial_file_path = "data_Mai/Mai_unia.txt"
            uniaxial_data = readdlm(uniaxial_file_path)
            λ = uniaxial_data[:, 1]
            P = uniaxial_data[:, 2]
        elseif data_type == equibiaxial
            equibiaxial_file_path = "data_Mai/Mai_biax.txt"
            equibiaxial_data = readdlm(equibiaxial_file_path)
            λ = equibiaxial_data[:, 1]
            P = equibiaxial_data[:, 2]
        elseif data_type == pure_shear
            pure_shear_file_path = "data_Mai/Mai_shear.txt"
            pure_shear_data = readdlm(pure_shear_file_path)
            λ = pure_shear_data[:, 1]
            P = pure_shear_data[:, 2]
        else 
            error("data type is not valid")
        end
    else 
        error("data name is not valid")
    end 

    return λ, P
end # end function
