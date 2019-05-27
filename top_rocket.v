//`define SYNTHESIS

//`define RANDOMIZE_GARBAGE_ASSIGN
//`define RANDOMIZE_INVALID_ASSIGN
//`define RANDOMIZE_REG_INIT
//`define RANDOMIZE_MEM_INIT
//`define RANDOMIZE_DELAY 2
//`define INIT_RANDOM
//`define RANDOM 0
//`define SIMU

module top_rocket(

    input clk,
    input reset,
    
  output [3:0]  m_axi_awid     ,
  output [31:0] m_axi_awaddr   ,
  output [7:0]  m_axi_awlen    ,
  output [2:0]  m_axi_awsize   ,
  output [1:0]  m_axi_awburst  ,
  output        m_axi_awlock   , // not supported in AXI4
  output [3:0]  m_axi_awcache  ,
  output [2:0]  m_axi_awprot   ,
  output [3:0]  m_axi_awqos    ,
  output        m_axi_awvalid  ,
  input         m_axi_awready  ,
  output [63:0] m_axi_wdata    ,
  output [7:0]  m_axi_wstrb    ,
  output        m_axi_wlast    ,
  output        m_axi_wvalid   ,
  input         m_axi_wready   ,
  input  [3:0]  m_axi_bid      ,
  input  [1:0]  m_axi_bresp    ,
  input         m_axi_bvalid   ,
  output        m_axi_bready   ,
  output [3:0]  m_axi_arid     ,
  output [31:0] m_axi_araddr   ,
  output [7:0]  m_axi_arlen    ,
  output [2:0]  m_axi_arsize   ,
  output [1:0]  m_axi_arburst  ,
  output        m_axi_arlock   , // not supported in AXI4
  output [3:0]  m_axi_arcache  ,
  output [2:0]  m_axi_arprot   ,
  output [3:0]  m_axi_arqos    ,
  output        m_axi_arvalid  ,
  input         m_axi_arready  ,
  input  [3:0]  m_axi_rid      ,
  input  [63:0] m_axi_rdata    ,
  input  [1:0]  m_axi_rresp    ,
  input         m_axi_rlast    ,
  input         m_axi_rvalid   ,
  output        m_axi_rready   ,
    
    output [3:0]  s_axi_arid,
    output [30:0] s_axi_araddr,   
    output [7:0]  s_axi_arlen,    
    output [2:0]  s_axi_arsize,   
    output [1:0]  s_axi_arburst,  
    output        s_axi_arlock,   
    output [3:0]  s_axi_arcache,  
    output [2:0]  s_axi_arprot,   
    input         s_axi_arready,  
    output        s_axi_arvalid,  
    input  [3:0]  s_axi_rid,      
    input  [63:0] s_axi_rdata,    
    input  [1:0]  s_axi_rresp,    
    input         s_axi_rlast,    
    output        s_axi_rready,   
    input         s_axi_rvalid,   
    output [3:0]  s_axi_awid,     
    output [30:0] s_axi_awaddr,   
    output [7:0]  s_axi_awlen,    
    output [2:0]  s_axi_awsize,   
    output [1:0]  s_axi_awburst,  
    output        s_axi_awlock,   
    output [3:0]  s_axi_awcache,  
    output [2:0]  s_axi_awprot,   
    input         s_axi_awready,  
    output        s_axi_awvalid,  
    output [63:0] s_axi_wdata,    
    output [7:0]  s_axi_wstrb,    
    output        s_axi_wlast,    
    input         s_axi_wready,   
    output        s_axi_wvalid,   
    input  [3:0]  s_axi_bid,      
    input  [1:0]  s_axi_bresp,    
    output        s_axi_bready, 
    input         s_axi_bvalid
      );
   
   wire [3:0]  mem_axi4_0_aw_id    ;
   wire [31:0] mem_axi4_0_aw_addr  ;
   wire [7:0]  mem_axi4_0_aw_len   ;
   wire [2:0]  mem_axi4_0_aw_size  ;
   wire [1:0]  mem_axi4_0_aw_burst ;
   wire        mem_axi4_0_aw_lock  ;
   wire [3:0]  mem_axi4_0_aw_cache ;
   wire [2:0]  mem_axi4_0_aw_prot  ;
   wire        mem_axi4_0_aw_valid ;
   wire        mem_axi4_0_aw_ready ;
   wire [63:0] mem_axi4_0_w_data   ;
   wire [7:0]  mem_axi4_0_w_strb   ;
   wire        mem_axi4_0_w_last   ;
   wire        mem_axi4_0_w_valid  ;
   wire        mem_axi4_0_w_ready  ;
   wire [3:0]  mem_axi4_0_b_id     ;
   wire [1:0]  mem_axi4_0_b_resp   ;
   wire        mem_axi4_0_b_valid  ;
   wire        mem_axi4_0_b_ready  ;
   wire [3:0]  mem_axi4_0_ar_id    ;
   wire [31:0] mem_axi4_0_ar_addr  ;
   wire [7:0]  mem_axi4_0_ar_len   ;
   wire [2:0]  mem_axi4_0_ar_size  ;
   wire [1:0]  mem_axi4_0_ar_burst ;
   wire        mem_axi4_0_ar_lock  ;
   wire [3:0]  mem_axi4_0_ar_cache ;
   wire [2:0]  mem_axi4_0_ar_prot  ;
   wire        mem_axi4_0_ar_valid ;
   wire        mem_axi4_0_ar_ready ;
   wire [3:0]  mem_axi4_0_r_id     ;
   wire [63:0] mem_axi4_0_r_data   ;
   wire [1:0]  mem_axi4_0_r_resp   ;
   wire        mem_axi4_0_r_last   ;
   wire        mem_axi4_0_r_valid  ;
   wire        mem_axi4_0_r_ready  ;
   wire [3:0]  mem_axi4_0_aw_qos   ;
   wire [3:0]  mem_axi4_0_ar_qos   ;
 
 
   wire        mmio_axi4_0_aw_ready ;
   wire        mmio_axi4_0_aw_valid ;
   wire [3:0]  mmio_axi4_0_aw_id    ;
   wire [30:0] mmio_axi4_0_aw_addr  ;
   wire [7:0]  mmio_axi4_0_aw_len   ;
   wire [2:0]  mmio_axi4_0_aw_size  ;
   wire [1:0]  mmio_axi4_0_aw_burst ;
   wire        mmio_axi4_0_aw_lock  ;
   wire [3:0]  mmio_axi4_0_aw_cache ;
   wire [2:0]  mmio_axi4_0_aw_prot  ;
   wire [3:0]  mmio_axi4_0_aw_qos   ;
   wire        mmio_axi4_0_w_ready  ;
   wire        mmio_axi4_0_w_valid  ;
   wire [63:0] mmio_axi4_0_w_data   ;
   wire [7:0]  mmio_axi4_0_w_strb   ;
   wire        mmio_axi4_0_w_last   ;
   wire        mmio_axi4_0_b_ready  ;
   wire        mmio_axi4_0_b_valid  ;
   wire [3:0]  mmio_axi4_0_b_id     ;
   wire [1:0]  mmio_axi4_0_b_resp   ;
   wire        mmio_axi4_0_ar_ready ;
   wire        mmio_axi4_0_ar_valid ;
   wire [3:0]  mmio_axi4_0_ar_id    ;
   wire [30:0] mmio_axi4_0_ar_addr  ;
   wire [7:0]  mmio_axi4_0_ar_len   ;
   wire [2:0]  mmio_axi4_0_ar_size  ;
   wire [1:0]  mmio_axi4_0_ar_burst ;
   wire        mmio_axi4_0_ar_lock  ;
   wire [3:0]  mmio_axi4_0_ar_cache ;
   wire [2:0]  mmio_axi4_0_ar_prot  ;
   wire [3:0]  mmio_axi4_0_ar_qos   ;
   wire        mmio_axi4_0_r_ready  ;
   wire        mmio_axi4_0_r_valid  ;
   wire [3:0]  mmio_axi4_0_r_id     ;
   wire [63:0] mmio_axi4_0_r_data   ;
   wire [1:0]  mmio_axi4_0_r_resp   ;
   wire        mmio_axi4_0_r_last   ;
 
   assign mem_axi4_0_aw_id    = m_axi_awid    ;
   assign mem_axi4_0_aw_addr  = m_axi_awaddr  ;
   assign mem_axi4_0_aw_len   = m_axi_awlen   ;
   assign mem_axi4_0_aw_size  = m_axi_awsize  ;
   assign mem_axi4_0_aw_burst = m_axi_awburst ;
   assign mem_axi4_0_aw_lock  = m_axi_awlock  ;
   assign mem_axi4_0_aw_cache = m_axi_awcache ;
   assign mem_axi4_0_aw_prot  = m_axi_awprot  ;
   assign mem_axi4_0_aw_qos   = m_axi_awqos   ;
   assign mem_axi4_0_aw_valid = m_axi_awvalid ;
   assign mem_axi4_0_w_data   = m_axi_wdata   ;
   assign mem_axi4_0_w_strb   = m_axi_wstrb   ;
   assign mem_axi4_0_w_last   = m_axi_wlast   ;
   assign mem_axi4_0_w_valid  = m_axi_wvalid  ;
   assign mem_axi4_0_b_ready  = m_axi_bready  ;
   assign mem_axi4_0_ar_id    = m_axi_arid    ;
   assign mem_axi4_0_ar_addr  = m_axi_araddr  ;
   assign mem_axi4_0_ar_len   = m_axi_arlen   ;
   assign mem_axi4_0_ar_size  = m_axi_arsize  ;
   assign mem_axi4_0_ar_burst = m_axi_arburst ;
   assign mem_axi4_0_ar_lock  = m_axi_arlock  ;
   assign mem_axi4_0_ar_cache = m_axi_arcache ;
   assign mem_axi4_0_ar_prot  = m_axi_arprot  ;
   assign mem_axi4_0_ar_qos   = m_axi_arqos   ;
   assign mem_axi4_0_ar_valid = m_axi_arvalid ;
   assign mem_axi4_0_r_ready  = m_axi_rready  ;
   
  `ifdef SIMU
    assign mem_axi4_0_aw_ready   = 0;
    assign mem_axi4_0_w_ready    = 0;
    assign mem_axi4_0_b_valid    = 0;
    assign mem_axi4_0_b_id       = 0;
    assign mem_axi4_0_b_resp     = 0;
    assign mem_axi4_0_ar_ready   = 0;
    assign mem_axi4_0_r_valid    = 0;
    assign mem_axi4_0_r_id       = 0;
    assign mem_axi4_0_r_data     = 0;
    assign mem_axi4_0_r_resp     = 0;
    assign mem_axi4_0_r_last     = 0;
    
  `else
    assign mem_axi4_0_aw_ready = m_axi_awready ;
    assign mem_axi4_0_w_ready  = m_axi_wready  ;
    assign mem_axi4_0_b_valid  = m_axi_bvalid  ;
    assign mem_axi4_0_b_id     = m_axi_bid     ;
    assign mem_axi4_0_b_resp   = m_axi_bresp   ;
    assign mem_axi4_0_ar_ready = m_axi_arready ;
    assign mem_axi4_0_r_valid  = m_axi_rvalid  ;
    assign mem_axi4_0_r_id     = m_axi_rid     ;
    assign mem_axi4_0_r_data   = m_axi_rdata   ;
    assign mem_axi4_0_r_resp   = m_axi_rresp   ;
    assign mem_axi4_0_r_last   = m_axi_rlast   ;
  `endif 
   
   
   
   
   
   
    
   assign mmio_axi4_0_aw_ready  = s_axi_awready;
   assign mmio_axi4_0_aw_valid  = s_axi_awvalid; 
   assign mmio_axi4_0_aw_id     = s_axi_awid;  
   assign mmio_axi4_0_aw_addr   = s_axi_awaddr;
   assign mmio_axi4_0_aw_len    = s_axi_awlen; 
   assign mmio_axi4_0_aw_size   = s_axi_awsize;
   assign mmio_axi4_0_aw_burst  = s_axi_awburst;
   assign mmio_axi4_0_aw_lock   = s_axi_awlock;
   assign mmio_axi4_0_aw_cache  = s_axi_awcache;
   assign mmio_axi4_0_aw_prot   = s_axi_awprot;
   assign mmio_axi4_0_w_ready   = s_axi_wready;
   assign mmio_axi4_0_w_valid   = s_axi_wvalid; 
   assign mmio_axi4_0_w_data    = s_axi_wdata;
   assign mmio_axi4_0_w_strb    = s_axi_wstrb;
   assign mmio_axi4_0_w_last    = s_axi_wlast;
   assign mmio_axi4_0_b_ready   = s_axi_bready;
   assign mmio_axi4_0_b_valid   = s_axi_bvalid;
   assign mmio_axi4_0_b_id      = s_axi_bid;
   assign mmio_axi4_0_b_resp    = s_axi_bresp;
   assign mmio_axi4_0_ar_ready  = s_axi_arready;
   assign mmio_axi4_0_ar_valid  = s_axi_arvalid; 
   assign mmio_axi4_0_ar_id     = s_axi_arid;  
   assign mmio_axi4_0_ar_addr   = s_axi_araddr;
   assign mmio_axi4_0_ar_len    = s_axi_arlen; 
   assign mmio_axi4_0_ar_size   = s_axi_arsize;
   assign mmio_axi4_0_ar_burst  = s_axi_arburst;
   assign mmio_axi4_0_ar_lock   = s_axi_arlock;
   assign mmio_axi4_0_ar_cache  = s_axi_arcache;
   assign mmio_axi4_0_ar_prot   = s_axi_arprot;
   assign mmio_axi4_0_r_ready   = s_axi_rready;
   assign mmio_axi4_0_r_valid   = s_axi_rvalid; 
   assign mmio_axi4_0_r_id      = s_axi_rid;
   assign mmio_axi4_0_r_data    = s_axi_rdata;
   assign mmio_axi4_0_r_resp    = s_axi_rresp;
   assign mmio_axi4_0_r_last    = s_axi_rlast;
   
  
  //debug module interface
  wire  dut_debug_clockeddmi_dmi_req_ready; 
  wire  dut_debug_clockeddmi_dmi_req_valid; 
  wire [6:0] dut_debug_clockeddmi_dmi_req_addr; 
  wire [31:0] dut_debug_clockeddmi_dmi_req_data; 
  wire [1:0] dut_debug_clockeddmi_dmi_req_op; 
  wire  dut_debug_clockeddmi_dmi_resp_ready; 
  wire  dut_debug_clockeddmi_dmi_resp_valid; 
  wire [31:0] dut_debug_clockeddmi_dmi_resp_data; 
  wire [1:0] dut_debug_clockeddmi_dmi_resp_resp; 
  wire  dut_debug_clockeddmi_dmiClock; 
  wire  dut_debug_clockeddmi_dmiReset; 
  wire  dut_debug_ndreset; 
  wire  dut_debug_dmactive;
  
  //l2
  wire  dut_l2_frontend_bus_axi4_0_aw_ready; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@174869.4]
  wire  dut_l2_frontend_bus_axi4_0_aw_valid; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@174869.4]
  wire [7:0] dut_l2_frontend_bus_axi4_0_aw_bits_id; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@174869.4]
  wire [31:0] dut_l2_frontend_bus_axi4_0_aw_bits_addr; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@174869.4]
  wire [7:0] dut_l2_frontend_bus_axi4_0_aw_bits_len; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@174869.4]
  wire [2:0] dut_l2_frontend_bus_axi4_0_aw_bits_size; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@174869.4]
  wire [1:0] dut_l2_frontend_bus_axi4_0_aw_bits_burst; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@174869.4]
  wire  dut_l2_frontend_bus_axi4_0_aw_bits_lock; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@174869.4]
  wire [3:0] dut_l2_frontend_bus_axi4_0_aw_bits_cache; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@174869.4]
  wire [2:0] dut_l2_frontend_bus_axi4_0_aw_bits_prot; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@174869.4]
  wire [3:0] dut_l2_frontend_bus_axi4_0_aw_bits_qos; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@174869.4]
  wire  dut_l2_frontend_bus_axi4_0_w_ready; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@174869.4]
  wire  dut_l2_frontend_bus_axi4_0_w_valid; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@174869.4]
  wire [63:0] dut_l2_frontend_bus_axi4_0_w_bits_data; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@174869.4]
  wire [7:0] dut_l2_frontend_bus_axi4_0_w_bits_strb; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@174869.4]
  wire  dut_l2_frontend_bus_axi4_0_w_bits_last; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@174869.4]
  wire  dut_l2_frontend_bus_axi4_0_b_ready; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@174869.4]
  wire  dut_l2_frontend_bus_axi4_0_b_valid; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@174869.4]
  wire [7:0] dut_l2_frontend_bus_axi4_0_b_bits_id; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@174869.4]
  wire [1:0] dut_l2_frontend_bus_axi4_0_b_bits_resp; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@174869.4]
  wire  dut_l2_frontend_bus_axi4_0_ar_ready; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@174869.4]
  wire  dut_l2_frontend_bus_axi4_0_ar_valid; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@174869.4]
  wire [7:0] dut_l2_frontend_bus_axi4_0_ar_bits_id; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@174869.4]
  wire [31:0] dut_l2_frontend_bus_axi4_0_ar_bits_addr; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@174869.4]
  wire [7:0] dut_l2_frontend_bus_axi4_0_ar_bits_len; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@174869.4]
  wire [2:0] dut_l2_frontend_bus_axi4_0_ar_bits_size; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@174869.4]
  wire [1:0] dut_l2_frontend_bus_axi4_0_ar_bits_burst; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@174869.4]
  wire  dut_l2_frontend_bus_axi4_0_ar_bits_lock; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@174869.4]
  wire [3:0] dut_l2_frontend_bus_axi4_0_ar_bits_cache; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@174869.4]
  wire [2:0] dut_l2_frontend_bus_axi4_0_ar_bits_prot; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@174869.4]
  wire [3:0] dut_l2_frontend_bus_axi4_0_ar_bits_qos; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@174869.4]
  wire  dut_l2_frontend_bus_axi4_0_r_ready; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@174869.4]
  wire  dut_l2_frontend_bus_axi4_0_r_valid; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@174869.4]
  wire [7:0] dut_l2_frontend_bus_axi4_0_r_bits_id; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@174869.4]
  wire [63:0] dut_l2_frontend_bus_axi4_0_r_bits_data; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@174869.4]
  wire [1:0] dut_l2_frontend_bus_axi4_0_r_bits_resp; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@174869.4]
  wire  dut_l2_frontend_bus_axi4_0_r_bits_last; // @[TestHarness.scala 15:19:freechips.rocketchip.system.DefaultConfig.fir@174869.4]
     
     


     
  wire [1 : 0] dut_interrupts;
     
     


 



    
ExampleRocketSystem Rocket
     (
      .clock(clk),
      .reset(reset),

      .debug_clockeddmi_dmi_req_ready(dut_debug_clockeddmi_dmi_req_ready),
      .debug_clockeddmi_dmi_req_valid(dut_debug_clockeddmi_dmi_req_valid),
      .debug_clockeddmi_dmi_req_bits_addr(dut_debug_clockeddmi_dmi_req_addr),
      .debug_clockeddmi_dmi_req_bits_data(dut_debug_clockeddmi_dmi_req_data),
      .debug_clockeddmi_dmi_req_bits_op(dut_debug_clockeddmi_dmi_req_op),
      .debug_clockeddmi_dmi_resp_ready(dut_debug_clockeddmi_dmi_resp_ready),
      .debug_clockeddmi_dmi_resp_valid(dut_debug_clockeddmi_dmi_resp_valid),
      .debug_clockeddmi_dmi_resp_bits_data(dut_debug_clockeddmi_dmi_resp_data),
      .debug_clockeddmi_dmi_resp_bits_resp(dut_debug_clockeddmi_dmi_resp_resp),
      .debug_clockeddmi_dmiClock(dut_debug_clockeddmi_dmiClock),
      .debug_clockeddmi_dmiReset(dut_debug_clockeddmi_dmiReset),
      .debug_ndreset(dut_debug_ndreset),
      .debug_dmactive(dut_debug_dmactive),
      
      .interrupts(dut_interrupts),
      
      .mem_axi4_0_aw_valid                ( mem_axi4_0_aw_valid                     ),
      .mem_axi4_0_aw_ready                ( mem_axi4_0_aw_ready                     ),
      .mem_axi4_0_aw_bits_id              ( mem_axi4_0_aw_id                        ),
      .mem_axi4_0_aw_bits_addr            ( mem_axi4_0_aw_addr                      ),
      .mem_axi4_0_aw_bits_len             ( mem_axi4_0_aw_len                       ),
      .mem_axi4_0_aw_bits_size            ( mem_axi4_0_aw_size                      ),
      .mem_axi4_0_aw_bits_burst           ( mem_axi4_0_aw_burst                     ),
      .mem_axi4_0_aw_bits_lock            ( mem_axi4_0_aw_lock                      ),
      .mem_axi4_0_aw_bits_cache           ( mem_axi4_0_aw_cache                     ),
      .mem_axi4_0_aw_bits_prot            ( mem_axi4_0_aw_prot                      ),
      .mem_axi4_0_aw_bits_qos             ( mem_axi4_0_aw_qos                       ),
      .mem_axi4_0_w_valid                 ( mem_axi4_0_w_valid                      ),
      .mem_axi4_0_w_ready                 ( mem_axi4_0_w_ready                      ),
      .mem_axi4_0_w_bits_data             ( mem_axi4_0_w_data                       ),
      .mem_axi4_0_w_bits_strb             ( mem_axi4_0_w_strb                       ),
      .mem_axi4_0_w_bits_last             ( mem_axi4_0_w_last                       ),
      .mem_axi4_0_b_valid                 ( mem_axi4_0_b_valid                      ),
      .mem_axi4_0_b_ready                 ( mem_axi4_0_b_ready                      ),
      .mem_axi4_0_b_bits_id               ( mem_axi4_0_b_id                         ),
      .mem_axi4_0_b_bits_resp             ( mem_axi4_0_b_resp                       ),
      .mem_axi4_0_ar_valid                ( mem_axi4_0_ar_valid                     ),
      .mem_axi4_0_ar_ready                ( mem_axi4_0_ar_ready                     ),
      .mem_axi4_0_ar_bits_id              ( mem_axi4_0_ar_id                        ),
      .mem_axi4_0_ar_bits_addr            ( mem_axi4_0_ar_addr                      ),
      .mem_axi4_0_ar_bits_len             ( mem_axi4_0_ar_len                       ),
      .mem_axi4_0_ar_bits_size            ( mem_axi4_0_ar_size                      ),
      .mem_axi4_0_ar_bits_burst           ( mem_axi4_0_ar_burst                     ),
      .mem_axi4_0_ar_bits_lock            ( mem_axi4_0_ar_lock                      ),
      .mem_axi4_0_ar_bits_cache           ( mem_axi4_0_ar_cache                     ),
      .mem_axi4_0_ar_bits_prot            ( mem_axi4_0_ar_prot                      ),
      .mem_axi4_0_ar_bits_qos             ( mem_axi4_0_ar_qos                       ),
      .mem_axi4_0_r_valid                 ( mem_axi4_0_r_valid                      ),
      .mem_axi4_0_r_ready                 ( mem_axi4_0_r_ready                      ),
      .mem_axi4_0_r_bits_id               ( mem_axi4_0_r_id                         ),
      .mem_axi4_0_r_bits_data             ( mem_axi4_0_r_data                       ),
      .mem_axi4_0_r_bits_resp             ( mem_axi4_0_r_resp                       ),
      .mem_axi4_0_r_bits_last             ( mem_axi4_0_r_last                       ),

      .mmio_axi4_0_aw_valid        ( mmio_axi4_0_aw_valid               ),
      .mmio_axi4_0_aw_ready        ( mmio_axi4_0_aw_ready               ),
      .mmio_axi4_0_aw_bits_id      ( mmio_axi4_0_aw_id                  ),
      .mmio_axi4_0_aw_bits_addr    ( mmio_axi4_0_aw_addr                ),
      .mmio_axi4_0_aw_bits_len     ( mmio_axi4_0_aw_len                 ),
      .mmio_axi4_0_aw_bits_size    ( mmio_axi4_0_aw_size                ),
      .mmio_axi4_0_aw_bits_burst   ( mmio_axi4_0_aw_burst               ),
      .mmio_axi4_0_aw_bits_lock    ( mmio_axi4_0_aw_lock                ),
      .mmio_axi4_0_aw_bits_cache   ( mmio_axi4_0_aw_cache               ),
      .mmio_axi4_0_aw_bits_prot    ( mmio_axi4_0_aw_prot                ),
      .mmio_axi4_0_aw_bits_qos     ( mmio_axi4_0_aw_qos                 ),
      .mmio_axi4_0_w_valid         ( mmio_axi4_0_w_valid                ),
      .mmio_axi4_0_w_ready         ( mmio_axi4_0_w_ready                ),
      .mmio_axi4_0_w_bits_data     ( mmio_axi4_0_w_data                 ),
      .mmio_axi4_0_w_bits_strb     ( mmio_axi4_0_w_strb                 ),
      .mmio_axi4_0_w_bits_last     ( mmio_axi4_0_w_last                 ),
      .mmio_axi4_0_b_valid         ( mmio_axi4_0_b_valid                ),
      .mmio_axi4_0_b_ready         ( mmio_axi4_0_b_ready                ),
      .mmio_axi4_0_b_bits_id       ( mmio_axi4_0_b_id                   ),
      .mmio_axi4_0_b_bits_resp     ( mmio_axi4_0_b_resp                 ),
      .mmio_axi4_0_ar_valid        ( mmio_axi4_0_ar_valid               ),
      .mmio_axi4_0_ar_ready        ( mmio_axi4_0_ar_ready               ),
      .mmio_axi4_0_ar_bits_id      ( mmio_axi4_0_ar_id                  ),
      .mmio_axi4_0_ar_bits_addr    ( mmio_axi4_0_ar_addr                ),
      .mmio_axi4_0_ar_bits_len     ( mmio_axi4_0_ar_len                 ),
      .mmio_axi4_0_ar_bits_size    ( mmio_axi4_0_ar_size                ),
      .mmio_axi4_0_ar_bits_burst   ( mmio_axi4_0_ar_burst               ),
      .mmio_axi4_0_ar_bits_lock    ( mmio_axi4_0_ar_lock                ),
      .mmio_axi4_0_ar_bits_cache   ( mmio_axi4_0_ar_cache               ),
      .mmio_axi4_0_ar_bits_prot    ( mmio_axi4_0_ar_prot                ),
      .mmio_axi4_0_ar_bits_qos     ( mmio_axi4_0_ar_qos                 ),
      .mmio_axi4_0_r_valid         ( mmio_axi4_0_r_valid                ),
      .mmio_axi4_0_r_ready         ( mmio_axi4_0_r_ready                ),
      .mmio_axi4_0_r_bits_id       ( mmio_axi4_0_r_id                   ),
      .mmio_axi4_0_r_bits_data     ( mmio_axi4_0_r_data                 ),
      .mmio_axi4_0_r_bits_resp     ( mmio_axi4_0_r_resp                 ),
      .mmio_axi4_0_r_bits_last     ( mmio_axi4_0_r_last                 ),

    .l2_frontend_bus_axi4_0_aw_ready(dut_l2_frontend_bus_axi4_0_aw_ready),
    .l2_frontend_bus_axi4_0_aw_valid(dut_l2_frontend_bus_axi4_0_aw_valid),
    .l2_frontend_bus_axi4_0_aw_bits_id(dut_l2_frontend_bus_axi4_0_aw_bits_id),
    .l2_frontend_bus_axi4_0_aw_bits_addr(dut_l2_frontend_bus_axi4_0_aw_bits_addr),
    .l2_frontend_bus_axi4_0_aw_bits_len(dut_l2_frontend_bus_axi4_0_aw_bits_len),
    .l2_frontend_bus_axi4_0_aw_bits_size(dut_l2_frontend_bus_axi4_0_aw_bits_size),
    .l2_frontend_bus_axi4_0_aw_bits_burst(dut_l2_frontend_bus_axi4_0_aw_bits_burst),
    .l2_frontend_bus_axi4_0_aw_bits_lock(dut_l2_frontend_bus_axi4_0_aw_bits_lock),
    .l2_frontend_bus_axi4_0_aw_bits_cache(dut_l2_frontend_bus_axi4_0_aw_bits_cache),
    .l2_frontend_bus_axi4_0_aw_bits_prot(dut_l2_frontend_bus_axi4_0_aw_bits_prot),
    .l2_frontend_bus_axi4_0_aw_bits_qos(dut_l2_frontend_bus_axi4_0_aw_bits_qos),
    .l2_frontend_bus_axi4_0_w_ready(dut_l2_frontend_bus_axi4_0_w_ready),
    .l2_frontend_bus_axi4_0_w_valid(dut_l2_frontend_bus_axi4_0_w_valid),
    .l2_frontend_bus_axi4_0_w_bits_data(dut_l2_frontend_bus_axi4_0_w_bits_data),
    .l2_frontend_bus_axi4_0_w_bits_strb(dut_l2_frontend_bus_axi4_0_w_bits_strb),
    .l2_frontend_bus_axi4_0_w_bits_last(dut_l2_frontend_bus_axi4_0_w_bits_last),
    .l2_frontend_bus_axi4_0_b_ready(dut_l2_frontend_bus_axi4_0_b_ready),
    .l2_frontend_bus_axi4_0_b_valid(dut_l2_frontend_bus_axi4_0_b_valid),
    .l2_frontend_bus_axi4_0_b_bits_id(dut_l2_frontend_bus_axi4_0_b_bits_id),
    .l2_frontend_bus_axi4_0_b_bits_resp(dut_l2_frontend_bus_axi4_0_b_bits_resp),
    .l2_frontend_bus_axi4_0_ar_ready(dut_l2_frontend_bus_axi4_0_ar_ready),
    .l2_frontend_bus_axi4_0_ar_valid(dut_l2_frontend_bus_axi4_0_ar_valid),
    .l2_frontend_bus_axi4_0_ar_bits_id(dut_l2_frontend_bus_axi4_0_ar_bits_id),
    .l2_frontend_bus_axi4_0_ar_bits_addr(dut_l2_frontend_bus_axi4_0_ar_bits_addr),
    .l2_frontend_bus_axi4_0_ar_bits_len(dut_l2_frontend_bus_axi4_0_ar_bits_len),
    .l2_frontend_bus_axi4_0_ar_bits_size(dut_l2_frontend_bus_axi4_0_ar_bits_size),
    .l2_frontend_bus_axi4_0_ar_bits_burst(dut_l2_frontend_bus_axi4_0_ar_bits_burst),
    .l2_frontend_bus_axi4_0_ar_bits_lock(dut_l2_frontend_bus_axi4_0_ar_bits_lock),
    .l2_frontend_bus_axi4_0_ar_bits_cache(dut_l2_frontend_bus_axi4_0_ar_bits_cache),
    .l2_frontend_bus_axi4_0_ar_bits_prot(dut_l2_frontend_bus_axi4_0_ar_bits_prot),
    .l2_frontend_bus_axi4_0_ar_bits_qos(dut_l2_frontend_bus_axi4_0_ar_bits_qos),
    .l2_frontend_bus_axi4_0_r_ready(dut_l2_frontend_bus_axi4_0_r_ready),
    .l2_frontend_bus_axi4_0_r_valid(dut_l2_frontend_bus_axi4_0_r_valid),
    .l2_frontend_bus_axi4_0_r_bits_id(dut_l2_frontend_bus_axi4_0_r_bits_id),
    .l2_frontend_bus_axi4_0_r_bits_data(dut_l2_frontend_bus_axi4_0_r_bits_data),
    .l2_frontend_bus_axi4_0_r_bits_resp(dut_l2_frontend_bus_axi4_0_r_bits_resp),
    .l2_frontend_bus_axi4_0_r_bits_last(dut_l2_frontend_bus_axi4_0_r_bits_last)
    );
    
  assign dut_interrupts = 2'h0;
    
   //  drived by outside module
  assign dut_debug_clockeddmi_dmi_req_valid = 'h0;
  assign dut_debug_clockeddmi_dmi_req_addr = 'h0;
  assign dut_debug_clockeddmi_dmi_req_data = 'h0;
  assign dut_debug_clockeddmi_dmi_req_op = 'h0;
  assign dut_debug_clockeddmi_dmi_resp_ready = 'h0;
  
  assign dut_l2_frontend_bus_axi4_0_aw_valid = 1'h0; // @[Bundles.scala 85:18:freechips.rocketchip.system.DefaultConfig.fir@174901.4]
  assign dut_l2_frontend_bus_axi4_0_aw_bits_id = 8'h0;
  assign dut_l2_frontend_bus_axi4_0_aw_bits_addr = 32'h0;
  assign dut_l2_frontend_bus_axi4_0_aw_bits_len = 8'h0;
  assign dut_l2_frontend_bus_axi4_0_aw_bits_size = 3'h0;
  assign dut_l2_frontend_bus_axi4_0_aw_bits_burst = 2'h0;
  assign dut_l2_frontend_bus_axi4_0_aw_bits_lock = 1'h0;
  assign dut_l2_frontend_bus_axi4_0_aw_bits_cache = 4'h0;
  assign dut_l2_frontend_bus_axi4_0_aw_bits_prot = 3'h0;
  assign dut_l2_frontend_bus_axi4_0_aw_bits_qos = 4'h0;
  assign dut_l2_frontend_bus_axi4_0_w_valid = 1'h0; // @[Bundles.scala 86:18:freechips.rocketchip.system.DefaultConfig.fir@174902.4]
  assign dut_l2_frontend_bus_axi4_0_w_bits_data = 64'h0;
  assign dut_l2_frontend_bus_axi4_0_w_bits_strb = 8'h0;
  assign dut_l2_frontend_bus_axi4_0_w_bits_last = 1'h0;
  assign dut_l2_frontend_bus_axi4_0_b_ready = 1'h0; // @[Bundles.scala 88:18:freechips.rocketchip.system.DefaultConfig.fir@174904.4]
  assign dut_l2_frontend_bus_axi4_0_ar_valid = 1'h0; // @[Bundles.scala 84:18:freechips.rocketchip.system.DefaultConfig.fir@174900.4]
  assign dut_l2_frontend_bus_axi4_0_ar_bits_id = 8'h0;
  assign dut_l2_frontend_bus_axi4_0_ar_bits_addr = 32'h0;
  assign dut_l2_frontend_bus_axi4_0_ar_bits_len = 8'h0;
  assign dut_l2_frontend_bus_axi4_0_ar_bits_size = 3'h0;
  assign dut_l2_frontend_bus_axi4_0_ar_bits_burst = 2'h0;
  assign dut_l2_frontend_bus_axi4_0_ar_bits_lock = 1'h0;
  assign dut_l2_frontend_bus_axi4_0_ar_bits_cache = 4'h0;
  assign dut_l2_frontend_bus_axi4_0_ar_bits_prot = 3'h0;
  assign dut_l2_frontend_bus_axi4_0_ar_bits_qos = 4'h0;
  assign dut_l2_frontend_bus_axi4_0_r_ready = 1'h0; // @[Bundles.scala 87:18:freechips.rocketchip.system.DefaultConfig.fir@174903.4]
    
    
endmodule