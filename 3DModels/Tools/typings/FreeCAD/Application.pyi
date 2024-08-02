"""Mostly overall document related methods"""
from typing import Optional

class App:
    def __init__(self) -> None:
        ...

    def activeDocument(self) -> Optional[object]:
        ...

    def newDocument(self, name:str, label:Optional[str]=None, hidden=False, temp=False) -> object:
        ...

    def openDocument(self, filepath:str, hidden=False) -> object:
        ...
