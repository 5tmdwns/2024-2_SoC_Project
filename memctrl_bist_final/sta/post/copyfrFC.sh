rm ./spef/* -rf
rm ./netlist/* -rf

cp ./../../pnr/memctrl/outputs/*.spef ./spef
cp ./../../pnr/memctrl/outputs/*.v ./netlist