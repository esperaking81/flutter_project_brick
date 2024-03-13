#!/bin/zsh -e

echo "Getting packages..."
flutter pub get

echo "Adding dartz and equatable..."
flutter pub add dartz
flutter pub add equatable

echo "Running code generator..."
dart run build_runner build

echo "Running dart fix..."
dart fix --apply .

echo "You are good to go !"
