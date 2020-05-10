import SwiftUI
import SwiftUILib_DocumentPicker
import MobileCoreServices

struct ContentView: View {

  @State var showDocPicker = false

  var body: some View {
    Button("Show document picker") {
      self.showDocPicker.toggle()
    }
    .documentPicker(
      isPresented: $showDocPicker,
      documentTypes: [kUTTypeFolder as String /* "public.folder" */ ],
      onCancel: {
        print("User cancelled.")
      }
    ) { urls in
      print("Selected folder: \(urls.first!)")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
