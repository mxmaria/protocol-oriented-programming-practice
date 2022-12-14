//
//  ContentView.swift
//  MVVM+SwiftUI practice
//
//  Created by Maria Maximova on 18.08.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var input: String = ""
    
    @ObservedObject var weatherViewModel = WeatherViewModel()
    
    var body: some View {
        VStack {
            TextField("Enter city", text: $input)
                .onSubmit {
                    if !self.input.isEmpty {
                        self.weatherViewModel.fetch(city: self.input)
                    }
                }
                .font(.title)
            
            Divider()
            
            Text(weatherViewModel.weatherInfo)
                .font(.body)
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
