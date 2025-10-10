//
//  data.swift
//  table
//
//  Created by MacBook on 03/10/25.
//

import Foundation
import SwiftUI
struct Item:Identifiable{
    var id=UUID()
    var title:String;
    let subtitle: String
        let imageURL: String
}
let sampleData: [Item] = [
    Item(title: "Swift", subtitle: "Apple's language", imageURL: "https://developer.apple.com/assets/elements/icons/swift/swift-64x64_2x.png"),
    Item(title: "C++", subtitle: "System-level programming", imageURL: "https://upload.wikimedia.org/wikipedia/commons/1/18/ISO_C%2B%2B_Logo.svg"),
//    Item(title: "Python", subtitle: "Easy scripting", imageURL: "https://upload.wikimedia.org/wikipedia/commons/c/c3/Python-logo-notext.svg"),
//    Item(title: "PHP", subtitle: "Server-side scripting", imageURL: "https://upload.wikimedia.org/wikipedia/commons/2/27/PHP-logo.svg"),
//    Item(title: "JavaScript", subtitle: "Web development", imageURL: "https://upload.wikimedia.org/wikipedia/commons/6/6a/JavaScript-logo.png"),
//    Item(title: "Scala", subtitle: "Functional on JVM", imageURL: "https://upload.wikimedia.org/wikipedia/commons/3/39/Scala-full-color.svg"),
//    Item(title: "Kotlin", subtitle: "Used for Android", imageURL: "https://upload.wikimedia.org/wikipedia/commons/7/74/Kotlin_Icon.png"),
//    Item(title: "Perl", subtitle: "Text processing", imageURL: "https://upload.wikimedia.org/wikipedia/commons/9/9f/Perl_language_logo.svg"),
//    Item(title: "Rust", subtitle: "Memory-safe systems", imageURL: "https://upload.wikimedia.org/wikipedia/commons/d/d5/Rust_programming_language_black_logo.svg"),
//    Item(title: "Go", subtitle: "Golang by Google", imageURL: "https://upload.wikimedia.org/wikipedia/commons/0/05/Go_Logo_Blue.svg"),
//    Item(title: "Java", subtitle: "Cross-platform OOP", imageURL: "https://upload.wikimedia.org/wikipedia/en/3/30/Java_programming_language_logo.svg"),
//    Item(title: "TypeScript", subtitle: "Typed JavaScript", imageURL: "https://upload.wikimedia.org/wikipedia/commons/4/4c/Typescript_logo_2020.svg"),
//    Item(title: "Dart", subtitle: "Used with Flutter", imageURL: "https://upload.wikimedia.org/wikipedia/commons/f/fe/Dart_programming_language_logo.svg"),
//    Item(title: "C#", subtitle: "Microsoft’s language", imageURL: "https://upload.wikimedia.org/wikipedia/commons/4/4f/Csharp_Logo.png"),
//    Item(title: "Ruby", subtitle: "Elegant syntax", imageURL: "https://upload.wikimedia.org/wikipedia/commons/7/73/Ruby_logo.svg"),
//    // repeat randomly to reach 50 items
//    Item(title: "Swift", subtitle: "Apple's language", imageURL: "https://developer.apple.com/assets/elements/icons/swift/swift-64x64_2x.png"),
//    Item(title: "Go", subtitle: "Golang by Google", imageURL: "https://upload.wikimedia.org/wikipedia/commons/0/05/Go_Logo_Blue.svg"),
//    Item(title: "Python", subtitle: "Easy scripting", imageURL: "https://upload.wikimedia.org/wikipedia/commons/c/c3/Python-logo-notext.svg"),
//    Item(title: "JavaScript", subtitle: "Web development", imageURL: "https://upload.wikimedia.org/wikipedia/commons/6/6a/JavaScript-logo.png"),
//    Item(title: "Java", subtitle: "Cross-platform OOP", imageURL: "https://upload.wikimedia.org/wikipedia/en/3/30/Java_programming_language_logo.svg"),
//    Item(title: "Rust", subtitle: "Memory-safe systems", imageURL: "https://upload.wikimedia.org/wikipedia/commons/d/d5/Rust_programming_language_black_logo.svg"),
//    Item(title: "Dart", subtitle: "Used with Flutter", imageURL: "https://upload.wikimedia.org/wikipedia/commons/f/fe/Dart_programming_language_logo.svg"),
//    Item(title: "TypeScript", subtitle: "Typed JavaScript", imageURL: "https://upload.wikimedia.org/wikipedia/commons/4/4c/Typescript_logo_2020.svg"),
//    Item(title: "Kotlin", subtitle: "Used for Android", imageURL: "https://upload.wikimedia.org/wikipedia/commons/7/74/Kotlin_Icon.png"),
//    Item(title: "C++", subtitle: "System-level programming", imageURL: "https://upload.wikimedia.org/wikipedia/commons/1/18/ISO_C%2B%2B_Logo.svg"),
//    Item(title: "PHP", subtitle: "Server-side scripting", imageURL: "https://upload.wikimedia.org/wikipedia/commons/2/27/PHP-logo.svg"),
//    Item(title: "Ruby", subtitle: "Elegant syntax", imageURL: "https://upload.wikimedia.org/wikipedia/commons/7/73/Ruby_logo.svg"),
//    Item(title: "Perl", subtitle: "Text processing", imageURL: "https://upload.wikimedia.org/wikipedia/commons/9/9f/Perl_language_logo.svg"),
//    Item(title: "Scala", subtitle: "Functional on JVM", imageURL: "https://upload.wikimedia.org/wikipedia/commons/3/39/Scala-full-color.svg"),
//    Item(title: "C#", subtitle: "Microsoft’s language", imageURL: "https://upload.wikimedia.org/wikipedia/commons/4/4f/Csharp_Logo.png"),
//    Item(title: "Swift", subtitle: "Apple's language", imageURL: "https://developer.apple.com/assets/elements/icons/swift/swift-64x64_2x.png"),
    // ... repeat or extend up to 50
]
