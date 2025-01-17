# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xcvu37p-fsvh2892-2L-e

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/XilinxProjects/ip_repo/adc4x16g_core/adc4x16g_core.cache/wt [current_project]
set_property parent.project_path C:/XilinxProjects/ip_repo/adc4x16g_core/adc4x16g_core.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part xilinx.com:vcu128:part0:1.2 [current_project]
set_property ip_repo_paths c:/XilinxProjects/ip_repo [current_project]
update_ip_catalog
set_property ip_output_repo c:/XilinxProjects/ip_repo/adc4x16g_core/adc4x16g_core.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  C:/XilinxProjects/ip_repo/adc4x16g_core/adc4x16g_core.srcs/sources_1/imports/src/gtwizard_ultrascale_0_prbs_any.v
  C:/XilinxProjects/ip_repo/adc4x16g_core/adc4x16g_core.srcs/sources_1/imports/src/sync_it.v
}
read_verilog -library "" C:/XilinxProjects/ip_repo/adc4x16g_core/adc4x16g_core.srcs/sources_1/imports/adc16G4X_datarx/src/gty_wrapper_0.v
read_ip -quiet C:/XilinxProjects/ip_repo/adc4x16g_core/adc4x16g_core.srcs/sources_1/ip/fifo_256in_32out/fifo_256in_32out.xci
set_property used_in_implementation false [get_files -all c:/XilinxProjects/ip_repo/adc4x16g_core/adc4x16g_core.srcs/sources_1/ip/fifo_256in_32out/fifo_256in_32out.xdc]
set_property used_in_implementation false [get_files -all c:/XilinxProjects/ip_repo/adc4x16g_core/adc4x16g_core.srcs/sources_1/ip/fifo_256in_32out/fifo_256in_32out_clocks.xdc]

read_ip -quiet C:/XilinxProjects/ip_repo/adc4x16g_core/adc4x16g_core.srcs/sources_1/ip/gtwizard_ultrascale_3/gtwizard_ultrascale_3.xci
set_property used_in_implementation false [get_files -all c:/XilinxProjects/ip_repo/adc4x16g_core/adc4x16g_core.srcs/sources_1/ip/gtwizard_ultrascale_3/synth/gtwizard_ultrascale_3_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/XilinxProjects/ip_repo/adc4x16g_core/adc4x16g_core.srcs/sources_1/ip/gtwizard_ultrascale_3/synth/gtwizard_ultrascale_3.xdc]

read_ip -quiet C:/XilinxProjects/ip_repo/adc4x16g_core/adc4x16g_core.srcs/sources_1/ip/gtwizard_ultrascale_2/gtwizard_ultrascale_2.xci
set_property used_in_implementation false [get_files -all c:/XilinxProjects/ip_repo/adc4x16g_core/adc4x16g_core.srcs/sources_1/ip/gtwizard_ultrascale_2/synth/gtwizard_ultrascale_2_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/XilinxProjects/ip_repo/adc4x16g_core/adc4x16g_core.srcs/sources_1/ip/gtwizard_ultrascale_2/synth/gtwizard_ultrascale_2.xdc]

read_ip -quiet C:/XilinxProjects/ip_repo/adc4x16g_core/adc4x16g_core.srcs/sources_1/ip/gtwizard_ultrascale_1/gtwizard_ultrascale_1.xci
set_property used_in_implementation false [get_files -all c:/XilinxProjects/ip_repo/adc4x16g_core/adc4x16g_core.srcs/sources_1/ip/gtwizard_ultrascale_1/synth/gtwizard_ultrascale_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/XilinxProjects/ip_repo/adc4x16g_core/adc4x16g_core.srcs/sources_1/ip/gtwizard_ultrascale_1/synth/gtwizard_ultrascale_1.xdc]

read_ip -quiet C:/XilinxProjects/ip_repo/adc4x16g_core/adc4x16g_core.srcs/sources_1/ip/gtwizard_ultrascale_0/gtwizard_ultrascale_0.xci
set_property used_in_implementation false [get_files -all c:/XilinxProjects/ip_repo/adc4x16g_core/adc4x16g_core.srcs/sources_1/ip/gtwizard_ultrascale_0/synth/gtwizard_ultrascale_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/XilinxProjects/ip_repo/adc4x16g_core/adc4x16g_core.srcs/sources_1/ip/gtwizard_ultrascale_0/synth/gtwizard_ultrascale_0.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top gty_wrapper_0 -part xcvu37p-fsvh2892-2L-e


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef gty_wrapper_0.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file gty_wrapper_0_utilization_synth.rpt -pb gty_wrapper_0_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
