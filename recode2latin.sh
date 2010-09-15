#!/bin/bash

# Class
cp -f thETS-utf8.cls thETS-latin1.cls
sed -i 's/thETS-utf8/thETS-latin1/g' thETS-latin1.cls
sed -i 's/RequirePackage[utf8]/RequirePackage[latin1]/g' thETS-latin1.cls
recode utf8..latin1 thETS-latin1.cls

# Tex
cp -f mainETS-utf8.tex mainETS-latin1.tex
sed -i 's/thETS-utf8/thETS-latin1/g' mainETS-latin1.tex
recode utf8..latin1 mainETS-latin1.tex
