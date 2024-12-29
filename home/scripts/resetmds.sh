#!/bin/sh

killall mds
sudo mdutil -i on /
sudo mdutil -E /
