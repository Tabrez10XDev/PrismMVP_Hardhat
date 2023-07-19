pragma circom 2.0.5;

include "../node_modules/circomlib/circuits/comparators.circom";

template AadharCheck(){
    signal input age;
    signal input citizenship;
    signal input cibil;
    signal ageCheck;
    signal cibilCheck;
    signal citizenshipCheck;
    signal interCheck;

    signal output isSatisfied;

    component greaterThan = GreaterEqThan(7);
    greaterThan.in[0] <== age;
    greaterThan.in[1] <== 18;
    ageCheck <== greaterThan.out;

    component equal = IsEqual();
    equal.in[0] <== citizenship;
    equal.in[1] <== 91;
    citizenshipCheck <== equal.out;

    component greaterThan2 = GreaterEqThan(7);
    greaterThan2.in[0] <== cibil;
    greaterThan2.in[1] <== 100;
    cibilCheck <== greaterThan2.out;

    interCheck <==  cibilCheck * citizenshipCheck;
    isSatisfied <== interCheck * ageCheck;
}

component main = AadharCheck();