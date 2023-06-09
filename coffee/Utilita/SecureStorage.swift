//
//  SecureStorage.swift
//  coffee
//
//  Created by MacBook Pro on 08/06/2023.
//

import Foundation
import KeychainAccess

let userkey = "userSecureKey"

final class SecureStorage{
 private static let keychain = Keychain(service: "fakharaldin.coffee")
    
    
}

extension SecureStorage {
    func save(data: Data,with key: String) async{
        SecureStorage.keychain[data: key] = data
    }
    func get(with key : String) async -> Data?{
        SecureStorage.keychain[data: key]
    }
    func delete(with key:String)async{
        SecureStorage.keychain[key] = nil
    }
}
