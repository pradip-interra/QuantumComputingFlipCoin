# QuantumComputingFlipCoin
 This is a quantum computing program to flip the coin, using Q#.
Note this section of the program in flip.qs:


		                  H(qubit);  // first flip
                    let val = M(qubit);  // an read
                    H(qubit);  // second flip



Run the corresponding flip.py host program with the line#2 (let statement) and without the line#2. And notice the difference!
