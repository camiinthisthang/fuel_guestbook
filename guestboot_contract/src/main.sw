contract;
use guestbook_lib::Guestbook;

use std::{
    address::Address,
    assert::assert,
    chain::auth::{AuthError, msg_sender},
    identity::Identity,
    result::Result,
    revert::revert,
    storage::StorageVec,
    logging::log,
    option::Option,

};


storage {
    signers: StorageVec<(Identity, str[20])> = StorageVec {},
}

impl Guestbook for Contract {

     #[storage(read)]
     fn return_vector_size() -> u64  {
        return storage.signers.len();
    }

    #[storage(read, write)]
    fn sign_guestbook(message:str[20]){
        let sender = msg_sender().unwrap();
        //storage.signers.push((sender, message));
    }

    #[storage(read)]
    fn read_individual_signers(index:u64) -> (Identity, str[20]){
        return storage.signers.get(index).unwrap();
    }
    }

