//
//  slecttrueloveViewController.swift
//  koi
//
//  Created by MEI KU on 2017/6/16.
//  Copyright © 2017年 Natalie KU. All rights reserved.
//

import UIKit

class slecttrueloveViewController: UIViewController {
    
   
    @IBOutlet weak var starin: UITextField!
    @IBOutlet weak var gender: UISegmentedControl!
    @IBOutlet weak var travel: UISwitch!
    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var ansYes: UIImageView!
    @IBOutlet weak var ansYes2: UIImageView!
    @IBOutlet weak var ansNo: UIImageView!
    @IBOutlet weak var ansNo2: UIImageView!
  
   
    
    
    var myheightvalue:Int = 160
    
    @IBAction func myheight(_ sender: UISlider) {
      
        height.isHidden = false
        myheightvalue = Int (sender.value)
        height.text = "\(myheightvalue) CM"
    
    }

  
    @IBAction func button(_ sender: Any) {
        let starin:String = self.starin.text!
        
        if starin == "Virgo" && gender.selectedSegmentIndex == 0 && travel.isOn == true && myheightvalue == 184 {
            ansYes.isHidden = false
            ansYes2.isHidden = false
            ansNo.isHidden = true
            ansNo2.isHidden = true
        }
        else {
            ansYes.isHidden = true
            ansYes2.isHidden = true
            ansNo.isHidden = false
            ansNo2.isHidden = false
    
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
