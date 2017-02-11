//
//  OrderedDictionary.swift
//  LSS
//
//  Created by Evgeniy Gubin on 11.02.17.
//
//

import Foundation

struct OrderedDictionary<Key: Hashable, Value>: Sequence {
    var dictionary: [Key: Value] = [:]
    var orderedKeys: [Key] = []
    
    subscript(key: Key) -> Value? {
        get {
            return dictionary[key]
        }
        mutating set {
            // remove existing item
            if newValue == nil, let index = orderedKeys.index(of: key) {
                orderedKeys.remove(at: index)
            }
            // append new item
            if newValue != nil && dictionary[key] == nil {
                orderedKeys.append(key)
            }
            
            dictionary[key] = newValue
        }
    }
    
    func makeIterator() -> OrderedDictionaryIterator<Key, Value> {
        return OrderedDictionaryIterator(dictionary: dictionary, orderedKeys: orderedKeys)
    }
}

public struct OrderedDictionaryIterator<Key : Hashable, Value> : IteratorProtocol {
    
    let dictionary: [Key: Value]
    
    var keysIterator: IndexingIterator<[Key]>
    
    init(dictionary: [Key: Value], orderedKeys: [Key]) {
        self.dictionary = dictionary
        
        keysIterator = orderedKeys.makeIterator()
    }
    
    public mutating func next() -> (key: Key, value: Value)? {
        if let key = keysIterator.next() {
            return (key, dictionary[key]!)
        }
        return nil
    }
}
