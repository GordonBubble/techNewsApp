//
//  SettingsViewController.swift
//  techNewsApp
//
//  Created by Яблочко on 05.10.2020.
//  Copyright © 2020 Roman Avdonin. All rights reserved.
//

import UIKit
import SafariServices

class LinksViewController: UIViewController {
    
    @IBOutlet weak var myGitOutlet: UIButton!
    @IBOutlet weak var infoOutlet: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myGitOutlet.layer.cornerRadius = 10
        infoOutlet.layer.cornerRadius = 10
    }
    //My Git Button
    @IBAction func myGitLink(_ sender: UIButton) {
        showSafariVC(for: "https://github.com/GordonBubble")
    }
    
    //My email
    @IBAction func infoButton(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Почта для связи со мной", message: "gordonbuble49@gmail.com", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ок", style: .default, handler: nil)
        
        alertController.addAction(okAction)
        
        self.present(alertController, animated: true, completion: nil)
        
    }
    
    
    //MARK: - Safari view controller
    func showSafariVC(for url: String) {
        
        guard let url = URL(string: url) else { return }
        
        let safariVC = SFSafariViewController(url: url)
        present(safariVC, animated: true)
    }
    
    
}
