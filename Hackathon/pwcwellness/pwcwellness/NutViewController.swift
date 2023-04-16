//
//  NutViewController.swift
//  pwcwellness
//
//  Created by Yash Jagtap 2024 on 3/4/23.
//

import UIKit

class NutViewController: UIViewController {

    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textView1: UITextView!
    @IBOutlet weak var segmentedController: UISegmentedControl!
    @IBOutlet weak var segmentedController2: UISegmentedControl!
    @IBOutlet weak var img1: UIImageView!
    var weight0 = ""
    var weight1 = 0.0
    var gender = "male"
    var cal = 2000.0
    var mult = 0.8
    var goal = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        img1.image = UIImage(named:"plate1")

        // Do any additional setup after loading the view.
    }
    @IBAction func segmentController(_ sender: UISegmentedControl) {
    
    let selectedSegmentIndex = segmentedController.selectedSegmentIndex
   
    if(selectedSegmentIndex == 0)
    {
        img1.image = UIImage(named:"plate1")
        cal = (weight1 * 17.0 * mult)
        
    }
    
    else if(selectedSegmentIndex == 1)
    {
        img1.image = UIImage(named:"plate2")
        cal = (weight1 * 22.0 * mult)
        
    }
    
    else if(selectedSegmentIndex == 2)
    {
       
img1.image = UIImage(named:"plate3")
   
        cal = (weight1 * 27.0 * mult)
        if(goal == "cut")
        {
        textView1.text = "\(cal-300) calories a day"
        }
        else if(goal == "main")
        {
            textView1.text = "\(cal) calories a day"
        }
        else
        {
            textView1.text = "\(cal+300) calories a day"
        }
    }
    }
    @IBAction func weight(_ sender: UITextField) {
        weight0 = textField1.text ?? ""
        weight1 = Double(weight0) ?? 0.0
    }
    
    @IBAction func gender(_ sender: UITextField) {
        gender = textField2.text ?? ""
        if gender == "male"
        {
            mult = 1.0
        }
        else if gender == "female"
        {
            mult = 0.8
        }
    }
    @IBAction func segmentedController2(_ sender: UISegmentedControl) {
        let selectedSegmentIndex = segmentedController2.selectedSegmentIndex
       
        if(selectedSegmentIndex == 0)
        {
            textView1.text = "\(cal-300) calories a day"
        }
        else if(selectedSegmentIndex == 1)
        {

                textView1.text = "\(cal) calories a day"
        }
        else if(selectedSegmentIndex == 2)
        {
            textView1.text = "\(cal + 300) calories a day"
        }
    }
    
}
