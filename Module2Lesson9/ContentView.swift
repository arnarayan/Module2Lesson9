//
//  ContentView.swift
//  Module2Lesson9
//
//  Created by Anand Narayan on 2022-01-31.
//

import SwiftUI

struct ContentView: View {
    @State var arrayOfStrings:[String]?
    
    
    var body: some View {
        
        Button(action: {
            self.arrayOfStrings = nil
        }, label: {
            Text("Set to nil")
        })
        
        Button(action: {
            self.arrayOfStrings = [String]()
            self.arrayOfStrings?.append("Bunty")
            self.arrayOfStrings?.append("Bubbly")
            self.arrayOfStrings?.append("Me")
        }, label: {
            Text("Add")
        })
        
        if (self.arrayOfStrings == nil) {
            Text("Tap on the Add")
        }else {
            ForEach(self.arrayOfStrings!, id:\.self) { actor in
                Text(actor)
                
            }
        }
    }
}


