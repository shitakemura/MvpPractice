
import UIKit

protocol UserItemView: class {
    func reloadData()
}

final class UserItemViewController: UIViewController, UserItemView {

    @IBOutlet weak var tableView: UITableView!
    
    private lazy var userItemPresenter: UserItemViewPresenter = UserItemViewPresenter(view: self)
    private lazy var dataSource = UserItemViewDataSource(presenter: userItemPresenter)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "User Item"
        dataSource.setup(with: tableView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func reloadData() {
        tableView.reloadData()
    }
}
