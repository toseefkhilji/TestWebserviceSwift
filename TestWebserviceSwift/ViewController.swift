//
//  ViewController.swift
//  TestWebserviceSwift
//
//  Created by Toseefhusen Khilji on 05/01/17.
//  Copyright © 2017 Toseef Khilji. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    
    var arrayResults = [Result]()
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Alamofire.request("https://itunes.apple.com/search?term=Hello&entity=movie").responseJSON { (responseData) -> Void in
            if((responseData.result.value) != nil) {
                let swiftyJsonVar = JSON(responseData.result.value!)
                
                self.arrayResults =  swiftyJsonVar["results"].arrayValue.map({ return Result.init(fromJSON: $0)})
                print(self.arrayResults)
                
                self.tableview.reloadData()

//                print(swiftyJsonVar)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


// MARK: - UITableView DataSource extension
extension ViewController : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
            return self.arrayResults.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellId = "cellId"
        let  cell : ResultTableViewCell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! ResultTableViewCell
        
        // Get Student Entity from respective array
        //        let stud = resultSearchController.isActive ? filteredTableData[indexPath.row] : self.arrayStudents[indexPath.row]
        
        let result : Result = self.arrayResults[indexPath.row] as! Result
        
        cell.lbltitle.text = result.trackName
         cell.lblArtist.text = result.artistName
         cell.lblDetail.text = result.shortDescription
         cell.lblPrice.text = String(result.collectionPrice)
        
        return cell
    }
    
}
