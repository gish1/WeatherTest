//
//  InformationViewController.swift
//  WeatherTest
//
//  Created by Пк on 30.10.2020
//  
//

import UIKit

class InformationViewController: UIViewController, InformationViewInput {
    var output: InformationViewOutput!
    
    @IBOutlet weak private var cityNameLabel: UILabel!
    @IBOutlet weak private var tempCityLabel: UILabel!
    @IBOutlet weak private var conditionLabel: UILabel!
    @IBOutlet weak private var tableView: UITableView!
    
    private var weatherModel : WeatherViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewDidLoad()
        configureNavigationBar()
        setupController()
    }
    
    private func setupController() {
        tableView.dataSource = self
        cityNameLabel.text = weatherModel.cityName
        tempCityLabel.text = "\(weatherModel.temp)°C"
        conditionLabel.text = weatherModel.condition
    }
    
    private func configureNavigationBar() {
        let cancelButton = UIBarButtonItem(image: #imageLiteral(resourceName: "backButton"), style: .plain, target: self, action: #selector(cancelButtonAction(_:)))
        navigationItem.leftBarButtonItem = cancelButton
    }
}

// MARK:  Configure
extension InformationViewController: UITableViewDataSource {
    
// MARK: - Table View Data Source
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weatherModel.list?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "Cell"
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier)

        if cell == nil{
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: identifier)
        }
        
        if let model = weatherModel {
            cell?.textLabel?.text = "\(model.list![indexPath.row].temp)°"
            cell?.detailTextLabel?.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
            cell?.detailTextLabel?.text = model.list![indexPath.row].dtTxt
        }

        return cell!
    }
}

// MARK: View Input
extension InformationViewController {
    func set(title: String) {
        self.title = title
    }
    
    func set(model: WeatherViewModel) {
        weatherModel = model
    }
}

// MARK: Button Action
extension InformationViewController {
    @objc private func cancelButtonAction(_ sender: Any?){
        output.cancel()
    }
}
