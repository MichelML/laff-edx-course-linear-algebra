const vecTrans = (firstVec, secondVec) => firstVec.reduce((acc, val, i) => acc + (val * (secondVec ? secondVec[i] : 1)), 0);
console.log(vecTrans([2, 5, -6, 1]));
console.log(vecTrans([3, 7, -3, 5], [1, 0, 0, 2]));
