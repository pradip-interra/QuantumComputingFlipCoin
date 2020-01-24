// Stared with a coin of head
// flip is once, "see" the value, flip it again ==> alike classical computer, probablity is ~50%
// flip is once, flip it again ==> UNLIKE classical computer, probablity is 100%

namespace FlipCoin {
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;

    operation Set(desired : Result, q1 : Qubit) : Unit {
        if (desired != M(q1)) {
            X(q1);
        }
    }

    operation TwoFlip(count : Int, initial : Result) : (Int, Int) {

        mutable numOnes = 0;
        using (qubit = Qubit()) {

            for (test in 1..count) {
                    Set(initial, qubit);


                    H(qubit);  // first flip

                    let val = M(qubit);  // an read

                    H(qubit);  // second flip


                    let res = M(qubit);

                    if (res == One) {
                        set numOnes += 1;
                    }
                }
             Set(Zero, qubit);
        }
        return (count-numOnes, numOnes);
    }
}
