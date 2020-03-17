//
//  ThirdViewController.swift
//  Navs
//
//  Created by leslie on 3/17/20.
//  Copyright © 2020 leslie. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var ratingSlider: UISlider!
    @IBOutlet weak var pictureView: UIImageView!
    
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
        item.title = "Golobal Object"
        
        showRatingPicture()
    }
    
    func showRatingPicture() {
        let selected = AppData.selectedPicture
        let picture = AppData.pictureList[selected].lowercased()
        let rating = AppData.rating[selected]
        
        pictureView.image = UIImage(named: picture)
        ratingSlider.value = Float(rating)
    }

    @IBAction func changeRatingSwiped(_ sender: UISlider) {
        let selected = AppData.selectedPicture
        
        let value = round(ratingSlider.value)
        ratingSlider.value = value
        
        AppData.rating[selected] = Int(value)
    }
    

}
