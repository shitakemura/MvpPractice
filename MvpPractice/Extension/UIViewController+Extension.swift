//
//  UIViewController+Extension.swift
//  MvpPractice
//
//  Created by Shintaro Takemura on 2018/04/06.
//  Copyright © 2018年 Shintaro Takemura. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    func addNavigationBackButton() {
        let backButton = UIBarButtonItem(title: "戻る", style: .plain, target: self, action: #selector(didTapBackButton))
        navigationItem.leftBarButtonItem = backButton
    }
    
    @objc func didTapBackButton(sender : UIButton) {
        navigationController?.popViewController(animated: true);
    }
}
