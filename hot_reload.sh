#!/bin/bash

MODEL_FILE="live_model.stl"
DESIGN_SCRIPT="model.py"
F3D_OPTIONS="--background-color=0.1,0.1,0.2 --grid-color=0.4,0.4,0.4"

f3d "$MODEL_FILE" $F3D_OPTIONS --watch &

while true; do
  inotifywait -q -e modify "$DESIGN_SCRIPT"
  
  clear
  echo "Updating model..."
  if python "$DESIGN_SCRIPT"; then
    echo "Model updated successfully"
  else
    echo "Error in model script. Check your code."
    sleep 1
  fi
done
