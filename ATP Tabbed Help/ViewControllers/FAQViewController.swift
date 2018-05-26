//
//  FAQViewController.swift
//  ATP Tabbed Help
//
//  Created by Steven Berkey on 5/22/18.
//  Copyright © 2018 90Rev. All rights reserved.
//

import UIKit

class FAQViewController: UIViewController, UITableViewDataSource {
    
    let data:[String] = ["WHAT TRAINING GADGETS DO YOU RECOMMEND?", "DOES THE ATP APP WORK ON THE APPLE WATCH?", "WHAT DATA DOES THE ATP MEASURE?"]
    let subs:[String] = ["At 90Rev, we are big fans of Garmin. However, you don’t have to use a Garmin device to use ATP. As long as your training device records time, heart rate, distance, speed, pace, cadence, power (optional for some plans), and swimming strokes, you will be good to go.", "Not at this time. It would be cool if ATP worked on an Apple Watch. Based on demand, building the ATP app on the Apple Watch and iPhone might be the next step. We are always open to suggestions.", "ATP is designed to be clean and minimal. It analyzes only the necessary data to make your life easier. ATP analyzes your distance, speed, pace, heart rate, power, pain, and intensity. These measurements are used to adapt your plan."]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        cell.detailTextLabel?.text = subs[indexPath.row]
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
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
