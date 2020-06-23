import numpy as np
from time import time

import sys
sys.path.append('.')

from mark0 import mark0
from mark1 import mark1
from mark2 import mark2

np.seterr(all='ignore')

# test 0 - tight loop sum
print('test 0')
n = 1
while True:
    # measure 10 runs to get an average
    start = time()
    for i in range(10):
        mark0(n)
    stop = time()
    # result is in form of floating-point seconds
    result = (stop - start) / 10
    # output in ms
    print(n, round(result * 1e3))
    if result > 60:
        # end once runs take over a minute
        break
    else:
        # otherwise up the requirement
        n = n * 10

# test 1 - recursive fibonacci
print('test 1')
n = 10
while True:
    #  measure 10 runs to get an average
    start = time()
    for i in range(10):
        #  matlab does inclusive ranges
        mark1(n)
    stop = time()
    #  result is in form of floating-point seconds
    result = (stop - start) / 10
    #  output in ms
    print(n, round(result * 1e3))
    if result > 60:
        #  end once runs take over a minute
        break
    else:
        #  otherwise up the requirement
        n = n + 2

#  test 2 - matrix calculations
print('test 2\n')
# create a test matrix
mat = np.ma.zeros(400).reshape((20, 20))
for i in range(20):
    for j in range(20):
        mat[i, j] = 10 + i - j + 2;
n = 1
while True:
    #  measure 10 runs to get an average
    start = time()
    for i in range(10):
        #  matlab does inclusive ranges
        mark2(mat, n)
    stop = time()
    #  result is in form of floating-point seconds
    result = (stop - start) / 10
    #  output in ms
    print(n, round(result * 1e3))
    if result > 60:
        #  end once runs take over a minute
        break
    else:
        #  otherwise up the requirement
        n = n * 10
#  %{%}
