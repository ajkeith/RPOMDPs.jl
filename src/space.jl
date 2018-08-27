######################
# interface for spaces
######################

"""
    dimensions(s::Any)

Returns the number of dimensions in space `s`.
"""
function dimensions end

"""
    states(problem::POMDP)
    states(problem::MDP)

Returns the complete state space of a POMDP.
"""
function states end

"""
    states{S,A,O}(problem::POMDP{S,A,O}, state::S)
    states{S,A}(problem::MDP{S,A}, state::S)

Returns a subset of the state space reachable from `state`.
"""
states(problem::Union{RPOMDP,POMDP,MDP}, s) = states(problem)
@impl_dep {P<:Union{RPOMDP,POMDP,MDP},S} states(::P,::S) states(::P)

"""
    actions(problem::POMDP)
    actions(problem::MDP)

Returns the entire action space of a POMDP.
"""
function actions end

"""
    actions{S,A,O}(problem::POMDP{S,A,O}, state::S)
    actions{S,A}(problem::MDP{S,A}, state::S)

Return the action space accessible from the given state.
"""
actions(problem::Union{MDP,POMDP,RPOMDP}, state) = actions(problem)
@impl_dep {P<:Union{RPOMDP,POMDP,MDP},S} actions(::P,::S) actions(::P)

"""
    actions(problem::POMDP, belief)

Return the action space accessible from the states with nonzero belief.
"""
actions(problem::Union{RPOMDP,POMDP}, belief) = actions(problem)

"""
    observations(problem::POMDP)

Return the entire observation space.
"""
function observations end

"""
    observations{S,A,O}(problem::POMDP{S,A,O}, state::S)

Return the observation space accessible from the given state and returns it.
"""
observations(problem::Union{RPOMDP,POMDP}, state) = observations(problem)
@impl_dep {P<:Union{RPOMDP,POMDP},S} observations(::P,::S) observations(::P)
