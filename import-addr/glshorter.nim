type
  GLvoid* = pointer
  GLsync* = distinct pointer
  GLchar* = char
  GLuint* = uint32
  GLint64EXT* = int64
  GLshort* = int16
  GLuint64* = uint64
  GLhalfARB* = uint16
  GLubyte* = uint8
  GLdouble* = float64
  GLhandleARB* = uint32
  GLsizeiptr* = int32
  GLenum* = uint32

var
  glDepthFunc*: proc (`func`: GLenum) {.cdecl.}

const
  GL_DEPTH_BUFFER_BIT*: GLenum = GLenum(0x00000100)
  GL_STENCIL_BUFFER_BIT*: GLenum = GLenum(0x00000400)
  GL_COLOR_BUFFER_BIT*: GLenum = GLenum(0x00004000)
  GL_POINTS*: GLenum = GLenum(0x0000)
  GL_LINES*: GLenum = GLenum(0x0001)
  GL_LINE_LOOP*: GLenum = GLenum(0x0002)
  GL_LINE_STRIP*: GLenum = GLenum(0x0003)
  GL_TRIANGLES*: GLenum = GLenum(0x0004)
  GL_TRIANGLE_STRIP*: GLenum = GLenum(0x0005)
  GL_TRIANGLE_FAN*: GLenum = GLenum(0x0006)
  GL_QUADS*: GLenum = GLenum(0x0007)
  GL_NEVER*: GLenum = GLenum(0x0200)
  GL_LESS*: GLenum = GLenum(0x0201)
  GL_EQUAL*: GLenum = GLenum(0x0202)
  GL_LEQUAL*: GLenum = GLenum(0x0203)
  GL_ALWAYS*: GLenum = GLenum(0x0207)
  GL_SRC_COLOR*: GLenum = GLenum(0x0300)
  GL_ONE_MINUS_SRC_COLOR*: GLenum = GLenum(0x0301)
  GL_SRC_ALPHA*: GLenum = GLenum(0x0302)
  GL_ONE_MINUS_SRC_ALPHA*: GLenum = GLenum(0x0303)
  GL_DST_ALPHA*: GLenum = GLenum(0x0304)
  GL_ONE_MINUS_DST_ALPHA*: GLenum = GLenum(0x0305)
  GL_DST_COLOR*: GLenum = GLenum(0x0306)
  GL_ONE_MINUS_DST_COLOR*: GLenum = GLenum(0x0307)
  GL_SRC_ALPHA_SATURATE*: GLenum = GLenum(0x0308)
  GL_FRONT_LEFT*: GLenum = GLenum(0x0400)
  GL_FRONT_RIGHT*: GLenum = GLenum(0x0401)
  GL_BACK_LEFT*: GLenum = GLenum(0x0402)
  GL_BACK_RIGHT*: GLenum = GLenum(0x0403)
  GL_FRONT*: GLenum = GLenum(0x0404)
  GL_BACK*: GLenum = GLenum(0x0405)
  GL_LEFT*: GLenum = GLenum(0x0406)
  GL_RIGHT*: GLenum = GLenum(0x0407)
  GL_FRONT_AND_BACK*: GLenum = GLenum(0x0408)
  GL_INVALID_ENUM*: GLenum = GLenum(0x0500)
  GL_INVALID_VALUE*: GLenum = GLenum(0x0501)
  GL_INVALID_OPERATION*: GLenum = GLenum(0x0502)
  GL_OUT_OF_MEMORY*: GLenum = GLenum(0x0505)
  GL_CW*: GLenum = GLenum(0x0900)
  GL_CCW*: GLenum = GLenum(0x0901)
  GL_POINT_SIZE*: GLenum = GLenum(0x0B11)
  GL_POINT_SIZE_RANGE*: GLenum = GLenum(0x0B12)
  GL_POINT_SIZE_GRANULARITY*: GLenum = GLenum(0x0B13)
  GL_LINE_SMOOTH*: GLenum = GLenum(0x0B20)
  GL_LINE_WIDTH*: GLenum = GLenum(0x0B21)
  GL_LINE_WIDTH_RANGE*: GLenum = GLenum(0x0B22)
  GL_LINE_WIDTH_GRANULARITY*: GLenum = GLenum(0x0B23)
  GL_POLYGON_MODE*: GLenum = GLenum(0x0B40)
  GL_POLYGON_SMOOTH*: GLenum = GLenum(0x0B41)
  GL_CULL_FACE*: GLenum = GLenum(0x0B44)
  GL_CULL_FACE_MODE*: GLenum = GLenum(0x0B45)
  GL_FRONT_FACE*: GLenum = GLenum(0x0B46)
  GL_DEPTH_RANGE*: GLenum = GLenum(0x0B70)
  GL_DEPTH_TEST*: GLenum = GLenum(0x0B71)
  GL_DEPTH_WRITEMASK*: GLenum = GLenum(0x0B72)
  GL_DEPTH_CLEAR_VALUE*: GLenum = GLenum(0x0B73)
  GL_DEPTH_FUNC*: GLenum = GLenum(0x0B74)
  GL_STENCIL_TEST*: GLenum = GLenum(0x0B90)
  GL_STENCIL_CLEAR_VALUE*: GLenum = GLenum(0x0B91)
  GL_STENCIL_FUNC*: GLenum = GLenum(0x0B92)
  GL_STENCIL_VALUE_MASK*: GLenum = GLenum(0x0B93)
  GL_STENCIL_FAIL*: GLenum = GLenum(0x0B94)
  GL_STENCIL_PASS_DEPTH_FAIL*: GLenum = GLenum(0x0B95)
  GL_STENCIL_PASS_DEPTH_PASS*: GLenum = GLenum(0x0B96)
  GL_STENCIL_REF*: GLenum = GLenum(0x0B97)
  GL_STENCIL_WRITEMASK*: GLenum = GLenum(0x0B98)
  GL_VIEWPORT*: GLenum = GLenum(0x0BA2)
  GL_DITHER*: GLenum = GLenum(0x0BD0)
  GL_BLEND_DST*: GLenum = GLenum(0x0BE0)
  GL_BLEND_SRC*: GLenum = GLenum(0x0BE1)
  GL_BLEND*: GLenum = GLenum(0x0BE2)
  GL_LOGIC_OP_MODE*: GLenum = GLenum(0x0BF0)
  GL_COLOR_LOGIC_OP*: GLenum = GLenum(0x0BF2)
  GL_DRAW_BUFFER*: GLenum = GLenum(0x0C01)
  GL_READ_BUFFER*: GLenum = GLenum(0x0C02)
  GL_SCISSOR_BOX*: GLenum = GLenum(0x0C10)
  GL_SCISSOR_TEST*: GLenum = GLenum(0x0C11)
  GL_COLOR_CLEAR_VALUE*: GLenum = GLenum(0x0C22)
  GL_COLOR_WRITEMASK*: GLenum = GLenum(0x0C23)
  GL_DOUBLEBUFFER*: GLenum = GLenum(0x0C32)
  GL_STEREO*: GLenum = GLenum(0x0C33)
  GL_LINE_SMOOTH_HINT*: GLenum = GLenum(0x0C52)
  GL_POLYGON_SMOOTH_HINT*: GLenum = GLenum(0x0C53)
  GL_UNPACK_SWAP_BYTES*: GLenum = GLenum(0x0CF0)
  GL_UNPACK_LSB_FIRST*: GLenum = GLenum(0x0CF1)
  GL_UNPACK_ROW_LENGTH*: GLenum = GLenum(0x0CF2)
  GL_UNPACK_SKIP_ROWS*: GLenum = GLenum(0x0CF3)
  GL_UNPACK_SKIP_PIXELS*: GLenum = GLenum(0x0CF4)
  GL_UNPACK_ALIGNMENT*: GLenum = GLenum(0x0CF5)
  GL_PACK_SWAP_BYTES*: GLenum = GLenum(0x0D00)
  GL_PACK_LSB_FIRST*: GLenum = GLenum(0x0D01)
  GL_PACK_ROW_LENGTH*: GLenum = GLenum(0x0D02)
  GL_PACK_SKIP_ROWS*: GLenum = GLenum(0x0D03)
  GL_PACK_SKIP_PIXELS*: GLenum = GLenum(0x0D04)
  GL_PACK_ALIGNMENT*: GLenum = GLenum(0x0D05)
  GL_MAX_TEXTURE_SIZE*: GLenum = GLenum(0x0D33)
  GL_MAX_VIEWPORT_DIMS*: GLenum = GLenum(0x0D3A)
  GL_SUBPIXEL_BITS*: GLenum = GLenum(0x0D50)
  GL_TEXTURE_1D*: GLenum = GLenum(0x0DE0)
  GL_TEXTURE_2D*: GLenum = GLenum(0x0DE1)
  GL_POLYGON_OFFSET_UNITS*: GLenum = GLenum(0x2A00)
  GL_POLYGON_OFFSET_POINT*: GLenum = GLenum(0x2A01)
  GL_POLYGON_OFFSET_LINE*: GLenum = GLenum(0x2A02)
  GL_POLYGON_OFFSET_FILL*: GLenum = GLenum(0x8037)
  GL_POLYGON_OFFSET_FACTOR*: GLenum = GLenum(0x8038)
  GL_TEXTURE_BINDING_1D*: GLenum = GLenum(0x8068)
  GL_TEXTURE_BINDING_2D*: GLenum = GLenum(0x8069)
  GL_TEXTURE_WIDTH*: GLenum = GLenum(0x1000)
  GL_TEXTURE_HEIGHT*: GLenum = GLenum(0x1001)
  GL_TEXTURE_INTERNAL_FORMAT*: GLenum = GLenum(0x1003)
  GL_TEXTURE_BORDER_COLOR*: GLenum = GLenum(0x1004)
  GL_TEXTURE_RED_SIZE*: GLenum = GLenum(0x805C)
  GL_TEXTURE_GREEN_SIZE*: GLenum = GLenum(0x805D)
  GL_TEXTURE_BLUE_SIZE*: GLenum = GLenum(0x805E)
  GL_TEXTURE_ALPHA_SIZE*: GLenum = GLenum(0x805F)
  GL_DONT_CARE*: GLenum = GLenum(0x1100)
  GL_FASTEST*: GLenum = GLenum(0x1101)
  GL_NICEST*: GLenum = GLenum(0x1102)
  cGL_BYTE*: GLenum = GLenum(0x1400)
  GL_UNSIGNED_BYTE*: GLenum = GLenum(0x1401)
  cGL_SHORT*: GLenum = GLenum(0x1402)
  GL_UNSIGNED_SHORT*: GLenum = GLenum(0x1403)
  cGL_INT*: GLenum = GLenum(0x1404)
  GL_UNSIGNED_INT*: GLenum = GLenum(0x1405)
  cGL_FLOAT*: GLenum = GLenum(0x1406)
  cGL_DOUBLE*: GLenum = GLenum(0x140A)
  GL_STACK_OVERFLOW*: GLenum = GLenum(0x0503)
  GL_STACK_UNDERFLOW*: GLenum = GLenum(0x0504)
  GL_CLEAR*: GLenum = GLenum(0x1500)
  GL_AND*: GLenum = GLenum(0x1501)
  GL_AND_REVERSE*: GLenum = GLenum(0x1502)
  GL_COPY*: GLenum = GLenum(0x1503)
  GL_AND_INVERTED*: GLenum = GLenum(0x1504)
  GL_NOOP*: GLenum = GLenum(0x1505)
  GL_XOR*: GLenum = GLenum(0x1506)
  GL_OR*: GLenum = GLenum(0x1507)
  GL_NOR*: GLenum = GLenum(0x1508)
  GL_EQUIV*: GLenum = GLenum(0x1509)
  GL_INVERT*: GLenum = GLenum(0x150A)
  GL_OR_REVERSE*: GLenum = GLenum(0x150B)
  GL_COPY_INVERTED*: GLenum = GLenum(0x150C)
  GL_OR_INVERTED*: GLenum = GLenum(0x150D)
  GL_NAND*: GLenum = GLenum(0x150E)
  GL_SET*: GLenum = GLenum(0x150F)
  GL_TEXTURE*: GLenum = GLenum(0x1702)
  GL_COLOR*: GLenum = GLenum(0x1800)
  GL_DEPTH*: GLenum = GLenum(0x1801)
  GL_STENCIL*: GLenum = GLenum(0x1802)
  GL_STENCIL_INDEX*: GLenum = GLenum(0x1901)
  GL_DEPTH_COMPONENT*: GLenum = GLenum(0x1902)
  GL_RED*: GLenum = GLenum(0x1903)
  GL_GREEN*: GLenum = GLenum(0x1904)
  GL_BLUE*: GLenum = GLenum(0x1905)
  GL_ALPHA*: GLenum = GLenum(0x1906)
  GL_RGB*: GLenum = GLenum(0x1907)
  GL_RGBA*: GLenum = GLenum(0x1908)
  GL_POINT*: GLenum = GLenum(0x1B00)
  GL_LINE*: GLenum = GLenum(0x1B01)
  GL_FILL*: GLenum = GLenum(0x1B02)
  GL_KEEP*: GLenum = GLenum(0x1E00)
  GL_REPLACE*: GLenum = GLenum(0x1E01)
  GL_INCR*: GLenum = GLenum(0x1E02)
  GL_DECR*: GLenum = GLenum(0x1E03)
  GL_VENDOR*: GLenum = GLenum(0x1F00)
  GL_RENDERER*: GLenum = GLenum(0x1F01)
  GL_VERSION*: GLenum = GLenum(0x1F02)
  GL_EXTENSIONS*: GLenum = GLenum(0x1F03)
  GL_NEAREST*: GLenum = GLenum(0x2600)
  GL_LINEAR*: GLenum = GLenum(0x2601)
  GL_NEAREST_MIPMAP_NEAREST*: GLenum = GLenum(0x2700)
  GL_LINEAR_MIPMAP_NEAREST*: GLenum = GLenum(0x2701)
  GL_NEAREST_MIPMAP_LINEAR*: GLenum = GLenum(0x2702)
  GL_LINEAR_MIPMAP_LINEAR*: GLenum = GLenum(0x2703)
  GL_TEXTURE_MAG_FILTER*: GLenum = GLenum(0x2800)
  GL_TEXTURE_MIN_FILTER*: GLenum = GLenum(0x2801)
  GL_TEXTURE_WRAP_S*: GLenum = GLenum(0x2802)
  GL_TEXTURE_WRAP_T*: GLenum = GLenum(0x2803)
  GL_PROXY_TEXTURE_1D*: GLenum = GLenum(0x8063)
  GL_PROXY_TEXTURE_2D*: GLenum = GLenum(0x8064)
  GL_REPEAT*: GLenum = GLenum(0x2901)
  GL_R3_G3_B2*: GLenum = GLenum(0x2A10)
  GL_RGB4*: GLenum = GLenum(0x804F)
  GL_RGB5*: GLenum = GLenum(0x8050)
  GL_RGB8*: GLenum = GLenum(0x8051)
  GL_RGB10*: GLenum = GLenum(0x8052)
  GL_RGB12*: GLenum = GLenum(0x8053)
  GL_RGB16*: GLenum = GLenum(0x8054)
  GL_RGBA2*: GLenum = GLenum(0x8055)
  GL_RGBA4*: GLenum = GLenum(0x8056)
  GL_RGB5_A1*: GLenum = GLenum(0x8057)
  GL_RGBA8*: GLenum = GLenum(0x8058)
  GL_RGB10_A2*: GLenum = GLenum(0x8059)
  GL_RGBA12*: GLenum = GLenum(0x805A)
  GL_RGBA16*: GLenum = GLenum(0x805B)
  GL_CURRENT_BIT*: GLenum = GLenum(0x00000001)
  GL_POINT_BIT*: GLenum = GLenum(0x00000002)
  GL_LINE_BIT*: GLenum = GLenum(0x00000004)
  GL_POLYGON_BIT*: GLenum = GLenum(0x00000008)
  GL_POLYGON_STIPPLE_BIT*: GLenum = GLenum(0x00000010)
  GL_PIXEL_MODE_BIT*: GLenum = GLenum(0x00000020)
  GL_LIGHTING_BIT*: GLenum = GLenum(0x00000040)
  GL_FOG_BIT*: GLenum = GLenum(0x00000080)
  GL_ACCUM_BUFFER_BIT*: GLenum = GLenum(0x00000200)
  GL_VIEWPORT_BIT*: GLenum = GLenum(0x00000800)
  GL_TRANSFORM_BIT*: GLenum = GLenum(0x00001000)
  GL_ENABLE_BIT*: GLenum = GLenum(0x00002000)
  GL_HINT_BIT*: GLenum = GLenum(0x00008000)
  GL_EVAL_BIT*: GLenum = GLenum(0x00010000)
  GL_LIST_BIT*: GLenum = GLenum(0x00020000)
  GL_TEXTURE_BIT*: GLenum = GLenum(0x00040000)
  GL_SCISSOR_BIT*: GLenum = GLenum(0x00080000)
  GL_ALL_ATTRIB_BITS*: GLenum = GLenum(0xFFFFFFFF)
  GL_CLIENT_PIXEL_STORE_BIT*: GLenum = GLenum(0x00000001)
  GL_CLIENT_VERTEX_ARRAY_BIT*: GLenum = GLenum(0x00000002)
  GL_CLIENT_ALL_ATTRIB_BITS*: GLenum = GLenum(0xFFFFFFFF)
  GL_QUAD_STRIP*: GLenum = GLenum(0x0008)
  GL_POLYGON*: GLenum = GLenum(0x0009)
  GL_ACCUM*: GLenum = GLenum(0x0100)
  GL_LOAD*: GLenum = GLenum(0x0101)
  GL_RETURN*: GLenum = GLenum(0x0102)
  GL_MULT*: GLenum = GLenum(0x0103)
  GL_ADD*: GLenum = GLenum(0x0104)
  GL_AUX0*: GLenum = GLenum(0x0409)
  GL_AUX1*: GLenum = GLenum(0x040A)
  GL_AUX2*: GLenum = GLenum(0x040B)
  GL_AUX3*: GLenum = GLenum(0x040C)
  GL_2D*: GLenum = GLenum(0x0600)
  GL_3D*: GLenum = GLenum(0x0601)
  GL_3D_COLOR*: GLenum = GLenum(0x0602)
  GL_3D_COLOR_TEXTURE*: GLenum = GLenum(0x0603)
  GL_4D_COLOR_TEXTURE*: GLenum = GLenum(0x0604)
  GL_PASS_THROUGH_TOKEN*: GLenum = GLenum(0x0700)
  GL_POINT_TOKEN*: GLenum = GLenum(0x0701)
  GL_LINE_TOKEN*: GLenum = GLenum(0x0702)
  GL_POLYGON_TOKEN*: GLenum = GLenum(0x0703)
  GL_BITMAP_TOKEN*: GLenum = GLenum(0x0704)
  GL_DRAW_PIXEL_TOKEN*: GLenum = GLenum(0x0705)
  GL_COPY_PIXEL_TOKEN*: GLenum = GLenum(0x0706)
  GL_LINE_RESET_TOKEN*: GLenum = GLenum(0x0707)
  GL_EXP*: GLenum = GLenum(0x0800)
  GL_EXP2*: GLenum = GLenum(0x0801)
  GL_COEFF*: GLenum = GLenum(0x0A00)
  GL_ORDER*: GLenum = GLenum(0x0A01)
  GL_DOMAIN*: GLenum = GLenum(0x0A02)
  GL_PIXEL_MAP_I_TO_I*: GLenum = GLenum(0x0C70)
  GL_PIXEL_MAP_S_TO_S*: GLenum = GLenum(0x0C71)
  GL_PIXEL_MAP_I_TO_R*: GLenum = GLenum(0x0C72)
  GL_PIXEL_MAP_I_TO_G*: GLenum = GLenum(0x0C73)
  GL_PIXEL_MAP_I_TO_B*: GLenum = GLenum(0x0C74)
  GL_PIXEL_MAP_I_TO_A*: GLenum = GLenum(0x0C75)
  GL_PIXEL_MAP_R_TO_R*: GLenum = GLenum(0x0C76)
  GL_PIXEL_MAP_G_TO_G*: GLenum = GLenum(0x0C77)
  GL_PIXEL_MAP_B_TO_B*: GLenum = GLenum(0x0C78)
  GL_PIXEL_MAP_A_TO_A*: GLenum = GLenum(0x0C79)
  GL_VERTEX_ARRAY_POINTER*: GLenum = GLenum(0x808E)
  GL_NORMAL_ARRAY_POINTER*: GLenum = GLenum(0x808F)
  GL_COLOR_ARRAY_POINTER*: GLenum = GLenum(0x8090)
  GL_INDEX_ARRAY_POINTER*: GLenum = GLenum(0x8091)
  GL_TEXTURE_COORD_ARRAY_POINTER*: GLenum = GLenum(0x8092)
  GL_EDGE_FLAG_ARRAY_POINTER*: GLenum = GLenum(0x8093)
  GL_FEEDBACK_BUFFER_POINTER*: GLenum = GLenum(0x0DF0)
  GL_SELECTION_BUFFER_POINTER*: GLenum = GLenum(0x0DF3)
  GL_CURRENT_COLOR*: GLenum = GLenum(0x0B00)
  GL_CURRENT_INDEX*: GLenum = GLenum(0x0B01)
  GL_CURRENT_NORMAL*: GLenum = GLenum(0x0B02)
  GL_CURRENT_TEXTURE_COORDS*: GLenum = GLenum(0x0B03)
  GL_CURRENT_RASTER_COLOR*: GLenum = GLenum(0x0B04)
  GL_CURRENT_RASTER_INDEX*: GLenum = GLenum(0x0B05)
  GL_CURRENT_RASTER_TEXTURE_COORDS*: GLenum = GLenum(0x0B06)
  GL_CURRENT_RASTER_POSITION*: GLenum = GLenum(0x0B07)
  GL_CURRENT_RASTER_POSITION_VALID*: GLenum = GLenum(0x0B08)
  GL_CURRENT_RASTER_DISTANCE*: GLenum = GLenum(0x0B09)
  GL_POINT_SMOOTH*: GLenum = GLenum(0x0B10)
  GL_LINE_STIPPLE*: GLenum = GLenum(0x0B24)
  GL_LINE_STIPPLE_PATTERN*: GLenum = GLenum(0x0B25)
  GL_LINE_STIPPLE_REPEAT*: GLenum = GLenum(0x0B26)
  GL_LIST_MODE*: GLenum = GLenum(0x0B30)
  GL_MAX_LIST_NESTING*: GLenum = GLenum(0x0B31)
  GL_LIST_BASE*: GLenum = GLenum(0x0B32)
  GL_LIST_INDEX*: GLenum = GLenum(0x0B33)
  GL_POLYGON_STIPPLE*: GLenum = GLenum(0x0B42)
  GL_EDGE_FLAG*: GLenum = GLenum(0x0B43)
  GL_LIGHTING*: GLenum = GLenum(0x0B50)
  GL_LIGHT_MODEL_LOCAL_VIEWER*: GLenum = GLenum(0x0B51)
  GL_LIGHT_MODEL_TWO_SIDE*: GLenum = GLenum(0x0B52)
  GL_LIGHT_MODEL_AMBIENT*: GLenum = GLenum(0x0B53)
  GL_SHADE_MODEL*: GLenum = GLenum(0x0B54)
  GL_COLOR_MATERIAL_FACE*: GLenum = GLenum(0x0B55)
  GL_COLOR_MATERIAL_PARAMETER*: GLenum = GLenum(0x0B56)
  GL_COLOR_MATERIAL*: GLenum = GLenum(0x0B57)
  GL_FOG*: GLenum = GLenum(0x0B60)
  GL_FOG_INDEX*: GLenum = GLenum(0x0B61)
  GL_FOG_DENSITY*: GLenum = GLenum(0x0B62)
  GL_FOG_START*: GLenum = GLenum(0x0B63)
  GL_FOG_END*: GLenum = GLenum(0x0B64)
  GL_FOG_MODE*: GLenum = GLenum(0x0B65)
  GL_FOG_COLOR*: GLenum = GLenum(0x0B66)
  GL_ACCUM_CLEAR_VALUE*: GLenum = GLenum(0x0B80)
  GL_MATRIX_MODE*: GLenum = GLenum(0x0BA0)
  GL_NORMALIZE*: GLenum = GLenum(0x0BA1)
  GL_MODELVIEW_STACK_DEPTH*: GLenum = GLenum(0x0BA3)
  GL_PROJECTION_STACK_DEPTH*: GLenum = GLenum(0x0BA4)
  GL_TEXTURE_STACK_DEPTH*: GLenum = GLenum(0x0BA5)
  GL_MODELVIEW_MATRIX*: GLenum = GLenum(0x0BA6)
  GL_PROJECTION_MATRIX*: GLenum = GLenum(0x0BA7)
  GL_TEXTURE_MATRIX*: GLenum = GLenum(0x0BA8)
  GL_ATTRIB_STACK_DEPTH*: GLenum = GLenum(0x0BB0)
  GL_CLIENT_ATTRIB_STACK_DEPTH*: GLenum = GLenum(0x0BB1)
  GL_ALPHA_TEST*: GLenum = GLenum(0x0BC0)
  GL_ALPHA_TEST_FUNC*: GLenum = GLenum(0x0BC1)
  GL_ALPHA_TEST_REF*: GLenum = GLenum(0x0BC2)
  GL_INDEX_LOGIC_OP*: GLenum = GLenum(0x0BF1)
  GL_LOGIC_OP*: GLenum = GLenum(0x0BF1)
  GL_AUX_BUFFERS*: GLenum = GLenum(0x0C00)
  GL_INDEX_CLEAR_VALUE*: GLenum = GLenum(0x0C20)
  GL_INDEX_WRITEMASK*: GLenum = GLenum(0x0C21)
  GL_INDEX_MODE*: GLenum = GLenum(0x0C30)
  GL_RGBA_MODE*: GLenum = GLenum(0x0C31)
  GL_RENDER_MODE*: GLenum = GLenum(0x0C40)
  GL_PERSPECTIVE_CORRECTION_HINT*: GLenum = GLenum(0x0C50)
  GL_POINT_SMOOTH_HINT*: GLenum = GLenum(0x0C51)
  GL_FOG_HINT*: GLenum = GLenum(0x0C54)
  GL_TEXTURE_GEN_S*: GLenum = GLenum(0x0C60)
  GL_TEXTURE_GEN_T*: GLenum = GLenum(0x0C61)
  GL_TEXTURE_GEN_R*: GLenum = GLenum(0x0C62)
  GL_TEXTURE_GEN_Q*: GLenum = GLenum(0x0C63)
  GL_PIXEL_MAP_I_TO_I_SIZE*: GLenum = GLenum(0x0CB0)
  GL_PIXEL_MAP_S_TO_S_SIZE*: GLenum = GLenum(0x0CB1)
  GL_PIXEL_MAP_I_TO_R_SIZE*: GLenum = GLenum(0x0CB2)
  GL_PIXEL_MAP_I_TO_G_SIZE*: GLenum = GLenum(0x0CB3)
  GL_PIXEL_MAP_I_TO_B_SIZE*: GLenum = GLenum(0x0CB4)
  GL_PIXEL_MAP_I_TO_A_SIZE*: GLenum = GLenum(0x0CB5)
  GL_PIXEL_MAP_R_TO_R_SIZE*: GLenum = GLenum(0x0CB6)
  GL_PIXEL_MAP_G_TO_G_SIZE*: GLenum = GLenum(0x0CB7)
  GL_PIXEL_MAP_B_TO_B_SIZE*: GLenum = GLenum(0x0CB8)
  GL_PIXEL_MAP_A_TO_A_SIZE*: GLenum = GLenum(0x0CB9)
  GL_MAP_COLOR*: GLenum = GLenum(0x0D10)
  GL_MAP_STENCIL*: GLenum = GLenum(0x0D11)
  GL_INDEX_SHIFT*: GLenum = GLenum(0x0D12)
  GL_INDEX_OFFSET*: GLenum = GLenum(0x0D13)
  GL_RED_SCALE*: GLenum = GLenum(0x0D14)
  GL_RED_BIAS*: GLenum = GLenum(0x0D15)
  GL_ZOOM_X*: GLenum = GLenum(0x0D16)
  GL_ZOOM_Y*: GLenum = GLenum(0x0D17)
  GL_GREEN_SCALE*: GLenum = GLenum(0x0D18)
  GL_GREEN_BIAS*: GLenum = GLenum(0x0D19)
  GL_BLUE_SCALE*: GLenum = GLenum(0x0D1A)
  GL_BLUE_BIAS*: GLenum = GLenum(0x0D1B)
  GL_ALPHA_SCALE*: GLenum = GLenum(0x0D1C)
  GL_ALPHA_BIAS*: GLenum = GLenum(0x0D1D)
  GL_DEPTH_SCALE*: GLenum = GLenum(0x0D1E)
  GL_DEPTH_BIAS*: GLenum = GLenum(0x0D1F)
  GL_MAX_EVAL_ORDER*: GLenum = GLenum(0x0D30)
  GL_MAX_LIGHTS*: GLenum = GLenum(0x0D31)
  GL_MAX_CLIP_PLANES*: GLenum = GLenum(0x0D32)
  GL_MAX_PIXEL_MAP_TABLE*: GLenum = GLenum(0x0D34)
  GL_MAX_ATTRIB_STACK_DEPTH*: GLenum = GLenum(0x0D35)
  GL_MAX_MODELVIEW_STACK_DEPTH*: GLenum = GLenum(0x0D36)
  GL_MAX_NAME_STACK_DEPTH*: GLenum = GLenum(0x0D37)
  GL_MAX_PROJECTION_STACK_DEPTH*: GLenum = GLenum(0x0D38)
  GL_MAX_TEXTURE_STACK_DEPTH*: GLenum = GLenum(0x0D39)
  GL_MAX_CLIENT_ATTRIB_STACK_DEPTH*: GLenum = GLenum(0x0D3B)
  GL_INDEX_BITS*: GLenum = GLenum(0x0D51)
  GL_RED_BITS*: GLenum = GLenum(0x0D52)
  GL_GREEN_BITS*: GLenum = GLenum(0x0D53)
  GL_BLUE_BITS*: GLenum = GLenum(0x0D54)
  GL_ALPHA_BITS*: GLenum = GLenum(0x0D55)
  GL_DEPTH_BITS*: GLenum = GLenum(0x0D56)
  GL_STENCIL_BITS*: GLenum = GLenum(0x0D57)
  GL_ACCUM_RED_BITS*: GLenum = GLenum(0x0D58)
  GL_ACCUM_GREEN_BITS*: GLenum = GLenum(0x0D59)
  GL_ACCUM_BLUE_BITS*: GLenum = GLenum(0x0D5A)
  GL_ACCUM_ALPHA_BITS*: GLenum = GLenum(0x0D5B)
  GL_NAME_STACK_DEPTH*: GLenum = GLenum(0x0D70)
  GL_AUTO_NORMAL*: GLenum = GLenum(0x0D80)
  GL_MAP1_COLOR_4*: GLenum = GLenum(0x0D90)
  GL_MAP1_INDEX*: GLenum = GLenum(0x0D91)
  GL_MAP1_NORMAL*: GLenum = GLenum(0x0D92)
  GL_MAP1_TEXTURE_COORD_1*: GLenum = GLenum(0x0D93)
  GL_MAP1_TEXTURE_COORD_2*: GLenum = GLenum(0x0D94)
  GL_MAP1_TEXTURE_COORD_3*: GLenum = GLenum(0x0D95)
  GL_MAP1_TEXTURE_COORD_4*: GLenum = GLenum(0x0D96)
  GL_MAP1_VERTEX_3*: GLenum = GLenum(0x0D97)
  GL_MAP1_VERTEX_4*: GLenum = GLenum(0x0D98)
  GL_MAP2_COLOR_4*: GLenum = GLenum(0x0DB0)
  GL_MAP2_INDEX*: GLenum = GLenum(0x0DB1)
  GL_MAP2_NORMAL*: GLenum = GLenum(0x0DB2)
  GL_MAP2_TEXTURE_COORD_1*: GLenum = GLenum(0x0DB3)
  GL_MAP2_TEXTURE_COORD_2*: GLenum = GLenum(0x0DB4)
  GL_MAP2_TEXTURE_COORD_3*: GLenum = GLenum(0x0DB5)
  GL_MAP2_TEXTURE_COORD_4*: GLenum = GLenum(0x0DB6)
  GL_MAP2_VERTEX_3*: GLenum = GLenum(0x0DB7)
  GL_MAP2_VERTEX_4*: GLenum = GLenum(0x0DB8)
  GL_MAP1_GRID_DOMAIN*: GLenum = GLenum(0x0DD0)
  GL_MAP1_GRID_SEGMENTS*: GLenum = GLenum(0x0DD1)
  GL_MAP2_GRID_DOMAIN*: GLenum = GLenum(0x0DD2)
  GL_MAP2_GRID_SEGMENTS*: GLenum = GLenum(0x0DD3)
  GL_FEEDBACK_BUFFER_SIZE*: GLenum = GLenum(0x0DF1)
  GL_FEEDBACK_BUFFER_TYPE*: GLenum = GLenum(0x0DF2)
  GL_SELECTION_BUFFER_SIZE*: GLenum = GLenum(0x0DF4)
  GL_VERTEX_ARRAY*: GLenum = GLenum(0x8074)
  GL_NORMAL_ARRAY*: GLenum = GLenum(0x8075)
  GL_COLOR_ARRAY*: GLenum = GLenum(0x8076)
  GL_INDEX_ARRAY*: GLenum = GLenum(0x8077)
  GL_TEXTURE_COORD_ARRAY*: GLenum = GLenum(0x8078)
  GL_EDGE_FLAG_ARRAY*: GLenum = GLenum(0x8079)
  GL_VERTEX_ARRAY_SIZE*: GLenum = GLenum(0x807A)
  GL_VERTEX_ARRAY_TYPE*: GLenum = GLenum(0x807B)
  GL_VERTEX_ARRAY_STRIDE*: GLenum = GLenum(0x807C)
  GL_NORMAL_ARRAY_TYPE*: GLenum = GLenum(0x807E)
  GL_NORMAL_ARRAY_STRIDE*: GLenum = GLenum(0x807F)
  GL_COLOR_ARRAY_SIZE*: GLenum = GLenum(0x8081)
  GL_COLOR_ARRAY_TYPE*: GLenum = GLenum(0x8082)
  GL_COLOR_ARRAY_STRIDE*: GLenum = GLenum(0x8083)
  GL_INDEX_ARRAY_TYPE*: GLenum = GLenum(0x8085)
  GL_INDEX_ARRAY_STRIDE*: GLenum = GLenum(0x8086)
  GL_TEXTURE_COORD_ARRAY_SIZE*: GLenum = GLenum(0x8088)
  GL_TEXTURE_COORD_ARRAY_TYPE*: GLenum = GLenum(0x8089)
  GL_TEXTURE_COORD_ARRAY_STRIDE*: GLenum = GLenum(0x808A)
  GL_EDGE_FLAG_ARRAY_STRIDE*: GLenum = GLenum(0x808C)
  GL_TEXTURE_COMPONENTS*: GLenum = GLenum(0x1003)
  GL_TEXTURE_BORDER*: GLenum = GLenum(0x1005)
  GL_TEXTURE_LUMINANCE_SIZE*: GLenum = GLenum(0x8060)
  GL_TEXTURE_INTENSITY_SIZE*: GLenum = GLenum(0x8061)
  GL_TEXTURE_PRIORITY*: GLenum = GLenum(0x8066)
  GL_TEXTURE_RESIDENT*: GLenum = GLenum(0x8067)
  GL_AMBIENT*: GLenum = GLenum(0x1200)
  GL_DIFFUSE*: GLenum = GLenum(0x1201)
  GL_SPECULAR*: GLenum = GLenum(0x1202)
  GL_POSITION*: GLenum = GLenum(0x1203)
  GL_SPOT_DIRECTION*: GLenum = GLenum(0x1204)
  GL_SPOT_EXPONENT*: GLenum = GLenum(0x1205)
  GL_SPOT_CUTOFF*: GLenum = GLenum(0x1206)
  GL_CONSTANT_ATTENUATION*: GLenum = GLenum(0x1207)
  GL_LINEAR_ATTENUATION*: GLenum = GLenum(0x1208)
  GL_QUADRATIC_ATTENUATION*: GLenum = GLenum(0x1209)
  GL_COMPILE*: GLenum = GLenum(0x1300)
  GL_COMPILE_AND_EXECUTE*: GLenum = GLenum(0x1301)
  GL_2_BYTES*: GLenum = GLenum(0x1407)
  GL_3_BYTES*: GLenum = GLenum(0x1408)
  GL_4_BYTES*: GLenum = GLenum(0x1409)
  GL_EMISSION*: GLenum = GLenum(0x1600)
  GL_SHININESS*: GLenum = GLenum(0x1601)
  GL_AMBIENT_AND_DIFFUSE*: GLenum = GLenum(0x1602)
  GL_COLOR_INDEXES*: GLenum = GLenum(0x1603)
  GL_MODELVIEW*: GLenum = GLenum(0x1700)
  GL_PROJECTION*: GLenum = GLenum(0x1701)
  GL_COLOR_INDEX*: GLenum = GLenum(0x1900)
  GL_LUMINANCE*: GLenum = GLenum(0x1909)
  GL_LUMINANCE_ALPHA*: GLenum = GLenum(0x190A)
  GL_BITMAP*: GLenum = GLenum(0x1A00)
  GL_RENDER*: GLenum = GLenum(0x1C00)
  GL_FEEDBACK*: GLenum = GLenum(0x1C01)
  GL_SELECT*: GLenum = GLenum(0x1C02)
  GL_FLAT*: GLenum = GLenum(0x1D00)
  GL_SMOOTH*: GLenum = GLenum(0x1D01)
  GL_S*: GLenum = GLenum(0x2000)
  GL_T*: GLenum = GLenum(0x2001)
  GL_R*: GLenum = GLenum(0x2002)
  GL_Q*: GLenum = GLenum(0x2003)
  GL_MODULATE*: GLenum = GLenum(0x2100)
  GL_DECAL*: GLenum = GLenum(0x2101)
  GL_TEXTURE_ENV_MODE*: GLenum = GLenum(0x2200)
  GL_TEXTURE_ENV_COLOR*: GLenum = GLenum(0x2201)
  GL_TEXTURE_ENV*: GLenum = GLenum(0x2300)
  GL_EYE_LINEAR*: GLenum = GLenum(0x2400)
  GL_OBJECT_LINEAR*: GLenum = GLenum(0x2401)
  GL_SPHERE_MAP*: GLenum = GLenum(0x2402)
  GL_TEXTURE_GEN_MODE*: GLenum = GLenum(0x2500)
  GL_OBJECT_PLANE*: GLenum = GLenum(0x2501)
  GL_EYE_PLANE*: GLenum = GLenum(0x2502)
  GL_CLAMP*: GLenum = GLenum(0x2900)
  GL_ALPHA4*: GLenum = GLenum(0x803B)
  GL_ALPHA8*: GLenum = GLenum(0x803C)
  GL_ALPHA12*: GLenum = GLenum(0x803D)
  GL_ALPHA16*: GLenum = GLenum(0x803E)
  GL_LUMINANCE4*: GLenum = GLenum(0x803F)
  GL_LUMINANCE8*: GLenum = GLenum(0x8040)
  GL_LUMINANCE12*: GLenum = GLenum(0x8041)
  GL_LUMINANCE16*: GLenum = GLenum(0x8042)
  GL_LUMINANCE4_ALPHA4*: GLenum = GLenum(0x8043)
  GL_LUMINANCE6_ALPHA2*: GLenum = GLenum(0x8044)
  GL_LUMINANCE8_ALPHA8*: GLenum = GLenum(0x8045)
  GL_LUMINANCE12_ALPHA4*: GLenum = GLenum(0x8046)
  GL_LUMINANCE12_ALPHA12*: GLenum = GLenum(0x8047)
  GL_LUMINANCE16_ALPHA16*: GLenum = GLenum(0x8048)
  GL_INTENSITY*: GLenum = GLenum(0x8049)
  GL_INTENSITY4*: GLenum = GLenum(0x804A)
  GL_INTENSITY8*: GLenum = GLenum(0x804B)
  GL_INTENSITY12*: GLenum = GLenum(0x804C)
  GL_INTENSITY16*: GLenum = GLenum(0x804D)
  GL_V2F*: GLenum = GLenum(0x2A20)
  GL_V3F*: GLenum = GLenum(0x2A21)
  GL_C4UB_V2F*: GLenum = GLenum(0x2A22)
  GL_C4UB_V3F*: GLenum = GLenum(0x2A23)
  GL_C3F_V3F*: GLenum = GLenum(0x2A24)
  GL_N3F_V3F*: GLenum = GLenum(0x2A25)
  GL_C4F_N3F_V3F*: GLenum = GLenum(0x2A26)
  GL_T2F_V3F*: GLenum = GLenum(0x2A27)
  GL_T4F_V4F*: GLenum = GLenum(0x2A28)
  GL_T2F_C4UB_V3F*: GLenum = GLenum(0x2A29)
  GL_T2F_C3F_V3F*: GLenum = GLenum(0x2A2A)
  GL_T2F_N3F_V3F*: GLenum = GLenum(0x2A2B)
  GL_T2F_C4F_N3F_V3F*: GLenum = GLenum(0x2A2C)
  GL_T4F_C4F_N3F_V4F*: GLenum = GLenum(0x2A2D)
  GL_CLIP_PLANE0*: GLenum = GLenum(0x3000)
  GL_CLIP_PLANE1*: GLenum = GLenum(0x3001)
  GL_CLIP_PLANE2*: GLenum = GLenum(0x3002)
  GL_CLIP_PLANE3*: GLenum = GLenum(0x3003)
  GL_CLIP_PLANE4*: GLenum = GLenum(0x3004)
  GL_CLIP_PLANE5*: GLenum = GLenum(0x3005)
  GL_LIGHT0*: GLenum = GLenum(0x4000)
  GL_LIGHT1*: GLenum = GLenum(0x4001)
  GL_LIGHT2*: GLenum = GLenum(0x4002)
  GL_LIGHT3*: GLenum = GLenum(0x4003)
  GL_LIGHT4*: GLenum = GLenum(0x4004)
  GL_LIGHT5*: GLenum = GLenum(0x4005)
  GL_LIGHT6*: GLenum = GLenum(0x4006)
  GL_LIGHT7*: GLenum = GLenum(0x4007)
  GL_UNSIGNED_BYTE_3_3_2*: GLenum = GLenum(0x8032)
  GL_UNSIGNED_SHORT_4_4_4_4*: GLenum = GLenum(0x8033)
  GL_UNSIGNED_SHORT_5_5_5_1*: GLenum = GLenum(0x8034)
  GL_UNSIGNED_INT_8_8_8_8*: GLenum = GLenum(0x8035)
  GL_UNSIGNED_INT_10_10_10_2*: GLenum = GLenum(0x8036)
  GL_TEXTURE_BINDING_3D*: GLenum = GLenum(0x806A)
  GL_PACK_SKIP_IMAGES*: GLenum = GLenum(0x806B)
  GL_PACK_IMAGE_HEIGHT*: GLenum = GLenum(0x806C)
  GL_UNPACK_SKIP_IMAGES*: GLenum = GLenum(0x806D)
  GL_UNPACK_IMAGE_HEIGHT*: GLenum = GLenum(0x806E)
  GL_TEXTURE_3D*: GLenum = GLenum(0x806F)
  GL_PROXY_TEXTURE_3D*: GLenum = GLenum(0x8070)
  GL_TEXTURE_DEPTH*: GLenum = GLenum(0x8071)
  GL_TEXTURE_WRAP_R*: GLenum = GLenum(0x8072)
  GL_MAX_3D_TEXTURE_SIZE*: GLenum = GLenum(0x8073)
  GL_UNSIGNED_BYTE_2_3_3_REV*: GLenum = GLenum(0x8362)
  GL_UNSIGNED_SHORT_5_6_5*: GLenum = GLenum(0x8363)
  GL_UNSIGNED_SHORT_5_6_5_REV*: GLenum = GLenum(0x8364)
  GL_UNSIGNED_SHORT_4_4_4_4_REV*: GLenum = GLenum(0x8365)
  GL_UNSIGNED_SHORT_1_5_5_5_REV*: GLenum = GLenum(0x8366)
  GL_UNSIGNED_INT_8_8_8_8_REV*: GLenum = GLenum(0x8367)
  GL_UNSIGNED_INT_2_10_10_10_REV*: GLenum = GLenum(0x8368)
  GL_BGR*: GLenum = GLenum(0x80E0)
  GL_BGRA*: GLenum = GLenum(0x80E1)
  GL_MAX_ELEMENTS_VERTICES*: GLenum = GLenum(0x80E8)
  GL_MAX_ELEMENTS_INDICES*: GLenum = GLenum(0x80E9)
  GL_CLAMP_TO_EDGE*: GLenum = GLenum(0x812F)
  GL_TEXTURE_MIN_LOD*: GLenum = GLenum(0x813A)
  GL_TEXTURE_MAX_LOD*: GLenum = GLenum(0x813B)
  GL_TEXTURE_BASE_LEVEL*: GLenum = GLenum(0x813C)
  GL_TEXTURE_MAX_LEVEL*: GLenum = GLenum(0x813D)
  GL_SMOOTH_POINT_SIZE_RANGE*: GLenum = GLenum(0x0B12)
  GL_SMOOTH_POINT_SIZE_GRANULARITY*: GLenum = GLenum(0x0B13)
  GL_SMOOTH_LINE_WIDTH_RANGE*: GLenum = GLenum(0x0B22)
  GL_SMOOTH_LINE_WIDTH_GRANULARITY*: GLenum = GLenum(0x0B23)
  GL_ALIASED_LINE_WIDTH_RANGE*: GLenum = GLenum(0x846E)
  GL_RESCALE_NORMAL*: GLenum = GLenum(0x803A)
  GL_LIGHT_MODEL_COLOR_CONTROL*: GLenum = GLenum(0x81F8)
  GL_SINGLE_COLOR*: GLenum = GLenum(0x81F9)
  GL_SEPARATE_SPECULAR_COLOR*: GLenum = GLenum(0x81FA)
  GL_ALIASED_POINT_SIZE_RANGE*: GLenum = GLenum(0x846D)
  GL_TEXTURE0*: GLenum = GLenum(0x84C0)
  GL_TEXTURE1*: GLenum = GLenum(0x84C1)
  GL_TEXTURE2*: GLenum = GLenum(0x84C2)
  GL_TEXTURE3*: GLenum = GLenum(0x84C3)
  GL_TEXTURE4*: GLenum = GLenum(0x84C4)
  GL_TEXTURE5*: GLenum = GLenum(0x84C5)
  GL_TEXTURE6*: GLenum = GLenum(0x84C6)
  GL_TEXTURE7*: GLenum = GLenum(0x84C7)
  GL_TEXTURE8*: GLenum = GLenum(0x84C8)
  GL_TEXTURE9*: GLenum = GLenum(0x84C9)
  GL_TEXTURE10*: GLenum = GLenum(0x84CA)
  GL_TEXTURE11*: GLenum = GLenum(0x84CB)
  GL_TEXTURE12*: GLenum = GLenum(0x84CC)
  GL_TEXTURE13*: GLenum = GLenum(0x84CD)
  GL_TEXTURE14*: GLenum = GLenum(0x84CE)
  GL_TEXTURE15*: GLenum = GLenum(0x84CF)
  GL_TEXTURE16*: GLenum = GLenum(0x84D0)
  GL_TEXTURE17*: GLenum = GLenum(0x84D1)
  GL_TEXTURE18*: GLenum = GLenum(0x84D2)
  GL_TEXTURE19*: GLenum = GLenum(0x84D3)
  GL_TEXTURE20*: GLenum = GLenum(0x84D4)
  GL_TEXTURE21*: GLenum = GLenum(0x84D5)
  GL_TEXTURE22*: GLenum = GLenum(0x84D6)
  GL_TEXTURE23*: GLenum = GLenum(0x84D7)
  GL_TEXTURE24*: GLenum = GLenum(0x84D8)
  GL_TEXTURE25*: GLenum = GLenum(0x84D9)
  GL_TEXTURE26*: GLenum = GLenum(0x84DA)
  GL_TEXTURE27*: GLenum = GLenum(0x84DB)
  GL_TEXTURE28*: GLenum = GLenum(0x84DC)
  GL_TEXTURE29*: GLenum = GLenum(0x84DD)
  GL_TEXTURE30*: GLenum = GLenum(0x84DE)
  GL_TEXTURE31*: GLenum = GLenum(0x84DF)
  GL_ACTIVE_TEXTURE*: GLenum = GLenum(0x84E0)
  GL_MULTISAMPLE*: GLenum = GLenum(0x809D)
  GL_SAMPLE_ALPHA_TO_COVERAGE*: GLenum = GLenum(0x809E)
  GL_SAMPLE_ALPHA_TO_ONE*: GLenum = GLenum(0x809F)
  GL_SAMPLE_COVERAGE*: GLenum = GLenum(0x80A0)
  GL_SAMPLE_BUFFERS*: GLenum = GLenum(0x80A8)
  GL_SAMPLES*: GLenum = GLenum(0x80A9)
  GL_SAMPLE_COVERAGE_VALUE*: GLenum = GLenum(0x80AA)
  GL_SAMPLE_COVERAGE_INVERT*: GLenum = GLenum(0x80AB)
  GL_TEXTURE_CUBE_MAP*: GLenum = GLenum(0x8513)
  GL_TEXTURE_BINDING_CUBE_MAP*: GLenum = GLenum(0x8514)
  GL_TEXTURE_CUBE_MAP_POSITIVE_X*: GLenum = GLenum(0x8515)
  GL_TEXTURE_CUBE_MAP_NEGATIVE_X*: GLenum = GLenum(0x8516)
  GL_TEXTURE_CUBE_MAP_POSITIVE_Y*: GLenum = GLenum(0x8517)
  GL_TEXTURE_CUBE_MAP_NEGATIVE_Y*: GLenum = GLenum(0x8518)
  GL_TEXTURE_CUBE_MAP_POSITIVE_Z*: GLenum = GLenum(0x8519)
  GL_TEXTURE_CUBE_MAP_NEGATIVE_Z*: GLenum = GLenum(0x851A)
