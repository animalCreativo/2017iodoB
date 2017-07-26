//
//  PediatricoAViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 27-05-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring
class PediatricoAViewController: UIViewController {
    
    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var btnMenu: UIBarButtonItem!
    
    @IBOutlet weak var btnMenuSlideRight: UIButton!
    
    @IBOutlet var titulo: SpringImageView!
    
    @IBOutlet var img: SpringImageView!
    @IBOutlet var fill1: SpringImageView!
    @IBOutlet var fill2: SpringImageView!
    @IBOutlet var fill3: SpringImageView!

    @IBOutlet var item1: SpringImageView!
    @IBOutlet var item2: SpringImageView!
    @IBOutlet var item3: SpringImageView!
    
    @IBOutlet var flag: SpringImageView!
    
    @IBOutlet var btnItem1: UIButton!
    @IBOutlet var btnItem2: UIButton!
    @IBOutlet var btnItem3: UIButton!
    
    @IBOutlet var btn2: UIButton!
    @IBOutlet var btn3: UIButton!
    
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
    
    func slide(){
        
        btnItem1.isHidden = true
        btnItem2.isHidden = true
        btnItem3.isHidden = true
        
        btn2.isHidden = true
        btn3.isHidden = true
        
       /* titulo.opacity      = 0.0
        titulo.animation    = "animalPop"
        titulo.curve        = "easeIn"
        titulo.delay        = 0.1
        titulo.duration     = 0.5
        titulo.animate()
        
        img.opacity      = 0.0
        img.animation    = "fadeIn"
        img.curve        = "easeIn"
        img.delay        = 0.4
        img.duration     = 0.5
        img.animate()
       */
        item1.opacity      = 0.0
        item1.animation    = "slideLeft"
        item1.curve        = "easeIn"
        item1.delay        = 0.1
        item1.duration     = 0.5
        item1.animate()
        
        item2.opacity      = 0.0
        item2.animation    = "slideLeft"
        item2.curve        = "easeIn"
        item2.delay        = 0.4
        item2.duration     = 0.5
        item2.animate()
        
        item3.opacity      = 0.0
        item3.animation    = "slideLeft"
        item3.curve        = "easeIn"
        item3.delay        = 0.9
        item3.duration     = 0.5
        item3.animate()
        
        fill1.opacity      = 0.0
        fill1.animation    = "animalPop"
        fill1.curve        = "easeIn"
        fill1.delay        = 1.2
        fill1.duration     = 0.5
        fill1.animate()
        
        fill2.opacity      = 0.0
        fill2.animation    = "animalPop"
        fill2.curve        = "easeIn"
        fill2.delay        = 1.5
        fill2.duration     = 0.5
        fill2.animate()
        
        fill3.opacity      = 0.0
        fill3.animation    = "animalPop"
        fill3.curve        = "easeIn"
        fill3.delay        = 1.7
        fill3.duration     = 0.5
        fill3.animate()
        
       /* flag.opacity      = 0.0
        flag.animation    = "animalPop"
        flag.curve        = "easeIn"
        flag.delay        = 1.3
        flag.duration     = 0.3
        flag.animate()
        */
     

        
        delay(delay:2.2){
            self.btnItem1.isHidden = false
            self.btnItem2.isHidden = false
            self.btnItem3.isHidden = false
       
            self.btn2.isHidden = false
            self.btn3.isHidden = false
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
