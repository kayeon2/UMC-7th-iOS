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
    }
    
    private func setupAction() {
        rootView.segmentedControl.addTarget(
            self,
            action: #selector(segmentedControlValueChanged(segment:)),
            for: .valueChanged
        )
    }
    
    @objc
    private func segmentedControlValueChanged(segment: UISegmentedControl) {
        // TODO: segment 인덱스에 따라 collectionview 표시 여부 결정
    }
}
