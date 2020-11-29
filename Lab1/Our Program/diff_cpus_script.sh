#Minor

./build/ARM/gem5.opt -d ./Minor/Minor\ 1GHz/ configs/example/se.py --cpu-type=MinorCPU --caches -c oddnumsccARM

./build/ARM/gem5.opt -d ./Minor/Minor\ 2GHz/ configs/example/se.py --cpu-type=MinorCPU --cpu-clock=2GHz --caches -c oddnumsccARM

./build/ARM/gem5.opt -d ./Minor/Minor\ 5GHz/ configs/example/se.py --cpu-type=MinorCPU --cpu-clock=5GHz --caches -c oddnumsccARM

./build/ARM/gem5.opt -d ./Minor/Minor\ DDR4/ configs/example/se.py --cpu-type=MinorCPU --mem-type=DDR4_2400_8x8 --caches -c oddnumsccARM

./build/ARM/gem5.opt -d ./Minor/Minor\ LPDDR3/ configs/example/se.py --cpu-type=MinorCPU --mem-type=LPDDR3_1600_1x32 --caches -c oddnumsccARM


#Timing Simple

./build/ARM/gem5.opt -d ./Timing\ Simple/Timing\ Simple\ 1GHz/ configs/example/se.py --cpu-type=TimingSimpleCPU --caches -c oddnumsccARM

./build/ARM/gem5.opt -d ./Timing\ Simple/Timing\ Simple\ 2GHz/ configs/example/se.py --cpu-type=TimingSimpleCPU --cpu-clock=2GHz --caches -c oddnumsccARM

./build/ARM/gem5.opt -d ./Timing\ Simple/Timing\ Simple\ 5GHz/ configs/example/se.py --cpu-type=TimingSimpleCPU --cpu-clock=5GHz --caches -c oddnumsccARM

./build/ARM/gem5.opt -d ./Timing\ Simple/Timing\ Simple\ DDR4/ configs/example/se.py --cpu-type=TimingSimpleCPU --mem-type=DDR4_2400_8x8 --caches -c oddnumsccARM

./build/ARM/gem5.opt -d ./Timing\ Simple/Timing\ Simple\ LPDDR3/ configs/example/se.py --cpu-type=TimingSimpleCPU --mem-type=LPDDR3_1600_1x32 --caches -c oddnumsccARM
