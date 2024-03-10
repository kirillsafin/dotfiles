#!/usr/bin/env bash

# This script sets up a new C++ project with the following structure:
# ROOT/
# ├── build/
# ├── data/
# ├── include/
# ├── src/
# ├── test/
# ├── .gitignore
# ├── CMakeLists.txt
# ├── Makefile
# ├── README.md
# ├── main.cpp
# ├── vcpkg.json
# NOTE: eventually add a .clang-format file

# print all the arguments

# Create the project root directory
ROOT=${1}
mkdir "${ROOT}"

cd "${ROOT}" || (echo 'Could not change to the project root directory. Exiting...' && exit 1)

# Create the subdirectories
mkdir build include src test data
touch .gitignore CMakeLists.txt Makefile README.md main.cpp vcpkg.json

# Write the .gitignore file,use https://www.toptal.com/developers/gitignore/api to generate the .gitignore file
curl -s https://www.toptal.com/developers/gitignore/api/osx,linux,windows,visualstudiocode,cmake,qt,makefile,doxygen,git,c++,vcpkg > .gitignore

# Write the CMakeLists.txt file  (see  /media/kirill/WindowsD/Programmieren/CundCpp/Training/Diverses/KeyLogger)
{  
  echo "cmake_minimum_required(VERSION 3.0.0)"
  echo ""
  echo "set(CMAKE_CXX_STANDARD 20)"
  echo ""
  echo "project(${ROOT} VERSION 0.1.0)"
  echo ""
  echo "set(CMAKE_EXPORT_COMPILE_COMMANDS ON)"
  echo ""
  echo "include_directories(\${CMAKE_SOURCE_DIR}/include)"
  echo ""
  echo "add_executable(\${PROJECT_NAME} main.cpp)"
} >> CMakeLists.txt

# Write the Makefile file (see  /media/kirill/WindowsD/Programmieren/CundCpp/Training/Diverses/KeyLogger)
{
  echo "SRC = src"
  echo "INCLUDE = include"
  echo ""
  echo "run: build"
  printf "\t./build/%s\n" "${ROOT}"
  echo ""
  echo "build: \$(SRC)/*.cpp \$(INCLUDE)/*.hpp main.cpp CMakeLists.txt"
  printf "\tcmake --build ./build --config Debug --target %s\n" "${ROOT}"
  echo ""
  echo "setup:"
  printf "\tcmake . -B ./build\n"
  echo ""
  echo "setup-debug:"
  printf "\tcmake . -DCMAKE_BUILD_TYPE:STRING=Debug -B ./build\n"
  echo ""
  echo "setup-lib-dir:"
  printf "\t\`[ -d \"./lib\" ] || ln -s \"\$(pwd)/vcpkg_installed/x64-linux/\" \"\$(pwd)/lib\"\`"
} >> Makefile

# Write vcpgk.json file
{
  echo "{"
  echo "  \"name\": \"${ROOT}\","
  echo "  \"version\": \"0.0.1\","
  echo "  \"dependencies\": []"
  echo "}"
} >> vcpkg.json

# Write the README.md file
echo "# $ROOT" > README.md

# Write the main.cpp file (see  /media/kirill/WindowsD/Programmieren/CundCpp/Training/Diverses/KeyLogger)
{
  echo "#include <cstdlib>"
  echo ""
  echo "int main() {"
  echo "  return EXIT_SUCCESS;"
  echo "}"
} >> main.cpp

# Open project in neovim
nvim .
