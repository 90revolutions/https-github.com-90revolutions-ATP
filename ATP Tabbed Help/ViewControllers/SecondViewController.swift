//
//  SecondViewController.swift
//  ATP Tabbed Help
//
//  Created by Steven Berkey on 5/22/18.
//  Copyright © 2018 90Rev. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let data:[String] = ["FAQs", "Contact", "Key Terms", "Combine"]
    
    let subs:[String] = ["Common Question", "We're Human", "It's Like Another Language", "Create the Complete Training System"]
    
    var imagesHelp = ["FAQIcon", "ChatIcon", "KeyIcon", "CombineIcon"]
    
    var segueIdentifiers = ["FAQs", "Contact", "KeyTerms", "CombineApps"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        

        let cellHelp = tableView.dequeueReusableCell(withIdentifier: "cellHelp", for: indexPath) as! HelpTableViewCell
        
        //Configure cell
        cellHelp.nameLabel?.text = data[indexPath.row]
        cellHelp.descriptionLabel?.text = subs[indexPath.row]
        cellHelp.thumbnailImageView?.image = UIImage(named: imagesHelp[indexPath.row])
        
        return cellHelp
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: segueIdentifiers[indexPath.row], sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
}

