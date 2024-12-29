#!/bin/bash

sudo pkill blued
sudo launchctl stop com.apple.blued
sudo launchctl start com.apple.blued
