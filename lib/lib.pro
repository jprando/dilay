include (../common.pri)

TEMPLATE     = lib
TARGET       = dilay
DEPENDPATH  += src 
INCLUDEPATH += src 
CONFIG      += staticlib

SOURCES += \
           src/camera.cpp \
           src/color.cpp \
           src/config.cpp \
           src/configurable.cpp \
           src/dimension.cpp \
           src/distance.cpp \
           src/dynamic/faces.cpp \
           src/dynamic/mesh.cpp \
           src/dynamic/mesh-intersection.cpp \
           src/dynamic/octree.cpp \
           src/history.cpp \
           src/intersection.cpp \
           src/kvstore.cpp \
           src/mesh.cpp \
           src/mesh-util.cpp \
           src/mirror.cpp \
           src/opengl.cpp \
           src/opengl-buffer-id.cpp \
           src/primitive/aabox.cpp \
           src/primitive/cone.cpp \
           src/primitive/cone-sphere.cpp \
           src/primitive/cylinder.cpp \
           src/primitive/plane.cpp \
           src/primitive/ray.cpp \
           src/primitive/sphere.cpp \
           src/primitive/triangle.cpp \
           src/render-mode.cpp \
           src/renderer.cpp \
           src/scene.cpp \
           src/scene-util.cpp \
           src/shader.cpp \
           src/sketch/bone-intersection.cpp \
           src/sketch/conversion.cpp \
           src/sketch/mesh.cpp \
           src/sketch/mesh-intersection.cpp \
           src/sketch/node-intersection.cpp \
           src/sketch/path.cpp \
           src/sketch/path-intersection.cpp \
           src/state.cpp \
           src/time-delta.cpp \
           src/tool.cpp \
           src/tool/convert-sketch.cpp \
           src/tool/delete-mesh.cpp \
           src/tool/delete-sketch.cpp \
           src/tool/modify-sketch.cpp \
           src/tool/move-mesh.cpp \
           src/tool/move-camera.cpp \
           src/tool/new-mesh.cpp \
           src/tool/new-sketch.cpp \
           src/tool/rebalance-sketch.cpp \
           src/tool/sculpt.cpp \
           src/tool/sculpt/draw.cpp \
           src/tool/sculpt/crease.cpp \
           src/tool/sculpt/flatten.cpp \
           src/tool/sculpt/grab.cpp \
           src/tool/sculpt/pinch.cpp \
           src/tool/sculpt/reduce.cpp \
           src/tool/sculpt/smooth.cpp \
           src/tool/sculpt/util/action.cpp \
           src/tool/sculpt/util/brush.cpp \
           src/tool/sketch-spheres.cpp \
           src/tool/util/movement.cpp \
           src/tool/util/scaling.cpp \
           src/util.cpp \
           src/view/axis.cpp \
           src/view/color-button.cpp \
           src/view/configuration.cpp \
           src/view/cursor.cpp \
           src/view/double-slider.cpp \
           src/view/floor-plane.cpp \
           src/view/gl-widget.cpp \
           src/view/info-pane.cpp \
           src/view/light.cpp \
           src/view/main-window.cpp \
           src/view/menu-bar.cpp \
           src/view/pointing-event.cpp \
           src/view/tool-pane.cpp \
           src/view/tool-tip.cpp \
           src/view/two-column-grid.cpp \
           src/view/util.cpp \
           src/view/vector-edit.cpp \
           src/xml-conversion.cpp \

HEADERS += \
           src/bitset.hpp \
           src/cache.hpp \
           src/camera.hpp \
           src/color.hpp \
           src/config.hpp \
           src/configurable.hpp \
           src/dimension.hpp \
           src/distance.hpp \
           src/dynamic/faces.hpp \
           src/dynamic/mesh.hpp \
           src/dynamic/mesh-intersection.hpp \
           src/dynamic/octree.hpp \
           src/hash.hpp \
           src/history.hpp \
           src/intersection.hpp \
           src/kvstore.hpp \
           src/macro.hpp \
           src/maybe.hpp \
           src/mesh.hpp \
           src/mesh-util.hpp \
           src/mirror.hpp \
           src/opengl.hpp \
           src/opengl-buffer-id.hpp \
           src/primitive/aabox.hpp \
           src/primitive/cone.hpp \
           src/primitive/cone-sphere.hpp \
           src/primitive/cylinder.hpp \
           src/primitive/plane.hpp \
           src/primitive/ray.hpp \
           src/primitive/sphere.hpp \
           src/primitive/triangle.hpp \
           src/render-mode.hpp \
           src/renderer.hpp \
           src/scene.hpp \
           src/scene-util.hpp \
           src/shader.hpp \
           src/sketch/bone-intersection.hpp \
           src/sketch/conversion.hpp \
           src/sketch/fwd.hpp \
           src/sketch/mesh.hpp \
           src/sketch/mesh-intersection.hpp \
           src/sketch/node-intersection.hpp \
           src/sketch/path.hpp \
           src/sketch/path-intersection.hpp \
           src/state.hpp \
           src/time-delta.hpp \
           src/tool.hpp \
           src/tool/move-camera.hpp \
           src/tool/sculpt.hpp \
           src/tool/sculpt/util/action.hpp \
           src/tool/sculpt/util/brush.hpp \
           src/tool/util/movement.hpp \
           src/tool/util/scaling.hpp \
           src/tools.hpp \
           src/tree.hpp \
           src/util.hpp \
           src/variant.hpp \
           src/view/axis.hpp \
           src/view/color-button.hpp \
           src/view/configuration.hpp \
           src/view/cursor.hpp \
           src/view/double-slider.hpp \
           src/view/floor-plane.cpp \
           src/view/gl-widget.hpp \
           src/view/info-pane.hpp \
           src/view/light.hpp \
           src/view/main-window.hpp \
           src/view/menu-bar.hpp \
           src/view/pointing-event.hpp \
           src/view/tool-pane.hpp \
           src/view/tool-tip.hpp \
           src/view/two-column-grid.hpp \
           src/view/util.hpp \
           src/view/vector-edit.hpp \
           src/xml-conversion.hpp \

unix {
  format.commands = clang-format -style=file -i $$SOURCES $$HEADERS
  QMAKE_EXTRA_TARGETS += format
}
