rm ./spef/* -rf
rm ./netlist/* -rf
rm ./rpt/* -rf
rm ./sdf/* -rf

cp ./../../pnr/memctrl/outputs/*.spef ./spef
cp ./../../pnr/memctrl/outputs/*.v ./netlist
