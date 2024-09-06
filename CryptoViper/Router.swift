//
//  Router.swift
//  CryptoViper
//
//  Created by Mark Santoro on 9/5/24.
//

import Foundation

// class, protocol
// Entry point to our app

// Target website for crypto data
// https://raw.githubusercontent.com/atilsamancioglu/K21-JSONDataSet/master/crypto.json

// common variables and common functions

protocol AnyRouter {
    static func startExecution() -> AnyRouter
        
}

class CryptoRouter : AnyRouter {
    static func startExecution() -> AnyRouter {
        let router = CryptoRouter()
        return router
    }
    
}

