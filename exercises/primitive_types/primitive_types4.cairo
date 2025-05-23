// Modify the integer types to make the tests pass.
// Learn how to convert between integer types, and felts.


fn sum_u8s(x: u8, y: u8) -> u8 {
    x + y
}

//TODO modify the types of this function to prevent an overflow when summing big values
fn sum_big_numbers(x: u16, y: u16) -> u16 {
    x + y
}

fn convert_to_felt(x: u8) -> felt252 { //TODO return x as a felt252.
    //TODO return x as a felt252.
    // You can use the `integer::u256_from_felt252` function to convert from felt252 to u8.
    // You can use the `integer::felt252_from_u256` function to convert from u8 to felt252.
   let y:felt252 = x.try_into().unwrap();
   y
}

fn convert_felt_to_u8(x: felt252) -> u8 { //TODO return x as a u8.
    let y:u8 = x.try_into().unwrap();
    y
}

#[test]
fn test_sum_u8s() {
    assert(sum_u8s(1, 2_u8) == 3_u8, 'Something went wrong');
}

#[test]
fn test_sum_big_numbers() {
    //TODO modify this test to use the correct integer types.
    // Don't modify the values, just the types.
    // See how using the _u8 suffix on the numbers lets us specify the type?
    // Try to do the same thing with other integer types.
    assert(sum_big_numbers(255_u16, 255_u16) == 510_u16, 'Something went wrong');
}

#[test]
fn test_convert_to_felt() {
    assert(convert_to_felt(1_u8) == 1, 'Type conversion went wrong');
}

#[test]
fn test_convert_to_u8() {
    assert(convert_felt_to_u8(1) == 1_u8, 'Type conversion went wrong');
}
