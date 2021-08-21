//
//  SideMenuController.swift
//  TestProject
//
//  Created by 이승민 on 2021/08/20.
//

import UIKit

class SideMenuController: UIViewController {
    var items = ["게시판1", "게시판2", "게시판3", "게시판4"]

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    // 추가 코드
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "linkSelected" {
            let vc = segue.destination as! MenuController
            vc.titleText = sender as! String
        }
    }
    
}

extension SideMenuController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuItemCell", for: indexPath) as! MenuItemCell
        cell.menuLabel?.text = items[indexPath.row]
        
        return cell
    }
    
}

// 추가 코드
extension SideMenuController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let title = items[indexPath.row]
        performSegue(withIdentifier: "linkSelected", sender: title)
    }
}
