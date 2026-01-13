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
        //alphaAnimasyonu()
        //scaleAnimasyonu()
        rotationAnimasyonu()
    }
    
    func alphaAnimasyonu(){
        self.resim.alpha = 0
        
        UIView.animate(withDuration: 5) {
            self.resim.alpha = 1
        }
    }
    
    
    func scaleAnimasyonu(){
        UIView.animate(withDuration: 3) {
            self.resim.transform = CGAffineTransform(scaleX: 2, y: 2)
        }
    }
    
    
    func rotationAnimasyonu(){
        UIView.animate(withDuration: 1) {
            self.yazi.transform = CGAffineTransform(rotationAngle: 45 * .pi/360)
        }
    }
    
    
}

