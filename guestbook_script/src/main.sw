script;
use guestbook::Guestbook;

fn main () {
    let x = abi(Guestbook, 0x65334984b754dff9faa1d8f169f856056d80c9c4f70aa3eedbe293555376d01f);
    x.sign_guestbook("hello im in this");
}
