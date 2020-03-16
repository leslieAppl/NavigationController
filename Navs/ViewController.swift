//
//  ViewController.swift
//  Navs
//
//  Created by leslie on 3/16/20.
//  Copyright © 2020 leslie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: - Navigation Controller
        let nav = navigationController!
        nav.hidesBarsOnSwipe = true
        
        //MARK: - Navigation Bar
        let bar = nav.navigationBar
        bar.tintColor = #colorLiteral(red: 0, green: 0.7235742211, blue: 0.8151144385, alpha: 1)
        
        let titleFont = UIFont(name: "Verdana-Bold", size: 25.0)
        let color = #colorLiteral(red: 0.6212110519, green: 0.8334299922, blue: 0.3770503998, alpha: 1)
        let shadow = NSShadow()
        shadow.shadowColor = UIColor.black
        shadow.shadowOffset = CGSize(width: 2, height: 2)
        
        let attributes = [NSAttributedString.Key.font: titleFont, NSAttributedString.Key.foregroundColor: color, NSAttributedString.Key.shadow: shadow]
        bar.titleTextAttributes = attributes
        
        //MARK: - Navigation Item
        let item = navigationItem
        item.title = "Menu"
        
        let imagePortrait = UIImage(named: "buttonplus")
        let imageLandscape = UIImage(named: "buttonpluslandscape")
        
        // Bar Button Item
        let rightButton = UIBarButtonItem(image: imagePortrait, landscapeImagePhone: imageLandscape, style: .plain, target: self, action: #selector(printMessage))
        
        // Right Bar Button Items
        item.rightBarButtonItems = [rightButton]
        
    }
    
    @objc func printMessage() {
        print("Message")
    }

}

