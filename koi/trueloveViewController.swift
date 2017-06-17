//
//  trueloveViewController.swift
//  koi
//
//  Created by MEI KU on 2017/6/16.
//  Copyright © 2017年 Natalie KU. All rights reserved.
//

import UIKit

class trueloveViewController: UIViewController {

    
    
    @IBOutlet weak var starin: UITextField!
    @IBOutlet weak var gender: UISegmentedControl!
    @IBOutlet weak var travel: UISwitch!
    @IBOutlet weak var myheight: UILabel!
    @IBOutlet weak var ansyes: UIImageView!
    @IBOutlet weak var ansyes2: UIImageView!
    @IBOutlet weak var unans: UIImageView!
    @IBOutlet weak var unans2: UIImageView!
    @IBOutlet weak var base: UIImageView!

    
    
    
    
// myheight slider
    
    
    var myhtvalue:Int = 160
    
    
    @IBAction func myheight(_ sender: UISlider) {
        myheight.isHidden = false
        myhtvalue = Int(sender.value)
        myheight.text = "\(myhtvalue) CM"
        
    }


    

 // sendbtn
   
    
    @IBAction func sendbtn(_ sender: AnyObject) {
   
        let starin:String = self.starin.text!
    
    if starin == "Virgo" && gender.selectedSegmentIndex == 0 && travel.isOn == true && myhtvalue == 184 {
    ansyes.isHidden = false
    ansyes2.isHidden = false
    unans.isHidden = true
    unans2.isHidden = true
    base.isHidden = true
        }
    
    else {
        ansyes.isHidden = true
        ansyes2.isHidden = true
        unans.isHidden = false
        unans2.isHidden = false
        base.isHidden = true
        }
    
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
