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
        setupAction()
        setupDelegate()
    }
    
    private func setupAction() {
        rootView.segmentedControl.addTarget(
            self,
            action: #selector(segmentedControlValueChanged(segment:)),
            for: .valueChanged
        )
    }
    
    private func setupDelegate() {
        rootView.teenipingCollectionView.dataSource = self
    }
    
    @objc
    private func segmentedControlValueChanged(segment: UISegmentedControl) {
        // TODO: segment 인덱스에 따라 collectionview 표시 여부 결정
    }
}

extension TeenipingViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return TeenipingModel.dummy().count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TeenipingCollectionViewCell.identifier, for: indexPath) as? TeenipingCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        let list = TeenipingModel.dummy()
        
        cell.imageView.image = list[indexPath.row].image
        cell.titleLabel.text = list[indexPath.row].name
        
        return cell
    }
}
