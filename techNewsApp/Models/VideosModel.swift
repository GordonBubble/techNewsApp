//
//  VideosModel.swift
//  techNewsApp
//
//  Created by Яблочко on 14.10.2020.
//  Copyright © 2020 Roman Avdonin. All rights reserved.
//

import Foundation
import UIKit


//MARK:- Videos model
struct Videos {
    var text: String
    var image: UIImage
}

//MARK:- SetupVideos model
struct SetupVideos {
    var videos = [Videos]()
    
    let video1 = Videos(text: "Apple показала в коротком ролике новый Iphone 12 c новым процессором A14 Bionic, новой камерой и дизайном.", image: UIImage(named: "v1")!)
    let video2 = Videos(text: "SberBox. Что это такое и зачем оно нужно.", image: UIImage(named: "v2")!)
    let video3 = Videos(text: "Apple презентовала новые Apple Watch 6 и Apple Watch SE", image: UIImage(named: "v3")!)
    
    
    init () {
        setup()
    }
    
    mutating func setup() {
        
        videos.append(video1)
        videos.append(video2)
        videos.append(video3)

    }
}
