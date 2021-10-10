<?php

function containsAllRots($s, $arr) {

    $all_rotations = [$s];
    $s_length = strlen($s);
    $chars = str_split($s);

    for( $i = 0; $i < ($s_length - 1); $i++) {
        echo $i;
        $last_char = array_pop($chars);
        array_unshift($chars, $last_char);
        $rotation = implode("", $chars);
        array_push($all_rotations, $rotation);
    }

    print_r($all_rotations);

}

$test_s = 'hello';
$test_arr = ['hello', 'ohell', 'lohel', 'llohe', 'elloh'];
containsAllRots($test_s, $test_arr);