//
//  SampleData.swift
//  test6
//
//  Created by AMANDA CAROLINE DA SILVA RODRIGUES on 05/02/25.
//

import Foundation
import SwiftData

@MainActor
class SampleData {
    let modelContainer: ModelContainer
    
    static let shared = SampleData()
    
    var context: ModelContext {
        modelContainer.mainContext
    }
    
    private init() {
        let schema = Schema([
            Friend.self,
            Movie.self
        ])
        
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: true)
        
        do {
            modelContainer = try ModelContainer(for: schema, configurations: [modelConfiguration])
            
            insertSampleData()
            
            try context.save()
            
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }
    
    private func insertSampleData() {
        for friend in Friend.sampleData {
            context.insert(friend)
        }
    }
}
