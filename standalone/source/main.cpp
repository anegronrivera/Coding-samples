#include <coding-samples/beam.h>
#include <coding-samples/version.h>

#include <cxxopts.hpp>
#include <iostream>
#include <string>
#include <unordered_map>

auto main(int argc, char** argv) -> int {
  const std::unordered_map<std::string, beam::BeamType> beams{
      {"Photon Beam", beam::BeamType::PHOTON},
      {"Electron Beam", beam::BeamType::ELECTRON},
      {"Proton Beam", beam::BeamType::PROTON}
  };

  cxxopts::Options options(*argv, "A program to welcome the world!");

  std::string language;
  std::string name;

  // clang-format off
  options.add_options()
    ("h,help", "Show help")
    ("v,version", "Print the current version number")
    ("n,name", "Name to greet", cxxopts::value(name)->default_value("World"))
    ("l,lang", "Language code to use", cxxopts::value(language)->default_value("en"))
  ;
  // clang-format on

  auto result = options.parse(argc, argv);

  if (result["help"].as<bool>()) {
    std::cout << options.help() << std::endl;
    return 0;
  }

  if (result["version"].as<bool>()) {
    std::cout << "Beam, version " << BEAM_VERSION << std::endl;
    return 0;
  }

  auto langIt = beams.find(language);
  if (langIt == beams.end()) {
    std::cerr << "unknown beam type: " << language << std::endl;
    return 1;
  }

  beam::Beam beam1("name", beam::BeamType::PROTON);
  std::cout << beam1.printBeam(langIt->second) << std::endl;

  return 0;
}
