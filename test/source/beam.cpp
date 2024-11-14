#include <doctest/doctest.h>
#include <coding/beam.h>
#include <coding/version.h>

#include <string>

TEST_CASE("Beam") {
  using namespace beam;

  beam::Beam testBeam("Tester", beam::BeamType::ELECTRON);
  testBeam.setLength(6.3);

  CHECK(testBeam.printBeam() == "This is an electron beam.");
}

TEST_CASE("Beam version") {
  static_assert(std::string_view(BEAM_VERSION) == std::string_view("1.0"));
  CHECK(std::string(BEAM_VERSION) == std::string("1.0"));
}
