//
//  MainViewController.swift
//  WeatherTest
//
//  Created by Пк on 30.10.2020
//  
//

import UIKit

class MainViewController: UITableViewController, MainViewInput {

    var output: MainViewOutput!
    private var weatherModels = [WeatherViewModel]()
    private var namesArr = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewDidLoad()
        configureNavigationBar()
        setupController()
    }
    
    private func configureNavigationBar() {
        let searchButton = UIBarButtonItem(image: UIImage(systemName: "magnifyingglass"), style: .plain, target: self, action: #selector(searchButtonAction(_:)))
        searchButton.tintColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
        navigationItem.rightBarButtonItem = searchButton
    }
    
    private func setupController() {
        tableView.rowHeight = 90
        tableView.tableFooterView = UIView()
    }
}

// MARK:  Configure
extension MainViewController {
    
// MARK: - Table View Data Source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weatherModels.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "Cell"
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier)

        if cell == nil{
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: identifier)
        }
        
        let model = weatherModels[indexPath.row]
        cell?.textLabel?.text = model.cityName
        cell?.detailTextLabel?.text = "\(model.temp)°C"

        return cell!
    }
    
    
// MARK: - Table View Delegate

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let model = weatherModels[indexPath.row]
        output.handleInformationTap(model: model)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        weatherModels.remove(at: indexPath.row)
        namesArr.remove(at: indexPath.row)
        tableView.deleteRows(at: [indexPath], with: .automatic)
    }
}

// MARK: View Input
extension MainViewController {
    func set(title: String) {
        self.title = title
    }
    
    func set(namesCity: [String]) {
        namesArr = namesCity
        for name in namesCity {
            output.viewLoadInformation(nameCity: name)
        }
    }
    
    func set(model: WeatherViewModel) {
        weatherModels.append(model)
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
}

// MARK: Button Action
extension MainViewController {
    @objc private func searchButtonAction(_ sender: UIButton) {
        output.handleAddCityTap(names: namesArr)
    }
}
