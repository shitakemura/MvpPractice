
import UIKit

protocol TopView: class {
    func showUserItem()
}

final class TopViewController: UIViewController, TopView {

    @IBOutlet weak var startButton: UIButton!
    private var presenter: TopPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = TopViewPresenter(view: self)
        title = presenter.title
        setupStartButton()
    }
}

extension TopViewController {
    func setupStartButton() {
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
