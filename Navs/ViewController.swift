//
//  ViewController.swift
//  Navs
//
//  Created by leslie on 3/16/20.
//  Copyright © 2020 leslie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Using AppDelegate object to store and to share common data
    //when working with Navigation Controllers.
    var myDelegate: AppDelegate!
    
    @IBOutlet weak var myToolBar: UIToolbar!
    @IBOutlet weak var picturePicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //MARK: - Init AppDelegate
        let app = UIApplication.shared  // returns the singleton app instance
        myDelegate = app.delegate as? AppDelegate
        
        //MARK: - Picker Delegate
        picturePicker.dataSource = self
        picturePicker.delegate = self
        
        //MARK: - Navigation Controller
        let nav = navigationController!
        
        nav.hidesBarsOnSwipe = true
        
        //MARK: - Navigation Bar
        let bar = nav.navigationBar
        
        bar.tintColor = #colorLiteral(red: 0, green: 0.7235742211, blue: 0.8151144385, alpha: 1)    // Bar Button Color
        bar.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
//        bar.prefersLargeTitles = true   // Show Large Title
        
        let titleFont = UIFont(name: "Verdana-Bold", size: 25.0)
        let color = #colorLiteral(red: 0.6212110519, green: 0.8334299922, blue: 0.3770503998, alpha: 1)     // Bar Title Color
        let shadow = NSShadow()
        shadow.shadowColor = UIColor.black
        shadow.shadowOffset = CGSize(width: 2, height: 2)
        
        let attributes = [NSAttributedString.Key.font: titleFont, NSAttributedString.Key.foregroundColor: color, NSAttributedString.Key.shadow: shadow]
        bar.titleTextAttributes = attributes as [NSAttributedString.Key : Any]
        
        //MARK: - Navigation Item
        let item = navigationItem
        
        // Specifically turns off Large Title Display Mode
        item.largeTitleDisplayMode = .automatic
        item.title = "Menu"
        
        //MARK: - Bar Button Item
        
        // Right Bar Button Item
        let imagePortrait = UIImage(named: "buttonplus")
        let imageLandscape = UIImage(named: "buttonpluslandscape")
        let rightButton = UIBarButtonItem(image: imagePortrait, landscapeImagePhone: imageLandscape, style: .plain, target: self, action: #selector(printMessage))
        item.rightBarButtonItems = [rightButton]
        
        // Back Bar Button Item
        let backButton = UIBarButtonItem()
        backButton.title = "Close"
        backButton.tintColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
        item.backBarButtonItem = backButton
        
        //MARK: - UIToolBar
        configMyToolBar()
    }
    
    func configMyToolBar() {
        myToolBar.setBackgroundImage(UIImage(named: "backgroundbar"), forToolbarPosition: .bottom, barMetrics: .default)
        myToolBar.tintColor = UIColor.white
    }
    
    @objc func printMessage() {
        print("Message")
    }
    
    @IBAction func showPictureBtnPressed(_ sender: UIButton) {
        myDelegate.selectedPicture = sender.tag
        performSegue(withIdentifier: "showPicture", sender: self)
    }
    
    @IBAction func getPictureBtnPressed(_ sender: UIButton) {
        let selected = picturePicker.selectedRow(inComponent: 0)
        AppData.selectedPicture = selected
        
        performSegue(withIdentifier: "showPicture2", sender: self)
    }
    
}

extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    //MARK: - Picker Data Source
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return AppData.pictureList.count
    }
    
    //MARK: - Picker Delegate
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return AppData.pictureList[row]
    }
}
