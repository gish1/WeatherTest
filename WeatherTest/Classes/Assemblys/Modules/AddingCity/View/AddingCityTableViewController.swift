//
//  AddingCityViewController.swift
//  WeatherTest
//
//  Created by Пк on 30.10.2020
//  
//

import UIKit

class AddingCityTableViewController: UITableViewController, AddingCityViewInput {
    
    var output: AddingCityViewOutput!
    private var filteredArr = [String]()
    private var namesArr = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewDidLoad()
        configureNavigationBar()
        setupController()
    }
    
    private func configureNavigationBar() {
        let cancelButton = UIBarButtonItem(image: #imageLiteral(resourceName: "backButton"), style: .plain, target: self, action: #selector(cancelButtonAction(_:)))
        navigationItem.leftBarButtonItem = cancelButton
        
        let searchBar = UISearchBar()
        searchBar.placeholder = "Введите название города (Eng)"
        self.navigationItem.titleView = searchBar
        searchBar.delegate = self
    }
    
    private func setupController() {
        tableView.tableFooterView = UIView()
    }
}

// MARK:  Configure
extension AddingCityTableViewController: UISearchBarDelegate {
    
// MARK: - Search Bar Delegate
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filteredArr = output.searchFilter(text: searchBar.text ?? "")
        tableView.reloadData()
    }
    
// MARK: - Table View Data Source
        
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredArr.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "Cell"
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier)

        if cell == nil{
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: identifier)
        }
        
        cell?.textLabel?.text = filteredArr[indexPath.row]

        return cell!
    }
    
    
// MARK: - Table View Delegate

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        namesArr.append(filteredArr[indexPath.row])
        output.cancel(namesCity: namesArr)
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

// MARK: View Input
extension AddingCityTableViewController {
    func set(title: String) {
        //self.title = title
    }
    
    func set(names: [String]) {
        self.namesArr = names
    }
}

// MARK: Button Action
extension AddingCityTableViewController {
    @objc private func cancelButtonAction(_ sender: UIButton) {
        output.cancel()
    }
}
