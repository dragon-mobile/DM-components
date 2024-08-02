"""Script used to create the capacitor 3D models for KiCAD using FreeCADCmd.

Example:
    Assuming `FreeCADCmd` is in your `PATH` you can run this script like this:

        $ FreeCADCmd capmodels.py
"""
from typing import Optional
from pydantic import BaseModel
from Sketcher import Constraint  # type: ignore
from .types import Constraints3D as Constraints3D, PartPrimitives as PartPrimitives, Planes as Planes, Sketch3D as Sketch3D

class ChipCap:
    """ Creates single chip capacitor 3D model.
    """
    def __init__(self) -> None:
        pass
