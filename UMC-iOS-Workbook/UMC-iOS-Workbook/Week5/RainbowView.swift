//
//  RainbowView.swift
//  UMC-iOS-Workbook
//
//  Created by 선가연 on 11/4/24.
//

import UIKit

class RainbowView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupColorViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        
        // 수직 스크롤
        scrollView.showsVerticalScrollIndicator = true
        scrollView.showsHorizontalScrollIndicator = false
        
        return scrollView
    }()
    
    private func setupView() {
        self.addSubview(scrollView)
        
        scrollView.snp.makeConstraints {
            $0.edges.equalTo(self.safeAreaLayoutGuide)
        }
    }
    
    private func setupColorViews() {
        var previousView: UIView? = nil
        
        for color in RainbowModel.colors {
            let colorView = UIView()
            
            colorView.backgroundColor = color
            scrollView.addSubview(colorView)
            
            colorView.snp.makeConstraints {
                $0.leading.trailing.equalToSuperview()
                $0.width.equalTo(self.snp.width)
                $0.height.equalTo(176)
                
                // previousView가 nil이 아닌 경우
                if let previousView = previousView {
                    $0.top.equalTo(previousView.snp.bottom)
                } else {
                    $0.top.equalToSuperview()
                }
            }
            
            previousView = colorView
        }
        
        // 마지막 뷰
        if let lastView = previousView {
            lastView.snp.makeConstraints {
                $0.bottom.equalToSuperview()
            }
        }
    }
}
