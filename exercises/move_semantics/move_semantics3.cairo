// Make me compile without adding new lines-- just changing existing lines!
// (no lines with multiple semicolons necessary!)

use debug::PrintTrait;

fn main() {
    let mut arr0 = ArrayTrait::new();

    fill_arr(ref arr0);

    arr0.clone().print();

    arr0.append(88);

    arr0.clone().print();
}

fn fill_arr(ref arr: Array<felt252>) {
    arr.append(22);
    arr.append(44);
    arr.append(66);

    // arr
}
