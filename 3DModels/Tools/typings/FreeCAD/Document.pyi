"""Module that deals with the overall document ('*.FCStd')."""

class Document:

    def load(self, filepath:str) -> None:
        ...

    def save(self) -> None:
        ...

    def saveAs(self, filepath:str) -> None:
        ...

    def saveCopy(self, filepath:str) -> None:
        ...
