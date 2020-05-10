import SwiftUI
import SwiftUILib_DocumentPicker

struct ContentView: View {
  
  @State var showDocPicker = false

  var body: some View {
    VStack {

      Button("Select Folder…") {
        let panel = NSOpenPanel()
        panel.canChooseFiles = false
        panel.canChooseDirectories = true
        panel.resolvesAliases = true
        panel.allowsMultipleSelection = false
        panel.isAccessoryViewDisclosed = false
        let result = panel.runModal()
        guard result == .OK, let url = panel.url else {
          return
        }
        //self.store.setWorkingFolder(url)
      }

      Button("Show document picker") {
        self.showDocPicker.toggle()
      }
      .documentPicker(
        isPresented: $showDocPicker,
        documentTypes: ["public.folder"],
        onCancel: {
          print("User cancelled.")
        }
      ) { urls in
        print("Selected folder: \(urls.first!)")
      }
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
  }
}


struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
