//
//  ContentView.swift
//  EnvironmentPractice
//
//  Created by Brandon Jones on 6/19/24.
//

import SwiftUI
import Observation

@Observable
class AppState {
  var isOn: Bool = false
}


struct LightBulbView: View {
  @Environment(AppState.self) private var appState: AppState

  var body: some View {
    
    @Bindable var appState = appState
    Image(systemName:  appState.isOn ? "lightbulb.fill" : "lightbulb")
      .font(.largeTitle)
      .foregroundStyle(appState.isOn ? .yellow : .black)
//    Button("Toggle"){
//      appState.isOn.toggle()
//    }
    
    Toggle("IsOn", isOn: $appState.isOn)
  }
  
}


struct LightRoomView: View {
  var body: some View {
    LightBulbView()
  }
}





struct ContentView: View {
  @Environment(AppState.self) private var appState: AppState
  var body: some View {
    VStack {
      LightBulbView()
    }
    .padding()
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(appState.isOn ? .black : .white)
  }
}

#Preview {
    ContentView()
    .environment(AppState())
}
