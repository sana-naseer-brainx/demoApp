//
//  ViewController.swift
//  DemoApplication
//
//  Created by mac on 19/01/2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
//
//    var images1 = []
//    var images2 = ["Red"]
//
    @IBOutlet var tableView: UITableView!

    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
    
        
    }
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        //tableView.rowHeight = 360
      
    }


}

