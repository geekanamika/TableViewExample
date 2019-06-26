//
//  MyTableViewCell.swift
//  Hello-world-ios
//
//  Created by Anamika on 26/06/19.
//  Copyright © 2019 Anamika. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    let dpView = UIImageView()
    let resNameLabelView = UILabel()
    let detailLabelView = UILabel()
    let disLabelView = UILabel()
    let offerLabelView = UILabel()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style,reuseIdentifier: reuseIdentifier)
        creteTableCellViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func creteTableCellViews() {
        let paddingConstant : CGFloat = 8
        let smallPaddingConstant : CGFloat = 4
        // add subViews
        contentView.addSubview(dpView)
        contentView.addSubview(resNameLabelView)
        contentView.addSubview(detailLabelView)
        contentView.addSubview(disLabelView)
        contentView.addSubview(offerLabelView)
        
        // set font - size , colors
        resNameLabelView.font = resNameLabelView.font.withSize(18)
        detailLabelView.font = detailLabelView.font.withSize(15)
        offerLabelView.font = offerLabelView.font.withSize(12)
        disLabelView.font = disLabelView.font.withSize(10)
        resNameLabelView.textColor = UIColor.black
        offerLabelView.textColor = UIColor.gray
        disLabelView.textColor = UIColor.lightGray
        detailLabelView.textColor = UIColor.gray
        
        dpView.layer.cornerRadius = 2
        // dpView.layer.borderColor = UIColor.black.cgColor
        dpView.set(
                .top(contentView, paddingConstant),
                .leading(contentView, paddingConstant),
                .height(80),
                .width(80),
                .bottom(contentView, paddingConstant)
        )
        
        resNameLabelView.set(
            .top(dpView),
            .after(dpView, paddingConstant),
            .trailing(contentView, paddingConstant)
        )
        
        detailLabelView.set(
            .below(resNameLabelView, smallPaddingConstant),
            .after(dpView, paddingConstant),
            .trailing(contentView, paddingConstant)
        )
        
        disLabelView.set(
            .below(detailLabelView, smallPaddingConstant),
            .after(dpView, paddingConstant),
            .trailing(contentView, paddingConstant)
        )
        
        offerLabelView.set(
            .below(disLabelView, smallPaddingConstant),
            .after(dpView, paddingConstant),
            .trailing(contentView, paddingConstant)
        )
        
        // hardcode to check if it's working or not
        resNameLabelView.text = "res name"
        detailLabelView.text = "res details"
        offerLabelView.text = "offers"
        disLabelView.text = "distance from your place"
        dpView.backgroundColor = .red
    }
    
    public func setData(titleText : String, subTitleText : String, distance: String, offer : String,  image: UIImage) {
    dpView.image = image
    resNameLabelView.text = titleText
    detailLabelView.text = subTitleText
    disLabelView.text = distance
    offerLabelView.text = offer
}

}
