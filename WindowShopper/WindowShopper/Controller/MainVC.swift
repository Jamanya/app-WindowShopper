//
//  ViewController.swift
//  WindowShopper
//
//  Created by James Richardson on 8/7/17.
//  Copyright © 2017 Jamanya Apps. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var wageTXT: CurrencyTxtField!
    @IBOutlet weak var priceTXT: CurrencyTxtField!
    @IBOutlet weak var resultLBL: UILabel!
    @IBOutlet weak var hoursLBL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBTN = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBTN.backgroundColor = #colorLiteral(red: 0.9670727304, green: 0.5768598612, blue: 0.1921664173, alpha: 1)
        calcBTN.setTitle("Calculate", for: .normal)
        calcBTN.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBTN.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTXT.inputAccessoryView = calcBTN
        priceTXT.inputAccessoryView = calcBTN
        
        resultLBL.isHidden = true
        hoursLBL.isHidden = true
        
    }
    
    @objc func calculate() {
        if let wageTXT = wageTXT.text,
           let priceTXT = priceTXT.text {
            
            if let wage = Double(wageTXT), let price = Double(priceTXT) {
                view.endEditing(true)
                resultLBL.isHidden = false
                hoursLBL.isHidden = false
                resultLBL.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }
    
    @IBAction func clearCalculatorPressed(_ sender: Any) {
        wageTXT.text = ""
        priceTXT.text = ""
        resultLBL.isHidden = true
        hoursLBL.isHidden = true
        }
}
