//
//  TestBed.swift
//  Shapes
//
//  Created by Treata Norouzi on 2/24/23.
//

import SwiftUI

private struct EditableText: View {
    @Environment(\.editMode) private var editMode
    @State private var name = "Maria Ruiz"
    
    var body: some View {
        Form {
            if editMode?.wrappedValue.isEditing == true {
                TextField("Name", text: $name)
            } else {
                Text(name)
            }
        }
        .animation(nil, value: editMode?.wrappedValue)
        .toolbar { // Assumes embedding this view in a NavigationView.
            EditButton()
        }
    }
}

struct EditableText_Previews: PreviewProvider {
    static var previews: some View {
        EditableText()
    }
}

private struct DeterminateProgress: View {
    @State private var progress = 0.1
    
    var body: some View {
        VStack {
            ProgressView(value: progress)
            Button("More", action: { progress += 0.05 })
        }
    }
}

//struct DeterminateProgress_Previews: PreviewProvider {
//    static var previews: some View {
//        DeterminateProgress()
//    }
//}

// MARK: -

struct ShadowedProgressViews: View {
    var body: some View {
        VStack {
            ProgressView(value: 0.25)
            ProgressView(value: 0.75)
        }
        .progressViewStyle(DarkBlueShadowProgressViewStyle())
    }
}

struct DarkBlueShadowProgressViewStyle: ProgressViewStyle {
    func makeBody(configuration: Configuration) -> some View {
        ProgressView(configuration)
            .shadow(
                color: Color(red: 0, green: 0, blue: 0.6),
                radius: 4.0, x: 1.0, y: 2.0
            )
    }
}

//struct ShadowedProgressViews_Previews: PreviewProvider {
//    static var previews: some View {
//        ShadowedProgressViews()
//    }
//}
