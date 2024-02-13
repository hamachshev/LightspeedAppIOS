//
//  ViewController.swift
//  Lightspeed
//
//  Created by Aharon Seidman on 2/6/24.
//

import UIKit

class MainVC: UIViewController {
    var scrollView: LSMainScrollView!
    var header: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "MainBackground")
        scrollView = LSMainScrollView()
        header = LSHeader()
        configure()
        let gradientLayer = CAGradientLayer()
                gradientLayer.colors = [
                    UIColor.clear.cgColor,
                    UIColor.systemBackground.cgColor
                ]
        gradientLayer.frame = CGRect(x: 0, y: view.bounds.height * 0.4, width: view.bounds.width, height: view.bounds.height * 0.6)

        view.layer.addSublayer(gradientLayer)

        
        
    }
    
    private func configure(){

        scrollView.translatesAutoresizingMaskIntoConstraints = false
        header.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(header)
        view.addSubview(scrollView)
        
        let padding: CGFloat = 20

        NSLayoutConstraint.activate([
            header.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: padding + 10),
            header.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            header.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            header.heightAnchor.constraint(equalToConstant: 35),

            
            scrollView.topAnchor.constraint(equalTo: header.bottomAnchor, constant: padding + 10),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            
            
        ])
     
        
    }



}

