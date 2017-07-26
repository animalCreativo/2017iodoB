//
//  PediatricoSIMViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 27-05-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class PediatricoSIMViewController: UIViewController {
    @IBOutlet var btnExit: UIButton!
    
    
    @IBOutlet var item1: SpringImageView!
    @IBOutlet var item2: SpringImageView!

    @IBOutlet var img: SpringImageView!
    @IBOutlet var titulo: SpringImageView!
   
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        slide()
        
    }
    
    func slide(){
        btnExit.isHidden = true
        
        titulo.opacity      = 0.0
        titulo.animation    = "fadeIn"
        titulo.curve        = "easeIn"
        titulo.delay        = 0.1
        titulo.duration     = 0.4
        titulo.animate()
        
        img.opacity      = 0.0
        img.animation    = "animalPop"
        img.curve        = "easeIn"
        img.delay        = 0.4
        img.duration     = 0.4
        img.animate()
    
        item1.opacity      = 0.0
        item1.animation    = "slideLeft"
        item1.curve        = "easeIn"
        item1.delay        = 0.9
        item1.duration     = 0.5
        item1.animate()
        
        item2.opacity      = 0.0
        item2.animation    = "slideLeft"
        item2.curve        = "easeIn"
        item2.delay        = 1.4
        item2.duration     = 0.5
        item2.animate()
        
        
        delay(delay:2.0){
            self.btnExit.isHidden = false
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
