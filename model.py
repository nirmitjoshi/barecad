from build123d import *

def main_model():
    length, width, thickness = 80.0, 60.0, 5.0
    box = Box(length, width, thickness)
    return box

export_stl(main_model(), "live_model.stl")
