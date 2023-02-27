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

//struct EditableText_Previews: PreviewProvider {
//    static var previews: some View {
//        EditableText()
//    }
//}

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

import SwiftUI
struct ScrollOrNotScroll: View { // That is the question
    @State var showFullText: Bool = false
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 12) {
                Text ("Anti Hero").font(.title.weight(.bold))
                Button(action: {
                    showFullText.toggle()
                }, label: {
                    Text("\(showFullText ? "Hide" : "Show") Lyrics")
                })
                .buttonStyle(.borderedProminent)
                if showFullText {
                    Text("antiHero").font(.body.weight (.medium))
                }
            }
            .padding()
            .frame(width: .infinity, alignment: .leading)
        }
        .animation(.spring(), value: showFullText)
//        .scrollBounceBehavior(.basedOnSize, axes: .vertical)
//        .fontDesign(.rounded)
        // Only bounce if we have content big enough to need a scroll
    }
}

//struct ScrollOrNotScroll_Previews: PreviewProvider {
//    static var previews: some View {
//        ScrollOrNotScroll()
//    }
//}

// MARK: - TextField

struct UsernameValidation: View {
    @State private var username: String = ""
    @FocusState private var emailFieldIsFocused: Bool

    var body: some View {
        TextField(
            "User name (email address)",
            text: $username
        )
        .focused($emailFieldIsFocused)
        .onSubmit {
//            validate(name: username)
        }
        .textInputAutocapitalization(.never)
        .disableAutocorrection(true)
        .border(.secondary)

        Text(username)
            .foregroundColor(emailFieldIsFocused ? .red : .blue)
    }
}

//struct UsernameValidation_Previews: PreviewProvider {
//    static var previews: some View {
//        UsernameValidation()
//    }
//}

struct TextFieldPrompt: View {
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        Form {
            TextField(text: $username, prompt: Text("Required")) {
                Text("Username")
            }
            SecureField(text: $password, prompt: Text("Required")) {
                Text("Password")
            }
        }
    }
}

//struct TextFieldPrompt_Previews: PreviewProvider {
//    static var previews: some View {
//        TextFieldPrompt()
//    }
//}

struct StyledTextField: View {
    @State private var givenName: String = ""
    @State private var familyName: String = ""

    var body: some View {
        VStack {
            TextField(
                "Given Name",
                text: $givenName
            )
            .disableAutocorrection(true)
            TextField(
                "Family Name",
                text: $familyName
            )
            .disableAutocorrection(true)
        }
        .textFieldStyle(.roundedBorder)
    }
}

struct StyledTextField_Previews: PreviewProvider {
    static var previews: some View {
        StyledTextField()
    }
}
