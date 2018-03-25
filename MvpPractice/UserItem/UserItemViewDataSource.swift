
import Foundation
import UIKit

final class UserItemViewDataSource: NSObject {
    fileprivate let presenter: UserItemPresenter
    
    init(presenter: UserItemPresenter) {
        self.presenter = presenter
    }
    
    func setup(with tableView: UITableView) {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UserItemTableViewCell.self, forCellReuseIdentifier: UserItemTableViewCell.className)
    }
}

extension UserItemViewDataSource: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.numberOfItems
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: UserItemTableViewCell.className, for: indexPath) as? UserItemTableViewCell else { return UITableViewCell() }
        let userItem = presenter.userItem(at: indexPath.row)
        cell.setup(with: userItem)
        return cell
    }
}

extension UserItemViewDataSource: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
