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
    let titleLabelView = UILabel()
    let subTitleView = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style,reuseIdentifier: reuseIdentifier)
        creteTableCellViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func creteTableCellViews() {
        let paddingConstant : CGFloat = 8
        // add subViews
        contentView.addSubview(dpView)
        contentView.addSubview(titleLabelView)
        contentView.addSubview(subTitleView)
        
        dpView.layer.cornerRadius = 25
        dpView.layer.borderWidth = 1
         dpView.layer.borderColor = UIColor.black.cgColor
        dpView.set(
                .top(contentView, paddingConstant),
                .leading(contentView, paddingConstant),
                .height(50),
                .width(50),
                .bottom(contentView, paddingConstant)
        )
        
        titleLabelView.set(
            .top(dpView),
            .after(dpView, paddingConstant),
            .trailing(contentView, paddingConstant)
        )
        
        subTitleView.set(
            .below(titleLabelView, paddingConstant),
            .after(dpView, paddingConstant),
            .trailing(contentView, paddingConstant)
        )
        
        titleLabelView.text = "Title"
        subTitleView.text = "SubTitle"
        dpView.backgroundColor = .red
    }
    
    public func setData(titleText : String, subTitleText : String, image: UIImage) {
    dpView.image = image
    titleLabelView.text = titleText
    subTitleView.text = subTitleText
}

}
