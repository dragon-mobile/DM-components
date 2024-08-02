""" Hold common types used in other modules
"""
from typing import Literal, Optional, TypedDict

from Part import ArcOfCircle, Circle, LineSegment  # type: ignore
from Sketcher import Constraint  # type: ignore

__all__ = [ "Constraints3D", "Planes", "PartPrimitives", "Sketch3D"]

class Constraints3D(TypedDict):
    """Non-class TypedDict for Sketcher Constraint lists.

    Attributes:
        xy: (optional) Sketcher Constraint list for xy plane sketch.
        xz: (optional) Sketcher Constraint list for xz plane sketch.
        yz: (optional) Sketcher Constraint list for yz plane sketch.
    """
    xy: Optional[list[Constraint]]
    xz: Optional[list[Constraint]]
    yz: Optional[list[Constraint]]

PartPrimitives = list[ArcOfCircle | Circle | LineSegment]
"""Type use to define Part primitive list."""

Planes = Literal["xy", "xz", "yz"]
"""Defines sketch planes names"""

class Sketch3D(TypedDict):
    """Non-class TypedDict for Part primitive lists used to define a new solid.

    Attributes:
        xy: (optional) Part primitive list for xy plane sketch.
        xz: (optional) Part primitive list for xz plane sketch.
        yz: (optional) Part primitive list for yz plane sketch.
    """
    xy: Optional[PartPrimitives]
    xz: Optional[PartPrimitives]
    yz: Optional[PartPrimitives]
