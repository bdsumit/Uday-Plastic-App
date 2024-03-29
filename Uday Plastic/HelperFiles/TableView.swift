//
//  TableView.swift
//  Alecom
//
//  Created by bd01 on 10/09/22.
//

import Foundation
import UIKit
extension UITableView {

    func setEmptyMessage(_ message: String) {
        let messageLabel = UILabel(frame: CGRect(x: 0, y: 0, width: self.bounds.size.width, height: self.bounds.size.height))
        messageLabel.text = message
        if traitCollection.userInterfaceStyle == .light{
             messageLabel.textColor = .black
           }else{
             messageLabel.textColor = .white
           }
        messageLabel.numberOfLines = 0
        messageLabel.textAlignment = .center
    //    messageLabel.font = MyTheme.myFontMedium(15)
        messageLabel.sizeToFit()
        self.backgroundView = messageLabel
        self.separatorStyle = .none
    }
    func setEmptyMessageWhite(_ message: String) {
        let messageLabel = UILabel(frame: CGRect(x: 0, y: 0, width: self.bounds.size.width, height: self.bounds.size.height))
        messageLabel.text = message
        messageLabel.textColor = .white
        messageLabel.numberOfLines = 0
        messageLabel.textAlignment = .center
  //      messageLabel.font = MyTheme.myFontMedium(15)
        messageLabel.sizeToFit()
        self.backgroundView = messageLabel
        self.separatorStyle = .none
    }
    func restore() {
        self.backgroundView = nil
        self.separatorStyle = .singleLine
    }
}
