//
//  AppTitle.swift
//  PetBuddy
//
//  Created by Mohamed Atallah on 16/08/2024.
//

import SwiftUI

struct AppTitle: View {
    var body: some View {
        Text("PetBuddy")
            .font(.custom("CoolStoryregular", size: 48))
    }
}

struct AppTitle_Previews: PreviewProvider {
    static var previews: some View {
        AppTitle()
            .previewLayout(.sizeThatFits)
    }
}
