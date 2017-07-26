//
//  Producto3A3PopViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 26-05-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class Producto3A3PopViewController: UIViewController {
    @IBOutlet var btnExit: UIButton!
    
    @IBOutlet var titulo: SpringImageView!

    @IBOutlet var texto1: SpringImageView!
    @IBOutlet var img1: SpringImageView!
    @IBOutlet var img2: SpringImageView!
    
    @IBOutlet var texto2: SpringImageView!
    @IBOutlet var img3: SpringImageView!
    
    @IBOutlet var footer: SpringImageView!
    
    @IBOutlet var Right: UISwipeGestureRecognizer!
    @IBOutlet var Left: UISwipeGestureRecognizer!
    
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
        titulo.duration     = 0.5
        titulo.animate()
        
        texto1.opacity      = 0.0
        texto1.animation    = "slideRight"
        texto1.curve        = "easeIn"
        texto1.delay        = 0.4
        texto1.duration     = 0.5
        texto1.animate()
        
        img1.opacity      = 0.0
        img1.animation    = "animalPop"
        img1.curve        = "easeIn"
        img1.delay        = 0.7
        img1.duration     = 0.5
        img1.animate()
        
        img2.opacity      = 0.0
        img2.animation    = "animalPop"
        img2.curve        = "easeIn"
        img2.delay        = 0.9
        img2.duration     = 0.5
        img2.animate()
        
        texto2.opacity      = 0.0
        texto2.animation    = "fadeIn"
        texto2.curve        = "easeIn"
        texto2.delay        = 1.4
        texto2.duration     = 0.5
        texto2.animate()
        
        img3.opacity      = 0.0
        img3.animation    = "animalPop"
        img3.curve        = "easeIn"
        img3.delay        = 1.9
        img3.duration     = 0.5
        img3.animate()
        
        footer.opacity      = 0.0
        footer.animation    = "slideUp"
        footer.curve        = "easeIn"
        footer.delay        = 2.5
        footer.duration     = 0.5
        footer.animate()
        
        view.removeGestureRecognizer(Right)
        view.removeGestureRecognizer(Left)
        
        delay(delay: 3.0){
            self.btnExit.isHidden = false
            self.view.addGestureRecognizer(self.Right)
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
