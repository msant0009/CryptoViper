//
//  Router.swift
//  CryptoViper
//
//  Created by Mark Santoro on 9/5/24.
//

import Foundation
import UIKit

// class, protocol
// Entry point to our app


// common variables and common functions

typealias EntryPoint = AnyView & UIViewController

protocol AnyRouter {
    var entry : EntryPoint? {get}
    static func startExecution() -> AnyRouter
        
}

class CryptoRouter : AnyRouter {
    
    var entry : EntryPoint?

    static func startExecution() -> AnyRouter {
        let router = CryptoRouter()
        
        var view : AnyView = CryptoViewController()
        var presenter : AnyPresenter = CryptoPresenter()
        var interactor : AnyInteractor = CryptoInteractor()
        
        view.presenter = presenter
        
        presenter.view = view
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        
        interactor.presenter = presenter

        router.entry = view as? EntryPoint
        
        return router
    }
    
}

