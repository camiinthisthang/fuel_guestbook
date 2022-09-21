script;
use guestbook_lib::Guestbook;

fn main () {
    let newAddress = 0xf9c608effadcf6ccf7db65016307baf4d9e8a33576cd7dd702cd3671ef16532b;
    let oldAddress = 0x65334984b754dff9faa1d8f169f856056d80c9c4f70aa3eedbe293555376d01f; 
    let x = abi(Guestbook, oldAddress);
    x.sign_guestbook("hello im in thisuuuu");
}
