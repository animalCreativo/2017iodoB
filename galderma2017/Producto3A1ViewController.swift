//
//  Producto3A1ViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 26-05-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class Producto3A1ViewController: UIViewController {
    @IBOutlet var btnExit: UIButton!
    
    @IBOutlet var titulo: SpringImageView!
    
    @IBOutlet var titulo2: SpringImageView!
    @IBOutlet var texto: SpringImageView!
    @IBOutlet var footer: SpringImageView!
    @IBOutlet var img: SpringImageView!
    
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
        
        titulo2.opacity      = 0.0
        titulo2.animation    = "animalPop"
        titulo2.curve        = "easeIn"
        titulo2.delay        = 0.4
        titulo2.duration     = 0.5
        titulo2.animate()
        
        texto.opacity      = 0.0
        texto.animation    = "animalPop"
        texto.curve        = "easeIn"
        texto.delay        = 0.9
        texto.duration     = 0.5
        texto.animate()
        
        img.opacity      = 0.0
        img.animation    = "slideUp"
        img.curve        = "easeIn"
        img.delay        = 1.4
        img.duration     = 0.5
        img.animate()
        
        footer.opacity      = 0.0
        footer.animation    = "slideUp"
        footer.curve        = "easeIn"
        footer.delay        = 1.9
        footer.duration     = 0.5
        footer.animate()
        
        delay(delay:2.5){
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
