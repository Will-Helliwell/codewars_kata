function descending_order(num){
    let string = num.toString();
    let arr = string.split("");
    return parseInt(arr.sort().reverse().join(''));
}

console.log(descending_order(254));