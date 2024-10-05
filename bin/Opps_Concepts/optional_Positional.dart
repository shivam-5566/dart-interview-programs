void greet(String name, [String? title]) {
  if (title != null) {
    print("Hello, $title $name.");
  } else {
    print("Hello, $name.");
  }
}

void main() {
  greet("Shivam");          // Output: Hello, Shivam.
  greet("Shivam", "Mr.");    // Output: Hello, Mr. Shivam.
}
