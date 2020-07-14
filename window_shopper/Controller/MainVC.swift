//
//  ViewController.swift
//  window_shopper
//
//  Created by Prasad Maruti Zore on 12/07/20.
//  Copyright © 2020 Legacy.inc. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wagetxt: CurrencyTxtField!
    @IBOutlet weak var pricetxt: CurrencyTxtField!
    
    
    
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 70))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        wagetxt.inputAccessoryView = calcBtn
        pricetxt.inputAccessoryView = calcBtn
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
    }
    
    @objc func calculate() {
        if let wagetxt = wagetxt.text, let pricetxt = pricetxt.text {
            if let wage = Double(wagetxt), let price = Double(pricetxt) {
                view.endEditing(true)
                resultLbl.isHidden=false
                hoursLbl.isHidden=false
                resultLbl.text = "\(Wage.gethours(forWage: wage, andPrice: price))"
            }
        }
    }


    @IBAction func clear_calculator(_ sender: Any) {
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        wagetxt.text = ""
        pricetxt.text = ""
    }
}

