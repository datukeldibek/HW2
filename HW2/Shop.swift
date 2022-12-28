//
//  Shop.swift
//  HW2
//
//  Created by Jarae on 28/12/22.
//

import Foundation
class Shop{
    var shopName: String
    var area: Int
    var geo: String
    var chr: String
    var goods: [Product] = [Product] ()
    
    init(shopName: String, area: Int, geo: String, chr: String) {
        self.shopName = shopName
        self.area = area
        self.geo = geo
        self.chr = chr
        
    }
    
    func showInfo() {
        print("название Магазина - \(shopName), площадь - \(area), локация - \(geo) работает до - \(chr) ")
        for i in goods {
            print("название товара -\(i.name), кол-во \(i.amount) цена - \(i.price)")
        }
    }
    func addProduct(_ add:Product) {
        var tovar = true
        for item in goods{
            if add.name == item.name && add.price == item.price && add.amount == item.amount{
                tovar = false
                item.amount += add.amount
                item.price += add.price
            }
        }
        if tovar == true{
            goods.append(add)
        }
    }
}


