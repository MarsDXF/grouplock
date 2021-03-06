//
//  ScanningConfigurator.swift
//  GroupLock
//
//  Created by Sergej Jaskiewicz on 09.08.16.
//  Copyright (c) 2016 Lanit-Tercom School. All rights reserved.
//

import UIKit

// MARK: - Connect View, Interactor, and Presenter

extension ScanningViewController: ScanningPresenterOutput {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        router.passDataToNextScene(segue)
    }
}

extension ScanningInteractor: ScanningViewControllerOutput {}

extension ScanningPresenter: ScanningInteractorOutput {}

class ScanningConfigurator {

    // MARK: - Configuration

    static func configure(_ viewController: ScanningViewController) {
        let router = ScanningRouter()
        router.viewController = viewController

        let presenter = ScanningPresenter()
        presenter.output = viewController

        let interactor = ScanningInteractor()
        interactor.output = presenter

        viewController.output = interactor
        viewController.router = router

        let metadataOutputObjectsDelegate = MetadataOutputObjectsDelegate()
        interactor.metadataOutputObjectsDelegate = metadataOutputObjectsDelegate
        metadataOutputObjectsDelegate.output = interactor
    }
}
