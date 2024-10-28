//
//  UserDefaultsModel.swift
//  UserDefaultsPractice
//
//  Created by 선가연 on 10/29/24.
//

import Foundation

class UserDefaultsModel {
    private let userDefaults = UserDefaults.standard
    private let userTextKey: String = "userText"
    
    // 유저가 입력한 텍스트 값 저장
    public func saveUserText(_ text: String) {
        userDefaults.set(text, forKey: userTextKey)
    }
    
    // UserDefaults에 저장된 값 반환
    public func loadUserText() -> String? {
        return userDefaults.string(forKey: userTextKey)
    }
}
