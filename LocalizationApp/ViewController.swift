//
//  ViewController.swift
//  LocalizationApp
//
//  Created by Swaminath on 11/29/18.
//  Copyright © 2018 msr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl_CurrentLanguage: UILabel!
    @IBOutlet weak var lbl_LangName: UILabel!
    
    @IBOutlet weak var btn_ChangeLang: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbl_CurrentLanguage.text = LocalizationSystem.sharedInstance.localizedStringForKey(key: "Headertext", comment: "")
        lbl_LangName.text = LocalizationSystem.sharedInstance.getLanguage()
        btn_ChangeLang.setTitle(LocalizationSystem.sharedInstance.localizedStringForKey(key: "ChangeLanguage", comment: ""), for: .normal)
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func changeLanguage(_ sender: Any) {
        if LocalizationSystem.sharedInstance.getLanguage() == "ar"
        {
            LocalizationSystem.sharedInstance.setLanguage(languageCode: "en")
            UIView.appearance().semanticContentAttribute = .forceLeftToRight
        }
        else
        {
            LocalizationSystem.sharedInstance.setLanguage(languageCode: "ar")
            UIView.appearance().semanticContentAttribute = .forceRightToLeft
        }
        viewDidLoad()
    }

}

