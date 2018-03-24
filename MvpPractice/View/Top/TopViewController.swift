//
//  TopViewController.swift
//  MvpPractice
//
//  Created by Shintaro Takemura on 2018/03/24.
//  Copyright © 2018年 Shintaro Takemura. All rights reserved.
//

import UIKit

final class TopViewController: UIViewController {

    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

private extension TopViewController {
    func setupUI() {
        title = "Top"
        startButton.addTarget(self, action: #selector(didTapStartButton), for: .touchUpInside)
    }
}

private extension TopViewController {
    @objc func didTapStartButton(sender: UIButton) {
        let userItemViewController = UserItemViewController()
        navigationController?.pushViewController(userItemViewController, animated: true)
    }
}
