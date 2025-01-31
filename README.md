# Unhandled JSON Key Exception in Dart

This repository demonstrates a common error in Dart when working with JSON responses: attempting to access a key that doesn't exist.  The `bug.dart` file shows the problematic code, while `bugSolution.dart` provides a robust solution.

## The Problem

When parsing JSON data in Dart, it's easy to assume the JSON structure always matches your expectations.  If a key you try to access is missing, a runtime exception will occur. 

## The Solution

The solution involves adding error handling to gracefully manage scenarios where keys are missing.  Check for the key's existence before attempting to access it.