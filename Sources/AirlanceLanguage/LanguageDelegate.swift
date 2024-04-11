//
//  LanguageDelegate.swift
//
//

import UIKit

public protocol LanguageDelegate: AnyObject {
    func didSelectRow(cell: LanguageViewCell, indexPath: IndexPath)
}

public class LanguageViewDelegate: LanguageViewModel, UITableViewDelegate {
    
    weak open var delegate: LanguageDelegate?
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let cell = tableView.cellForRow(at: indexPath) as? LanguageViewCell else { return }
        LanguageProvider.shared.currentLanguage = languages[indexPath.row].id
        delegate?.didSelectRow(cell: cell, indexPath: indexPath)
    }
    
    public func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.layer.cornerRadius = 8
        cell.layer.masksToBounds = true
        
        if indexPath.row == 0 {
            cell.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        } else if indexPath.row == languages.count - 1 {
            cell.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        } else {
            cell.layer.maskedCorners = []
        }
    }
}
