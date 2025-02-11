import Foundation

class SampleViewModel: ObservableObject {
    @Published var message: String = ""
}

extension SampleViewModel {
    func previewModel() -> SampleViewModel {
        let model = SampleViewModel()
        model.message = "Hello, World!"
        return model
    }
}