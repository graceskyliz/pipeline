module controller(input  [6:0] op,
                  input  [2:0] funct3,
                  input        funct7b5,
                  output [1:0] ResultSrcD, 
                  output MemWriteD,
                  output JumpD,
                  output BranchD,
                  output ALUSrcD,
                  output RegWrite, Jump,
                  output [1:0] ImmSrcD, 
                  output [2:0] ALUControlID);
  
  wire [1:0] ALUOp; 
  wire       Branch; 
  
  maindec md(
    .op(op), 
    .ResultSrc(ResultSrc), 
    .MemWrite(MemWrite), 
    .Branch(Branch),
    .ALUSrc(ALUSrc), 
    .RegWrite(RegWrite), 
    .Jump(Jump), 
    .ImmSrc(ImmSrc), 
    .ALUOp(ALUOp)
  ); 

  aludec  ad(
    .opb5(op[5]), 
    .funct3(funct3), 
    .funct7b5(funct7b5), 
    .ALUOp(ALUOp), 
    .ALUControl(ALUControl)
  ); 

  assign PCSrc = Branch & Zero | Jump; 
endmodule