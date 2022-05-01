#!/user/bin/env bash

touch ~/.userenv

echo "export DISABLE_TOUCHSCREEN=0" >> ~/.userenv
echo "export IS_SYNAPTICS_TOUCHPAD=0" >> ~/.userenv
echo "export IS_NVIDIA_GPU=0" >> ~/.userenv

echo "SEt env vars in .userenv file in $HOME"
