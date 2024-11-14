#include <coding/beam.h>
#include <coding/version.h>

#include <array>
#include <cxxopts.hpp>
#include <iostream>
#include <string>
#include <unordered_map>

auto main(int argc, char** argv) -> int {
  const std::unordered_map<std::string, beam::BeamType> beamMap
  {
      {"Lesser", beam::BeamType::PHOTON},
      {"Standard", beam::BeamType::ELECTRON},
      {"Greater", beam::BeamType::PROTON}
  };

  cxxopts::Options options(*argv, "A program to welcome the world!");

  std::string label;
  std::string name;

  // clang-format off
  options.add_options()
    ("h,help", "Show help")
    ("v,version", "Print the current version number")
    ("n,name", "Name to greet", cxxopts::value(name)->default_value("World"))
    ("l,lab", "Label to use", cxxopts::value(label)->default_value("Standard"))
  ;
  // clang-format on

  auto result = options.parse(argc, argv);

  if (result["help"].as<bool>())
  {
    std::cout << options.help() << std::endl;
    return 0;
  }

  auto lableIt = beamMap.find(label);
  if (lableIt == beamMap.end())
  {
    std::cerr << "unknown label: " << label << std::endl;
    return 1;
  }

  beam::Beam beam1("name", beam::BeamType::PROTON);
  std::cout << beam1.printBeam() << std::endl;

  std::array<beam::Beam, 3> beamArray
  {
      {
          {"Beam890", beam::BeamType::PROTON}, 
          {"Beam272", beam::BeamType::PHOTON}, 
          {"Beam713", beam::BeamType::ELECTRON}
      }
  };

  int comparisons = 0;

  std::sort(beamArray.begin(), beamArray.end(),
    // comparisons captured by reference
    [&comparisons](auto const& a, auto const& b) 
        {
            ++comparisons;

            // Sort the beams by their names.
              return a.getName() < b.getName();
        });

  std::cout << "Comparisons: " << comparisons << std::endl;

  for (auto const& bm : beamArray)
  {
    std::cout << bm.printBeam() << std::endl;
  }

  return 0;
}