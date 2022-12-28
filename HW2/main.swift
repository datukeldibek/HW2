//
//  main.swift
//  HW2
//
//  Created by Jarae on 28/12/22.
//

import Foundation


//#1. Создать класс Магазин
//Свойства: Название, Площадь, Расположение, Часы работы, массив с товарами
//Создать класс Товар
//Свойства: Название товара, кол-во. Цена товара
//После чего путём наследования от класса Магазин создать следующие классы: Магазин автозапчастей, Магазин одежды и заполнить их соответствующими параметрами
//
//
//
//Так же в конце должен быть метод, который будет отображать следующую информацию:
//
//Название магазина. Площадь.
//Расположение. Часы работы.
//Наименование товара. Кол-во товара. Цена товара (Если у вас два и более одинаковых по названию товаров - соединить)


var cola = Product(name: "cola", amount: 10, price: 120)
var fanta = Product(name: "fanta", amount: 10, price: 70)
var pants = Product(name: "pants", amount: 20, price: 700)
var smth = Product(name: "smth", amount: 1, price: 1100)

var shop = Shop(shopName: "Globus", area: 2220, geo: "kg", chr: "24/7")
shop.addProduct(cola)
shop.addProduct(cola)
shop.addProduct(fanta)
shop.showInfo()

print("")
var aShop = AutoPartsStore(shopName: "ABC", area: 200, geo: "osh", chr: "", profit: 90000)
aShop.addProduct(smth)
aShop.showInfo()

print("")
var cShop = ClothingStore(shopName: "fox store", area: 123, geo: "bishkek", chr: "12:00", style: "casual")
cShop.addProduct(pants)
cShop.showInfo()


//Result:
//название Магазина - Globus, площадь - 2220, локация - kg работает до - 24/7
//название товара -cola, кол-во 20 цена - 240
//название товара -fanta, кол-во 10 цена - 70
//
//название Магазина - ABC, площадь - 200, локация - osh работает до -  прибыль 90000
//название товара -smth, кол-во 1 цена - 1100
//
//название Магазина - fox store, площадь - 123, локация - bishkek работает до - 12:00 стиль - casual
//название товара -pants, кол-во 20 цена - 700

