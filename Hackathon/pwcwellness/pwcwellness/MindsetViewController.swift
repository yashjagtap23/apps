//
//  MindsetViewController.swift
//  pwcwellness
//
//  Created by Yash Jagtap 2024 on 3/4/23.
//

import UIKit

class MindsetViewController: UIViewController {

    @IBOutlet weak var wv: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        super.viewDidLoad()
                loadYoutube(videoID: "H-dwPemWsgU")
            }
    
            func loadYoutube(videoID:String) {
                guard
                            let youtubeURL = URL(string: "https://www.youtube.com/embed/\(videoID)")
                            else { return }
                        wv.loadRequest( URLRequest(url: youtubeURL) )
            }
}
