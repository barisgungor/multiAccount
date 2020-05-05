//
//  ViewController.swift
//  Multiple Account
//
//  Created by Barış Güngör on 3.05.2020.
//  Copyright © 2020 Barış Güngör. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var webSiteCollectionView: UICollectionView!
    var webSiteCellId = "HomePageCollectionViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.webSiteCollectionView.delegate = self
        self.webSiteCollectionView.dataSource = self
        self.webSiteCollectionView.register(UINib.init(nibName: "HomePageCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: webSiteCellId)
        
        
    }
    
    func loadSavedWebPages(){
        
        
        
    }


}

extension HomeViewController :  UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: self.webSiteCellId, for: indexPath) as! HomePageCollectionViewCell
        
        
        return cell
        
    }
    
    
    
    
    
}
