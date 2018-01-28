const R = require('ramda');

const eucledianLength = (vec) => Math.sqrt(R.sum(R.map((val) => val * val, vec)));

[
    [0, 0, 0],
    [1/2, 1/2, 1/2, 1/2],
    [1, -2, 2],
    [0, 0, 1, 0, 0, 0],
].forEach(vec => {
    console.log(eucledianLength(vec));
});