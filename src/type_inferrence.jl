
"""
    state_type(t::Type)
    state_type(p::Union{RPOMDP,POMDP,MDP})

Return the state type for a problem type (the `S` in `POMDP{S,A,O}`).

```
type A <: POMDP{Int, Bool, Bool} end

state_type(A) # returns Int
```
"""
state_type(t::Type) = state_type(supertype(t))
state_type{S,A,O}(t::Type{POMDP{S,A,O}}) = S
state_type{S,A,O}(t::Type{RPOMDP{S,A,O}}) = S
state_type{S,A}(t::Type{MDP{S,A}}) = S
state_type(t::Type{Any}) = error("Attempted to extract the state type for $t. This is not a subtype of `RPOMDP`, `POMDP` or `MDP`. Did you declare your problem type as a subtype of `RPOMDP{S,A,O}`, `POMDP{S,A,O}` or `MDP{S,A}`?")
state_type(p::Union{RPOMDP,POMDP,MDP}) = state_type(typeof(p))

"""
    action_type(t::Type)
    action_type(p::Union{RPOMDP,POMDP,MDP})

Return the action type for a problem type (the `A` in `POMDP{S,A,O}`).

```
type A <: POMDP{Bool, Int, Bool} end

action_type(A) # returns Int
```
"""
action_type(t::Type) = action_type(supertype(t))
action_type{S,A,O}(t::Type{POMDP{S,A,O}}) = A
action_type{S,A,O}(t::Type{RPOMDP{S,A,O}}) = A
action_type{S,A}(t::Type{MDP{S,A}}) = A
action_type(t::Type{Any}) = error("Attempted to extract the action type of $t. This is not a subtype of `RPOMDP`, `POMDP` or `MDP`. Did you declare your problem type as a subtype of `RPOMDP{S,A,O}`, `POMDP{S,A,O}` or `MDP{S,A}`?")
action_type(p::Union{RPOMDP,POMDP,MDP}) = action_type(typeof(p))

"""
    obs_type(t::Type)

Return the observation type for a problem type (the `O` in `POMDP{S,A,O}`).

```
type A <: POMDP{Bool, Bool, Int} end

obs_type(A) # returns Int
```
"""
obs_type(t::Type) = obs_type(supertype(t))
obs_type{S,A,O}(t::Type{POMDP{S,A,O}}) = O
obs_type{S,A,O}(t::Type{RPOMDP{S,A,O}}) = O
obs_type(t::Type{Any}) = error("Attempted to extract the observation type of $t. This is not a subtype of `RPOMDP` or `POMDP`. Did you declare your problem type as a subtype of `RPOMDP{S,A,O}` or `POMDP{S,A,O}`?")
obs_type(p::Union{RPOMDP,POMDP}) = obs_type(typeof(p))
