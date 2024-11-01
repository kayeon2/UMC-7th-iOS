//
//  TeenipingViewController.swift
//  UMC-iOS-Workbook
//
//  Created by 선가연 on 11/2/24.
//

import UIKit

class TeenipingViewController: UIViewController {
    
    private let rootView = TeenipingView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = rootView
        self.view.backgroundColor = .white
    }

}
