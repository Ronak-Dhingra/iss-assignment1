#!/bin/bash
awk '$0="Line No: "NR" - Count of Words: "NF' $1