using Test

include("perfect_numbers.jl")


# Tests adapted from `problem-specifications//canonical-data.json` @ v1.1.0

println("\n"^2, "-"^60, "\n"^3)

@testset "smallest perfect number" begin
    @test classify(6) == "perfect"
end
println()

@testset "medium perfect number" begin
    @test classify(28) == "perfect"
end
println()

@testset "large perfect number" begin
    @test classify(33_550_336) == "perfect"
end
println()

@testset "smallest abundant number" begin
    @test classify(12) == "abundant"
end
println()

@testset "medium abundant number" begin
    @test classify(30) == "abundant"
end
println()

@testset "large abundant number" begin
    @test classify(33_550_335) == "abundant"
end
println()

@testset "smallest prime deficient number" begin
    @test classify(2) == "deficient"
end
println()

@testset "smallest nonprime deficient number" begin
    @test classify(4) == "deficient"
end
println()

@testset "medium deficient number" begin
    @test classify(32) == "deficient"
end
println()

@testset "large deficient number" begin
    @test classify(33_550_337) == "deficient"
end
println()

@testset "edge case" begin
    @test classify(1) == "deficient"
end
println()


@testset "zero" begin
    @test_throws DomainError classify(0)
end
println()

@testset "negative" begin
    @test_throws DomainError classify(-1)
end
