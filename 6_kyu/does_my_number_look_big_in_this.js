function narcissistic(value) {
    num_arr = value.toString().split('');
    var power = num_arr.length;
    var total_sum = 0;
    num_arr.forEach(num => {
        num = parseInt(num);
        var individual_sum = Math.pow(num, power);
        total_sum += individual_sum;
    });
    return (total_sum == value) ? true : false;
  }

  console.log(narcissistic(153));