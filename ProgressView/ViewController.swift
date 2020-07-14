//
//  ViewController.swift
//  ProgressView
//
//  Created by Augray on 14/07/20.
//  Copyright © 2020 vj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var progressView: CircularProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        progressView.didStopBtnPressed = {
            print("didStopBtnPressed")
        }
        progressView.didRetryBtnPressed = {
            print("didRetryBtnPressed")
        }
        progressView.didDownloadBtnPressed = {
            print("didDownloadBtnPressed")
        }
    }

    @IBAction func progress() {
        let random = Float(arc4random()) / Float(UINT32_MAX)
        progressView.progress = CGFloat(random)
    }
    
    @IBAction func download() {
        progressView.showDownload()
    }
    
    @IBAction func retry() {
        progressView.showRetry()
    }
}

