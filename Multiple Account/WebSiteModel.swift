//
//  WebSiteModel.swift
//  Multiple Account
//
//  Created by Barış Güngör on 3.05.2020.
//  Copyright © 2020 Barış Güngör. All rights reserved.
//


import UIKit


class WebSiteModel {
    
    var id : Int?
    var name: String?
    var url: String?
    var image: UIImage?
    var idKey: String? //email, ID, number
    var passKey: String?
   static var shared : [WebSiteModel] = WebSiteModel().setWebSites()
    
func setWebSites() -> [WebSiteModel] {
    let facebook = WebSiteModel()
    let twitter = WebSiteModel()
    let gmail = WebSiteModel()
    let papara = WebSiteModel()
    let whatsapp = WebSiteModel()
    var webSites = [WebSiteModel]()
           
           facebook.id = 1
           facebook.name = "Facebook"
           facebook.url = "www.facebook.com"
           facebook.image = UIImage(named: "f_logo")
           facebook.idKey = "m_login_email"
           facebook.passKey = "m_login_password"
           webSites.append(facebook)
            
           twitter.id = 2
           twitter.name = "Twitter"
           twitter.url = "www.twitter.com"
           twitter.image = UIImage(named: "twitter")
           twitter.idKey = "m_login_email"
           twitter.passKey = "m_login_password"
           webSites.append(twitter)
    
    
           gmail.id = 3
           gmail.name = "Gmail"
           gmail.url = "www.gmail.com"
           gmail.image = UIImage(named: "gmail")
           gmail.idKey = "m_login_email"
           gmail.passKey = "m_login_password"
           webSites.append(gmail)
            
           papara.id = 5
           papara.name = "Papara"
           papara.url = "www.papara.com"
           papara.image = UIImage(named: "papara")
           papara.idKey = "m_login_email"
           papara.passKey = "m_login_password"
           webSites.append(papara)
    
           whatsapp.id = 6
           whatsapp.name = "Whatsapp"
           whatsapp.url = "https://web.whatsapp.com/"
           whatsapp.image = UIImage(named: "whatsapp")
           whatsapp.idKey = "m_login_email"
           whatsapp.passKey = "m_login_password"
           webSites.append(whatsapp)
    
           
           return webSites
}
    
}



