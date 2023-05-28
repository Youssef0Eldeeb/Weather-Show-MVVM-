//
//  String+Extension.swift
//  Weather Show (MVVM)
//
//  Created by Youssef Eldeeb on 28/05/2023.
//

import Foundation

extension String{
    func escaped() -> String{
        return self.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self
    }
}
