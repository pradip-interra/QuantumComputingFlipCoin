import qsharp

from qsharp import Result
from FlipCoin import TwoFlip

res = TwoFlip.simulate(count=1000, initial=Result.One)
(num_zeros, num_ones) = res
print(f'Initial state of coin:{Result.One: <4} 0s={num_zeros: <4} 1s={num_ones: <4}')

