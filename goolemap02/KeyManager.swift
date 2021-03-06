//
//  KeyManager.swift
//  goolemap02
//
//  Created by KOICHI NAKANISHI on 2022/03/16.
//

import Foundation


struct KeyManager {

    private let keyFilePath = Bundle.main.path(forResource: "apiKey", ofType: "plist")

    func getKeys() -> NSDictionary? {
        guard let keyFilePath = keyFilePath else {
            return nil
        }
        return NSDictionary(contentsOfFile: keyFilePath)
    }

    func getValue(key: String) -> AnyObject? {
        guard let keys = getKeys() else {
            return nil
        }
        return keys[key]! as AnyObject
    }
}

