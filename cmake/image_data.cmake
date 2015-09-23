set (CHANNEL_TYPES SNORM_INT8 SNORM_INT16 UNORM_INT8 UNORM_INT16 UNORM_INT24 UNORM_SHORT_555 UNORM_SHORT_565 UNORM_SHORT_101010 SIGNED_INT8 SIGNED_INT16 SIGNED_INT32 UNSIGNED_INT8 UNSIGNED_INT16 UNSIGNED_INT32 HALF_FLOAT FLOAT)

## Testing for SGRB, SRGBX SRGBA and SBGRA channel orders is currently not enabled.
## set (CHANNEL_ORDERS A R RX RG RGX RA RGB RGBX RGBA BGRA ARGB ABGR SRGB SRGBX SRGBA SBGRA INTENSITY LUMINANCE DEPTH DEPTH_STENCIL)
set (CHANNEL_ORDERS A R RX RG RGX RA RGB RGBX RGBA BGRA ARGB ABGR INTENSITY LUMINANCE DEPTH DEPTH_STENCIL)

set (GEOMETRIES 1D 2D 3D 1DA 2DA 1DB 2DDEPTH 2DADEPTH)

function(valid_image CHANNEL_TYPE CHANNEL_ORDER IMAGE_GEOMETRY VALID)

     set (VALID FALSE PARENT_SCOPE)

     string(REGEX MATCH "^(SNORM|UNORM|SIGNED|UNSIGNED)_(INT8|INT16|INT32)$" CHANNEL_TYPE_MATCH ${CHANNEL_TYPE})
     string(REGEX MATCH "^(HALF_FLOAT|FLOAT)$" CHANNEL_FLOAT_TYPE_MATCH ${CHANNEL_TYPE})
     string(REGEX MATCH "^(A|R|RX|RG|RGX|RA|RGBA)$" CHANNEL_ORDER_MATCH ${CHANNEL_ORDER})
     string(REGEX MATCH "^(1D|2D|3D|1DA|2DA|1DB)$" GEOMETRY_MATCH ${IMAGE_GEOMETRY})
     if(CHANNEL_TYPE_MATCH OR CHANNEL_FLOAT_TYPE_MATCH)
         if(CHANNEL_ORDER_MATCH)
             if(GEOMETRY_MATCH)
                set (VALID TRUE PARENT_SCOPE)
             endif()
         endif()
     endif()

     string(REGEX MATCH "^UNORM_SHORT_(555|565|101010)$" CHANNEL_TYPE_MATCH ${CHANNEL_TYPE})
     string(REGEX MATCH "^(RGB|RGBX)$" CHANNEL_ORDER_MATCH ${CHANNEL_ORDER})
     if(CHANNEL_TYPE_MATCH)
         if(CHANNEL_ORDER_MATCH)
             if(GEOMETRY_MATCH)
                set (VALID TRUE PARENT_SCOPE)
             endif()
         endif()
     endif()

     string(REGEX MATCH "^(UNORM|SNORM|SIGNED|UNSIGNED)_INT8$" CHANNEL_TYPE_MATCH ${CHANNEL_TYPE})
     string(REGEX MATCH "^(BGRA|ARGB|ABGR)$" CHANNEL_ORDER_MATCH ${CHANNEL_ORDER})
     if(CHANNEL_TYPE_MATCH)
         if(CHANNEL_ORDER_MATCH)
             if(GEOMETRY_MATCH)
                set (VALID TRUE PARENT_SCOPE)
             endif()
         endif()
     endif()

     string(REGEX MATCH "^UNORM_INT8$" CHANNEL_TYPE_MATCH ${CHANNEL_TYPE})
     string(REGEX MATCH "^(SRGB|SRGBX|SRGBA|SBGRA)$" CHANNEL_ORDER_MATCH ${CHANNEL_ORDER})
     if(CHANNEL_TYPE_MATCH)
         if(CHANNEL_ORDER_MATCH)
             if(GEOMETRY_MATCH)
                set (VALID TRUE PARENT_SCOPE)
             endif()
         endif()
     endif()

     string(REGEX MATCH "^INTENSITY$" CHANNEL_ORDER_MATCH ${CHANNEL_ORDER})
     string(REGEX MATCH "^(UNORM|SNORM)_(INT8|INT16)$" CHANNEL_TYPE_MATCH ${CHANNEL_TYPE})
     string(REGEX MATCH "^(HALF_FLOAT|FLOAT)$" CHANNEL_FLOAT_TYPE_MATCH ${CHANNEL_TYPE})
     if(CHANNEL_TYPE_MATCH OR CHANNEL_FLOAT_TYPE_MATCH)
         if(CHANNEL_ORDER_MATCH)
             if(GEOMETRY_MATCH)
                set (VALID TRUE PARENT_SCOPE)
             endif()
         endif()
     endif()

     string(REGEX MATCH "^LUMINANCE$" CHANNEL_ORDER_MATCH ${CHANNEL_ORDER})
     string(REGEX MATCH "^(HALF_FLOAT|FLOAT)$" CHANNEL_FLOAT_TYPE_MATCH ${CHANNEL_TYPE})
     string(REGEX MATCH "^(2DDEPTH|2DADEPTH)$" GEOMETRY_MATCH ${IMAGE_GEOMETRY})
     if(CHANNEL_TYPE_MATCH OR CHANNEL_FLOAT_TYPE_MATCH)
         if(CHANNEL_ORDER_MATCH)
             if(GEOMETRY_MATCH)
                set (VALID TRUE PARENT_SCOPE)
             endif()
         endif()
     endif()

     string(REGEX MATCH "^DEPTH$" CHANNEL_ORDER_MATCH ${CHANNEL_ORDER})
     string(REGEX MATCH "^UNORM_(INT24|INT16)$" CHANNEL_TYPE_MATCH ${CHANNEL_TYPE})
     if(CHANNEL_TYPE_MATCH)
         if(CHANNEL_ORDER_MATCH)
             if(GEOMETRY_MATCH)
                set (VALID TRUE PARENT_SCOPE)
             endif()
         endif()
     endif()
 
     string(REGEX MATCH "^DEPTH_STENCIL$" CHANNEL_ORDER_MATCH ${CHANNEL_ORDER})
     string(REGEX MATCH "^UNORM_INT24$" CHANNEL_TYPE_MATCH ${CHANNEL_TYPE})
     if(CHANNEL_TYPE_MATCH)
         if(CHANNEL_ORDER_MATCH)
             if(GEOMETRY_MATCH)
                set (VALID TRUE PARENT_SCOPE)
             endif()
         endif()
     endif()

endfunction()
