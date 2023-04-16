//
//  ViewController.swift
//  pwcwellness
//
//  Created by Yash Jagtap 2024 on 3/4/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var moveCircle: UIButton!
    @IBOutlet weak var mindCircle: UIButton!
    @IBOutlet weak var resCircle: UIButton!
    @IBOutlet weak var nutCircle: UIButton!
    @IBOutlet weak var newsCircle: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        moveCircle.layer.cornerRadius = 15
        moveCircle.layer.masksToBounds = true
        mindCircle.layer.cornerRadius = 15
        mindCircle.layer.masksToBounds = true
        resCircle.layer.cornerRadius = 15
        resCircle.layer.masksToBounds = true
        nutCircle.layer.cornerRadius = 15
        nutCircle.layer.masksToBounds = true
        newsCircle.layer.cornerRadius = 15
        newsCircle.layer.masksToBounds = true
        assignbackground()
             // Do any additional setup after loading the view.
        var background = UIImage(named: "pwc1")
        
}

   func assignbackground(){
         var background = UIImage(named: "pwc1")

         var imageView : UIImageView!
         imageView = UIImageView(frame: view.bounds)
       imageView.contentMode =  UIView.ContentMode.scaleAspectFill
         imageView.clipsToBounds = true
         imageView.image = background
         imageView.center = view.center
         view.addSubview(imageView)
         self.view.sendSubviewToBack(imageView)
       }
       
   }


