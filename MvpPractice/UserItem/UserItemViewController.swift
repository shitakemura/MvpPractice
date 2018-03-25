
import UIKit

protocol UserItemView: class {
    func reloadData()
}

final class UserItemViewController: UIViewController, UserItemView {

    @IBOutlet weak var tableView: UITableView!
    
    private lazy var presenter: UserItemViewPresenter = UserItemViewPresenter(view: self)
    private lazy var dataSource = UserItemViewDataSource(presenter: self.presenter)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension UserItemViewController {
    func setupUI() {
        title = presenter.title
        dataSource.setup(with: tableView)
    }
    
    func reloadData() {
        tableView.reloadData()
    }
}
