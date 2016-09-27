//
//  InterfaceController.swift
//  bussaWatch2 WatchKit Extension
//
//  Created by ginppian on 12/09/16.
//  Copyright © 2016 ginppian. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    
    @IBAction func smsAction() {
        let url = NSURL(string: "sms:2227802098")
        WKExtension.sharedExtension().openSystemURL(url!)
        
    }
    
    @IBAction func callAction() {
        if let telURL=NSURL(string:"tel:2227802098") {
            let wkExtension=WKExtension.sharedExtension()
            wkExtension.openSystemURL(telURL)
        }
        
    }
    
}
