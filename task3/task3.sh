#!/usr/bin/env sh
ip -4 addr | grep inet | grep -v '127.0.0.1' |awk '{print $2}'
#ip -4 addr | grep inet | grep -v '127.0.0.1'
#to show the loopback interface
#ip -4 addr | grep inet

