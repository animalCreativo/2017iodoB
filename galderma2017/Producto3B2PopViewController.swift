//
//  Producto3B2PopViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 26-05-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class Producto3B2PopViewController: UIViewController {

    @IBOutlet var btnExit: UIButton!
    
    @IBOutlet var titulo: SpringImageView!
    
    
    
    @IBOutlet var footer: SpringImageView!
    
    @IBOutlet var Right: UISwipeGestureRecognizer!
  
    
    @IBOutlet var logoGrafico: SpringImageView!
    @IBOutlet var Grafico: Graficos2View!
    var gameTimer: Timer!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        Grafico.backgroundColor = UIColor.clear
        self.Grafico.Valor = 0
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
        
        logoGrafico.opacity      = 0.0
        logoGrafico.animation    = "animalPop"
        logoGrafico.curve        = "easeIn"
        logoGrafico.delay        = 0.4
        logoGrafico.duration     = 0.5
        logoGrafico.animate()
        
        footer.opacity      = 0.0
        footer.animation    = "slideUp"
        footer.curve        = "easeIn"
        footer.delay        = 0.9
        footer.duration     = 0.5
        footer.animate()
        
        view.removeGestureRecognizer(Right)
        
        delay(delay: 1.5){
            self.btnExit.isHidden = false
            self.view.addGestureRecognizer(self.Right)
        }
        delay(delay:0.4){
            
            self.gameTimer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(self.runTimedCode), userInfo: nil, repeats: true)
        }
        delay(delay:5.0){
            
            self.gameTimer.invalidate()
        }
        
        
    }
    
    func runTimedCode() {
        self.Grafico.backgroundColor = UIColor.clear
        self.Grafico.Valor = self.Grafico.Valor + 10
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
