//
//  CapstoneViewController.swift
//  MU_ClassNotes
//
//  Created by Faris Bazoheer on 2/28/18.
//  Copyright © 2018 Faris Bazoheer. All rights reserved.
//

import UIKit

class CapstoneViewController: UIViewController {
    
    
    @IBOutlet weak var capstoneLabel: UILabel!
    @IBOutlet weak var capstoneText: UITextView!
    
    @IBAction func capstonePostButton(_ sender: UIButton) {
        capstoneLabel.text = capstoneText.text
        UserDefaults.standard.set(capstoneText.text, forKey: "capstone")
        capstoneText.text = ""
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let capstoneSave = UserDefaults.standard.object(forKey: "capstone") as? String
        {
            capstoneLabel.text = capstoneSave
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
