using Revise
using HyperData

λ, P = read_data!(Treloar_1944, uniaxial)
λ, P = read_data!(Treloar_1944, equibiaxial)

λ, P = read_data!(Yohsuke, uniaxial)
λ, P = read_data!(Yohsuke, equibiaxial)
λ, P = read_data!(Yohsuke, pure_shear)


λ, P = read_data!(Meunier, uniaxial)
λ, P = read_data!(Meunier, equibiaxial)
λ, P = read_data!(Meunier, pure_shear)

λ, P = read_data!(Mai, uniaxial)
λ, P = read_data!(Mai, equibiaxial)
λ, P = read_data!(Mai, pure_shear)