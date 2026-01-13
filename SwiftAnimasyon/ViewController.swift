//
//  ViewController.swift
//  SwiftAnimasyon
//
//  Created by Ömer on 14.01.2026.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var yazi: UILabel!
    @IBOutlet weak var resim: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func basla(_ sender: Any) {
        alphaAnimasyonu()
    }
    
    func alphaAnimasyonu(){
        self.resim.alpha = 0
        
        UIView.animate(withDuration: 5) {
            self.resim.alpha = 1
        }
        
    }
    
    
}

