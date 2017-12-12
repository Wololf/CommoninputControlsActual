//
//  ViewController.swift
//  CommoninputControlsActual
//
//  Created by Student on 11/30/17.
//  Copyright © 2017 Maggie Cromwell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        button.addTarget(self, action: #selector(buttonTapped(_:)),
              for: .touchUpInside)
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    }
    @IBOutlet weak var button: UIButton!
    
    @IBAction func respondToTapGesture(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: view)
        print(location)
    }
    
    
    @IBAction func buttonTapped(_ sender: Any) {
        print("Button was tapped!")
    }
    @IBAction func switchToggled(_ sender: UISwitch) {
        if sender.isOn{
            print("The switch is on!")
        }else{
            print("The switch is off.")
        }
    }
    @IBAction func sliderSlided(_ sender: UISlider) {
        print(sender.value)
    }

    @IBAction func textChanged(_ sender: UITextField) {
     
        if let text = sender.text {
            print(text)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

