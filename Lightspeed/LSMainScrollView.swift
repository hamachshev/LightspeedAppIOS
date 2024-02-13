//
//  MainScrollView.swift
//  Lightspeed
//
//  Created by Aharon Seidman on 2/12/24.
//

import UIKit

class LSMainScrollView: UIScrollView {
    var trendingItemsCarousel: LSCarousel!
    var recommendedForYouCarousel: LSCarousel!
    var recentlyBoughtItemsCarousel: LSCarousel!
    
    var scrollViewViews = [LSCarousel]()
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        showsVerticalScrollIndicator = false
        contentSize = CGSize(width: bounds.width, height: 1000)
        delegate = self
//
//        let gradient = CAGradientLayer()
//        gradient.colors = [UIColor.clear.cgColor, UIColor.black.cgColor]
//        gradient.frame = CGRect(x: 0, y: 0, width: contentSize.width, height: contentSize.height)
//        layer.addSublayer(gradient)
        makeSubviews()
        configureSubviews()
        
       
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func makeSubviews(){
        trendingItemsCarousel = LSCarousel(title: "Trending Items", collectionView: LSBaseCarouselItemsCollectionView(items: ["hello", "hi", "bye", "another"]), height: 200)
        recommendedForYouCarousel = LSCarousel(title: "Recommended For You", collectionView: LSBaseCarouselItemsCollectionView(items: ["hello", "hi", "bye", "another"]))
        recentlyBoughtItemsCarousel = LSCarousel(title: "Recently Bought", collectionView: LSBaseCarouselItemsCollectionView(items: ["hello", "hi", "bye", "another"]))
        
        scrollViewViews.append(contentsOf: [trendingItemsCarousel, recommendedForYouCarousel, recentlyBoughtItemsCarousel])
    }
    
    private func configureSubviews(){
        
        addSubview(scrollViewViews[0])
        
        NSLayoutConstraint.activate([
            scrollViewViews[0].topAnchor.constraint(equalTo: contentLayoutGuide.topAnchor),
            scrollViewViews[0].leadingAnchor.constraint(equalTo: frameLayoutGuide.leadingAnchor),
            scrollViewViews[0].trailingAnchor.constraint(equalTo: frameLayoutGuide.trailingAnchor, constant: -25),
            scrollViewViews[0].heightAnchor.constraint(equalToConstant: 200)
        ])
        
        for i in 1..<scrollViewViews.count {
                add(view: scrollViewViews[i], after: scrollViewViews[i-1], height: 200)

        }
        
        
    }
    
    private func add(view: LSCarousel, after lastView: LSCarousel, height: CGFloat){
        addSubview(view)
        let padding: CGFloat = 30
        NSLayoutConstraint.activate([
            view.topAnchor.constraint(equalTo: lastView.bottomAnchor, constant: padding),
            view.leadingAnchor.constraint(equalTo: frameLayoutGuide.leadingAnchor),
            view.trailingAnchor.constraint(equalTo: frameLayoutGuide.trailingAnchor, constant: -25),
            view.heightAnchor.constraint(equalToConstant: height)
        ])
    }
    
  
    
}

extension LSMainScrollView: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView.contentOffset.y < 0 {
            print(scrollView.contentOffset.y)
        }
       
    }
    
}
