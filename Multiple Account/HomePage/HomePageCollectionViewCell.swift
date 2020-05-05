//
//  HomePageCollectionViewCell.swift
//  Multiple Account
//
//  Created by Barış Güngör on 3.05.2020.
//  Copyright © 2020 Barış Güngör. All rights reserved.
//

import UIKit

protocol HomePageCollectionViewCellDelegate {
    func clickWebSite(with website: WebSiteModel)
}

class HomePageCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameTextLabel: UILabel!
    @IBOutlet weak var cellView: UIView!
    var delegate : HomePageCollectionViewCellDelegate?
    var webSite : WebSiteModel?{
        didSet{
            setupView()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupView(){
        
        let tabGesture = UITapGestureRecognizer(target: self, action: #selector(touchUpInside))
        cellView.addGestureRecognizer(tabGesture)
        cellView.isUserInteractionEnabled = true
        
        guard let image = webSite?.image else{return}
        guard let name = webSite?.name else{return}
        
        imageView.image = image
        nameTextLabel.text = name
        
        }
        
    @objc func touchUpInside(){
        
        if let webSite = webSite{
            self.delegate?.clickWebSite(with: webSite)
        }
        
    }
}


