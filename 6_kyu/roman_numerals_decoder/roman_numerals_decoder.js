// xvi
// 10 5 1
// 16

// xiv
// 10 1 5
// 14

// lxiv
// 50 10 1 5
// 64

// CXCIX
// 100 10 100 1 10
// 199

// MDCLXVI
// 1000 500 100 50 10 5 1
// 1666

function solution(roman) {

    let total_value = 0;
    let previous_value;

    // create a hash of numeral values
    let value_lookup = {
        'I': 1,
        'V': 5,
        'X': 10,
        'L': 50,
        'C': 100,
        'D': 500,
        'M': 1000,
    };

    // break string into an array of numerals
    let numeral_arr = roman.split('');
    numeral_arr.forEach(numeral => {
        // convert to value
        current_value = value_lookup[numeral];
        // if current larger than previous then take previous off total and subtract from current value, adding to total
        if (previous_value != undefined && current_value > previous_value) {
            total_value += (current_value - previous_value);
            total_value -= previous_value;
        } else {
            // otherwise total simply increases by the current value
            total_value += current_value;
        }
        // keep track of previous
        previous_value = current_value;
    });

    return total_value;
}

console.log(solution('CXCIX'));