# bash Anaconda3-2020.11-Linux-x86_64.sh
# pip install hicexplorer
# convert cool format to h5 format

hicConvertFormat -m nuclear_cycle_14_repl_merged_5kb.cool -o nuclear_cycle_14_repl_merged_5kb.h5 --inputFormat cool --outputFormat h5
hicConvertFormat -m nuclear_cycle_14_sh_zld_repl_merged_5kb.cool -o nuclear_cycle_14_sh_zld_repl_merged_5kb.h5 --inputFormat cool --outputFormat h5
hicConvertFormat -m nuclear_cycle_12_repl_merged_5kb.cool -o nuclear_cycle_12_repl_merged_5kb.h5 --inputFormat cool --outputFormat h5
hicConvertFormat -m nuclear_cycle_13_repl_merged_5kb.cool -o nuclear_cycle_13_repl_merged_5kb.h5 --inputFormat cool --outputFormat h5
hicConvertFormat -m 3-4h_repl_merged_5kb.cool -o 3-4h_repl_merged_5kb.h5 --inputFormat cool --outputFormat h5
