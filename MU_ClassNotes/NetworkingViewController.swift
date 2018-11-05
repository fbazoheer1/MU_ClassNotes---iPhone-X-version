//
//  NetworkingViewController.swift
//  MU_ClassNotes
//
//  Created by Faris Bazoheer on 3/1/18.
//  Copyright © 2018 Faris Bazoheer. All rights reserved.
//

import UIKit

class NetworkingViewController: UIViewController {
    
    @IBOutlet weak var networkingLabel: UILabel!
    @IBOutlet weak var networkingText: UITextView!
    
    @IBAction func networkingPostButton(_ sender: UIButton) {
        networkingLabel.text = networkingText.text
        UserDefaults.standard.set(networkingText.text, forKey: "networking")
        networkingText.text = ""
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
        if let networkingSave = UserDefaults.standard.object(forKey: "networking") as? String
        {
            networkingLabel.text = networkingSave
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
