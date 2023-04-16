//
//  PUSHViewController.swift
//  pwcwellness
//
//  Created by Yash Jagtap 2024 on 3/4/23.
//

import UIKit

class PUSHViewController: UIViewController {
    @IBOutlet weak var weightField: UITextField!
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var textView2: UITextView!
    @IBOutlet weak var segmentedController: UISegmentedControl!
    
    var reps1 = "6"
    var reps2 = "6"
    var reps3 = "6"
    var reps4 = "6"
    var reps5 = "6"
    var reps6 = "6"
    var weight0 = ""
    var weight1 = 0.0
    var weight2 = 0.0
    var weight3 = "10 reps"
    var weight4 = 0.0
    var weight5 = 0.0
    var weight6 = 0.0
    var sets =  3
    override func viewDidLoad() {
        super.viewDidLoad()
        weight0 = textField1.text ?? ""
        // Do any additional setup after loading the view.
        textView.text = "WORKOUT\n\n\nINCLINE BARBELL BENCH\n\nOVERHEAD PRESS\n\nCHEST DIPS\n\nCHEST FLY\n\nLATERAL RAISES\n\nTRICEPS PRAYER CURL"
        reps1 = "(4 - 6)"
        reps2 = "(4 - 6)"
        reps3 = "(8 - 10)"
        reps4 = "(8 - 10)"
        reps5 = "(8 - 10)"
        reps6 = "(12 - 14)"
       
        sets = 4
        textView2.text = "REPS x SETS x AVERAGE\n\n\n \(reps1) x \(sets)\n\n\n \(reps2) x \(sets)\n\n\(reps3) x \(sets)\n\n\(reps4) x \(sets)\n\n\(reps5) x \(sets)\n\n\(reps6) x \(sets)\n\n"
    }

    @IBAction func segmentedControl(_ sender: UISegmentedControl) {
        let selectedSegmentIndex = segmentedController.selectedSegmentIndex
        weight1 = (Double(weight0) ?? 0.0)*0.87
        weight2 = (Double(weight0) ?? 0.0)*0.7
        weight4 = (Double(weight0) ?? 0.0)*0.15
        weight5 = (Double(weight0) ?? 0.0)*0.1
        if(selectedSegmentIndex == 0)
        {
           
            reps1 = "(4 - 6)"
            reps2 = "(4 - 6)"
            reps3 = "(8 - 10)"
            reps4 = "(8 - 10)"
            reps5 = "(8 - 10)"
            reps6 = "(12 - 14)"
            sets = 4
            textView2.text = "REPS x SETS x AVERAGE\n\n\n \(reps1) x \(sets) - \(weight1)\n\n\n \(reps2) x \(sets) - \(weight2)\n\n\(reps3) x \(sets) - \(weight3)\n\n\(reps4) x \(sets) - \(weight4)\n\n\(reps5) x \(sets) - \(weight5)\n\n\(reps6) x \(sets) - \(weight5)\n\n"
        }
        
        else if(selectedSegmentIndex == 1)
        {
            reps1 = "(8 - 10)"
            reps2 = "(8 - 10)"
            reps3 = "(10 - 14)"
            reps4 = "(10 - 14)"
            reps5 = "(10 - 14)"
            reps6 = "(13 - 17)"
            sets = 4
            textView2.text = "REPS x SETS x AVERAGE\n\n\n \(reps1) x \(sets) - \(weight1)\n\n\n \(reps2) x \(sets) - \(weight2)\n\n\(reps3) x \(sets) - \(weight3)\n\n\(reps4) x \(sets) - \(weight4)\n\n\(reps5) x \(sets) - \(weight5)\n\n\(reps6) x \(sets) - \(weight5)\n\n"
        }
        
        else if(selectedSegmentIndex == 2)
        {
            reps1 = "(12 - 18)"
            reps2 = "(12 - 18)"
            reps3 = "(15 - 20)"
            reps4 = "(15 - 20)"
            reps5 = "(15 - 20)"
            reps6 = "(20 - 30)"
            sets = 4
            textView2.text = "REPS x SETS x AVERAGE\n\n\n \(reps1) x \(sets) - \(weight1)\n\n\n \(reps2) x \(sets) - \(weight2)\n\n\(reps3) x \(sets) - \(weight3)\n\n\(reps4) x \(sets) - \(weight4)\n\n\(reps5) x \(sets) - \(weight5)\n\n\(reps6) x \(sets) - \(weight5)\n\n"
    }
}
    @IBAction func textField1(_ sender: UITextField) {
        weight0 = textField1.text ?? ""
    }
}
