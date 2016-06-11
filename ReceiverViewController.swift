//
//  ReceiverViewController.swift
//  Message
//
//  Created by Ryan Davey on 6/10/16.
//  Copyright © 2016 Ryan Davey. All rights reserved.
//

import UIKit

class ReceiverViewController: UIViewController, buttonDelegate {
    
    var delegate: buttonDelegate?
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    var text: String?
    @IBAction func sendButton(sender: UIButton) {
        if (delegate != nil)
        {
            delegate!.receiveMessage(textField.text!)
        }
    }

    func receiveMessage(message: String) {
        text = message
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        self.messageLabel.text = self.text!
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
