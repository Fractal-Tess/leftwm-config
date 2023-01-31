#! /bin/sh

sensors | grep CPUTIN | awk '{print $2}' | sed -e 's/\+\|\.\S*//g'
