//
//  ViewController.swift
//  Magic 8 Ball App
//
//  Created by Jesus Perez on 6/17/18.
//  Copyright © 2018 Jesus Perez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    /* Down here we will be declaring the variables*/
    @IBOutlet weak var ballToChange: UIImageView!
    
    //Index Variables here, they start at 0
    var startBallIndex : Int = 0
    
    var randomBallChange : Int = 0 //randomBallChange starts at 0
    
    
    //Storing the ball images as files here in an array
    var ballIndexImages = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onClickBallChangeEvent(_ sender: UIButton) {
        ballChanging()
    }
    
    
    /* Function to change the numbers within the ballToChange */
    func ballChanging(){
        
        //Changes the number from 0 to 4
        randomBallChange = Int(arc4random_uniform(5))
        
        //Changes the ball image with the UIImage method
        ballToChange.image = UIImage(named: ballIndexImages[randomBallChange])
    }
    
    
    
    /* Function Event when user has stopped shaking the
      device, will call to the 'ballChanging' function*/
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        ballChanging()
    }
    
}

