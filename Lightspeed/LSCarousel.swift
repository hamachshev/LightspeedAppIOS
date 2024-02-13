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
        return label
    }()
    var itemCollectionView: UICollectionView?


    override init(frame: CGRect) {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = UIColor(named: "MainCellColor")
        layer.cornerRadius = 16
        configure()
  
    }
    
    convenience init(title: String, collectionView: UICollectionView){
        self.init()
        self.title.text = title
        self.itemCollectionView = collectionView
        self.itemCollectionView?.collectionViewLayout = UICollectionViewFlowLayout()

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure(){
        title.translatesAutoresizingMaskIntoConstraints = false
        addSubview(title)
        let padding: CGFloat = 20
        
        NSLayoutConstraint.activate([
            title.topAnchor.constraint(equalTo: topAnchor, constant: padding),
            title.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding)
        ])
    }
    

}
