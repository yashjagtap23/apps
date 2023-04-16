//
//  ResViewController.swift
//  pwcwellness
//
//  Created by Yash Jagtap 2024 on 3/4/23.
//

import UIKit

class ResViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var wv: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        loadYoutube(videoID: "inpok4MKVLM")
        textView.text = "Monday - N/A\n\nTuesday - Zumba @ 3:45\n\nWednesday - Yoga One @ 3:45\n\nThursday - N/A\n\nFriday - Yoga Sculpt @ 3:45"
    }

    func loadYoutube(videoID:String) {
        guard
                    let youtubeURL = URL(string: "https://www.youtube.com/embed/\(videoID)")
                    else { return }
                wv.loadRequest( URLRequest(url: youtubeURL) )
    }

}
