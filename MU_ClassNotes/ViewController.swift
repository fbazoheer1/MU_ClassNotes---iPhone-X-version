//
//  ViewController.swift
//  MU_ClassNotes
//
//  Created by Faris Bazoheer on 1/31/18.
//  Copyright © 2018 Faris Bazoheer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Outlets
    @IBOutlet weak var selectClassOutlet: UIButton!
    @IBOutlet var classesCollectionOutlet: [UIButton]!
    
    /* @IBOutlet weak var capstoneLabel: UILabel! */
    /* @IBOutlet weak var capstoneText: UITextView! */ 
    /* @IBOutlet weak var appDevLabel: UILabel!
    @IBOutlet weak var appDevText: UITextView! */
    /* @IBOutlet weak var networkingLabel: UILabel!
    @IBOutlet weak var networkingText: UITextView! */
    /* @IBOutlet weak var cfcLabel: UILabel!
    @IBOutlet weak var cfcText: UITextView! */
    
    
    // Actions
    @IBAction func selectClassAction(_ sender: UIButton) {
        classesCollectionOutlet.forEach { (buttons) in
            buttons.isHidden = !buttons.isHidden
        }
    }
    @IBAction func classesActions(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // other actions
    /* @IBAction func capstonePostButton(_ sender: UIButton) {
        capstoneLabel.text = capstoneText.text
        UserDefaults.standard.set(capstoneText.text, forKey: "capstone")
        capstoneText.text = ""
    } */
   /* @IBAction func appDevPostButton(_ sender: UIButton) {
        appDevLabel.text = appDevText.text
        UserDefaults.standard.set(appDevText.text, forKey: "appDev")
        appDevText.text = ""
    } */ 
   /* @IBAction func networkingPostButton(_ sender: UIButton) {
        networkingLabel.text = networkingText.text
        UserDefaults.standard.set(networkingText.text, forKey: "networking")
        networkingText.text = ""
    } */
    /* @IBAction func cfcPostButton(_ sender: UIButton) {
        cfcLabel.text = cfcText.text
        UserDefaults.standard.set(cfcText.text, forKey: "cfc")
        cfcText.text = ""
    } */

    

}

