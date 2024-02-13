//
//  MainScrollView.swift
//  Lightspeed
//
//  Created by Aharon Seidman on 2/12/24.
//

import UIKit

class LSMainScrollView: UIScrollView {
    var carousel1: LSCarousel!

    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        showsVerticalScrollIndicator = false
        contentSize = CGSize(width: bounds.width, height: 1000)
        carousel1 = LSCarousel(title: "Trending Items", collectionView: LSBaseCarouselItemsCollectionView(items: ["hello", "hi", "bye", "another"]))
        configureSubviews()
        
       
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureSubviews(){
        addSubview(carousel1)
        
        NSLayoutConstraint.activate([
            carousel1.topAnchor.constraint(equalTo: contentLayoutGuide.topAnchor),
            carousel1.leadingAnchor.constraint(equalTo: frameLayoutGuide.leadingAnchor),
            carousel1.trailingAnchor.constraint(equalTo: frameLayoutGuide.trailingAnchor, constant: -25),
            carousel1.heightAnchor.constraint(equalToConstant: 200)
        ])
    }
    
  
    
}
