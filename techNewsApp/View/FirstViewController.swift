//
//  FirstViewController.swift
//  techNewsApp
//
//  Created by Яблочко on 05.10.2020.
//  Copyright © 2020 Roman Avdonin. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    var news = Setup()
    var tex = Text()
    var cvNews = NewsCollectionViewCell()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //MARK: - Register NewsCollectionViewCell
        self.collectionView.register(UINib(nibName: "NewsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "NewsCollectionViewCell")
        
        //dataSource & delegate
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        
    }
}

//MARK: - NewsCollectionViewCell DataSourse & Delegate

extension FirstViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return news.newsInSetup.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NewsCollectionViewCell", for: indexPath) as! NewsCollectionViewCell
        
        let new = news.newsInSetup[indexPath.item]
        cell.setupCell(news: new)
        
        
        return cell
    }
    
    //size cells
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 390, height: 390)
    }
    
    //distance between cells
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "NewsViewController") as! NewsViewController
        self.navigationController?.pushViewController(vc, animated: true)
        
        vc.image = news.newsInSetup[indexPath.item].image
        vc.textOfLabelOne = news.newsInSetup[indexPath.item].titleOne
        vc.textOfLabelTwo = news.newsInSetup[indexPath.item].titleTwo
        vc.txView = tex.newsInText[indexPath.item].text
    }
    
}
