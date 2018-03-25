//
//  TopViewController.swift
//  MvpPractice
//
//  Created by Shintaro Takemura on 2018/03/24.
//  Copyright © 2018年 Shintaro Takemura. All rights reserved.
//

import UIKit

protocol TopView: class {
    func showUserItem()
}

final class TopViewController: UIViewController, TopView {

    @IBOutlet weak var startButton: UIButton!
    
    private let presenter: TopPresenter
    
    init() {
        presenter = TopViewPresenter()
        super.init(nibName: TopViewController.className, bundle: nil)
        presenter.view = self
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension TopViewController {
    func setupUI() {
        title = presenter.title
        startButton.addTarget(self, action: #selector(didTapStartButton), for: .touchUpInside)
    }
    
    @objc func didTapStartButton(sender: UIButton) {
        presenter.showUserItem()
    }
    
    func showUserItem() {
        let userItemViewController = UserItemViewController()
        navigationController?.pushViewController(userItemViewController, animated: true)
    }
}
