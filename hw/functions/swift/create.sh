#!/bin/bash

suffix=$1
# chek whether suffix is provided from command line
if [ "$suffix" = "" ]; then
  fname=hello-swift
else
  fname=hello-swift-${suffix}
fi

wsk -i action create $fname hello.swift --kind swift:default --timeout 120000