//
//  LSBaseCarouselItemsCollectionView.swift
//  Lightspeed
//
//  Created by Aharon Seidman on 2/13/24.
//

import UIKit

class LSBaseCarouselItemsCollectionView: UICollectionView {
    var items: [String] = []

    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        dataSource = self
        register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .clear
        layer.cornerRadius = 12
        showsHorizontalScrollIndicator = false

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(items: [String]){
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 100, height: 125)
        
        self.init(frame: .zero, collectionViewLayout: layout)
        self.items = items

    }
    
}

extension LSBaseCarouselItemsCollectionView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        cell.backgroundColor = UIColor(named: "MinorCellColor")
        cell.layer.cornerRadius = 12
        return cell
        
    }
    
    
}
