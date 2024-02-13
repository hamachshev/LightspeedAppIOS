//
//  LSCarousel.swift
//  Lightspeed
//
//  Created by Aharon Seidman on 2/13/24.
//

import UIKit

class LSCarousel: UIView {
    
    var title: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont(name: "Sugar Magic - Personal Use Only", size: 22)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var itemCollectionView: UICollectionView?


    private override init(frame: CGRect) {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = UIColor(named: "MainCellColor")
        layer.cornerRadius = 16
        configure()
  
    }
    
    convenience init(title: String, collectionView: UICollectionView, height: Int = 200){
        self.init()
        self.itemCollectionView = collectionView
        self.title.text = title
        if height < 200 {
            self.title.font = UIFont(name: "Sugar Magic - Personal Use Only", size: 16)
        }
        
        configureCollectionView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure(){
        addSubview(title)
        let padding: CGFloat = 20
        
        NSLayoutConstraint.activate([
            title.topAnchor.constraint(equalTo: topAnchor, constant: padding),
            title.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding + 5),
            
            
        ])
        
        
        
        
       
    }
    
    private func configureCollectionView(){
        if let itemCollectionView = itemCollectionView {
            addSubview(itemCollectionView)
            NSLayoutConstraint.activate([
                itemCollectionView.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 10),
                itemCollectionView.leadingAnchor.constraint(equalTo: title.leadingAnchor),
                itemCollectionView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 15),
                itemCollectionView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20)
            ])
        }
    }
    

}
