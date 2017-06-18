//
//  ViewController.swift
//  temp-converter
//
//  Created by Christina Glezil on 6/16/17.
//  Copyright © 2017 Christina Glezil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    
    @IBOutlet weak var conversionLabel: UILabel!
    @IBOutlet weak var tempEntry: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func updateCountByOne (){
        count += 1
        conversionLabel.text = String(count) + " conversions"
    }
    
    
    @IBAction func convertClicked(_ sender: Any) {
        
        if let result = tempEntry.text{
            if(result == ""){
                return
            }
            else{
                if let num = Double(result){
                   let output = num * (9/5)+32
                    resultLabel.text = String(output)
                    
                    updateCountByOne()
            }
        }
    }
        
    func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   }
}
