//
//  PhoneListView.swift
//  MobileDateHouse
//
//  Created by Ivan on 14.08.2021.
//

import UIKit

protocol PhoneListViewDelegate: AnyObject {
    func call()
}

final class PhoneListView: UIView {
    
    // MARK: - Private Properties
    
    private weak var delegate: PhoneListViewDelegate?
    
    private let callButton: UIButton = {
        let button = UIButton()
        button.setTitle("Call", for: .normal)
        button.backgroundColor = .lightGray
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    
    public let listTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    // MARK: - Init
    
    init(subscriber: PhoneListViewDelegate?) {
        self.delegate = subscriber
        super.init(frame: CGRect())
        setConstraints()
        customizeView()
        setButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private Methods
    
    private func customizeView() {
        backgroundColor = .white
    }
    
    private func setButton() {
        callButton.addTarget(self, action: #selector(callButtonAction), for: .touchUpInside)
    }
    
    @objc private func callButtonAction() {
        delegate?.call()
    }
    
    private func setConstraints() {
        addSubview(callButton)
        
        NSLayoutConstraint.activate([
            callButton.centerYAnchor.constraint(equalTo: centerYAnchor),
            callButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            callButton.widthAnchor.constraint(equalToConstant: 200),
            callButton.heightAnchor.constraint(equalToConstant: 44)
        ])
        
        
        addSubview(listTableView)
        
        //---ListTableView
        NSLayoutConstraint.activate([
            listTableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            listTableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            listTableView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            listTableView.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
        ///dfdfsf
    }
}
