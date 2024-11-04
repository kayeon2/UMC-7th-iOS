//
//  RainbowViewController.swift
//  UMC-iOS-Workbook
//
//  Created by 선가연 on 11/4/24.
//

import UIKit

class RainbowViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = RainbowView(frame: self.view.bounds)
    }
}
