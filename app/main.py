# import numpy as np

# a = np.array([2, 3, 4])
# print(a)

import time
from numba import njit 

@njit
def main():
  veces = 20000000000000
  num = 1
  a = 0
  for a in range(veces):
    num = num + num - num
  print (num)

start = time.time()
main()
end = time.time()
print(end - start)
