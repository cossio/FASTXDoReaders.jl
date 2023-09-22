import Aqua
import FASTXDoReaders
using Test: @testset

@testset verbose = true "aqua" begin
    Aqua.test_all(FASTXDoReaders)
end
