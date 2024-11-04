# Godot Sonic Starter Kit
A Starter Kit for making a Sonic game in Godot. This will be for Godot 4.3, and will feature the barebones basic mechanics for a Sonic game, such as momentum, inertia, spin dash, boost, rings, item boxes, slopes, loops, goal posts, a simple badnik, dash pads, springs, etc. 
The purpose will be to make a starter kit for anyone to use to make a Sonic fan game, and just make it faster in general to start a new project. There will be a debug level, but building any subsequent levels, bosses, gimmicks will be on the developer.

# Functions
There are a couple functions in `PhysicsCalc.gd` that can calculate inertia, custom velocity and momentum.
## `calcInertia(mass: float, rotation: float)`
Calculates the inertia of Sonic or an object. Returns a float representing the moment of inertia.
### Applicable Scenarios
- Having the character slide to a stop instead of just coming to a complete stop altogether.
- More accurate jump physics
- Physics-based puzzles/gimmicks

## `calcMomentum(mass: float, velocity: float)`
Calculates the momentum of an object. Returns a float representing the momentum. Calculate this first before velocity. Momentum is more related to the overall "force" or "energy" of Sonic's motion, which can be affected by things like collisions, boosts, and other external factors.
### Applicable Scenarios
- Calculating Sonic's overall momentum during normal movement.
- Determining the change in momentum when Sonic interacts with objects that affect his speed, such as dash pads, springs, and slopes.

## `calcVelocity(momentum: float, mass: float)`
Calculates the velocity of an object. Velocity is more directly related to Sonic's actual speed and movement.
### Applicable Scenarios
- Updating Sonic's linear velocity during acceleration and deceleration, such as Sonic starting from a standstill and gradually accelerating, or Sonic slowing down and coming to a stop.
- Calculating Sonic's vertical velocity during jumping and falling
- Adjusting Sonic's velocity after collisions with objects or enemies