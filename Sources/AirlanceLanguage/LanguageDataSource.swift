//
//  LanguageDataSource.swift
//
//

import UIKit
import Airlance

class LanguageDataSource: LanguageViewModel, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return languages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "LanguageViewCell", for: indexPath) as? LanguageViewCell else {
            return UITableViewCell()
        }
        
        cell.configure(language: languages[indexPath.row])
        cell.selectionStyle = .none
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return LanguageProvider.shared.localizedString(forKey: sectioTitle)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
}
