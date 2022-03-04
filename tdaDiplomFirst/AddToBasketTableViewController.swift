//
//  AddToBasketPopUpTableViewController.swift
//  tdaDiplomFirst
//
//  Created by Macbook on 02.02.2022.
//

import UIKit

class AddToBasketPopUpTableViewController: UITableViewController {
    var currentItem = CurrentItemData(data: [:])
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (currentItem?.offers.count)!
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        tableView.frame.origin.y = super.tableView.frame.size.height/2
        tableView.layer.cornerRadius = 5
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "AddToBasketPopUpTableViewCell") as! AddToBasketPopUpTableViewCell
                
        let currentItemOffers = currentItem?.offers[indexPath.row] as! NSDictionary
        let currentItemSize = currentItemOffers["size"] as! String
        cell.itemSizeLabel.text = currentItemSize
        
        let currentItemColor = currentItem?.colorName
        cell.itemColorLabel.text = currentItemColor
        return cell
    }
}
