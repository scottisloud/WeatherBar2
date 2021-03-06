//
//  ContentView.swift
//  WeatherBar2
//
//  Created by Scott Lougheed on 2020/07/15.
//  Copyright © 2020 Scott Lougheed. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let url = ApiClient().currentUrl
    var body: some View {
        Text("\(url)")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
