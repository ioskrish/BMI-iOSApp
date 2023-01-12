//
//  SecondVC.swift
//  BMI Calculator
//
//  Created by TryCatch on 23/12/22.
//

import UIKit

class SecondVC: UIViewController {

    @IBOutlet weak var mylbl1: UILabel!
    
    @IBOutlet weak var mylbl2: UILabel!
    var mylabel : String?
    var Advice : String?
    var Color : UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mylbl2.text = mylabel
        mylbl1.text = Advice
        view.backgroundColor = Color
    }
    
    @IBAction func myrecalculateBtn(_ sender: UIButton) {
        self.dismiss(animated: true,completion: nil)
      
    }
}

