//
//  ViewController.swift
//  UserDefaultsPractice
//
//  Created by 선가연 on 10/29/24.
//

import UIKit

class ViewController: UIViewController {
    
    private let userDefaultsModel = UserDefaultsModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = userDefaultsview
        loadTextValue()
    }
    
    private lazy var userDefaultsview: UserDefaultsView = {
        let view = UserDefaultsView()
        view.saveButton.addTarget(self, action: #selector(saveButtonClicked), for: .touchUpInside)
        return view
    }()
    
    @objc func saveButtonClicked() {
        guard let text = userDefaultsview.inputTextField.text, !text.isEmpty else {
            return
        }
        
        // 텍스트 저장
        userDefaultsModel.saveUserText(text)
        
        // 저장된 텍스트를 레이블에 표시
        userDefaultsview.showTextValue.text = text
    }
    
    // 저장된 텍스트 값이 있을 경우 가져오기
    private func loadTextValue() {
        if let savedText = userDefaultsModel.loadUserText() {
            userDefaultsview.showTextValue.text = savedText
        }
    }
}
