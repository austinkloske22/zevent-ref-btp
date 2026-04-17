class-pool .
*"* class pool for class ZBP_C_EVENT

*"* local type definitions
include ZBP_C_EVENT===================ccdef.

*"* class ZBP_C_EVENT definition
*"* public declarations
  include ZBP_C_EVENT===================cu.
*"* protected declarations
  include ZBP_C_EVENT===================co.
*"* private declarations
  include ZBP_C_EVENT===================ci.
endclass. "ZBP_C_EVENT definition

*"* macro definitions
include ZBP_C_EVENT===================ccmac.
*"* local class implementation
include ZBP_C_EVENT===================ccimp.

*"* test class
include ZBP_C_EVENT===================ccau.

class ZBP_C_EVENT implementation.
*"* method's implementations
  include methods.
endclass. "ZBP_C_EVENT implementation
