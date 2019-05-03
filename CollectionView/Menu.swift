//
//  Menu.swift
//  CollectionView
//
//  Created by Crafter on 5/2/19.
//  Copyright © 2019 Crafter. All rights reserved.
//

import Foundation

class Menu {
    
    public static var menu = Menu()
    public var itemMenuArray = Array<MenuItem>()
    private var categories = Array<String>()
    
    init() {
        itemMenuArray.append(MenuItem(
            name: "Pizza", price: "5.50", imageName: "pizza", category: "FastFood"
        ))
        itemMenuArray.append(MenuItem(
        name: "Hot-Dog", price: "2.50", imageName: "hotdog", category: "FastFood"
        ))
        itemMenuArray.append(MenuItem(
        name: "Hamburger", price: "4.00", imageName: "hamburger", category: "FastFood"
        ))
        itemMenuArray.append(MenuItem(
            name: "Chicken Leg", price: "2.00", imageName: "chikensleg", category: "FastFood"
        ))
        itemMenuArray.append(MenuItem(
            name: "Donut", price: "1.00", imageName: "donut", category: "FastFood"
        ))
        itemMenuArray.append(MenuItem(
            name: "Coffe", price: "3.00", imageName: "coffe", category: "Drinks"
        ))
        itemMenuArray.append(MenuItem(
            name: "Beer", price: "5.00", imageName: "beer", category: "Drinks"
        ))
        itemMenuArray.append(MenuItem(
            name: "Orange Coctail", price: "8.00", imageName: "orange_coctail", category: "Drinks"
        ))
        itemMenuArray.append(MenuItem(
            name: "Apple", price: "0.30", imageName: "apple", category: "Fruits"
        ))
        itemMenuArray.append(MenuItem(
            name: "Lemon", price: "2.00", imageName: "lemon", category: "Fruits"
        ))
        itemMenuArray.append(MenuItem(
            name: "Kiwi", price: "1.50", imageName: "kiwi", category: "Fruits"
        ))
        itemMenuArray.append(MenuItem(
            name: "Orange", price: "0.90", imageName: "orange", category: "Fruits"
        ))
    }
    
    public func getCategoru()->[String]{
        var arr = Array<String>()
        for item in itemMenuArray {
            arr.append(item.category ?? "")
        }
        return arr
    }
    
    public func getUniqueCategoru()->[String]{
        categories = getCategoru()
        return Array(Set(categories)).sorted()
    }
        
}
