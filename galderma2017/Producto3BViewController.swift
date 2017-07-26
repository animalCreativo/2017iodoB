//
//  Producto3BViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 26-05-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class Producto3BViewController: UIViewController {

    @IBOutlet var btnExit: UIButton!
    @IBOutlet var titulo: SpringImageView!
    
    @IBOutlet var img1: SpringImageView!
    @IBOutlet var img2: SpringImageView!
    
    @IBOutlet var imgLogo1: SpringImageView!
    @IBOutlet var imgLogo2: SpringImageView!
    
    @IBOutlet var item1: UIButton!
    @IBOutlet var item2: UIButton!
    @IBOutlet var item3: UIButton!
    
    @IBOutlet var texto1: SpringImageView!
    @IBOutlet var texto2: SpringImageView!
    
    @IBOutlet var lupa: SpringImageView!
    @IBOutlet var insideLupa: SpringImageView!

    @IBOutlet var Right: UISwipeGestureRecognizer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        slide()
        
    }
    
    func slide(){
        item1.isHidden = true
        item2.isHidden = true
        item3.isHidden = true
        btnExit.isHidden = true
        
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
        
        imgLogo1.opacity      = 0.0
        imgLogo1.animation    = "fadeIn"
        imgLogo1.curve        = "easeIn"
        imgLogo1.delay        = 0.6
        imgLogo1.duration     = 0.3
        imgLogo1.animate()
        
        imgLogo2.opacity      = 0.0
        imgLogo2.animation    = "fadeIn"
        imgLogo2.curve        = "easeIn"
        imgLogo2.delay        = 0.8
        imgLogo2.duration     = 0.3
        imgLogo2.animate()
        
        texto1.opacity      = 0.0
        texto1.animation    = "slideLeft"
        texto1.curve        = "easeIn"
        texto1.delay        = 0.9
        texto1.duration     = 0.5
        texto1.animate()
        
        img2.opacity      = 0.0
        img2.animation    = "fadeIn"
        img2.curve        = "easeIn"
        img2.delay        = 1.3
        img2.duration     = 0.3
        img2.animate()
        
        texto2.opacity      = 0.0
        texto2.animation    = "slideLeft"
        texto2.curve        = "easeIn"
        texto2.delay        = 1.6
        texto2.duration     = 0.5
        texto2.animate()
        
        lupa.opacity      = 0.0
        lupa.animation    = "fadeIn"
        lupa.curve        = "easeIn"
        lupa.delay        = 1.8
        lupa.duration     = 0.3
        lupa.animate()
        
        insideLupa.opacity      = 0.0
        insideLupa.animation    = "fadeIn"
        insideLupa.curve        = "easeIn"
        insideLupa.delay        = 1.8
        insideLupa.duration     = 0.3
        insideLupa.animate()
 
        view.removeGestureRecognizer(Right)
        delay(delay:2.1){
            self.item1.isHidden = false
            self.item2.isHidden = false
            self.item3.isHidden = false
            self.btnExit.isHidden = false
            self.view.addGestureRecognizer(self.Right)
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
