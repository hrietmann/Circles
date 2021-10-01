//
//  StoryEditPage+Content.swift
//  Circles
//
//  Created by Hans Rietmann on 01/10/2021.
//

import Foundation
import SwiftUI




extension StoryEditPage {
    
    
    struct Content: Identifiable {
        
        enum ContentType {
            case text
            case images
            case audio
            case video
            
            var isText: Bool {
                switch self {
                case .text: return true
                default: return false
                }
            }
        }
        let type: ContentType
        let id = UUID()
        var text = ""
        
    }
    
    
}




struct StoryEditPage_Content_Previews: PreviewProvider {
    static var previews: some View {
        StoryEditPage()
    }
}




extension StoryEditPage.Content: Equatable {
    
    
    static func ==(lhs: StoryEditPage.Content, rhs: StoryEditPage.Content) -> Bool {
        return lhs.id == rhs.id
    }
    
    
}
