
//
//  PediatricoAADA1ViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 27-05-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class PediatricoAADA1ViewController: UIViewController {
    @IBOutlet var btnExit: UIButton!
    
    @IBOutlet var item1: SpringImageView!
    @IBOutlet var item2: SpringImageView!
    @IBOutlet var img1: SpringImageView!
    @IBOutlet var img2: SpringImageView!
    
    @IBOutlet var Left: UISwipeGestureRecognizer!
    
    @IBOutlet var btnLeft: UIButton!
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        slide()
        
    }
    
    func slide(){
        
        btnExit.isHidden = true
        btnLeft.isHidden = true
        
        item1.opacity      = 0.0
        item1.animation    = "animalPop"
        item1.curve        = "easeIn"
        item1.delay        = 0.1
        item1.duration     = 0.5
        item1.animate()
        
        item2.opacity      = 0.0
        item2.animation    = "animalPop"
        item2.curve        = "easeIn"
        item2.delay        = 0.4
        item2.duration     = 0.5
        item2.animate()
        
        img1.opacity      = 0.0
        img1.animation    = "slideLeft"
        img1.curve        = "easeIn"
        img1.delay        = 0.9
        img1.duration     = 0.5
        img1.animate()
        
        img2.opacity      = 0.0
        img2.animation    = "slideLeft"
        img2.curve        = "easeIn"
        img2.delay        = 1.4
        img2.duration     = 0.5
        img2.animate()

        view.removeGestureRecognizer(Left)
        
        delay(delay: 2.0){
            self.btnExit.isHidden = false
            self.btnLeft.isHidden = false
            self.view.addGestureRecognizer(self.Left)
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
