#!/bin/bash
find . -iname \*.proto -type f | xargs protoc -I. --ruby_out=../lib
