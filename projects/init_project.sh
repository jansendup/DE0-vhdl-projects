echo "Project name:"
read pName

echo "Creating directories..."
mkdir $pName
mkdir $pName/backend
mkdir $pName/sim
mkdir $pName/sim/rtl_sim
mkdir $pName/sim/gate_sim
mkdir $pName/syn
mkdir $pName/rtl
mkdir $pName/bench
mkdir $pName/doc
mkdir $pName/sw

#read -p "Setup modelsim (y/n)?"
#if [ "$REPLY" == "y" ]; then
#   echo "Creating working libraries..."
#   cd $pName/sim/modelsim
#   vlib work
#   vmap work work
#   cd ../../
#fi


