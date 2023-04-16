//
//  FoodViewController.swift
//  pwcwellness
//
//  Created by Yash Jagtap 2024 on 3/5/23.
//

import UIKit

class FoodViewController: UIViewController {
    @IBOutlet weak var wv: UIWebView!
    
    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        textView.text = "You Should Eat Either\n\nMindful Meal\nBiryani Chicken with sides of \nLemon Pepper Green Beans and Yellow Rice - $4\n\nOr\n\nInternational Station\nBurrito Bowl -$5\n\n(Both are a healthy plate with 1/3 carbs, 1/3 protein, and 1/3 vegetables)"
        loadSite()
    }
    
    func loadSite() {
        guard
                    let youtubeURL = URL(string: "https://www.stevenson.space/?date=3-7-2023")
                    else { return }
                wv.loadRequest( URLRequest(url: youtubeURL) )
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
