# Unhandled JSON Response in Dart HTTP Request

This example demonstrates a common error in Dart when handling HTTP requests that return JSON data. The code doesn't handle cases where the JSON response is not a list or is empty, leading to potential runtime errors.

The `bug.dart` file contains the erroneous code. The `bugSolution.dart` provides a corrected version.

## How to reproduce

1.  Clone this repository.
2.  Run `bug.dart`.
3.  Observe the error if the API returns an unexpected JSON structure.

## Solution

The solution is to add robust error handling to check for the type and length of the JSON data before accessing elements by index.