//
//  ViewController.swift
//  Hello-world-ios
//
//  Created by Anamika on 26/06/19.
//  Copyright © 2019 Anamika. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{
    
    let myTableView = UITableView(frame: .zero)
    private let cellReuseId = "cell-reuse-id"
    
    // var zomoLogo = UIImage(named: "logo")
    
    var dataArray = [ResModel]()
    
   func createDataArray() {
        
        for i in 1...20 {
            
            if i % 2 == 0 {
                dataArray.append( ResModel(restaurantname: "Wow momos", detail: "Momos, Noodles, Rolls",
                                           dis: "1.5 kms, Sector 21", offer: "Rs 150 for two", img : "wowlogo.png" ) )
            
            } else {
                dataArray.append( ResModel(restaurantname: "McD", detail: "Burger, McPuff, Coke, McFlurry",
                                           dis: "0.11 kms, Sector 43", offer: "Rs 200 for two" , img : "mcdlogo.png" ) )
            
            }
        }
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseId, for: indexPath) as! MyTableViewCell
        let logo = UIImage(named: dataArray[indexPath.row].resImage )
        
        cell.setData(titleText: dataArray[indexPath.row].restaurantName,
                     subTitleText: dataArray[indexPath.row].resDetail,
                     distance: dataArray[indexPath.row].disDetail,
                     offer: dataArray[indexPath.row].offerDetail,
                     image : logo! )
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        createDataArray()
        createTableView()
        myTableView.register(MyTableViewCell.self, forCellReuseIdentifier: cellReuseId)
        
    }
    
    fileprivate func createTableView() {
        view.addSubview(myTableView)
        myTableView.set(.fillSuperView(view))
        
        myTableView.dataSource = self
        myTableView.delegate = self
        
        
    }
    
    fileprivate func firstRow() {
        
        let paddingConstant : CGFloat = 8
        let heightConstant : CGFloat = 140
        
        let redView = UIView() , greenView = UIView(), blueView = UIView(), yellowView = UIView()
        let blackView = UIView()
        
        view.addSubview(redView)
        view.addSubview(greenView)
        view.addSubview(blueView)
        view.addSubview(yellowView)
        view.addSubview(blackView)
        
        
        redView.backgroundColor = .red
        redView.set(.top(view, 5*paddingConstant),
                    .leading(view, paddingConstant),
                    .width(100),
                    .height(140)
                    )
        
        greenView.backgroundColor = .green
        greenView.set(.top(redView),
                      .after(redView, paddingConstant),
                      .trailing(view, paddingConstant),
                      .height(heightConstant)
                      )
        
        blueView.backgroundColor = .blue
        blueView.set( .below(greenView, paddingConstant),
                      .trailing(view, paddingConstant),
                        .height(heightConstant),
                        .width(100)
                      )
        
        yellowView.backgroundColor = .yellow
        yellowView.set(.top(blueView),
                        .height(heightConstant),
                        .before(blueView, paddingConstant),
                        .leading(view, paddingConstant)
        )
        
        blackView.backgroundColor = .black
        blackView.set( .below(blueView, paddingConstant),
                        .trailing(view, paddingConstant),
                        .leading(view, paddingConstant),
                        .bottom(view, paddingConstant)
            
        )
    }
    
    
    
/**
     study structs and populate the list according to that
     populate images too
 */
    
    

}

