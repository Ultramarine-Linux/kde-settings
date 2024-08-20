#!/bin/sh

# Set the properties if and only if wayland with xwayland is present
if [ -n "$DISPLAY" ] && [ -n "$WAYLAND_DISPLAY" ]; then
	xprop -root -format AT_SPI_BUS 8s -set 'AT_SPI_BUS' "$( busctl call --user org.a11y.Bus /org/a11y/bus org.a11y.Bus GetAddress | sed 's/s "\(.*\)"/\1/' )"
fi
