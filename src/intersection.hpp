#ifndef DILAY_INTERSECTION
#define DILAY_INTERSECTION

#include "fwd-glm.hpp"
#include "fwd-winged.hpp"

class Sphere;

class FaceIntersection {
  public:
          FaceIntersection            ();
          FaceIntersection            (const FaceIntersection&);
    const FaceIntersection& operator= (const FaceIntersection&);
         ~FaceIntersection            ();

    bool             isIntersection () const;
    float            distance       () const;
    const glm::vec3& position       () const;
    LinkedFace       face           () const;
    void             update         (float, const glm::vec3&, LinkedFace);

  private:
    class Impl;
    Impl* impl;
};

namespace IntersectionUtil {
  bool intersects (const Sphere&, const WingedMesh&, const WingedVertex&);
  bool intersects (const Sphere&, const WingedMesh&, const WingedEdge&);
  bool intersects (const Sphere&, const WingedMesh&, const WingedFace&);
}

#endif