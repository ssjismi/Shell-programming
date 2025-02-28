#!/bin/bash
echo "----------"
echo "RECTANGLE AREA & PERIMETER CALCULATOR"
echo "----------"
echo "Enter the length of the rectangle:"
read length
echo "Enter the width of the rectangle:"
read width
area=$(( $length*$width|bc ))
perimeter=$((2*( $length+$width )|bc))
echo "----------"
echo "COMPUTATION RESULT"
echo "----------"
echo "Length:$length"
echo "Width:$width"
echo "Area:$area"
echo "Perimeter:$perimeter"
echo "----------"
echo "computation completed successfully!"
echo "----------"

