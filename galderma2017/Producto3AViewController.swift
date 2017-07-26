//
//  Producto3AViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 26-05-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class Producto3AViewController: UIViewController {
    @IBOutlet weak var btnBack: UIButton!
    
    @IBOutlet weak var btnMenu: UIBarButtonItem!
    
    @IBOutlet weak var btnMenuSlideRight: UIButton!
    
    @IBOutlet var titulo: SpringImageView!

    @IBOutlet var img1: SpringImageView!
    @IBOutlet var img2: SpringImageView!
    
    @IBOutlet var item1: UIButton!
    @IBOutlet var item2: UIButton!
    @IBOutlet var item3: UIButton!
    
    @IBOutlet var imgItem1: SpringImageView!
    @IBOutlet var imgItem2: SpringImageView!
    @IBOutlet var imgItem3: SpringImageView!
    
    @IBOutlet var footer: SpringImageView!
    
    var timer1: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnMenuSlideRight.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.rightRevealToggle(_:)) , for: UIControlEvents.touchDown)
        
        if self.revealViewController() != nil {
            btnMenu.target = self.revealViewController()
            btnMenu.action = #selector(SWRevealViewController.rightRevealToggle(_:))
            
            self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
            self.revealViewController().rightViewRevealWidth        = 268.0
            self.revealViewController().rightViewRevealOverdraw     = 0.0
            self.revealViewController().bounceBackOnOverdraw        = false
            self.revealViewController().springDampingRatio          = 1.0
            self.revealViewController().toggleAnimationDuration     = 0.7
            self.revealViewController().frontViewShadowRadius       = 10
            self.revealViewController().frontViewShadowOffset       = CGSize(width: 0, height: 2.5)
            self.revealViewController().frontViewShadowOpacity      = 1.0
            self.revealViewController().frontViewShadowColor        = UIColor.black
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        slide()
        
    }
    func animation1() {
        
        imgItem1.animation    = "pop"
        imgItem1.curve        = "easeIn"
        imgItem1.delay        = 0.1
        imgItem1.duration     = 1.0
        imgItem1.animate()
        
        
        imgItem2.animation    = "pop"
        imgItem2.curve        = "easeIn"
        imgItem2.delay        = 0.4
        imgItem2.duration     = 1.0
        imgItem2.animate()
        
        
        imgItem3.animation    = "pop"
        imgItem3.curve        = "easeIn"
        imgItem3.delay        = 0.8
        imgItem3.duration     = 1.0
        imgItem3.animate()
    }
    
    func slide(){
        item1.isHidden = true
        item2.isHidden = true
        item3.isHidden = true
        
        
        titulo.opacity      = 0.0
        titulo.animation    = "animalPop"
        titulo.curve        = "easeIn"
        titulo.delay        = 0.1
        titulo.duration     = 0.5
        titulo.animate()
        
        img1.opacity      = 0.0
        img1.animation    = "slideLeft"
        img1.curve        = "easeIn"
        img1.delay        = 0.4
        img1.duration     = 0.5
        img1.animate()
        
        imgItem1.opacity      = 0.0
        imgItem1.animation    = "slideLeft"
        imgItem1.curve        = "easeIn"
        imgItem1.delay        = 0.7
        imgItem1.duration     = 0.5
        imgItem1.animate()
        
        imgItem2.opacity      = 0.0
        imgItem2.animation    = "slideLeft"
        imgItem2.curve        = "easeIn"
        imgItem2.delay        = 1.0
        imgItem2.duration     = 0.5
        imgItem2.animate()
        
        imgItem3.opacity      = 0.0
        imgItem3.animation    = "slideLeft"
        imgItem3.curve        = "easeIn"
        imgItem3.delay        = 1.3
        imgItem3.duration     = 0.5
        imgItem3.animate()
        
        img2.opacity      = 0.0
        img2.animation    = "fadeIn"
        img2.curve        = "easeIn"
        img2.delay        = 1.8
        img2.duration     = 0.3
        img2.animate()
        
        footer.opacity      = 0.0
        footer.animation    = "animalPop"
        footer.curve        = "easeIn"
        footer.delay        = 1.6
        footer.duration     = 0.5
        footer.animate()
        
        
        delay(delay:2.2){
            self.item1.isHidden = false
            self.item2.isHidden = false
            self.item3.isHidden = false
            self.timer1 = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(self.animation1), userInfo: nil, repeats: true)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
