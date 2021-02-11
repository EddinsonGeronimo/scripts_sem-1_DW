#! /bin/bash

ncat -l 3 --keep-open --exec "/bin/cat"
