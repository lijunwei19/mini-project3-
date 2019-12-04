//
//  ViewController.swift
//  FoodTracker
//
//  Created by 李军委 on 12/1/19.
//  Copyright © 2019 students. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    // Mark: properties
    @IBOutlet weak var EnterMealName: UITextField!
    @IBOutlet weak var MealNameLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        EnterMealName.delegate = self
    }
    // mark : UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        MealNameLable.text = textField.text
    }
    
    // mark actions
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        MealNameLable.text = "Default Text"
    }

}

