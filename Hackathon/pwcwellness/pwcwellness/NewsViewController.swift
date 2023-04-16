//
//  NewsViewController.swift
//  pwcwellness
//
//  Created by Yash Jagtap 2024 on 3/5/23.
//

import UIKit

class NewsViewController: UIViewController {
    @IBOutlet weak var wv: UIWebView!
    @IBOutlet weak var wv2: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadSite()
        loadSite2()
    }

    func loadSite() {
        guard
                    let youtubeURL = URL(string: "https://athletics.d125.org")
                    else { return }
                wv.loadRequest( URLRequest(url: youtubeURL) )
    }
    func loadSite2() {
        guard
                    let youtubeURL = URL(string: "https://athletics.d125.org")
                    else { return }
                wv2.loadRequest( URLRequest(url: youtubeURL) )
    }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


