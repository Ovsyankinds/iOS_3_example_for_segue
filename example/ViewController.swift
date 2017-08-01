//
//  ViewController.swift
//  example
//
//  Created by Ovsyankinds on 30/06/2017.
//  Copyright © 2017 Ovsyankinds. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var text: UITextField!
    
    /*@IBOutlet var tableView: UITableView!*/
    
    @IBAction func threeScreen (_ sender: UIButton){
        performSegue(withIdentifier: "threeScreen", sender: sender)
    }
    
    @IBAction func lastScreen (_ sender: UIButton){
        let vc = storyboard?.instantiateViewController(withIdentifier: "lastScreen") as! TwoViewController
        
        vc.propetryText = text.text!
        
        self.present(vc, animated: true, completion: nil)
        //self.dismiss(animated: true, completion: <#T##(() -> Void)?##(() -> Void)?##() -> Void#>)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*self.tableView.dataSource = self
        self.tableView.delegate = self*/
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

