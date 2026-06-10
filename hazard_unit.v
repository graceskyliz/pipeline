module hazard_unite(
    input [4:0] Rs1D;
    input [4:0] Rs2D;
    input [4:0] RdE;
    input [4:0] Rs2E;
    input [4:0] Rs1E;
    input PCSrcE;
    input ResultSrcE;
    input [4:0] RdM;
    input RegWriteM;
    input [4:0] RdW;
    input RegWriteW;

    output StallF;
    output StallD;
    output FlushD;
    output FlushE;
    output [1:0] ForwardAE;
    output [1:0] ForwardBE;
);
endmodule