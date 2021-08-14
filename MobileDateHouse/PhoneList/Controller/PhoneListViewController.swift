//
//  PhoneListViewController.swift
//  MobileDateHouse
//
//  Created by Ivan on 14.08.2021.
//

import UIKit

final class PhoneListViewController: UIViewController {
    
    // MARK: - Private Properties
    
    private lazy var mainView = PhoneListView(subscriber: self)
    
    // MARK: - Life Cycle
    
    override func loadView() {
        view = mainView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

extension PhoneListViewController: PhoneListViewDelegate {
    func call() {
        print("Call")
        if let url = URL(string: "tel://(89165407724)") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
}
