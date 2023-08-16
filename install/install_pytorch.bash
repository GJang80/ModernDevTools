#!/bin/bash

# Installs dependences for pytorch 2.
sudo apt install python3-pip -y

sudo ln -s /usr/bin/python3 /usr/bin/python

# Installs preview pytorch 2 with CUDA 12.1.
pip3 install --pre torch torchvision torchaudio --index-url https://download.pytorch.org/whl/nightly/cu121

# Verifies that pytorch 2 installed correctly.
python <<EOF
import torch

x = torch.rand(5,3)
print(x)

print(f"[CUDA available] {torch.cuda.is_available()}")
EOF