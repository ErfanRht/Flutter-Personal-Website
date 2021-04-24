#!/usr/bin/bash

# Get commit message
if [ -z "$1" ]
then                                                                                                                                                                                                                                                       
    message="Update"
else
    message=$1
fi

# Clean up the build
flutter clean

# Get the dependencies 
pub get

# Analyze for errors
flutter analyze

# Run web build
flutter build web

# Copy the generated files into the Github pages repo directory
cp -R build/web/. ../../ErfanRht.github.io

echo "Pushing with commit message: $message"

# Change into the Github pages repo directory, commit the changes and push
cd ../../ErfanRht.github.io
git add .
git commit -m "$message"
git push
