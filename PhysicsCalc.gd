func calcInertia (m: float, r:float):
    """
        Calculates the moment of inertia for an object.

        Args:
            m (float) : The mass of the object
            r (float) : The distance from the axis of rotation from the object.

        Returns: 
            float: The inertia of the object.

        Scenarios:
            - Having the character slide to a stop instead of just coming to a complete stop altogether.
            - More accurate jump physics
            - Physics-based puzzles/gimmicks
    """
    return m * r ** 2

func calcMomentum (m: float, v: float):
    """
        Calculates the momentum of an object.

        Args:
            m (float) : The mass of the object
            v (float) : The velocity of the object.

        Returns: 
            float: The momentum of the ojbject.

        Scenarios:
            - Having the character gradually gain speed/acceleration and deceleration.
            - Friction/Sliding
            - Boosts, Dash pads.
    """
    return m * v

func calcVelocity (p: float, m: float):
    """
        Calculates the velocity of an object.

        Args:
            p (float) : The momentum of the object
            m (float) : The mass of the object.

        Returns: 
            float: The velocity of the object.
    """
    return p / m 
