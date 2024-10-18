//
//  CaptionEditorView.swift
//  CSS545-HW2
//
//  Created by Kris on 10/18/24.
//

import SwiftUI

struct CaptionEditorView: View
{
    @Binding var isPresented: Bool
    @State private var captionText: String = ""
    var onSave: (String) -> Void
    
    var body: some View 
    {
        NavigationStack
        {
            VStack {
                TextField("Enter Caption", text: $captionText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Spacer()
            }
            .navigationTitle("Add Caption")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                        isPresented = false
                        captionText = ""
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Save") {
                        onSave(captionText)
                        isPresented = false
                        captionText = ""
                    }
                    .disabled(captionText.isEmpty)
                }
            }
        }
    }
}


#Preview {
    CaptionEditorView(isPresented: .constant(true), onSave: { string in  })
}
