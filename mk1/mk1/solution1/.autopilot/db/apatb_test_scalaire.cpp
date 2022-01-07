#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_bus_A "../tv/cdatafile/c.test_scalaire.autotvin_bus_A.dat"
#define AUTOTB_TVOUT_bus_A "../tv/cdatafile/c.test_scalaire.autotvout_bus_A.dat"
// wrapc file define:
#define AUTOTB_TVIN_bus_B "../tv/cdatafile/c.test_scalaire.autotvin_bus_B.dat"
#define AUTOTB_TVOUT_bus_B "../tv/cdatafile/c.test_scalaire.autotvout_bus_B.dat"
// wrapc file define:
#define AUTOTB_TVIN_bus_res "../tv/cdatafile/c.test_scalaire.autotvin_bus_res.dat"
#define AUTOTB_TVOUT_bus_res "../tv/cdatafile/c.test_scalaire.autotvout_bus_res.dat"
// wrapc file define:
#define AUTOTB_TVIN_A "../tv/cdatafile/c.test_scalaire.autotvin_A.dat"
#define AUTOTB_TVOUT_A "../tv/cdatafile/c.test_scalaire.autotvout_A.dat"
// wrapc file define:
#define AUTOTB_TVIN_B "../tv/cdatafile/c.test_scalaire.autotvin_B.dat"
#define AUTOTB_TVOUT_B "../tv/cdatafile/c.test_scalaire.autotvout_B.dat"
// wrapc file define:
#define AUTOTB_TVIN_res "../tv/cdatafile/c.test_scalaire.autotvin_res.dat"
#define AUTOTB_TVOUT_res "../tv/cdatafile/c.test_scalaire.autotvout_res.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_bus_A "../tv/rtldatafile/rtl.test_scalaire.autotvout_bus_A.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_bus_B "../tv/rtldatafile/rtl.test_scalaire.autotvout_bus_B.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_bus_res "../tv/rtldatafile/rtl.test_scalaire.autotvout_bus_res.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A "../tv/rtldatafile/rtl.test_scalaire.autotvout_A.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B "../tv/rtldatafile/rtl.test_scalaire.autotvout_B.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_res "../tv/rtldatafile/rtl.test_scalaire.autotvout_res.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  bus_A_depth = 0;
  bus_B_depth = 0;
  bus_res_depth = 0;
  A_depth = 0;
  B_depth = 0;
  res_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{bus_A " << bus_A_depth << "}\n";
  total_list << "{bus_B " << bus_B_depth << "}\n";
  total_list << "{bus_res " << bus_res_depth << "}\n";
  total_list << "{A " << A_depth << "}\n";
  total_list << "{B " << B_depth << "}\n";
  total_list << "{res " << res_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int bus_A_depth;
    int bus_B_depth;
    int bus_res_depth;
    int A_depth;
    int B_depth;
    int res_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static void RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool no_x = false;
  bool err = false;

  no_x = false;
  // search and replace 'X' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('X', 0);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
  no_x = false;
  // search and replace 'x' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('x', 2);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
}
extern "C" void test_scalaire_hw_stub_wrapper(volatile void *, volatile void *, volatile void *);

extern "C" void apatb_test_scalaire_hw(volatile void * __xlx_apatb_param_A, volatile void * __xlx_apatb_param_B, volatile void * __xlx_apatb_param_res) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_bus_res);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > bus_res_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "bus_res");
  
            // push token into output port buffer
            if (AESL_token != "") {
              bus_res_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 1; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_res)[j*4+0] = bus_res_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_res)[j*4+1] = bus_res_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_res)[j*4+2] = bus_res_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_res)[j*4+3] = bus_res_pc_buffer[i].range(31, 24).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static AESL_FILE_HANDLER aesl_fh;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
//bus_A
aesl_fh.touch(AUTOTB_TVIN_bus_A);
aesl_fh.touch(AUTOTB_TVOUT_bus_A);
//bus_B
aesl_fh.touch(AUTOTB_TVIN_bus_B);
aesl_fh.touch(AUTOTB_TVOUT_bus_B);
//bus_res
aesl_fh.touch(AUTOTB_TVIN_bus_res);
aesl_fh.touch(AUTOTB_TVOUT_bus_res);
//A
aesl_fh.touch(AUTOTB_TVIN_A);
aesl_fh.touch(AUTOTB_TVOUT_A);
//B
aesl_fh.touch(AUTOTB_TVIN_B);
aesl_fh.touch(AUTOTB_TVOUT_B);
//res
aesl_fh.touch(AUTOTB_TVIN_res);
aesl_fh.touch(AUTOTB_TVOUT_res);
CodeState = DUMP_INPUTS;
unsigned __xlx_offset_byte_param_A = 0;
// print bus_A Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_bus_A, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_A = 0*4;
  if (__xlx_apatb_param_A) {
    for (int j = 0  - 0, e = 256 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_A)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_bus_A, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(256, &tcl_file.bus_A_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_bus_A, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_B = 0;
// print bus_B Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_bus_B, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_B = 0*4;
  if (__xlx_apatb_param_B) {
    for (int j = 0  - 0, e = 256 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_B)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_bus_B, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(256, &tcl_file.bus_B_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_bus_B, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_res = 0;
// print bus_res Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_bus_res, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_res = 0*4;
  if (__xlx_apatb_param_res) {
    for (int j = 0  - 0, e = 1 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_res)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_bus_res, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(1, &tcl_file.bus_res_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_bus_res, __xlx_sprintf_buffer.data());
}
// print A Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = __xlx_offset_byte_param_A;

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_A, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.A_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A, __xlx_sprintf_buffer.data());
}
// print B Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = __xlx_offset_byte_param_B;

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_B, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.B_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B, __xlx_sprintf_buffer.data());
}
// print res Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_res, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = __xlx_offset_byte_param_res;

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_res, s.append("\n")); 
  }
  tcl_file.set_num(1, &tcl_file.res_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_res, __xlx_sprintf_buffer.data());
}
CodeState = CALL_C_DUT;
test_scalaire_hw_stub_wrapper(__xlx_apatb_param_A, __xlx_apatb_param_B, __xlx_apatb_param_res);
CodeState = DUMP_OUTPUTS;
// print bus_res Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_bus_res, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_res = 0*4;
  if (__xlx_apatb_param_res) {
    for (int j = 0  - 0, e = 1 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_res)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVOUT_bus_res, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(1, &tcl_file.bus_res_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_bus_res, __xlx_sprintf_buffer.data());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
