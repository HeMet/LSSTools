//
//  POEStyleProperties.swift
//  LSS
//
//  Created by Evgeniy Gubin on 29.07.17.
//
//

import Foundation

enum BackgroundColor: PropertyType {
    typealias VT = Color
    typealias Group = StyleProperty
}

enum TextColor: PropertyType {
    typealias VT = Color
    typealias Group = StyleProperty
}

enum BorderColor: PropertyType {
    typealias VT = Color
    typealias Group = StyleProperty
}

enum Visible: PropertyType {
    typealias VT = Bool
    typealias Group = StyleProperty
}

enum FontSize: PropertyType {
    typealias VT = UInt
    typealias Group = StyleProperty
}

enum DropSound: PropertyType {
    typealias VT = Sound
    typealias Group = StyleProperty
}

enum StyleProperty { }