
import UIKit

protocol SearchResultView: class {
    func reloadData()
    func show(userItem: UserItem)
}

final class SearchResultViewController: UIViewController, SearchResultView {

    @IBOutlet weak var tableView: UITableView!
    
    private var presenter: SearchResultViewPresenter!
    private var dataSource: SearchResultTableViewDataSource!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = SearchResultViewPresenter(view: self)
        dataSource = SearchResultTableViewDataSource(presenter: presenter)
        title = presenter.title
        dataSource.setup(with: tableView)
        setupNavigation()
    }
}

extension SearchResultViewController {
    func setupNavigation() {
        addNavigationBackButton()
    }
}

extension SearchResultViewController {
    func reloadData() {
        tableView.reloadData()
    }
    func show(userItem: UserItem) {
        let itemDetailViewController = ResultDetailViewController(userItem: userItem)
        navigationController?.pushViewController(itemDetailViewController, animated: true)
    }
}

