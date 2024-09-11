//
//  FeedView.swift
//  PetBuddy
//
//  Created by Mohamed Atallah on 11/09/2024.
//

import SwiftUI

struct FeedView: View {
    
    @StateObject var feed = Feed()
    
    var body: some View {
        List(feed.posts) { post in
            Text(post.caption)
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        let feed = Feed()
        for index in 1...5 {
            feed.posts.append(Post(id: UUID(), caption: "Caption \(index)", createdAt: Date()))
        }
                              
        return FeedView(feed: feed)
    }
}
