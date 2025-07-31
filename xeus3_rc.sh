## reset paths
export PATH=$HOME/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
export LD_LIBRARY_PATH=$HOME/.local/lib
export PYTHONPATH=

## add
export PATH=/opt/xeus3/bin:$PATH
export LD_LIBRARY_PATH=/opt/xeus3/lib:$LD_LIBRARY_PATH
export JUPYTER_PATH=/choreonoid_ws/install/share/choreonoid-2.3/jupyter

export XEUS_LOG=0

source /choreonoid_ws/install/setup.bash

CNOID_VER="$(echo $(find $(dirname $(which choreonoid))/../share -maxdepth 1 -name choreonoid-*) | sed -e 's@.*choreonoid-\(.*\)@\1@g')"

if [ -n "${CNOID_VER}" ]; then
    export PYTHONPATH=$PYTHONPATH:"$(dirname "$(which choreonoid)")"/../lib/choreonoid-"${CNOID_VER}"/python
fi
export PYTHONPATH=$PYTHONPATH:/cnoid_devel/src/irsl_python_lib
export PYTHONPATH=$PYTHONPATH:"$HOME"/.local/lib/python3.8/site-packages
