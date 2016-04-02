//
//  DestinationViewController.swift
//  PassingData
//
//  Created by Gerd Richter on 31.03.16.
//  Copyright © 2016 wirelesscoder. All rights reserved.
//


import UIKit 


protocol DestinationViewDelegate {
    func setMessage (text: String)
}


class DestinationViewController: UIViewController {

    var delegate : DestinationViewDelegate! = nil
    var DestinationLabelText: String! = nil
    
    @IBOutlet weak var DestinationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DestinationLabel.text = DestinationLabelText
    }
    
    @IBAction func sendBackButton(sender: UIButton) {
        delegate.setMessage("Back to you")
        
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
        
}