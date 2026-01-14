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
        //rotationAnimasyonu()
        //translationAnimasyonu()
        //gecikmeAnimasyonu()
        //ivmeAnimasyonu()
        //tekrarAnimasyonu()
        //cokluAnimasyonu()
        ardisikAnimasyon()
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
    
    func translationAnimasyonu(){
        UIView.animate(withDuration: 1) {
            self.yazi.transform = CGAffineTransform(translationX: -50, y:0)
        }
    }
    
    func gecikmeAnimasyonu(){
        UIView.animate(withDuration: 2, delay: 1) {
            self.yazi.transform = CGAffineTransform(translationX: 0, y:100)
        }
    }
    
    
    func ivmeAnimasyonu(){
        UIView.animate(withDuration: 2, delay: 0 , options: .curveEaseIn) {
            self.yazi.transform = CGAffineTransform(translationX: 0, y:100)
        }
    }
    
    func tekrarAnimasyonu(){
        UIView.animate(withDuration: 1, delay: 0 , options: .repeat .union(.autoreverse)) {
            self.resim.transform = CGAffineTransform(translationX: 0, y:100)
        }
    }
    
    func cokluAnimasyonu(){
        UIView.animate(withDuration: 1) {
            
            let hareket = CGAffineTransform(translationX: 0, y: 100)
            let kucul = CGAffineTransform(scaleX: 0.5, y: 0.5)
            let don = CGAffineTransform(rotationAngle: 90 * .pi/100)
            
            let x = hareket.concatenating(kucul)
            
            self.yazi.transform = don.concatenating(x)
            self.yazi.alpha = 0
             
        }
    }
    
    func ardisikAnimasyon(){
        UIView.animate(withDuration: 1, animations: {
            self.resim.alpha = 0
        },completion: {
            (true) in
            UIView.animate(withDuration: 1, animations: {
                self.yazi.alpha = 0
            },completion: { (true) in
            
                UIView.animate(withDuration: 1, animations: {
                    self.button.alpha = 0
                },completion: nil)
            })
        })
    }

    
}

