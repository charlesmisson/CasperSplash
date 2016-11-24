//
//  AppDelegate.swift
//  CasperSplash
//
//  Created by testpilotfinal on 02/08/16.
//  Copyright © 2016 François Levaux-Tiffreau. All rights reserved.
//

import Cocoa



@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate, StreamDelegate {

    
    var softwareStatusValueTransformer: SoftwareStatusValueTransformer?
    var casperSplashController: CasperSplashController!
    var casperSplashBackgroundController: CasperSplashBackgroundController!
    
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {

        
        
        // Value Transformer for Software Status
        softwareStatusValueTransformer = SoftwareStatusValueTransformer()
        ValueTransformer.setValueTransformer(softwareStatusValueTransformer, forName: NSValueTransformerName(rawValue: "SoftwareStatusValueTransformer"))
        
        // Create controller and Initialize Preferences
        let storyboard = NSStoryboard(name: "CasperSplashController", bundle: nil)
        casperSplashController = storyboard.instantiateController(withIdentifier: "mainWindow") as! CasperSplashController
        
        // Create background controller
        casperSplashBackgroundController = storyboard.instantiateController(withIdentifier: "backgroundWindow") as! CasperSplashBackgroundController
        
        

        casperSplashController.showWindow(self)
        casperSplashBackgroundController.showWindow(self)
        
        
        
        // We use a timer to parse jamf.log



    }

 }

