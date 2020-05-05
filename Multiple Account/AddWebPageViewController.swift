//
//  AddWebPageViewController.swift
//  Multiple Account
//
//  Created by Barış Güngör on 5.05.2020.
//  Copyright © 2020 Barış Güngör. All rights reserved.
//

import UIKit
import RealmSwift

class AddWebPageViewController: UIViewController {
    
    @IBOutlet weak var addWebPageCollectionView: UICollectionView!
    var webSiteCellId = "AddWebPageCollectionViewCell"
    var webSiteArray : [WebSiteModel]!
    var realm : Realm!
    override func viewDidLoad() {
        super.viewDidLoad()
        realm = try! Realm()
        self.addWebPageCollectionView.delegate = self
        self.addWebPageCollectionView.dataSource = self
        self.addWebPageCollectionView.allowsMultipleSelection = false
        self.addWebPageCollectionView.register(UINib.init(nibName: "AddWebPageCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: webSiteCellId)
        loadWebPages()
    }
    

    func loadWebPages(){
        
        webSiteArray = WebSiteModel.shared
        
        
    }

    @IBAction func doneAction(_ sender: Any) {
        
        if let collectionView = self.addWebPageCollectionView{
            
            guard let indexPath = collectionView.indexPathsForSelectedItems?.first else{return}
            let cell = collectionView.cellForItem(at: indexPath) as! AddWebPageCollectionViewCell
            print(cell.nameTextLabel.text!)
            let savedWebSite = SavedWebSiteModel()
            guard let id =  cell.webSite?.id else {return}
            savedWebSite.siteId = id
            do{
                try self.realm.write{
                    
                    self.realm.add(savedWebSite)
                    
                }
            }catch{
                 print("Realm Delete Error: \(error)")
            }
            
        }
        
//        dismiss(animated: true, completion: nil)
    }
}
extension AddWebPageViewController :  UICollectionViewDataSource, UICollectionViewDelegate{
func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return webSiteArray.count
}

func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: self.webSiteCellId, for: indexPath) as! AddWebPageCollectionViewCell
    cell.webSite = webSiteArray[indexPath.row]
    
    return cell
    
}
    

    
}
