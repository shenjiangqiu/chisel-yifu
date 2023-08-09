// Generated by CIRCT firtool-1.49.0
// VCS coverage exclude_file
module mem_4x16(
  input  [1:0]  R0_addr,
  input         R0_en,
                R0_clk,
  input  [1:0]  W0_addr,
  input         W0_en,
                W0_clk,
  input  [15:0] W0_data,
  output [15:0] R0_data
);

  reg [15:0] Memory[0:3];
  reg        _R0_en_d0;
  reg [1:0]  _R0_addr_d0;
  always @(posedge R0_clk) begin
    _R0_en_d0 <= R0_en;
    _R0_addr_d0 <= R0_addr;
  end // always @(posedge)
  always @(posedge W0_clk) begin
    if (W0_en)
      Memory[W0_addr] <= W0_data;
  end // always @(posedge)
  assign R0_data = _R0_en_d0 ? Memory[_R0_addr_d0] : 16'bx;
endmodule

module ReadWriteSmem(
  input         clock,
                reset,
                io_enable,
                io_write,
  input  [9:0]  io_addr,
  input  [15:0] io_dataIn,
  output [15:0] io_dataOut
);

  mem_4x16 mem_ext (
    .R0_addr (io_addr[1:0]),
    .R0_en   (io_enable),
    .R0_clk  (clock),
    .W0_addr (io_addr[1:0]),
    .W0_en   (1'h1),
    .W0_clk  (clock),
    .W0_data (io_dataIn),
    .R0_data (io_dataOut)
  );
endmodule

