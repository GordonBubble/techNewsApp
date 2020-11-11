//
//  NewsViewController.swift
//  techNewsApp
//
//  Created by Яблочко on 05.10.2020.
//  Copyright © 2020 Roman Avdonin. All rights reserved.
//

import UIKit

class NewsViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    
    var textOfLabelOne = ""
    var textOfLabelTwo = ""
    var image: UIImage?
    var txView = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = image
        labelOne.text = textOfLabelOne
        labelTwo.text = textOfLabelTwo
        textView.text = txView
    }
    
    

}


