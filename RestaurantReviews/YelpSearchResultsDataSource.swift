//
//  YelpSearchResultsDataSource.swift
//  RestaurantReviews
//

import Foundation

import Foundation
import UIKit

class YelpSearchResultsDataSource: NSObject, UITableViewDataSource {
    
    private var data = [YelpBusiness]()
    
    override init() {
        super.init()
    }
    
    // MARK: Data Source
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchResultCell", for: indexPath)
        
        let business = object(at: indexPath)
    
        
        cell.textLabel?.text = business.name+"   " + business.price + "   " + String(format: "%.1f",business.rating)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0: return "Restaurants"
        default: return nil
        }
    }
    
    // MARK: Helpers
    
    func object(at indexPath: IndexPath) -> YelpBusiness {
        return data[indexPath.row]
    }
    
    func update(with data: [YelpBusiness]) {
        self.data = data
    }
    
    func update(_ object: YelpBusiness, at indexPath: IndexPath) {
        data[indexPath.row] = object
    }
    
}
