//
//  Presenter.swift
//  CryptoViper
//
//  Created by Mark Santoro on 9/5/24.
//

import Foundation


//class, protocol
//Talks to interactor , View, and router

enum NetworkError : Error {
    case NetworkFailed
    case ParsingFailed
}

protocol AnyPresenter {
    var router : AnyRouter? {get set}
    var interactor : AnyInteractor? {get set}
    var view : AnyView? {get set}
    
    func interactorDidDownloadCryptos(result: Result<[Crypto],Error>)
        
    
}

class CryptoPresenter : AnyPresenter {
    var router: (any AnyRouter)?
    
    var interactor: (any AnyInteractor)?
    
    var view: (any AnyView)?
    
    func interactorDidDownloadCryptos(result: Result<[Crypto], any Error>) {
        switch result {
        case.success(let cryptos):
            print("update")
        case.failure(let error):
         print("error")
        }
    }
    
    
    
    
}
