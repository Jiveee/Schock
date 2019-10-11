//
//  ViewController.swift
//  Shock
//
//  Created by Dominik Meier on 07.10.19.
//  Copyright © 2019 Dominik Meier. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomIndex : Int = 0
    
    var randomIndex1 : Int = 0
    
    var randomIndex2 : Int = 0
    
    let diceArray = [ "dice1", "dice2", "dice3", "dice4", "dice5", "dice6" ]
    
    let zahlenArray = [" eins ", " zwei ", " drei ", " vier ", " fünf ", " sechs "]
    
    @IBOutlet weak var schockTextView: UITextView!
    
    @IBOutlet weak var schockImageview1: UIImageView!
    
    @IBOutlet weak var schockImageView2: UIImageView!
    
    @IBOutlet weak var schockImageView3: UIImageView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        update()
        
        
    }

    @IBAction func runButtonPressed(_ sender: UIButton) {
        
        /*
                
                TODO: Straße
                DONE : Schock, General, Hausnummer, Jule
                
        */
        
        
        
        randomIndex = Int.random(in: 0...5)
        
        randomIndex1 = Int.random(in: 0...5)
        
        randomIndex2 = Int.random(in: 0...5)
        
        schockImageview1.image = UIImage(named: diceArray[randomIndex])
        
        schockImageView2.image = UIImage(named: diceArray[randomIndex1] )
        
        schockImageView3.image = UIImage(named: diceArray[randomIndex2])
        
        schockTextView.text =  String.init(zahlenArray[randomIndex] + zahlenArray[randomIndex1] + zahlenArray[randomIndex2])
        /*
          Hausnummer
         */
//        let order12 = randomIndex >= randomIndex1 // 1 > 2
//        let order13 = randomIndex >= randomIndex2 // 1 > 3
//        let order23 = randomIndex1 >= randomIndex2 // 2 > 3
//
//
//        let order123 = order12 && order13 && order23
//
//        let order312 = !order12 && order13 && !order23
//
//        if ( order123 ) {
//        schockTextView.text =  String.init(zahlenArray[randomIndex] + zahlenArray[randomIndex1] + zahlenArray[randomIndex2])
//        }
//
//        if ( order312 ) {
//            schockTextView.text =  String.init(zahlenArray[randomIndex2] + zahlenArray[randomIndex] + zahlenArray[randomIndex])
//        }
        
        /*
         Schock + zahl
         */
        if ( zahlenArray[randomIndex] == " eins " ) {
            
            if (zahlenArray[randomIndex1] == " eins ") {
                
                // Schock aus
                if (zahlenArray[randomIndex2] == " eins ") {
                    
                    schockTextView.text = String.init("Schock aus")
                    
                } else {
                
                    switch zahlenArray[randomIndex2] {
                    
                        case " zwei ":
                            schockTextView.text = String.init("Schock " + zahlenArray[randomIndex2])
                    
                        case " drei ":
                            schockTextView.text = String.init("Schock " + zahlenArray[randomIndex2])
                    
                        case " vier ":
                            schockTextView.text = String.init("Schock " + zahlenArray[randomIndex2])
                    
                        case " fünf ":
                            schockTextView.text = String.init("Schock " + zahlenArray[randomIndex2])
                    
                        case " sechs ":
                            schockTextView.text = String.init("Schock " + zahlenArray[randomIndex2])
                    
                    
                        default:
                            schockTextView.text = String.init("WOW")
                    }
                }
            }
            
            else {
                // Funktioniert
                if (zahlenArray[randomIndex] == " eins ") {
                    if (zahlenArray[randomIndex2] == " eins ") {
                        switch zahlenArray[randomIndex1] {
                            case " zwei ":
                                schockTextView.text = String.init("Schock" + zahlenArray[randomIndex1])
                            case " drei ":
                                schockTextView.text = String.init("Schock" + zahlenArray[randomIndex1])
                            case " vier ":
                                schockTextView.text = String.init("Schock" + zahlenArray[randomIndex1])
                            case " fünf ":
                                schockTextView.text = String.init("Schock" + zahlenArray[randomIndex1])
                            case " sechs ":
                                schockTextView.text = String.init("Schock" + zahlenArray[randomIndex1])
                            default:
                                schockTextView.text = String.init("Fehler")
                        }
                    }
                }
            }
        } else {
            if (zahlenArray[randomIndex1] == " eins ") {
                if (zahlenArray[randomIndex2] == " eins ") {
                    switch zahlenArray[randomIndex] {
                        case " zwei ":
                            schockTextView.text = String.init("Schock" + zahlenArray[randomIndex])
                        case " drei ":
                            schockTextView.text = String.init("Schock" + zahlenArray[randomIndex])
                        case " vier ":
                            schockTextView.text = String.init("Schock" + zahlenArray[randomIndex])
                        case " fünf ":
                            schockTextView.text = String.init("Schock" + zahlenArray[randomIndex])
                        case " sechs ":
                            schockTextView.text = String.init("Schock" + zahlenArray[randomIndex])
                        default:
                            schockTextView.text = String.init("404")
                    }
                }
            }
        }
        
       
        
        /*
         General
         */
        
        var  isequal = false
        
        let index12 = zahlenArray[randomIndex] == zahlenArray[randomIndex1]
        let index13 = zahlenArray[randomIndex] == zahlenArray[randomIndex2]
        let index23 = zahlenArray[randomIndex1] == zahlenArray[randomIndex2]
        
        isequal = index12 && index13 && index23
        
        
        if ( isequal && zahlenArray[randomIndex] != " eins " ) {
            
                schockTextView.text = String.init("General mit " + zahlenArray[randomIndex2])
                
        }
        
        /*
         Jule
         
         4 4 2
         */
        if (zahlenArray[randomIndex] == " eins " || zahlenArray[randomIndex] == " vier " || zahlenArray[randomIndex] == " zwei ") {
            
            
            if (   zahlenArray[randomIndex1] == " eins " || zahlenArray[randomIndex1] == " vier " || zahlenArray[randomIndex1] == " zwei " ) {
                
                
                if ( zahlenArray[randomIndex2] == " eins " || zahlenArray[randomIndex2] == " zwei " || zahlenArray[randomIndex2] == " vier " ){
                    
                    if ( !(zahlenArray[randomIndex] == zahlenArray[randomIndex1]) && !(zahlenArray[randomIndex1] == zahlenArray[randomIndex2]) && !(zahlenArray[randomIndex2] == zahlenArray[randomIndex])) {
                        
                        schockTextView.text = String.init("Jule")
                        
                    }
                    
                }
            }
        }
        
        /*
         Straße
            
           
         */
        

        
        
            if (zahlenArray[randomIndex] == " eins " || zahlenArray[randomIndex] == " zwei " || zahlenArray[randomIndex] == " drei " ) {
                
                if (zahlenArray[randomIndex1] == " eins " || zahlenArray[randomIndex1] == " zwei " || zahlenArray[randomIndex1] == " drei " ) {
                    
                    if (zahlenArray[randomIndex2] == " eins " || zahlenArray[randomIndex2] == " zwei " || zahlenArray[randomIndex2] == " drei " ) {
                        
                        if( !(zahlenArray[randomIndex] == zahlenArray[randomIndex1]) && !(zahlenArray[randomIndex1] == zahlenArray[randomIndex2]) && !(zahlenArray[randomIndex] == zahlenArray[randomIndex2])){
                            
                            schockTextView.text = String.init("Straße")
                            
                        }
                        
                    }
                }
            }
        
            if (zahlenArray[randomIndex] == " zwei " || zahlenArray[randomIndex] == " vier " || zahlenArray[randomIndex] == " drei " ) {
                       
                    if (zahlenArray[randomIndex1] == " vier " || zahlenArray[randomIndex1] == " zwei " || zahlenArray[randomIndex1] == " drei " ) {
                           
                        if (zahlenArray[randomIndex2] == " vier " || zahlenArray[randomIndex2] == " zwei " || zahlenArray[randomIndex2] == " drei " ) {
                               
                            if( !(zahlenArray[randomIndex] == zahlenArray[randomIndex1]) && !(zahlenArray[randomIndex1] == zahlenArray[randomIndex2]) && !(zahlenArray[randomIndex] == zahlenArray[randomIndex2])){
                                   
                                schockTextView.text = String.init("Straße")
                                   
                            }
                               
                        }
                    }
            }
        
            if (zahlenArray[randomIndex] == " vier " || zahlenArray[randomIndex] == " fünf " || zahlenArray[randomIndex] == " sechs " ) {
                           
                           if (zahlenArray[randomIndex1] == " vier " || zahlenArray[randomIndex1] == " fünf " || zahlenArray[randomIndex1] == " sechs " ) {
                               
                               if (zahlenArray[randomIndex2] == " vier " || zahlenArray[randomIndex2] == " fünf " || zahlenArray[randomIndex2] == " sechs " ) {
                                   
                                   if( !(zahlenArray[randomIndex] == zahlenArray[randomIndex1]) && !(zahlenArray[randomIndex1] == zahlenArray[randomIndex2]) && !(zahlenArray[randomIndex] == zahlenArray[randomIndex2])){
                                       
                                       schockTextView.text = String.init("Straße")
                                       
                                   }
                                   
                               }
                           }
            }
            
            if (zahlenArray[randomIndex] == " vier " || zahlenArray[randomIndex] == " fünf " || zahlenArray[randomIndex] == " drei " ) {
                               
                            if (zahlenArray[randomIndex1] == " vier " || zahlenArray[randomIndex1] == " fünf " || zahlenArray[randomIndex1] == " drei " ) {
                                   
                                if (zahlenArray[randomIndex2] == " vier " || zahlenArray[randomIndex2] == " fünf " || zahlenArray[randomIndex2] == " drei " ) {
                                       
                                    if( !(zahlenArray[randomIndex] == zahlenArray[randomIndex1]) && !(zahlenArray[randomIndex1] == zahlenArray[randomIndex2]) && !(zahlenArray[randomIndex] == zahlenArray[randomIndex2])){
                                           
                                        schockTextView.text = String.init("Straße")
                                           
                                    }
                                }
                            }
            }
        
        
    }
                
    
    func update() {
        
        randomIndex = Int.random(in: 0...5)
        
        randomIndex1 = Int.random(in: 0...5)
        
        randomIndex2 = Int.random(in: 0...5)
        
        schockImageview1.image = UIImage(named: diceArray[randomIndex])
        
        schockImageView2.image = UIImage(named: diceArray[randomIndex1] )
        
        schockImageView3.image = UIImage(named: diceArray[randomIndex2])
        
        schockTextView.text =  String.init(zahlenArray[randomIndex] + zahlenArray[randomIndex1] + zahlenArray[randomIndex2])
        
    }
    
    
  
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        update()
        
    }
    
    



}
