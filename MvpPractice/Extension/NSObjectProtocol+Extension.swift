//
//  NSObjectProtocol+Extension.swift
//  MvpPractice
//
//  Created by Shintaro Takemura on 2018/03/24.
//  Copyright © 2018年 Shintaro Takemura. All rights reserved.
//

import Foundation

import Foundation

extension NSObjectProtocol {
    static var className: String {
        return String(describing: self)
    }
}
