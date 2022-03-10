//
//  SafaryViewController.swift
//  WebView
//
//  Created by Jorge Agullo Martin on 10/3/22.
//

import UIKit
import SafariServices

class SafaryViewController: UIViewController, SFSafariViewControllerDelegate {


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func OpenStackOverflow(_ sender: UIButton) {
        guard let url = URL(string: "https://stackoverflow.com/") else {return}

        let safariVC = SFSafariViewController(url: url)
        safariVC.delegate = self
        present(safariVC, animated: true, completion: nil)
    }
    
    func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
        controller.dismiss(animated: true, completion: nil)
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
