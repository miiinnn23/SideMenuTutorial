//
//  MenuItemCell.swift
//  TestProject
//
//  Created by 이승민 on 2021/08/20.
//

import UIKit

class MenuItemCell: UITableViewCell {

    @IBOutlet weak var menuLabel: UILabel!
    @IBOutlet weak var starButton: UIButton!
    var click = false
    
    @IBAction func isClicked(_ sender: UIButton) {
        click = !click
        if(click) {
            starButton.setImage(UIImage(systemName: "star.fill"), for: .normal)
        } else {
            starButton.setImage(UIImage(systemName: "star"), for: .normal)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
