//
//  PhotoListView.swift
//  CSS545-HW2
//
//  Created by Kris on 10/18/24.
//

import SwiftUI
import SwiftData
import PhotosUI

struct PhotoListView: View
{
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    @Environment(\.modelContext) private var modelContext
    
    @Query private var photoItems: [PhotoItem]
    
    @State private var tempImageData: Data?
    @State private var selectedItem: PhotosPickerItem?
    @State private var isShowingCaptionEditor = false
    @State private var newCaption: String = ""
    
    var body: some View
    {
        NavigationStack
        {
            List {
                ForEach(photoItems) { photoItem in
                    HStack
                    {
                        if let uiImage = UIImage(data: photoItem.data) {
                            Image(uiImage: uiImage)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 50, height: 50)
                                .clipped()
                        }
                        
                        Text(photoItem.caption)
                    }
                }
                .onDelete(perform: deleteItems)
            }
            .navigationTitle("Photo Items")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    PhotosPicker(
                        selection: $selectedItem,
                        matching: .images,
                        photoLibrary: .shared()) {
                            Image(systemName: "plus")
                        }
                }
            }
            .onChange(of: selectedItem) { oldItem, newItem in
                if let item = newItem {
                    Task {
                        await addPhotoItem(from: item)
                        selectedItem = nil
                    }
                }
            }
            .sheet(isPresented: $isShowingCaptionEditor) {
                CaptionEditorView(isPresented: $isShowingCaptionEditor,
                                  onSave: saveNewPhotoItem)
                .presentationDetents([.medium])
            }
        }
        .preferredColorScheme(isDarkMode ? .dark : .light)
    }
    
    func addPhotoItem(from item: PhotosPickerItem) async {
        if let data = try? await item.loadTransferable(type: Data.self) {
            tempImageData = data
            await MainActor.run {
                isShowingCaptionEditor = true
            }
        }
    }
    
    func saveNewPhotoItem(caption: String) {
        if let data = tempImageData {
            let newPhotoItem = PhotoItem(data: data, caption: caption)
            modelContext.insert(newPhotoItem)
            tempImageData = nil
            newCaption = ""
        }
    }
    
    func deleteItems(at offsets: IndexSet) {
        for index in offsets {
            let item = photoItems[index]
            modelContext.delete(item)
        }
    }
}

#Preview {
    PhotoListView()
}
