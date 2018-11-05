//
//  cfcViewController.swift
//  MU_ClassNotes
//
//  Created by Faris Bazoheer on 3/1/18.
//  Copyright © 2018 Faris Bazoheer. All rights reserved.
//

import UIKit

class cfcViewController: UIViewController {
    
    @IBOutlet weak var cfcLabel: UILabel!
    @IBOutlet weak var cfcText: UITextView!
    
    @IBAction func cfcPostButton(_ sender: UIButton) {
        cfcLabel.text = cfcText.text
        UserDefaults.standard.set(cfcText.text, forKey: "cfc")
        cfcText.text = ""
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
        if let cfcSave = UserDefaults.standard.object(forKey: "cfc") as? String
        {
            cfcLabel.text = cfcSave
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
