//
//  AutoPartsStore.swift
//  HW2
//
//  Created by Jarae on 28/12/22.
//

import Foundation
class AutoPartsStore: Shop{
    var array: [Product] = [Product]()
    var profit: Int
    
    init(shopName: String, area: Int, geo: String, chr: String, profit: Int){
        self.profit = profit
        super.init(shopName: shopName, area: area, geo: geo, chr: chr)
    }
    override func showInfo() {
        print("название Магазина - \(shopName), площадь - \(area), локация - \(geo) работает до - \(chr) прибыль \(profit)")
        for i in array {
            print("название товара -\(i.name), кол-во \(i.amount) цена - \(i.price)")
        }
    }
    override func addProduct(_ add: Product) {
        var flag = true
        for item in array{
            if add.name == item.name && add.price == item.price && add.amount == item.amount{
                flag = false
                item.amount += add.amount
                item.price += add.price
            }
        }
        if flag == true{
            array.append(add)
        }
    }
}

