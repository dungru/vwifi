#!/bin/bash
mount -t debugfs nodev /sys/kernel/debug
echo 0 > /sys/kernel/debug/tracing/tracing_on
echo 0 > /sys/kernel/debug/tracing/trace
echo 65535 > /sys/kernel/debug/tracing/buffer_size_kb
echo "mono" > /sys/kernel/debug/tracing/trace_clock

echo :mod:vwifi > /sys/kernel/debug/tracing/set_ftrace_filter

echo function_graph > /sys/kernel/debug/tracing/current_tracer
# # Set current trace mode
# cat /sys/kernel/debug/tracing/available_tracers
# echo function > /sys/kernel/debug/tracing/current_tracer
# echo function_graph > /sys/kernel/debug/tracing/current_tracer

# # Start trace
# echo 1 > /sys/kernel/debug/tracing/tracing_on