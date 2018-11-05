//
//  appDevViewController.swift
//  MU_ClassNotes
//
//  Created by Faris Bazoheer on 3/1/18.
//  Copyright © 2018 Faris Bazoheer. All rights reserved.
//

import UIKit

class appDevViewController: UIViewController {
    
    @IBOutlet weak var appDevLabel: UILabel!
    @IBOutlet weak var appDevText: UITextView!
    
    @IBAction func appDevPostButton(_ sender: UIButton) {
        appDevLabel.text = appDevText.text
        UserDefaults.standard.set(appDevText.text, forKey: "appDev")
        appDevText.text = ""
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
        if let appDevSave = UserDefaults.standard.object(forKey: "appDev") as? String
        {
           appDevLabel.text = appDevSave
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
