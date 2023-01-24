//
//  CustomizedCellTableViewCell.swift
//  DemoApplication
//
//  Created by mac on 24/01/2023.
//

import UIKit

class CustomizedCellTableViewCell: UITableViewCell {

    @IBOutlet var profileImageView: UIImageView!
    
    @IBOutlet var profileLabel: UILabel!
    
    @IBOutlet var contributorsLabel: UILabel!
    @IBOutlet var starLabel: UILabel!
    @IBOutlet var detailLabel: UILabel!
    
    @IBOutlet var MainImageView: UIImageView!
    @IBOutlet var pythonView: UIView!
    
    @IBOutlet var starLabelContainer: UIView!
    
    @IBOutlet var groupContainer: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        pythonView.layer.cornerRadius = 4;
        groupContainer.layer.cornerRadius = 4;
        starLabelContainer.layer.cornerRadius = 10;
        //groupContainer.backgroundColor = #F8F8F8;
        //view.layer.masksToBounds = true;
        
        profileImageView.image = UIImage(named: "Image");
        starLabelContainer.backgroundColor = UIColorFromHex(rgbValue: 0xF8F8F8, alpha: 1.0)
       // starLabelContainer.backgroundColor = UIColorFromHex(0x323232,alpha: 1);
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func UIColorFromHex(rgbValue:UInt32, alpha:Double=1.0)->UIColor {
        let red = CGFloat((rgbValue & 0xFF0000) >> 16)/256.0
        let green = CGFloat((rgbValue & 0xFF00) >> 8)/256.0
        let blue = CGFloat(rgbValue & 0xFF)/256.0

        return UIColor(red:red, green:green, blue:blue, alpha:CGFloat(alpha))
    }

}
