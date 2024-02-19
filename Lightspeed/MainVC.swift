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
    var floatingBar: UIView!
    let padding: CGFloat = 20

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "MainBackground")
        scrollView = LSMainScrollView()
        header = LSHeader()
        floatingBar = UIView()
        configure()
        let gradientLayer = CAGradientLayer()
                gradientLayer.colors = [
                    UIColor.clear.cgColor,
                    UIColor.systemBackground.cgColor
                ]
        gradientLayer.frame = CGRect(x: 0, y: view.bounds.height * 0.4, width: view.bounds.width, height: view.bounds.height * 0.6)

        view.layer.addSublayer(gradientLayer)
        addFloatingBar()

        
        
    }
    
    private func configure(){

        scrollView.translatesAutoresizingMaskIntoConstraints = false
        header.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(header)
        view.addSubview(scrollView)
        
  

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
    
    private func addFloatingBar(){
        floatingBar.translatesAutoresizingMaskIntoConstraints = false
        floatingBar.backgroundColor = UIColor(named: "MainCellColor")
        floatingBar.layer.cornerRadius = 16

        view.addSubview(floatingBar)
        
        NSLayoutConstraint.activate([
            floatingBar.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -padding),
            floatingBar.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding ),
            floatingBar.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding - 10),
            floatingBar.heightAnchor.constraint(equalToConstant: 65)
        ])

        UIView.animate(withDuration: 2.5, delay: 0, options: [.autoreverse, .repeat, .curveEaseInOut]) { [weak self] in
            guard let self = self else { return }
            self.floatingBar.transform = CGAffineTransform(translationX: 0, y: -10)
        }
    }



}

