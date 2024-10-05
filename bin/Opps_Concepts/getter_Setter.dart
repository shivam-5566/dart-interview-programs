class Rectangle {
  // Private instance variables with underscore to make them private
  double _width = 0;
  double _height = 0;

  // Constructor
  Rectangle(this._width, this._height);

  // Getter for width
  double get width => _width;

  // Setter for width
  set width(double value) {
    if (value > 0) {
      _width = value;
    } else {
      print("Width must be positive.");
    }
  }

  // Getter for height
  double get height => _height;

  // Setter for height
  set height(double value) {
    if (value > 0) {
      _height = value;
    } else {
      print("Height must be positive.");
    }
  }

  // Method to calculate the area of the rectangle
  double get area => _width * _height;
}

void main() {
  // Create a Rectangle object
  Rectangle rect = Rectangle(10, 5);

  // Use getter methods to access width and height
  print("Width: ${rect.width}"); // Output: Width: 10
  print("Height: ${rect.height}"); // Output: Height: 5

  // Use setter methods to update width and height
  rect.width = 20; // Update width
  rect.height = 15; // Update height

  // Use the getter to access the updated values
  print("Updated Width: ${rect.width}"); // Output: Updated Width: 20
  print("Updated Height: ${rect.height}"); // Output: Updated Height: 15

  // Use the area getter to calculate and print the area
  print("Area of Rectangle: ${rect.area}"); // Output: Area of Rectangle: 300

  // Trying to set invalid values (negative width/height)
  rect.width = -5;  // Output: Width must be positive.
  rect.height = -10;  // Output: Height must be positive.
}
