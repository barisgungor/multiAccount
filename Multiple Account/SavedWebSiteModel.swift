//
//  SavedWebSiteModel.swift
//  Multiple Account
//
//  Created by Barış Güngör on 3.05.2020.
//  Copyright © 2020 Barış Güngör. All rights reserved.
//

import RealmSwift
import Foundation

class SavedWebSiteModel: Object {
    
    @objc dynamic var title : String?
    @objc dynamic var userName : String?
    @objc dynamic var password : String?
    @objc dynamic var siteId : Int = -1
    @objc dynamic var cookies : Data?
    
    
}
