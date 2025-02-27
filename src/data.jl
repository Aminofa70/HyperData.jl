function treloar_uni()
    matrix = [
    1.0 0.0
    1.276383313 0.193128035
    1.424443738 0.298472851
    1.641479641 0.38032243
    1.917708905 0.485559962
    2.19392854 0.584938126
    2.450401009 0.666754695
    3.081674899 0.842007535
    3.673492967 1.005574651
    4.147059107 1.204397001
    4.877193996 1.543629589
    5.43978125 1.918158673
    5.884020296 2.269349321
    6.239604094 2.667489179
    6.535936763 3.007084882
    6.733735787 3.381919314
    7.000539172 3.75083661
    7.227867479 4.096349449
    7.287580755 4.436143216
    7.406506648 4.811043669
    7.584568133 5.174175872
    7.683766115 5.543233463
]
return matrix
end # end function
################################################################
function treloar_equibi()
    matrix = [
    1.0 0.00
    1.29642895 0.392330006
    1.701048497 0.632225693
    1.967418619 0.737471477
    2.519877146 0.947946539
    3.102009378 1.216990514
    3.526299067 1.42757286
    3.911229215 1.685063153
    4.197587206 1.954354706
    4.434562838 2.17095322
    4.632140416 2.411022212
]

return matrix
end #end function 
################################################################
function treloar_shear()
    matrix = [
        1.0 0.0
        1.464053609 0.403908445
        1.868576875 0.585210463
        2.381560325 0.772281068
        3.012786074 0.918237073
        3.506031984 1.09360545
        4.028807179 1.239652234
        4.443237727 1.450242834
        4.788567632 1.608156899
        5.035306124 1.766153491
    ]
return matrix 
end # end function 
################################################################
################################################################
################################################################
function Yohsuke_uni()

    matrix = [
        1.00 0.00
        1.13 2.08
        1.32 4.08
        1.61 6.32
        2.00 8.80
        2.49 11.76
        2.75 13.44
        3.00 15.04
        3.43 18.08
        3.75 20.72
        4.00 22.80
    ]
return matrix
end # end function
################################################################
function Yohsuke_equibiax()
    matrix = [
        1.00 0.00
        1.07 2.10
        1.165 4.11
        1.30 6.37
        1.37 7.34
        1.50 8.87
        1.61 10.00
        1.80 11.81
        1.99 13.47
        2.165 15.16
        2.45 18.145
    ]   
    return matrix 
end 
################################################################
function Yohsuke_pure_shear()
    matrix = [
        1.00 0.00
        1.06 1.52
        1.16 2.88
        1.29 4.48
        1.37 5.44
        1.605 7.52
        1.80 8.96
        1.99 10.16
        2.17 11.20
        2.46 12.92
        2.74 14.48
    ]
    return matrix 
end
################################################################
################################################################
################################################################
function Meunier_uniax() 
    matrix = [
        0.39 -2.39
        0.45 -1.64
        0.52 -1.185
        0.61 -0.80
        0.66 -0.585
        0.72 -0.42
        0.78 -0.29
        0.85 -0.18
        0.91 -0.095
        0.95 -0.04
        1.00 0.00
        1.05 0.04
        1.11 0.10
        1.18 0.14
        1.26 0.20
        1.36 0.245
        1.46 0.30
        1.56 0.35
        1.66 0.40
        1.76 0.45
        1.85 0.50
        1.93 0.55
        2.04 0.65
        2.09 0.70
    ]
    return matrix
end 
################################################################
function Meunier_equbiax()
    matrix = [
    1.00 0.00
    1.045 0.105
    1.10 0.18
    1.18 0.28
    1.235 0.33
    1.34 0.41
    1.445 0.48
    1.54 0.54
    1.68 0.65
    1.78 0.74
    1.81 0.77
    1.85 0.82
    1.96 1.01
    2.07 1.32
]

    return matrix
end 
################################################################
function Meunier_shear()
    matrix = [
    1.00 0.00
    1.01 0.04
    1.045 0.10
    1.09 0.14
    1.15 0.19
    1.21 0.245
    1.29 0.30
    1.38 0.35
    1.48 0.40
    1.57 0.45
    1.67 0.50
    1.76 0.55
    1.845 0.60
    1.92 0.65
    1.98 0.70
    2.03 0.75
    2.09 0.80
]

return matrix 
end
################################################################
################################################################
################################################################
function Mai_unia()
    matrix = [
        1.00 0.00
        1.12 0.045
        1.20 0.09
        1.32 0.18
        1.40 0.23
        1.60 0.36
        1.80 0.445
        1.88 0.47
        2.00 0.50
        2.08 0.52
        2.20 0.53
    ]
    
    return matrix
end
################################################################
function Mai_biax()
    matrix = [
        1.00 0.00
        1.09 0.05
        1.16 0.105
        1.20 0.15
        1.28 0.225
        1.36 0.31
        1.40 0.34
        1.48 0.40
        1.56 0.445
        1.60 0.46
        1.67 0.47
    ]
    
    return matrix
end
################################################################
function Mai_shear()
    matrix = [
        1.00 0.00
        1.08 0.03
        1.195 0.10
        1.24 0.125
        1.32 0.19
        1.40 0.25
        1.52 0.34
        1.60 0.39
        1.68 0.43
        1.80 0.47
        1.88 0.49
    ]
    
return matrix 
end 