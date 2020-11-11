//
//  SecondViewController.swift
//  techNewsApp
//
//  Created by Яблочко on 05.10.2020.
//  Copyright © 2020 Roman Avdonin. All rights reserved.
//

import UIKit
import AVKit

class SecondViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    var video = SetupVideos()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //MARK: - Register NewsCollectionViewCell
        self.collectionView.register(UINib(nibName: "VideosCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "VideosCollectionViewCell")
        //dataSource & delegate
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
    }
    
    
}


extension SecondViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return video.videos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "VideosCollectionViewCell", for: indexPath) as! VideosCollectionViewCell
        
        let vid = video.videos[indexPath.item]
        cell.setupCell(video: vid)
        
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
        
        let links = ["https://firebasestorage.googleapis.com/v0/b/videostreaming-9ded3.appspot.com/o/Iphone%2012.mp4?alt=media&token=f23f0748-626f-4f44-adb3-d94df0d0b25f",
                     "https://firebasestorage.googleapis.com/v0/b/videostreaming-9ded3.appspot.com/o/SberBox%20(%D0%A1%D0%B1%D0%B5%D1%80%D0%91%D0%BE%D0%BA%D1%81).mp4?alt=media&token=bac3d9d6-799c-4e3a-b657-5ba55c938a31",
                     "https://firebasestorage.googleapis.com/v0/b/videostreaming-9ded3.appspot.com/o/Apple%20watch.mp4?alt=media&token=96e1d8b6-f6b5-4b54-92ba-6d87015d5b54"]
        
        
        guard let url = URL(string: links[indexPath.item]) else { return }
        let player = AVPlayer(url: url)
        
        let controller = AVPlayerViewController()
        controller.player = player
        
        present(controller, animated: true) {
            player.play()
        }
    }
}
