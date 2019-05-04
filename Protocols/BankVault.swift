//
//  BankVault.swift
//  Protocols
//
//  Created by Papa Roach on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//


class BankVault {
    
    let name: String
    let address: String
    var amount: Double = 0.0
    
    init(name: String, address: String) {
        self.name = name
        self.address = address
    }
    
}


protocol ProvideAccess
{
    func allowEntryWithPassword (password: [Int]) -> Bool

}

extension BankVault: ProvideAccess
{
    func allowEntryWithPassword (password: [Int]) -> Bool
    {
        var retVal: Bool = false
        if password.isEmpty
        {
            return false
        }
    
        
        if password.count > 10
        {
            return false
        }
        
        for number in password
        {
            if number % 2 == 1
            {
                continue
            }
            else
            {
                retVal = true
           }
        }
        
        return retVal

    }
}


