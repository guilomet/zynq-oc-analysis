#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
extern "C" void test_scalaire(int*, int*, int*, int, int, int);
extern "C" void apatb_test_scalaire_hw(volatile void * __xlx_apatb_param_A, volatile void * __xlx_apatb_param_B, volatile void * __xlx_apatb_param_res) {
  // Collect __xlx_A__tmp_vec
  vector<sc_bv<32> >__xlx_A__tmp_vec;
  for (int j = 0, e = 256; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_A)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_A)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_A)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_A)[j*4+3];
    __xlx_A__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_A = 256;
  int __xlx_offset_param_A = 0;
  int __xlx_offset_byte_param_A = 0*4;
  int* __xlx_A__input_buffer= new int[__xlx_A__tmp_vec.size()];
  for (int i = 0; i < __xlx_A__tmp_vec.size(); ++i) {
    __xlx_A__input_buffer[i] = __xlx_A__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_B__tmp_vec
  vector<sc_bv<32> >__xlx_B__tmp_vec;
  for (int j = 0, e = 256; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_B)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_B)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_B)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_B)[j*4+3];
    __xlx_B__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_B = 256;
  int __xlx_offset_param_B = 0;
  int __xlx_offset_byte_param_B = 0*4;
  int* __xlx_B__input_buffer= new int[__xlx_B__tmp_vec.size()];
  for (int i = 0; i < __xlx_B__tmp_vec.size(); ++i) {
    __xlx_B__input_buffer[i] = __xlx_B__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_res__tmp_vec
  vector<sc_bv<32> >__xlx_res__tmp_vec;
  for (int j = 0, e = 1; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_res)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_res)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_res)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_res)[j*4+3];
    __xlx_res__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_res = 1;
  int __xlx_offset_param_res = 0;
  int __xlx_offset_byte_param_res = 0*4;
  int* __xlx_res__input_buffer= new int[__xlx_res__tmp_vec.size()];
  for (int i = 0; i < __xlx_res__tmp_vec.size(); ++i) {
    __xlx_res__input_buffer[i] = __xlx_res__tmp_vec[i].range(31, 0).to_uint64();
  }
  // DUT call
  test_scalaire(__xlx_A__input_buffer, __xlx_B__input_buffer, __xlx_res__input_buffer, __xlx_offset_byte_param_A, __xlx_offset_byte_param_B, __xlx_offset_byte_param_res);
// print __xlx_apatb_param_A
  sc_bv<32>*__xlx_A_output_buffer = new sc_bv<32>[__xlx_size_param_A];
  for (int i = 0; i < __xlx_size_param_A; ++i) {
    __xlx_A_output_buffer[i] = __xlx_A__input_buffer[i+__xlx_offset_param_A];
  }
  for (int i = 0; i < __xlx_size_param_A; ++i) {
    ((char*)__xlx_apatb_param_A)[i*4+0] = __xlx_A_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_A)[i*4+1] = __xlx_A_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_A)[i*4+2] = __xlx_A_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_A)[i*4+3] = __xlx_A_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_B
  sc_bv<32>*__xlx_B_output_buffer = new sc_bv<32>[__xlx_size_param_B];
  for (int i = 0; i < __xlx_size_param_B; ++i) {
    __xlx_B_output_buffer[i] = __xlx_B__input_buffer[i+__xlx_offset_param_B];
  }
  for (int i = 0; i < __xlx_size_param_B; ++i) {
    ((char*)__xlx_apatb_param_B)[i*4+0] = __xlx_B_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_B)[i*4+1] = __xlx_B_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_B)[i*4+2] = __xlx_B_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_B)[i*4+3] = __xlx_B_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_res
  sc_bv<32>*__xlx_res_output_buffer = new sc_bv<32>[__xlx_size_param_res];
  for (int i = 0; i < __xlx_size_param_res; ++i) {
    __xlx_res_output_buffer[i] = __xlx_res__input_buffer[i+__xlx_offset_param_res];
  }
  for (int i = 0; i < __xlx_size_param_res; ++i) {
    ((char*)__xlx_apatb_param_res)[i*4+0] = __xlx_res_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_res)[i*4+1] = __xlx_res_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_res)[i*4+2] = __xlx_res_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_res)[i*4+3] = __xlx_res_output_buffer[i].range(31, 24).to_uint();
  }
}
