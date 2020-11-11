//
//  News.swift
//  techNewsApp
//
//  Created by Яблочко on 05.10.2020.
//  Copyright © 2020 Roman Avdonin. All rights reserved.
//

import Foundation
import UIKit

let txtonpng = TextsOnPg()


//MARK: - News Model
struct News {
    var titleOne: String
    var titleTwo: String
    var image: UIImage
    }




//MARK: - setup model
struct Setup {
    var newsInSetup = [News]()
    
    
    let news1 = News(titleOne: "Apple представила новый Iphone 12!", titleTwo: "Новинки", image: UIImage(named: "1")!)
    let news2 = News(titleOne: "Вышел новый Ipad!", titleTwo: "Новинки", image: UIImage(named: "2")!)
    let news3 = News(titleOne: "Салют. Сбер.", titleTwo: "Все о новом продукте", image: UIImage(named: "3")!)
    let news4 = News(titleOne: "Яндекс и сбербанк разорвали рыночные отношения", titleTwo: "Главные новости", image: UIImage(named: "4")!)
    
    init() {
        setup()
    }
    
    
    mutating func setup() {
        self.newsInSetup.append(news1)
        self.newsInSetup.append(news2)
        self.newsInSetup.append(news3)
        self.newsInSetup.append(news4)
    }
}

//MARK: - Text on pages

struct ModelTextNews {
    var text: String
}

struct Text {
    var newsInText = [ModelTextNews]()
    let newsText1 = ModelTextNews(text: "\(txtonpng.text1)")
    let newsText2 = ModelTextNews(text: "\(txtonpng.text2)")
    let newsText3 = ModelTextNews(text: "\(txtonpng.text3)")
    let newsText4 = ModelTextNews(text: "\(txtonpng.text4)")
    
    init() {
        setupTextOnPages()
    }
    
    mutating func setupTextOnPages() {
        self.newsInText.append(newsText1)
        self.newsInText.append(newsText2)
        self.newsInText.append(newsText3)
        self.newsInText.append(newsText4)
    }
}
