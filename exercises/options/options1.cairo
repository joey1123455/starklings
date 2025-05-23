use option::OptionTrait;

// This function returns how much icecream there is left in the fridge.
// If it's before 10PM, there's 5 pieces left. At 10PM, someone eats them
// all, so there'll be no more left :(
fn maybe_icecream(
    time_of_day: usize
) -> Option<usize> { // We use the 24-hour system here, so 10PM is a value of 22 and 12AM is a value of 0
// The Option output should gracefully handle cases where time_of_day > 23.
// TODO: Complete the function body - remember to return an Option!
    let mut result = Option::None; 
    if time_of_day < 22 {
        result = Option::Some(5);
    } else if time_of_day >= 22 && time_of_day < 24 {
        result = Option::Some(0);
    }
    result
}


#[test]
fn check_icecream() {
    assert(maybe_icecream(9).unwrap() == 5, 'err_1');
    assert(maybe_icecream(10).unwrap() == 5, 'err_2');
    assert(maybe_icecream(23).unwrap() == 0, 'err_3');
    assert(maybe_icecream(22).unwrap() == 0, 'err_4');
    assert(maybe_icecream(25).is_none(), 'err_5');
}

#[test]
fn raw_value() {
    // TODO: Fix this test. How do you get at the value contained in the Option?
    let icecreams = maybe_icecream(12);
    let i = icecreams.unwrap();
    assert(i == 5, 'err_6');
}
