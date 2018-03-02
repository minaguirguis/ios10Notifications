//
//  ViewController.swift
//  NewNotifications
//
//  Created by Mina Guirguis on 3/2/18.
//  Copyright © 2018 Mina Guirguis. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //1. REQUEST PERMISSION
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound], completionHandler: {(granted, error) in
            
            if granted {
                print("Notification access granted")
            } else {
                print(error?.localizedDescription)
            }
        })
    }
    
    @IBAction func notifyButtonTapped(sender: UIButton) {
        
    }

    func scheduleNotification(inSeconds: TimeInterval, completion: (_ Success: Bool) -> ()) {
        
        let notif = UNMutableNotificationContent()
        
        notif.title = "New Notification"
        notif.subtitle = "These are great!"
        notif.body = "The new notification options in ios 10 are what I've always wanted!"
        
    }
}




