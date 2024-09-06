//
//  Router.swift
//  CryptoViper
//
//  Created by Mark Santoro on 9/5/24.
//

import Foundation

// class, protocol
// Entry point to our app


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

