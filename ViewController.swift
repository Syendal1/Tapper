//
//  ViewController.swift
//  Tapper
//
//  Created by SnehithNitin on 6/9/16.
//  Copyright © 2016 Snehith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var maxTabs=0;
    var currentTabs=0;
    
    @IBOutlet weak var logoImg:UIImageView!
    @IBOutlet weak var tapperLogo: UIImageView!
    @IBOutlet weak var  howManyTabsText:UITextField!
    @IBOutlet weak var  playButton:UIButton!

    
    
    @IBOutlet weak var  tabButton:UIButton!
    @IBOutlet weak var  tabsLabel:UILabel!
    
    @IBAction func playClicked(sender: UIButton) {
        
        if howManyTabsText.text != nil && howManyTabsText.text != ""{
        
            maxTabs=Int(howManyTabsText.text!)!;
            currentTabs=0;
            
            tapperLogo.hidden=true;
            howManyTabsText.hidden=true;
            playButton.hidden=true;
        
            tabButton.hidden=false;
            tabsLabel.hidden=false;
            
            updateTabs();
        }
    }
    
    @IBAction func TabClicked(sender: UIButton) {
        currentTabs += 1;
        updateTabs();
        
        if currentTabs == maxTabs{
            tapperLogo.hidden=false;
            howManyTabsText.hidden=false;
            playButton.hidden=false;
            
            tabButton.hidden=true;
            tabsLabel.hidden=true;
        }
    }
    
    func updateTabs(){
        tabsLabel.text="\(currentTabs) Tabs"
    }
    
    
    
}


