//
//  ResModel.swift
//  Hello-world-ios
//
//  Created by Anamika on 26/06/19.
//  Copyright © 2019 Anamika. All rights reserved.
//

import Foundation

public struct ResModel{
    // Properties
    var restaurantName: String
    var resDetail: String
    var disDetail: String
    var offerDetail: String
    var resImage : String
    
    // constructor
    init(restaurantname: String, detail: String, dis: String, offer: String, img : String) {
        self.restaurantName = restaurantname
        self.resDetail = detail
        self.disDetail = dis
        self.offerDetail = offer
        self.resImage = img
    }
    
    
    
    
}
