//
//  LSHeader.swift
//  Lightspeed
//
//  Created by Aharon Seidman on 2/6/24.
//

import UIKit

class LSHeader: UIView {
    var headerImageView = UIImageView()
    var searchButton = UIButton()
    var userButton = UIButton()

    override init(frame: CGRect) {
        super.init(frame: frame)
        configureView()
        configureConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func configureView(){
        headerImageView.translatesAutoresizingMaskIntoConstraints = false
        headerImageView.image = UIImage(named: "HeaderLogo")
        headerImageView.contentMode = .scaleAspectFill
        addSubview(headerImageView)
        
        searchButton.setImage(UIImage(systemName: "magnifyingglass.circle.fill"), for: .normal)
        searchButton.imageView?.tintColor = UIColor(named: "MainTintColor")
        searchButton.translatesAutoresizingMaskIntoConstraints = false
        addSubview(searchButton)

        userButton.setImage(UIImage(systemName: "person.fill"), for: .normal)
        userButton.setTitle("98", for: .normal)  //for now, until we update it with the real user's score
        userButton.titleLabel?.font = .systemFont(ofSize: 15, weight: .black)
        userButton.setTitleColor(UIColor(named: "MainTintColor"), for: .normal)

        userButton.tintColor = UIColor(named: "MainTintColor")
        userButton.translatesAutoresizingMaskIntoConstraints = false
        addSubview(userButton)
        
    }
    
    func configureConstraints(){
        
        NSLayoutConstraint.activate([
            headerImageView.topAnchor.constraint(equalTo: topAnchor),
            headerImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            headerImageView.heightAnchor.constraint(equalToConstant: 35),
            headerImageView.widthAnchor.constraint(equalToConstant: 164),
            
            userButton.trailingAnchor.constraint(equalTo: trailingAnchor),
            userButton.centerYAnchor.constraint(equalTo: headerImageView.centerYAnchor, constant: -2),
            userButton.heightAnchor.constraint(equalToConstant: 15),
            userButton.widthAnchor.constraint(equalToConstant: 40),
            
            searchButton.trailingAnchor.constraint(equalTo: userButton.leadingAnchor, constant: -10),
            searchButton.centerYAnchor.constraint(equalTo: userButton.centerYAnchor),
            searchButton.heightAnchor.constraint(equalToConstant: 25),
            searchButton.widthAnchor.constraint(equalToConstant: 25)
            
        ])
    }
    
    

}
