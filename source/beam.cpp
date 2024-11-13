#include <coding-samples/beam.h>

using namespace beam;

void Beam::setLength(double newLength)
{ 
    length = newLength;
}

std::string Beam::printBeam() const 
{
  switch (type) 
  {
    case BeamType::ELECTRON:
      return std::string( "This is an electron beam." );
    case BeamType::PHOTON:
      return std::string("This is an photon beam.");
    case BeamType::PROTON:
      return std::string("This is an proton beam.");
    default:
      return std::string("Unknown beam type!");
  }
}
