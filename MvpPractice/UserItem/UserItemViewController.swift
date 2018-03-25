
import UIKit

protocol UserItemView: class {
    func reloadData()
    func show(userItem: UserItem)
}

final class UserItemViewController: UIViewController, UserItemView {

    @IBOutlet weak var tableView: UITableView!
    
    private var presenter: UserItemViewPresenter!
    private var dataSource: UserItemViewDataSource!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = UserItemViewPresenter(view: self)
        dataSource = UserItemViewDataSource(presenter: presenter)
        title = presenter.title
        dataSource.setup(with: tableView)
    }
}

extension UserItemViewController {
    func reloadData() {
        tableView.reloadData()
    }
    func show(userItem: UserItem) {
        let itemDetailViewController = ItemDetailViewController(userItem: userItem)
        navigationController?.pushViewController(itemDetailViewController, animated: true)
    }
}
