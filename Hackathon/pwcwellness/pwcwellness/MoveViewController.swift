//
//  MoveViewController.swift
//  pwcwellness
//
//  Created by Yash Jagtap 2024 on 3/4/23.
//

import UIKit

class MoveViewController: UIViewController {
    @IBOutlet weak var pushCircle: UIButton!
    @IBOutlet weak var pullCircle: UIButton!
    
    @IBOutlet weak var legsCircle: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        pushCircle.layer.cornerRadius = 15
        pushCircle.layer.masksToBounds = true
        pullCircle.layer.cornerRadius = 15
        pullCircle.layer.masksToBounds = true
        legsCircle.layer.cornerRadius = 15
        legsCircle.layer.masksToBounds = true
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
