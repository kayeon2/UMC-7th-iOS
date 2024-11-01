//
//  ViewController.swift
//  UserDefaultsPractice
//
//  Created by 선가연 on 10/29/24.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = userDefaultsview
    }
    
    private lazy var userDefaultsview: UserDefaultsView = {
        let view = UserDefaultsView()
        return view
    }()

}

