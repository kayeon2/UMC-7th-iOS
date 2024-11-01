//
//  TeenipingView.swift
//  UMC-iOS-Workbook
//
//  Created by 선가연 on 11/2/24.
//

import UIKit
import Then

class TeenipingView: UIView {
    
    let segmentedControl = UISegmentedControl(items: ["티니핑", "not 티니핑"])
    let teenipingCollectionView = UICollectionView()
    
    private let divideLine = UIView().then {
        $0.backgroundColor = .black
    }
    
    private let emptyLabel = UILabel().then {
        $0.font = .systemFont(ofSize: 24, weight: .medium)
        $0.textColor = .black
        $0.text = "휑~"
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        [
            segmentedControl,
            teenipingCollectionView,
            divideLine,
            emptyLabel
        ].forEach {
            addSubview($0)
        }
    }
}
