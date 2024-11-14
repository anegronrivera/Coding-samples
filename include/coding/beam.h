#ifndef BEAM_H
#define BEAM_H

#include <string>

namespace beam {

  /**  Type of beam radiation */
  enum class BeamType 
  {
    ELECTRON,
    PHOTON,
    PROTON
  };

  /**
   * @brief A class for defining a beam
   */
  class Beam {
    private:
        std::string name;
        BeamType type;

    public:
        double length;
        /**
         * @brief Creates a new beam
         * @param newName the name of the beam
         * @param newType the beam's radiation type
         */
        Beam(std::string const& newName, BeamType const& newType): name(newName), type(newType) {}

        /**
         * @brief Sets the length of the beam
         * @param newLength the length of the beam
         */
        void setLength(double newLength);

        /**
         * @brief Gets the length of the beam
         */
        double getLength() { return length; }

        /**
         * @brief Gets the name of the beam
         */
        std::string const& getName() { return name; }

        /**
         * @brief Gets the type of the beam
         */
        BeamType const& getType() { return type; }

        /**
         * @brief Creates a beam and display its config
         * @param type the beam type
         * @return a string containing the beam configuration
         */
        std::string const printBeam();
  };

}
#endif