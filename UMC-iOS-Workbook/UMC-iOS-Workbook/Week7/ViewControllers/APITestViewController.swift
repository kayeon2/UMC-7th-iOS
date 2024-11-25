//
//  APITestViewController.swift
//  UMC-iOS-Workbook
//
//  Created by 선가연 on 11/26/24.
//

import UIKit

class APITestViewController: UIViewController {
    
    let apiTestView = APITestView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = apiTestView
    }
    

}
