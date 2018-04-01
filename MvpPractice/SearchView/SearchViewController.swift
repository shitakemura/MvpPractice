
import UIKit

protocol SearchView: class {
    func showUserItem()
}

final class SearchViewController: UIViewController, SearchView {

    @IBOutlet weak var startButton: UIButton!
    private var presenter: SearchPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = SearchViewPresenter(view: self)
        title = presenter.title
        setupStartButton()        
    }
}

extension SearchViewController {
    func setupStartButton() {
        startButton.addTarget(self, action: #selector(didTapStartButton), for: .touchUpInside)
    }
    
    @objc func didTapStartButton(sender: UIButton) {
        presenter.showUserItem()
    }
    
    func showUserItem() {
        let userItemViewController = SearchResultViewController()
        navigationController?.pushViewController(userItemViewController, animated: true)
    }
}
