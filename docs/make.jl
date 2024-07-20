using HyperData
using Documenter

DocMeta.setdocmeta!(HyperData, :DocTestSetup, :(using HyperData); recursive=true)

makedocs(;
    modules=[HyperData],
    authors="Aminofa70 <amin.alibakhshi@upm.es> and contributors",
    sitename="HyperData.jl",
    format=Documenter.HTML(;
        canonical="https://Aminofa70.github.io/HyperData.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/Aminofa70/HyperData.jl",
    devbranch="main",
)
