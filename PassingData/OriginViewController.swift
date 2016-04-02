//
//  OriginViewController.swift
//  PassingData
//
//  Created by Gerd Richter on 31.03.16.
//  Copyright © 2016 wirelesscoder. All rights reserved.
//

import UIKit

class OriginViewController: UIViewController, DestinationViewDelegate {
    
    @IBOutlet weak var MessageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //sending Text to the DestinationViewController
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "sendingTextSegue") {
            
            let destination = segue.destinationViewController as! DestinationViewController
            destination.delegate = self
            
            destination.DestinationLabelText = "Hello World"
            }
    }
    
    func setMessage(text: String) {
      MessageLabel.text = text
      print(MessageLabel.text)
    }
    
    
}