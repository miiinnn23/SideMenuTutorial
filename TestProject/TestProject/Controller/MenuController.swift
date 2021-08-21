//
//  MenuController.swift
//  TestProject
//
//  Created by 이승민 on 2021/08/21.
//

import UIKit

class MenuController: UIViewController {
    var titleText: String? = nil
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = titleText
    }
}
