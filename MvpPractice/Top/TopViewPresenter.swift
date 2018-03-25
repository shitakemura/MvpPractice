//
//  TopViewPresenter.swift
//  MvpPractice
//
//  Created by Shintaro Takemura on 2018/03/25.
//  Copyright © 2018年 Shintaro Takemura. All rights reserved.
//

import Foundation

protocol TopPresenter: class {
    weak var view: TopView? { get set }
    func showUserItem()
    var title: String { get }
}

final class TopViewPresenter: TopPresenter {
    weak var view: TopView?
    var title: String {
        return "Top"
    }
    func showUserItem() {
        view?.showUserItem()
    }
}
