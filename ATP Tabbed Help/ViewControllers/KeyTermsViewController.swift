//
//  KeyTermsViewController.swift
//  ATPTabbedHelp8
//
//  Created by Steven Berkey on 5/24/18.
//  Copyright © 2018 90Rev. All rights reserved.
//

import UIKit

class KeyTermsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let term:[String] = ["UNITS (YD or M)", "M1 (Mode 1)", "M2 (Mode 2)"]
    let def:[String] = ["If you see 300 listed in a swim activity, it means 300 m (meters) or yds (yards). Swimming is tricky when it comes to units. Some pools are measured in m and others are measured in yds. Simply pick whichever unit matches the length of the pool.", "The tempo trainer has three modes. The first mode beeps every 25 m or yds. Once you find your Swim TT (time trial) on your specs page, you will know mode 1 setting.", "Mode 2 on the tempo trainer means that you will hear a beep every 50 m or yds. This is a less accurate way to set your trainer to keep track of your pace but does have a very important function. This mode is typically used during beat the beeper activities. It is like a psychological game to beat the beeper when swimming 50 m or yd to get more rest and to test your anaerobic system. A little psychology can go a long way in swim performance."]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return term.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = term[indexPath.row]
        cell.detailTextLabel?.text = def[indexPath.row]
        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
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
