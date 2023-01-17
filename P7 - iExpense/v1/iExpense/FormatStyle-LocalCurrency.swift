//
//  FormatStyle-LocalCurrency.swift
//  iExpense
//
//  Created by Sedat Onat on 3.01.2023.
//

import Foundation

extension FormatStyle where Self == FloatingPointFormatStyle<Double>.Currency {
    static var localCurrency: Self {
        .currency(code: Locale.current.currency?.identifier ?? "USD")
    }
}
