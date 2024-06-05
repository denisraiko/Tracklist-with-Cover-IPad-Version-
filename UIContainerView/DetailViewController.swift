//
//  DetailViewController.swift
//  UIContainerView
//
//  Created by Denis Raiko on 3.01.24.
//

import UIKit

class DetailViewController: UITableViewController {
    
    let imageNamesArray = ["Michael - Franz Ferdinand",
                           "Archie, Marry Me - Alvvays",
                           "Julia - The Beatles",
                           "Brandy Alexander - Feist",
                           "Visions of Gideon - Sufjan Stevens",
                           "Uma Thurman - Fall Out Boy",
                           "Nancy From Now On - Father John Misty"]

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    // MARK: - Table view data source

  

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return imageNamesArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Title", for: indexPath)
        cell.imageView?.image = UIImage(named: imageNamesArray[indexPath.row])
        cell.textLabel?.text = imageNamesArray[indexPath.row]
        cell.textLabel?.numberOfLines = 0
       

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let viewController = parent as? ViewController {
            viewController.textLabel.text = imageNamesArray[indexPath.row]
            viewController.imageCover.image = UIImage(named: imageNamesArray[indexPath.row])
        }
    }
  

}
