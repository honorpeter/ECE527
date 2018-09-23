// (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:sc_axi2sc:1.0
// IP Revision: 6

(* X_CORE_INFO = "sc_axi2sc_v1_0_6_top,Vivado 2018.2" *)
(* CHECK_LICENSE_TYPE = "bd_ab58_s02a2s_0,sc_axi2sc_v1_0_6_top,{}" *)
(* CORE_GENERATION_INFO = "bd_ab58_s02a2s_0,sc_axi2sc_v1_0_6_top,{x_ipProduct=Vivado 2018.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=sc_axi2sc,x_ipVersion=1.0,x_ipCoreRevision=6,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_AXI_ADDR_WIDTH=32,C_AXI_ID_WIDTH=2,C_AXI_RDATA_WIDTH=32,C_AXI_WDATA_WIDTH=32,C_SC_ADDR_WIDTH=32,C_SC_ID_WIDTH=2,C_SC_RDATA_WIDTH=64,C_SC_WDATA_WIDTH=64,C_SC_RUSER_BITS_PER_BYTE=0,C_SC_WUSER_BITS_PER_BYTE=0,C_SC_ARUSER_WIDTH=0,C_SC_AWUSER_WIDTH=0,C_SC_BUSER_WIDTH=0,C_MSC_ROUTE_WIDTH=1,C_SSC_ROUTE_WI\
DTH=3,C_AWPAYLD_WIDTH=140,C_ARPAYLD_WIDTH=140,C_WPAYLD_WIDTH=88,C_RPAYLD_WIDTH=86,C_BPAYLD_WIDTH=8}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module bd_ab58_s02a2s_0 (
  aclk,
  s_sc_b_req,
  s_sc_b_info,
  s_sc_b_send,
  s_sc_b_recv,
  s_sc_b_payld,
  m_sc_aw_req,
  m_sc_aw_info,
  m_sc_aw_send,
  m_sc_aw_recv,
  m_sc_aw_payld,
  m_sc_w_req,
  m_sc_w_info,
  m_sc_w_send,
  m_sc_w_recv,
  m_sc_w_payld,
  s_axi_awid,
  s_axi_awaddr,
  s_axi_awlen,
  s_axi_awlock,
  s_axi_awcache,
  s_axi_awprot,
  s_axi_awqos,
  s_axi_awuser,
  s_axi_awvalid,
  s_axi_awready,
  s_axi_wdata,
  s_axi_wstrb,
  s_axi_wlast,
  s_axi_wuser,
  s_axi_wvalid,
  s_axi_wready,
  s_axi_bid,
  s_axi_bresp,
  s_axi_buser,
  s_axi_bvalid,
  s_axi_bready
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF S_AXI:M_AR_SC:M_AW_SC:M_W_SC:S_R_SC:S_B_SC, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN partb_processing_system7_0_0_FCLK_CLK0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *)
input wire aclk;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 S_SC_B REQ" *)
input wire s_sc_b_req;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 S_SC_B INFO" *)
input wire [0 : 0] s_sc_b_info;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 S_SC_B SEND" *)
input wire s_sc_b_send;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 S_SC_B RECV" *)
output wire s_sc_b_recv;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 S_SC_B PAYLD" *)
input wire [7 : 0] s_sc_b_payld;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 M_SC_AW REQ" *)
output wire m_sc_aw_req;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 M_SC_AW INFO" *)
output wire [0 : 0] m_sc_aw_info;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 M_SC_AW SEND" *)
output wire m_sc_aw_send;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 M_SC_AW RECV" *)
input wire m_sc_aw_recv;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 M_SC_AW PAYLD" *)
output wire [139 : 0] m_sc_aw_payld;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 M_SC_W REQ" *)
output wire m_sc_w_req;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 M_SC_W INFO" *)
output wire [0 : 0] m_sc_w_info;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 M_SC_W SEND" *)
output wire m_sc_w_send;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 M_SC_W RECV" *)
input wire m_sc_w_recv;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 M_SC_W PAYLD" *)
output wire [87 : 0] m_sc_w_payld;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWID" *)
input wire [1 : 0] s_axi_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *)
input wire [31 : 0] s_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLEN" *)
input wire [7 : 0] s_axi_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK" *)
input wire [0 : 0] s_axi_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE" *)
input wire [3 : 0] s_axi_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *)
input wire [2 : 0] s_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWQOS" *)
input wire [3 : 0] s_axi_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWUSER" *)
input wire [1023 : 0] s_axi_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *)
input wire s_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *)
output wire s_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *)
input wire [31 : 0] s_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *)
input wire [3 : 0] s_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *)
input wire s_axi_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WUSER" *)
input wire [1023 : 0] s_axi_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *)
input wire s_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *)
output wire s_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BID" *)
output wire [1 : 0] s_axi_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *)
output wire [1 : 0] s_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BUSER" *)
output wire [1023 : 0] s_axi_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *)
output wire s_axi_bvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 2, ADDR_WIDTH 32, AWUSER_WIDTH 1024, ARUSER_WIDTH 0, WUSER_WIDTH 1024, RUSER_WIDTH 0, BUSER_WIDTH 1024, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN partb_processing_system7_0_0_FCLK_CLK0, NUM_READ_TH\
READS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *)
input wire s_axi_bready;

  sc_axi2sc_v1_0_6_top #(
    .C_AXI_ADDR_WIDTH(32),
    .C_AXI_ID_WIDTH(2),
    .C_AXI_RDATA_WIDTH(32),
    .C_AXI_WDATA_WIDTH(32),
    .C_SC_ADDR_WIDTH(32),
    .C_SC_ID_WIDTH(2),
    .C_SC_RDATA_WIDTH(64),
    .C_SC_WDATA_WIDTH(64),
    .C_SC_RUSER_BITS_PER_BYTE(0),
    .C_SC_WUSER_BITS_PER_BYTE(0),
    .C_SC_ARUSER_WIDTH(0),
    .C_SC_AWUSER_WIDTH(0),
    .C_SC_BUSER_WIDTH(0),
    .C_MSC_ROUTE_WIDTH(1),
    .C_SSC_ROUTE_WIDTH(3),
    .C_AWPAYLD_WIDTH(140),
    .C_ARPAYLD_WIDTH(140),
    .C_WPAYLD_WIDTH(88),
    .C_RPAYLD_WIDTH(86),
    .C_BPAYLD_WIDTH(8)
  ) inst (
    .aclk(aclk),
    .s_sc_r_req(1'D0),
    .s_sc_r_info(1'D0),
    .s_sc_r_send(1'D0),
    .s_sc_r_recv(),
    .s_sc_r_payld(86'D0),
    .s_sc_b_req(s_sc_b_req),
    .s_sc_b_info(s_sc_b_info),
    .s_sc_b_send(s_sc_b_send),
    .s_sc_b_recv(s_sc_b_recv),
    .s_sc_b_payld(s_sc_b_payld),
    .m_sc_ar_req(),
    .m_sc_ar_info(),
    .m_sc_ar_send(),
    .m_sc_ar_recv(1'D0),
    .m_sc_ar_payld(),
    .m_sc_aw_req(m_sc_aw_req),
    .m_sc_aw_info(m_sc_aw_info),
    .m_sc_aw_send(m_sc_aw_send),
    .m_sc_aw_recv(m_sc_aw_recv),
    .m_sc_aw_payld(m_sc_aw_payld),
    .m_sc_w_req(m_sc_w_req),
    .m_sc_w_info(m_sc_w_info),
    .m_sc_w_send(m_sc_w_send),
    .m_sc_w_recv(m_sc_w_recv),
    .m_sc_w_payld(m_sc_w_payld),
    .s_axi_awid(s_axi_awid),
    .s_axi_awaddr(s_axi_awaddr),
    .s_axi_awlen(s_axi_awlen),
    .s_axi_awlock(s_axi_awlock),
    .s_axi_awcache(s_axi_awcache),
    .s_axi_awprot(s_axi_awprot),
    .s_axi_awqos(s_axi_awqos),
    .s_axi_awuser(s_axi_awuser),
    .s_axi_awvalid(s_axi_awvalid),
    .s_axi_awready(s_axi_awready),
    .s_axi_wdata(s_axi_wdata),
    .s_axi_wstrb(s_axi_wstrb),
    .s_axi_wlast(s_axi_wlast),
    .s_axi_wuser(s_axi_wuser),
    .s_axi_wvalid(s_axi_wvalid),
    .s_axi_wready(s_axi_wready),
    .s_axi_bid(s_axi_bid),
    .s_axi_bresp(s_axi_bresp),
    .s_axi_buser(s_axi_buser),
    .s_axi_bvalid(s_axi_bvalid),
    .s_axi_bready(s_axi_bready),
    .s_axi_arid(2'H0),
    .s_axi_araddr(32'H00000000),
    .s_axi_arlen(8'H0),
    .s_axi_arlock(1'H0),
    .s_axi_arcache(4'H0),
    .s_axi_arprot(3'H0),
    .s_axi_arqos(4'H0),
    .s_axi_aruser(1024'H0),
    .s_axi_arvalid(1'H0),
    .s_axi_arready(),
    .s_axi_rid(),
    .s_axi_rdata(),
    .s_axi_rresp(),
    .s_axi_rlast(),
    .s_axi_ruser(),
    .s_axi_rvalid(),
    .s_axi_rready(1'H0)
  );
endmodule
