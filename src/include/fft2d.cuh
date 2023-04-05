#ifndef fft_CUH
#define fft_CUH

#include <cufft.h>


class fft2d {
  bool is_free = false;
  
  float2 *f;
  float2 *g;
  cufftHandle plan2dchunk;
  cudaStream_t stream;

  dim3 BS2d, GS2d0;
  
  size_t ntheta,detw,deth;
  
public:  
  fft2d(size_t ntheta, size_t detw, size_t deth);  
  ~fft2d();  
  void adj(size_t g_, size_t f_, size_t stream);
  void free();
};

#endif
