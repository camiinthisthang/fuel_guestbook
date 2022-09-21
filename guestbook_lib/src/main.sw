library guestbook_lib;

use std::identity::Identity;

abi Guestbook {
    #[storage(read)]
    fn read_individual_signers(index:u64) -> (Identity, str[20]);

    //return the size of the vector, then use that size 
    #[storage(read)]
    fn return_vector_size() -> u64; 

    #[storage(read,write)]
    fn sign_guestbook(message:str[20]);
}