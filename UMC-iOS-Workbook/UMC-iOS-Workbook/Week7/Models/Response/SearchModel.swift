//
//  SearchModel.swift
//  UMC-iOS-Workbook
//
//  Created by 선가연 on 11/26/24.
//

import Foundation

struct SearchModel: Codable {
    let documents: [DetailDocument]
}

struct DetailDocument: Codable {
    let contestText: String
    let date: String
    let titleText: String
    let urlText: String
    
    enum CodingKeys: String, CodingKey {
        case contestText = "contents"
        case date = "datetime"
        case titleText = "title"
        case urlText = "url"
    }
}
