//
//  ViewController.swift
//  BMI Calculator
//
//  Created by TryCatch on 23/12/22.
//

import UIKit

class ViewController: UIViewController {
    var calculatebrain = calculateBrain()
        @IBOutlet weak var heightLabel: UILabel!
        @IBOutlet weak var weightSlider: UISlider!
        @IBOutlet weak var heightSlider: UISlider!
        @IBOutlet weak var weightLabel: UILabel!
       
        override func viewDidLoad() {
            super.viewDidLoad()
          
        }
        

        @IBAction func heightsliDer(_ sender: UISlider) {
           let height = (String(format:"%.2f",sender.value))
            heightLabel.text = "\(height)m"
            
        }
        
        @IBAction func weightSlider(_ sender: UISlider) {
           let weight  = "\(Int(sender.value))"
            weightLabel.text = "\(weight)kg"
        }
        @IBAction func calculateBtnTapped(_ sender: UIButton) {
            let height = heightSlider.value
            let weight = weightSlider.value
           
            calculatebrain.calculateBMI(height:height ,weight:weight)
            self.performSegue(withIdentifier: "SecondVC", sender: self)
           
        }
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "SecondVC"{
                let vc = segue.destination as! SecondVC
                vc.mylabel = calculatebrain.getbmivalue()
                vc.Advice = calculatebrain.getAdvice()
                vc.Color = calculatebrain.getColor()
                heightSlider.value = 0
                heightLabel.text = "\(0)"
                weightSlider.value = 0
                weightLabel.text = "\(0)"
            }
        }
}
