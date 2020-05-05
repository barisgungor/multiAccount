//
//  AddWebPageCollectionViewCell.swift
//  Multiple Account
//
//  Created by Barış Güngör on 5.05.2020.
//  Copyright © 2020 Barış Güngör. All rights reserved.
//  #346ADB

import UIKit

class AddWebPageCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameTextLabel: UILabel!
    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var tikIcon: UIImageView!
    
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
        
        guard let image = webSite?.image else{return}
        guard let name = webSite?.name else{return}
        imageView.image = image
        nameTextLabel.text = name
    }
    
     override var isSelected: Bool {
        didSet{
            if self.isSelected {
                
                tikIcon.image = UIImage(named: "tik_icon_clicked")
            }
            else {
                 
                tikIcon.image = UIImage(named: "tik_icon")
                
            }
        }
    }
    
    
    
}
