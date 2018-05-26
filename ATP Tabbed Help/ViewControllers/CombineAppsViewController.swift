//
//  CombineAppsViewController.swift
//  ATPTabbedHelp8
//
//  Created by Steven Berkey on 5/24/18.
//  Copyright © 2018 90Rev. All rights reserved.
//

import UIKit

class CombineAppsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let data:[String] = ["Zwift", "Strava", "Golden Cheetah", "Sweetbeat HRV App"]
    
    let subs:[String] = ["Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean id enim mauris. Duis condimentum accumsan metus sed porta. Aliquam velit sapien, tincidunt ut sem sit amet, commodo cursus libero. Cras eget mi felis. Sed eget elit vestibulum, molestie sem id, convallis est. Aenean eu massa elit. Sed posuere vitae felis ac ullamcorper. Quisque congue faucibus lectus, id fermentum mauris sollicitudin eu. Praesent condimentum tellus a vehicula ultrices. In tincidunt tellus eget arcu malesuada, et iaculis ipsum pharetra. Pellentesque facilisis vestibulum lectus, sit amet lobortis massa pharetra quis. Proin eu ex sollicitudin erat rhoncus tincidunt.", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean id enim mauris. Duis condimentum accumsan metus sed porta. Aliquam velit sapien, tincidunt ut sem sit amet, commodo cursus libero. Cras eget mi felis. Sed eget elit vestibulum, molestie sem id, convallis est. Aenean eu massa elit. Sed posuere vitae felis ac ullamcorper. Quisque congue faucibus lectus, id fermentum mauris sollicitudin eu. Praesent condimentum tellus a vehicula ultrices. In tincidunt tellus eget arcu malesuada, et iaculis ipsum pharetra. Pellentesque facilisis vestibulum lectus, sit amet lobortis massa pharetra quis. Proin eu ex sollicitudin erat rhoncus tincidunt.", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean id enim mauris. Duis condimentum accumsan metus sed porta. Aliquam velit sapien, tincidunt ut sem sit amet, commodo cursus libero. Cras eget mi felis. Sed eget elit vestibulum, molestie sem id, convallis est. Aenean eu massa elit. Sed posuere vitae felis ac ullamcorper. Quisque congue faucibus lectus, id fermentum mauris sollicitudin eu. Praesent condimentum tellus a vehicula ultrices. In tincidunt tellus eget arcu malesuada, et iaculis ipsum pharetra. Pellentesque facilisis vestibulum lectus, sit amet lobortis massa pharetra quis. Proin eu ex sollicitudin erat rhoncus tincidunt.", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean id enim mauris. Duis condimentum accumsan metus sed porta. Aliquam velit sapien, tincidunt ut sem sit amet, commodo cursus libero. Cras eget mi felis. Sed eget elit vestibulum, molestie sem id, convallis est. Aenean eu massa elit. Sed posuere vitae felis ac ullamcorper. Quisque congue faucibus lectus, id fermentum mauris sollicitudin eu. Praesent condimentum tellus a vehicula ultrices. In tincidunt tellus eget arcu malesuada, et iaculis ipsum pharetra. Pellentesque facilisis vestibulum lectus, sit amet lobortis massa pharetra quis. Proin eu ex sollicitudin erat rhoncus tincidunt."]
    
    var imagesHelp = ["ZwiftIcon", "StravaIcon", "CheetahIcon", "SweetIcon"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CombineAppsTableViewCell
        
        //Configure cell
        cell.nameLabel?.text = data[indexPath.row]
        cell.descriptionLabel?.text = subs[indexPath.row]
        cell.thumbnailImageView?.image = UIImage(named: imagesHelp[indexPath.row])
        
        return cell
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
