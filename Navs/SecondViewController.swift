//
//  SecondViewController.swift
//  Navs
//
//  Created by leslie on 3/16/20.
//  Copyright © 2020 leslie. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //MARK: - Navigation Controller
        let nav = navigationController!

        //MARK: - Navigation Bar
        let bar = nav.navigationBar
        
        bar.tintColor = #colorLiteral(red: 0, green: 0.7235742211, blue: 0.8151144385, alpha: 1)    // Bar Button Color
        bar.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
        bar.prefersLargeTitles = true   // Show Large Title

        
        //MARK: - Navigation Item
        let item = navigationItem
        
        // Specifically turns off Large Title Display Mode
//        item.largeTitleDisplayMode = .never
        item.title = "Second"

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
