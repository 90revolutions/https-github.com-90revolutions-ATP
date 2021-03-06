//
//  WalkthroughViewController.swift
//  FoodPin
//
//  Created by Simon Ng on 5/10/2017.
//  Copyright © 2017 AppCoda. All rights reserved.
//

import UIKit

class WalkthroughViewController: UIViewController, WalkthroughPageViewControllerDelegate {
    
    // MARK: - Properties
    
    var walkthroughPageViewController: WalkthroughPageViewController?
    
    // MARK: - Outlets
    
    @IBOutlet var pageControl: UIPageControl!
    @IBOutlet var nextButton: UIButton! {
        didSet {
            nextButton.layer.cornerRadius = 25.0
            nextButton.layer.masksToBounds = true
        }
    }
    @IBOutlet var skipButton: UIButton!
    
    // MARK: - View controller life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination
        if let pageViewController = destination as? WalkthroughPageViewController {
            walkthroughPageViewController = pageViewController
            walkthroughPageViewController?.walkthroughDelegate = self
        }
    }
    
    // MARK: - Action methods
    
    @IBAction func skipButtonTapped(sender: UIButton) {
        UserDefaults.standard.set(true, forKey: "hasViewedWalkthrough")
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func nextButtonTapped(sender: UIButton) {
        
        if let index = walkthroughPageViewController?.currentIndex {
            switch index {
            case 0...2:
                walkthroughPageViewController?.forwardPage()
                
            case 3:
                UserDefaults.standard.set(true, forKey: "hasViewedWalkthrough")
                dismiss(animated: true, completion: nil)
                
            default: break
                
            }
        }
        
        updateUI()
    }
    
    func updateUI() {
        // Update UI buttons
        if let index = walkthroughPageViewController?.currentIndex {
            switch index {
            case 0...2:
                nextButton.setTitle("NEXT", for: .normal)
                skipButton.isHidden = false
            case 3:
                nextButton.setTitle("GET STARTED", for: .normal)
                skipButton.isHidden = true
            default: break
            }
            
            pageControl.currentPage = index
        }
        
    }
    
    // MARK: - WalkthroughPageViewControllerDelegate methods
    
    func didUpdatePageIndex(currentIndex: Int) {
        updateUI()
    }
}
