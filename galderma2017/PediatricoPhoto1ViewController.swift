//
//  PediatricoPhoto1ViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 27-05-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class PediatricoPhoto1ViewController: UIViewController {

    @IBOutlet var btnExit: UIButton!
    
    @IBOutlet var titulo: SpringImageView!
    @IBOutlet var img: SpringImageView!
    
    @IBOutlet var item1: SpringImageView!
    @IBOutlet var item2: SpringImageView!
    @IBOutlet var item3: SpringImageView!
    @IBOutlet var item4: SpringImageView!
    
    @IBOutlet var footer: SpringImageView!
    @IBOutlet var footer2: SpringImageView!
    @IBOutlet var bullet: SpringImageView!
    var a = 0
    
    override func viewDidLoad() {
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(handleGesture))
        swipeLeft.direction = .left
        self.view.addGestureRecognizer(swipeLeft)
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(handleGesture))
        swipeRight.direction = .right
        self.view.addGestureRecognizer(swipeRight)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        slide()
        
    }
    
    func slide(){
        btnExit.isHidden = true
        footer2.isHidden = true
        
        titulo.opacity      = 0.0
        titulo.animation    = "fadeIn"
        titulo.curve        = "easeIn"
        titulo.delay        = 0.1
        titulo.duration     = 0.4
        titulo.animate()
  
        item1.opacity      = 0.0
        item1.animation    = "animalPop"
        item1.curve        = "easeIn"
        item1.delay        = 0.4
        item1.duration     = 0.4
        item1.animate()
        
        item2.opacity      = 0.0
        item2.animation    = "fadeIn"
        item2.curve        = "easeIn"
        item2.delay        = 0.9
        item2.duration     = 0.4
        item2.animate()
        
        item3.opacity      = 0.0
        item3.animation    = "animalPop"
        item3.curve        = "easeIn"
        item3.delay        = 1.2
        item3.duration     = 0.4
        item3.animate()
        
        item4.opacity      = 0.0
        item4.animation    = "fadeIn"
        item4.curve        = "easeIn"
        item4.delay        = 1.5
        item4.duration     = 0.4
        item4.animate()
        
        footer.opacity      = 0.0
        footer.animation    = "fadeIn"
        footer.curve        = "easeIn"
        footer.delay        = 1.8
        footer.duration     = 0.4
        footer.animate()
        
        img.opacity      = 0.0
        img.animation    = "zoomIn"
        img.curve        = "easeIn"
        img.delay        = 2.0
        img.duration     = 0.4
        img.animate()
        
        delay(delay:2.5){
            self.btnExit.isHidden = false
            
        }
        a = 0
    }
    
    func slide1(){
        footer2.isHidden = true
        item2.image = UIImage(named:"pediatricoFoto1Item3")
        item4.image = UIImage(named:"pediatricoFoto1Item4")
        bullet.image = UIImage(named:"indBlue1")
        a = 1
    }
    
    func slide2(){
        footer.isHidden = true
        item2.image = UIImage(named:"pediatricoFoto2Item3")
        item4.image = UIImage(named:"pediatricoFoto2Item4")
        bullet.image = UIImage(named:"indBlue2")
        a = 2
    }
    func handleGesture(gesture: UISwipeGestureRecognizer) -> Void {
        if gesture.direction == UISwipeGestureRecognizerDirection.right {
            if ( a==2){
                slide1()
            }
        }
        else if gesture.direction == UISwipeGestureRecognizerDirection.left {
            if ( a==1 || a==0){
                slide2()
            }
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
