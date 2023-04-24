import SwiftUI

struct CardView: View {
    let title: String
    let subtitle: String
    let description: String
    let imageName: String

    var body: some View {
        VStack(alignment: .leading) {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(10)
            Text(title)
                .font(.headline)
                .foregroundColor(Color("TextColor"))
            Text(subtitle)
                .font(.subheadline)
                .foregroundColor(Color("TextColor"))
            Text(description)
                .font(.body)
                .foregroundColor(Color("TextColor"))
                .lineLimit(nil)
            Spacer()
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 5)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(
          title: "SwiftUI",
          subtitle: "Build Beautiful UIs",
          description: "SwiftUI provides an extremely powerful and intuitive way to build user interfaces for your iOS, iPadOS, macOS, and watchOS apps. With SwiftUI, you can easily create beautiful, responsive, and customizable interfaces that look great on any device.",
          imageName: "swiftui")
            .previewLayout(.fixed(width: 300, height: 400))
      
    }
}

