# RPOMDPs.jl
This is a fork of the Julia 0.6 version of POMDPs.jl that has been edited to be compatible with robust POMDPs in addition to standard POMDPs. It is primarily used as an interface.

## Installation
This application is built for Julia 0.6. If not already installed, the application can be cloned using the `ajk/robust` branch of the fork.

```julia
Pkg.clone("https://github.com/ajkeith/RPOMDPs.jl/tree/ajk/robust")
```

## Usage

RPOMDPs provides type structure and an interface to the components in [RPOMDPModels.jl](https://github.com/ajkeith/RPOMDPModels.jl), [RPOMDPToolbox.jl](https://github.com/ajkeith/RPOMDPToolbox.jl), and [RobustValueIteration](https://github.com/ajkeith/RobustValueIteration). See each application for futher details.

## References
RPOMDPs.jl is a branch of a fork of [POMDPs.jl](https://github.com/JuliaPOMDP/POMDPs.jl), which extends the type structure to allow robust models.

If this code is useful to you, please star this package and consider citing the following paper.

Egorov, M., Sunberg, Z. N., Balaban, E., Wheeler, T. A., Gupta, J. K., & Kochenderfer, M. J. (2017). POMDPs.jl: A framework for sequential decision making under uncertainty. Journal of Machine Learning Research, 18(26), 1–5.
