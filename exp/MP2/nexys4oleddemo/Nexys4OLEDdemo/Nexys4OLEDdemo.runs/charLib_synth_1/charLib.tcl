# 
# Synthesis run script generated by Vivado
# 

debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Work/Vivado/15.1/Nexys4OLEDdemo/Nexys4OLEDdemo.cache/wt [current_project]
set_property parent.project_path C:/Work/Vivado/15.1/Nexys4OLEDdemo/Nexys4OLEDdemo.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
read_ip C:/Work/Vivado/15.1/Nexys4OLEDdemo/Nexys4OLEDdemo.srcs/sources_1/ip/charLib/charLib.xci
set_property is_locked true [get_files C:/Work/Vivado/15.1/Nexys4OLEDdemo/Nexys4OLEDdemo.srcs/sources_1/ip/charLib/charLib.xci]

synth_design -top charLib -part xc7a100tcsg324-1 -mode out_of_context
rename_ref -prefix_all charLib_
write_checkpoint -noxdef charLib.dcp
catch { report_utilization -file charLib_utilization_synth.rpt -pb charLib_utilization_synth.pb }
if { [catch {
  file copy -force C:/Work/Vivado/15.1/Nexys4OLEDdemo/Nexys4OLEDdemo.runs/charLib_synth_1/charLib.dcp C:/Work/Vivado/15.1/Nexys4OLEDdemo/Nexys4OLEDdemo.srcs/sources_1/ip/charLib/charLib.dcp
} _RESULT ] } { 
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}
if { [catch {
  write_verilog -force -mode synth_stub C:/Work/Vivado/15.1/Nexys4OLEDdemo/Nexys4OLEDdemo.srcs/sources_1/ip/charLib/charLib_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}
if { [catch {
  write_vhdl -force -mode synth_stub C:/Work/Vivado/15.1/Nexys4OLEDdemo/Nexys4OLEDdemo.srcs/sources_1/ip/charLib/charLib_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}
if { [catch {
  write_verilog -force -mode funcsim C:/Work/Vivado/15.1/Nexys4OLEDdemo/Nexys4OLEDdemo.srcs/sources_1/ip/charLib/charLib_funcsim.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}
if { [catch {
  write_vhdl -force -mode funcsim C:/Work/Vivado/15.1/Nexys4OLEDdemo/Nexys4OLEDdemo.srcs/sources_1/ip/charLib/charLib_funcsim.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}
