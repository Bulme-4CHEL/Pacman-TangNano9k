module t80_reg_Brtl
  (input  clk,
   input  cen,
   input  weh,
   input  wel,
   input  [2:0] addra,
   input  [2:0] addrb,
   input  [2:0] addrc,
   input  [7:0] dih,
   input  [7:0] dil,
   output [7:0] doah,
   output [7:0] doal,
   output [7:0] dobh,
   output [7:0] dobl,
   output [7:0] doch,
   output [7:0] docl);
  wire n7100;
  wire n7101;
  wire [7:0] n7139; // mem_rd
  wire [7:0] n7140; // mem_rd
  wire [7:0] n7141; // mem_rd
  wire [7:0] n7143; // mem_rd
  wire [7:0] n7144; // mem_rd
  wire [7:0] n7145; // mem_rd
  assign doah = n7141; //(module output)
  assign doal = n7145; //(module output)
  assign dobh = n7140; //(module output)
  assign dobl = n7144; //(module output)
  assign doch = n7139; //(module output)
  assign docl = n7143; //(module output)
  /* src/T80/T80_Reg.vhd:96:25  */
  assign n7100 = weh & cen;
  /* src/T80/T80_Reg.vhd:96:25  */
  assign n7101 = wel & cen;
  /* src/T80/T80_Reg.vhd:107:23  */
  reg [7:0] regsh[7:0] ; // memory
  assign n7139 = regsh[addrc];
  assign n7140 = regsh[addrb];
  assign n7141 = regsh[addra];
  always @(posedge clk)
    if (n7100)
      regsh[addra] <= dih;
  /* src/T80/T80_Reg.vhd:111:23  */
  /* src/T80/T80_Reg.vhd:109:23  */
  /* src/T80/T80_Reg.vhd:107:23  */
  /* src/T80/T80_Reg.vhd:98:47  */
  /* src/T80/T80_Reg.vhd:108:23  */
  reg [7:0] regsl[7:0] ; // memory
  assign n7143 = regsl[addrc];
  assign n7144 = regsl[addrb];
  assign n7145 = regsl[addra];
  always @(posedge clk)
    if (n7101)
      regsl[addra] <= dil;
  /* src/T80/T80_Reg.vhd:112:23  */
  /* src/T80/T80_Reg.vhd:110:23  */
  /* src/T80/T80_Reg.vhd:108:23  */
  /* src/T80/T80_Reg.vhd:101:47  */
endmodule

module t80_alu_Brtl_0_0_1_2_3_4_5_6_7
  (input  arith16,
   input  z16,
   input  [3:0] alu_op,
   input  [5:0] ir,
   input  [1:0] iset,
   input  [7:0] busa,
   input  [7:0] busb,
   input  [7:0] f_in,
   output [7:0] q,
   output [7:0] f_out);
  wire usecarry;
  wire carry7_v;
  wire overflow_v;
  wire halfcarry_v;
  wire carry_v;
  wire [7:0] q_v;
  wire [7:0] bitmask;
  wire [2:0] n6504;
  wire n6507;
  wire n6510;
  wire n6513;
  wire n6516;
  wire n6519;
  wire n6522;
  wire n6525;
  wire [6:0] n6527;
  reg [7:0] n6528;
  wire n6529;
  wire n6530;
  wire n6531;
  wire n6532;
  wire [3:0] n6534;
  wire [3:0] n6535;
  wire n6536;
  wire n6537;
  wire n6538;
  wire n6539;
  wire n6540;
  wire [3:0] n6545;
  wire [3:0] n6546;
  wire [4:0] n6549;
  wire [5:0] n6550;
  wire [4:0] n6552;
  wire [5:0] n6554;
  wire [5:0] n6555;
  wire n6557;
  wire [3:0] n6558;
  wire [2:0] n6560;
  wire [2:0] n6561;
  wire n6562;
  wire [2:0] n6567;
  wire [2:0] n6568;
  wire [3:0] n6571;
  wire [4:0] n6572;
  wire [3:0] n6574;
  wire [4:0] n6576;
  wire [4:0] n6577;
  wire n6579;
  wire [2:0] n6580;
  wire n6582;
  wire n6583;
  wire n6584;
  wire n6589;
  wire n6590;
  wire [1:0] n6593;
  wire [2:0] n6594;
  wire [1:0] n6596;
  wire [2:0] n6598;
  wire [2:0] n6599;
  wire n6601;
  wire n6602;
  wire n6605;
  wire [2:0] n6613;
  wire n6615;
  wire n6617;
  wire n6618;
  wire n6620;
  wire n6621;
  wire n6623;
  wire n6625;
  wire n6626;
  wire n6628;
  wire n6629;
  wire [7:0] n6630;
  wire n6633;
  wire [7:0] n6634;
  wire n6637;
  wire [7:0] n6638;
  wire [3:0] n6640;
  reg n6641;
  reg n6642;
  wire n6643;
  reg n6644;
  reg n6645;
  reg [7:0] n6646;
  wire [2:0] n6647;
  wire n6649;
  wire n6650;
  wire n6651;
  wire n6652;
  wire n6653;
  wire n6654;
  wire n6655;
  wire n6657;
  wire n6659;
  wire n6660;
  wire n6662;
  wire n6663;
  wire [2:0] n6664;
  wire n6666;
  wire n6668;
  wire n6669;
  wire n6671;
  wire n6672;
  wire n6674;
  wire n6675;
  wire n6677;
  wire n6678;
  wire n6679;
  wire n6680;
  wire n6681;
  wire n6682;
  wire n6683;
  wire n6684;
  wire n6685;
  wire n6686;
  wire n6687;
  wire n6688;
  wire n6689;
  wire n6690;
  wire n6691;
  wire n6692;
  wire n6693;
  wire n6694;
  reg n6695;
  wire n6696;
  wire n6697;
  wire n6698;
  wire [1:0] n6699;
  wire n6700;
  wire [1:0] n6701;
  wire [1:0] n6702;
  wire n6704;
  wire n6706;
  wire n6707;
  wire n6709;
  wire n6710;
  wire n6712;
  wire n6713;
  wire n6715;
  wire n6716;
  wire n6718;
  wire n6719;
  wire n6721;
  wire n6722;
  wire n6724;
  wire n6725;
  wire n6726;
  wire n6729;
  wire n6730;
  wire [8:0] n6731;
  wire [3:0] n6732;
  wire n6734;
  wire n6735;
  wire n6736;
  wire [8:0] n6737;
  wire [3:0] n6738;
  wire n6740;
  wire n6743;
  wire [8:0] n6744;
  wire [8:0] n6746;
  wire n6747;
  wire [8:0] n6748;
  wire [8:0] n6749;
  wire [4:0] n6750;
  wire n6752;
  wire n6753;
  wire n6754;
  wire [8:0] n6756;
  wire [8:0] n6757;
  wire [8:0] n6758;
  wire [3:0] n6759;
  wire n6761;
  wire n6762;
  wire n6763;
  wire [8:0] n6764;
  wire [3:0] n6765;
  wire n6767;
  wire n6769;
  wire [8:0] n6770;
  wire [7:0] n6771;
  wire [7:0] n6773;
  wire n6774;
  wire [7:0] n6775;
  wire n6777;
  wire n6778;
  wire n6779;
  wire [8:0] n6780;
  wire [8:0] n6782;
  wire [8:0] n6783;
  wire [8:0] n6784;
  wire n6785;
  wire [8:0] n6786;
  wire n6787;
  wire n6788;
  wire n6789;
  wire n6790;
  wire n6791;
  wire [7:0] n6792;
  wire [7:0] n6793;
  wire n6795;
  wire n6798;
  wire n6799;
  wire n6800;
  wire n6801;
  wire n6802;
  wire n6803;
  wire n6804;
  wire n6805;
  wire n6806;
  wire n6807;
  wire n6808;
  wire n6809;
  wire n6810;
  wire n6811;
  wire n6812;
  wire n6813;
  wire n6814;
  wire n6815;
  wire n6817;
  wire [3:0] n6818;
  wire n6819;
  wire [3:0] n6820;
  wire [3:0] n6821;
  wire [3:0] n6822;
  wire [7:0] n6825;
  wire n6826;
  wire [7:0] n6827;
  wire n6828;
  wire [7:0] n6830;
  wire n6831;
  wire n6834;
  wire [7:0] n6835;
  wire n6836;
  wire [7:0] n6837;
  wire n6838;
  wire [7:0] n6839;
  wire n6840;
  wire n6841;
  wire [7:0] n6842;
  wire n6843;
  wire n6844;
  wire [7:0] n6845;
  wire n6846;
  wire n6847;
  wire [7:0] n6848;
  wire n6849;
  wire n6850;
  wire [7:0] n6851;
  wire n6852;
  wire n6853;
  wire [7:0] n6854;
  wire n6855;
  wire n6856;
  wire [7:0] n6857;
  wire n6858;
  wire n6859;
  wire n6860;
  wire n6862;
  wire n6864;
  wire n6865;
  wire [7:0] n6866;
  wire n6867;
  wire n6869;
  wire n6874;
  wire n6875;
  wire [2:0] n6880;
  wire n6882;
  wire n6883;
  wire n6884;
  wire n6885;
  wire n6886;
  wire n6888;
  wire [7:0] n6889;
  wire n6891;
  wire [7:0] n6892;
  wire [7:0] n6893;
  wire n6895;
  wire [2:0] n6896;
  wire [6:0] n6897;
  wire n6898;
  wire n6899;
  wire n6901;
  wire [6:0] n6902;
  wire n6903;
  wire n6904;
  wire n6906;
  wire [6:0] n6907;
  wire n6908;
  wire n6909;
  wire n6911;
  wire [6:0] n6912;
  wire n6913;
  wire n6914;
  wire n6916;
  wire [6:0] n6917;
  wire n6919;
  wire n6921;
  wire [6:0] n6922;
  wire n6924;
  wire n6926;
  wire [6:0] n6927;
  wire n6928;
  wire n6929;
  wire n6931;
  wire [6:0] n6932;
  wire n6934;
  wire [6:0] n6935;
  reg n6936;
  wire n6937;
  wire n6938;
  wire n6939;
  wire n6940;
  reg n6941;
  wire [5:0] n6942;
  wire [5:0] n6943;
  wire [5:0] n6944;
  wire [5:0] n6945;
  wire [5:0] n6946;
  wire [5:0] n6947;
  wire [5:0] n6948;
  wire [5:0] n6949;
  reg [5:0] n6950;
  wire n6951;
  wire n6952;
  wire n6953;
  wire n6954;
  reg n6955;
  wire [7:0] n6958;
  wire n6959;
  wire [7:0] n6960;
  wire n6961;
  wire [7:0] n6962;
  wire n6963;
  wire [7:0] n6965;
  wire n6966;
  wire n6969;
  wire [7:0] n6970;
  wire n6971;
  wire [7:0] n6972;
  wire n6973;
  wire n6974;
  wire [7:0] n6975;
  wire n6976;
  wire n6977;
  wire [7:0] n6978;
  wire n6979;
  wire n6980;
  wire [7:0] n6981;
  wire n6982;
  wire n6983;
  wire [7:0] n6984;
  wire n6985;
  wire n6986;
  wire [7:0] n6987;
  wire n6988;
  wire n6989;
  wire [7:0] n6990;
  wire n6991;
  wire n6992;
  wire n6993;
  wire n6995;
  wire n6996;
  wire n6997;
  wire n6998;
  wire [1:0] n6999;
  wire n7000;
  wire [1:0] n7001;
  wire [1:0] n7002;
  wire n7004;
  wire [6:0] n7005;
  wire n7006;
  reg n7007;
  wire n7008;
  reg n7009;
  wire n7010;
  reg n7011;
  wire n7012;
  reg n7013;
  wire n7014;
  reg n7015;
  wire n7016;
  reg n7017;
  wire n7018;
  wire n7019;
  wire n7020;
  reg n7021;
  wire n7022;
  wire n7023;
  wire n7024;
  reg n7025;
  wire n7033;
  wire n7034;
  wire n7035;
  wire n7036;
  wire n7037;
  wire n7038;
  reg n7040;
  wire [2:0] n7041;
  wire [2:0] n7042;
  wire [2:0] n7043;
  wire [2:0] n7044;
  wire [2:0] n7045;
  wire [2:0] n7046;
  wire [2:0] n7047;
  reg [2:0] n7049;
  wire [2:0] n7050;
  wire [2:0] n7051;
  wire [2:0] n7052;
  wire [2:0] n7053;
  wire [2:0] n7054;
  wire [2:0] n7055;
  wire [2:0] n7056;
  reg [2:0] n7058;
  wire n7059;
  wire n7060;
  wire n7061;
  wire n7062;
  wire n7063;
  wire n7064;
  reg n7066;
  wire [7:0] n7074;
  wire [7:0] n7077;
  wire [7:0] n7078;
  assign q = n7074; //(module output)
  assign f_out = n7078; //(module output)
  /* src/T80/T80_ALU.vhd:122:16  */
  assign usecarry = n6532; // (signal)
  /* src/T80/T80_ALU.vhd:123:16  */
  assign carry7_v = n6579; // (signal)
  /* src/T80/T80_ALU.vhd:124:16  */
  assign overflow_v = n6605; // (signal)
  /* src/T80/T80_ALU.vhd:125:16  */
  assign halfcarry_v = n6557; // (signal)
  /* src/T80/T80_ALU.vhd:126:16  */
  assign carry_v = n6601; // (signal)
  /* src/T80/T80_ALU.vhd:127:16  */
  assign q_v = n7077; // (signal)
  /* src/T80/T80_ALU.vhd:129:16  */
  assign bitmask = n6528; // (signal)
  /* src/T80/T80_ALU.vhd:133:16  */
  assign n6504 = ir[5:3]; // extract
  /* src/T80/T80_ALU.vhd:133:58  */
  assign n6507 = n6504 == 3'b000;
  /* src/T80/T80_ALU.vhd:134:94  */
  assign n6510 = n6504 == 3'b001;
  /* src/T80/T80_ALU.vhd:135:94  */
  assign n6513 = n6504 == 3'b010;
  /* src/T80/T80_ALU.vhd:136:94  */
  assign n6516 = n6504 == 3'b011;
  /* src/T80/T80_ALU.vhd:137:94  */
  assign n6519 = n6504 == 3'b100;
  /* src/T80/T80_ALU.vhd:138:94  */
  assign n6522 = n6504 == 3'b101;
  /* src/T80/T80_ALU.vhd:139:94  */
  assign n6525 = n6504 == 3'b110;
  /* src/T80/T80_ALU.vhd:133:9  */
  assign n6527 = {n6525, n6522, n6519, n6516, n6513, n6510, n6507};
  /* src/T80/T80_ALU.vhd:133:9  */
  always @*
    case (n6527)
      7'b1000000: n6528 = 8'b01000000;
      7'b0100000: n6528 = 8'b00100000;
      7'b0010000: n6528 = 8'b00010000;
      7'b0001000: n6528 = 8'b00001000;
      7'b0000100: n6528 = 8'b00000100;
      7'b0000010: n6528 = 8'b00000010;
      7'b0000001: n6528 = 8'b00000001;
      default: n6528 = 8'b10000000;
    endcase
  /* src/T80/T80_ALU.vhd:142:31  */
  assign n6529 = alu_op[2]; // extract
  /* src/T80/T80_ALU.vhd:142:21  */
  assign n6530 = ~n6529;
  /* src/T80/T80_ALU.vhd:142:45  */
  assign n6531 = alu_op[0]; // extract
  /* src/T80/T80_ALU.vhd:142:35  */
  assign n6532 = n6530 & n6531;
  /* src/T80/T80_ALU.vhd:143:20  */
  assign n6534 = busa[3:0]; // extract
  /* src/T80/T80_ALU.vhd:143:38  */
  assign n6535 = busb[3:0]; // extract
  /* src/T80/T80_ALU.vhd:143:58  */
  assign n6536 = alu_op[1]; // extract
  /* src/T80/T80_ALU.vhd:143:69  */
  assign n6537 = alu_op[1]; // extract
  /* src/T80/T80_ALU.vhd:143:95  */
  assign n6538 = f_in[0]; // extract
  /* src/T80/T80_ALU.vhd:143:87  */
  assign n6539 = usecarry & n6538;
  /* src/T80/T80_ALU.vhd:143:73  */
  assign n6540 = n6537 ^ n6539;
  /* src/T80/T80_ALU.vhd:111:32  */
  assign n6545 = ~n6535;
  /* src/T80/T80_ALU.vhd:110:17  */
  assign n6546 = n6536 ? n6545 : n6535;
  /* src/T80/T80_ALU.vhd:116:39  */
  assign n6549 = {1'b0, n6534};
  /* src/T80/T80_ALU.vhd:116:43  */
  assign n6550 = {n6549, n6540};
  /* src/T80/T80_ALU.vhd:116:70  */
  assign n6552 = {1'b0, n6546};
  /* src/T80/T80_ALU.vhd:116:76  */
  assign n6554 = {n6552, 1'b1};
  /* src/T80/T80_ALU.vhd:116:55  */
  assign n6555 = n6550 + n6554;
  /* src/T80/T80_ALU.vhd:117:31  */
  assign n6557 = n6555[5]; // extract
  /* src/T80/T80_ALU.vhd:118:46  */
  assign n6558 = n6555[4:1]; // extract
  /* src/T80/T80_ALU.vhd:144:20  */
  assign n6560 = busa[6:4]; // extract
  /* src/T80/T80_ALU.vhd:144:38  */
  assign n6561 = busb[6:4]; // extract
  /* src/T80/T80_ALU.vhd:144:58  */
  assign n6562 = alu_op[1]; // extract
  /* src/T80/T80_ALU.vhd:111:32  */
  assign n6567 = ~n6561;
  /* src/T80/T80_ALU.vhd:110:17  */
  assign n6568 = n6562 ? n6567 : n6561;
  /* src/T80/T80_ALU.vhd:116:39  */
  assign n6571 = {1'b0, n6560};
  /* src/T80/T80_ALU.vhd:116:43  */
  assign n6572 = {n6571, halfcarry_v};
  /* src/T80/T80_ALU.vhd:116:70  */
  assign n6574 = {1'b0, n6568};
  /* src/T80/T80_ALU.vhd:116:76  */
  assign n6576 = {n6574, 1'b1};
  /* src/T80/T80_ALU.vhd:116:55  */
  assign n6577 = n6572 + n6576;
  /* src/T80/T80_ALU.vhd:117:31  */
  assign n6579 = n6577[4]; // extract
  /* src/T80/T80_ALU.vhd:118:46  */
  assign n6580 = n6577[3:1]; // extract
  /* src/T80/T80_ALU.vhd:145:20  */
  assign n6582 = busa[7]; // extract
  /* src/T80/T80_ALU.vhd:145:38  */
  assign n6583 = busb[7]; // extract
  /* src/T80/T80_ALU.vhd:145:58  */
  assign n6584 = alu_op[1]; // extract
  /* src/T80/T80_ALU.vhd:111:32  */
  assign n6589 = ~n6583;
  /* src/T80/T80_ALU.vhd:110:17  */
  assign n6590 = n6584 ? n6589 : n6583;
  /* src/T80/T80_ALU.vhd:116:39  */
  assign n6593 = {1'b0, n6582};
  /* src/T80/T80_ALU.vhd:116:43  */
  assign n6594 = {n6593, carry7_v};
  /* src/T80/T80_ALU.vhd:116:70  */
  assign n6596 = {1'b0, n6590};
  /* src/T80/T80_ALU.vhd:116:76  */
  assign n6598 = {n6596, 1'b1};
  /* src/T80/T80_ALU.vhd:116:55  */
  assign n6599 = n6594 + n6598;
  /* src/T80/T80_ALU.vhd:117:31  */
  assign n6601 = n6599[2]; // extract
  /* src/T80/T80_ALU.vhd:118:46  */
  assign n6602 = n6599[1]; // extract
  /* src/T80/T80_ALU.vhd:153:47  */
  assign n6605 = carry_v ^ carry7_v;
  /* src/T80/T80_ALU.vhd:168:36  */
  assign n6613 = alu_op[2:0]; // extract
  /* src/T80/T80_ALU.vhd:169:25  */
  assign n6615 = n6613 == 3'b000;
  /* src/T80/T80_ALU.vhd:169:36  */
  assign n6617 = n6613 == 3'b001;
  /* src/T80/T80_ALU.vhd:169:36  */
  assign n6618 = n6615 | n6617;
  /* src/T80/T80_ALU.vhd:177:50  */
  assign n6620 = ~carry_v;
  /* src/T80/T80_ALU.vhd:178:50  */
  assign n6621 = ~halfcarry_v;
  /* src/T80/T80_ALU.vhd:174:25  */
  assign n6623 = n6613 == 3'b010;
  /* src/T80/T80_ALU.vhd:174:36  */
  assign n6625 = n6613 == 3'b011;
  /* src/T80/T80_ALU.vhd:174:36  */
  assign n6626 = n6623 | n6625;
  /* src/T80/T80_ALU.vhd:174:44  */
  assign n6628 = n6613 == 3'b111;
  /* src/T80/T80_ALU.vhd:174:44  */
  assign n6629 = n6626 | n6628;
  /* src/T80/T80_ALU.vhd:181:57  */
  assign n6630 = busa & busb;
  /* src/T80/T80_ALU.vhd:180:25  */
  assign n6633 = n6613 == 3'b100;
  /* src/T80/T80_ALU.vhd:184:57  */
  assign n6634 = busa ^ busb;
  /* src/T80/T80_ALU.vhd:183:25  */
  assign n6637 = n6613 == 3'b101;
  /* src/T80/T80_ALU.vhd:187:57  */
  assign n6638 = busa | busb;
  /* src/T80/T80_ALU.vhd:168:25  */
  assign n6640 = {n6637, n6633, n6629, n6618};
  /* src/T80/T80_ALU.vhd:168:25  */
  always @*
    case (n6640)
      4'b1000: n6641 = 1'b0;
      4'b0100: n6641 = 1'b0;
      4'b0010: n6641 = n6620;
      4'b0001: n6641 = carry_v;
      default: n6641 = 1'b0;
    endcase
  /* src/T80/T80_ALU.vhd:168:25  */
  always @*
    case (n6640)
      4'b1000: n6642 = 1'b0;
      4'b0100: n6642 = 1'b0;
      4'b0010: n6642 = 1'b1;
      4'b0001: n6642 = 1'b0;
      default: n6642 = 1'b0;
    endcase
  /* src/T80/T80_ALU.vhd:94:17  */
  assign n6643 = f_in[2]; // extract
  /* src/T80/T80_ALU.vhd:168:25  */
  always @*
    case (n6640)
      4'b1000: n6644 = n6643;
      4'b0100: n6644 = n6643;
      4'b0010: n6644 = overflow_v;
      4'b0001: n6644 = overflow_v;
      default: n6644 = n6643;
    endcase
  /* src/T80/T80_ALU.vhd:168:25  */
  always @*
    case (n6640)
      4'b1000: n6645 = 1'b0;
      4'b0100: n6645 = 1'b1;
      4'b0010: n6645 = n6621;
      4'b0001: n6645 = halfcarry_v;
      default: n6645 = 1'b0;
    endcase
  /* src/T80/T80_ALU.vhd:168:25  */
  always @*
    case (n6640)
      4'b1000: n6646 = n6634;
      4'b0100: n6646 = n6630;
      4'b0010: n6646 = q_v;
      4'b0001: n6646 = q_v;
      default: n6646 = n6638;
    endcase
  /* src/T80/T80_ALU.vhd:190:34  */
  assign n6647 = alu_op[2:0]; // extract
  /* src/T80/T80_ALU.vhd:190:47  */
  assign n6649 = n6647 == 3'b111;
  /* src/T80/T80_ALU.vhd:191:54  */
  assign n6650 = busb[3]; // extract
  /* src/T80/T80_ALU.vhd:192:54  */
  assign n6651 = busb[5]; // extract
  /* src/T80/T80_ALU.vhd:194:53  */
  assign n6652 = n6646[3]; // extract
  /* src/T80/T80_ALU.vhd:195:53  */
  assign n6653 = n6646[5]; // extract
  /* src/T80/T80_ALU.vhd:190:25  */
  assign n6654 = n6649 ? n6650 : n6652;
  /* src/T80/T80_ALU.vhd:190:25  */
  assign n6655 = n6649 ? n6651 : n6653;
  /* src/T80/T80_ALU.vhd:197:44  */
  assign n6657 = n6646 == 8'b00000000;
  /* src/T80/T80_ALU.vhd:200:62  */
  assign n6659 = f_in[6]; // extract
  /* src/T80/T80_ALU.vhd:199:33  */
  assign n6660 = z16 ? n6659 : 1'b1;
  /* src/T80/T80_ALU.vhd:197:25  */
  assign n6662 = n6657 ? n6660 : 1'b0;
  /* src/T80/T80_ALU.vhd:205:45  */
  assign n6663 = n6646[7]; // extract
  /* src/T80/T80_ALU.vhd:206:36  */
  assign n6664 = alu_op[2:0]; // extract
  /* src/T80/T80_ALU.vhd:207:25  */
  assign n6666 = n6664 == 3'b000;
  /* src/T80/T80_ALU.vhd:207:36  */
  assign n6668 = n6664 == 3'b001;
  /* src/T80/T80_ALU.vhd:207:36  */
  assign n6669 = n6666 | n6668;
  /* src/T80/T80_ALU.vhd:207:44  */
  assign n6671 = n6664 == 3'b010;
  /* src/T80/T80_ALU.vhd:207:44  */
  assign n6672 = n6669 | n6671;
  /* src/T80/T80_ALU.vhd:207:52  */
  assign n6674 = n6664 == 3'b011;
  /* src/T80/T80_ALU.vhd:207:52  */
  assign n6675 = n6672 | n6674;
  /* src/T80/T80_ALU.vhd:207:60  */
  assign n6677 = n6664 == 3'b111;
  /* src/T80/T80_ALU.vhd:207:60  */
  assign n6678 = n6675 | n6677;
  /* src/T80/T80_ALU.vhd:209:58  */
  assign n6679 = n6646[0]; // extract
  /* src/T80/T80_ALU.vhd:209:69  */
  assign n6680 = n6646[1]; // extract
  /* src/T80/T80_ALU.vhd:209:62  */
  assign n6681 = n6679 ^ n6680;
  /* src/T80/T80_ALU.vhd:209:80  */
  assign n6682 = n6646[2]; // extract
  /* src/T80/T80_ALU.vhd:209:73  */
  assign n6683 = n6681 ^ n6682;
  /* src/T80/T80_ALU.vhd:209:91  */
  assign n6684 = n6646[3]; // extract
  /* src/T80/T80_ALU.vhd:209:84  */
  assign n6685 = n6683 ^ n6684;
  /* src/T80/T80_ALU.vhd:210:44  */
  assign n6686 = n6646[4]; // extract
  /* src/T80/T80_ALU.vhd:209:95  */
  assign n6687 = n6685 ^ n6686;
  /* src/T80/T80_ALU.vhd:210:55  */
  assign n6688 = n6646[5]; // extract
  /* src/T80/T80_ALU.vhd:210:48  */
  assign n6689 = n6687 ^ n6688;
  /* src/T80/T80_ALU.vhd:210:66  */
  assign n6690 = n6646[6]; // extract
  /* src/T80/T80_ALU.vhd:210:59  */
  assign n6691 = n6689 ^ n6690;
  /* src/T80/T80_ALU.vhd:210:77  */
  assign n6692 = n6646[7]; // extract
  /* src/T80/T80_ALU.vhd:210:70  */
  assign n6693 = n6691 ^ n6692;
  /* src/T80/T80_ALU.vhd:209:50  */
  assign n6694 = ~n6693;
  /* src/T80/T80_ALU.vhd:206:25  */
  always @*
    case (n6678)
      1'b1: n6695 = n6644;
      default: n6695 = n6694;
    endcase
  /* src/T80/T80_ALU.vhd:213:54  */
  assign n6696 = f_in[7]; // extract
  /* src/T80/T80_ALU.vhd:214:54  */
  assign n6697 = f_in[6]; // extract
  /* src/T80/T80_ALU.vhd:215:54  */
  assign n6698 = f_in[2]; // extract
  /* src/T80/T80_ALU.vhd:212:25  */
  assign n6699 = {n6696, n6697};
  /* src/T80/T80_ALU.vhd:212:25  */
  assign n6700 = arith16 ? n6698 : n6695;
  /* src/T80/T80_ALU.vhd:94:17  */
  assign n6701 = {n6663, n6662};
  /* src/T80/T80_ALU.vhd:212:25  */
  assign n6702 = arith16 ? n6699 : n6701;
  /* src/T80/T80_ALU.vhd:165:17  */
  assign n6704 = alu_op == 4'b0000;
  /* src/T80/T80_ALU.vhd:165:29  */
  assign n6706 = alu_op == 4'b0001;
  /* src/T80/T80_ALU.vhd:165:29  */
  assign n6707 = n6704 | n6706;
  /* src/T80/T80_ALU.vhd:165:38  */
  assign n6709 = alu_op == 4'b0010;
  /* src/T80/T80_ALU.vhd:165:38  */
  assign n6710 = n6707 | n6709;
  /* src/T80/T80_ALU.vhd:165:48  */
  assign n6712 = alu_op == 4'b0011;
  /* src/T80/T80_ALU.vhd:165:48  */
  assign n6713 = n6710 | n6712;
  /* src/T80/T80_ALU.vhd:165:57  */
  assign n6715 = alu_op == 4'b0100;
  /* src/T80/T80_ALU.vhd:165:57  */
  assign n6716 = n6713 | n6715;
  /* src/T80/T80_ALU.vhd:165:66  */
  assign n6718 = alu_op == 4'b0101;
  /* src/T80/T80_ALU.vhd:165:66  */
  assign n6719 = n6716 | n6718;
  /* src/T80/T80_ALU.vhd:165:75  */
  assign n6721 = alu_op == 4'b0110;
  /* src/T80/T80_ALU.vhd:165:75  */
  assign n6722 = n6719 | n6721;
  /* src/T80/T80_ALU.vhd:165:84  */
  assign n6724 = alu_op == 4'b0111;
  /* src/T80/T80_ALU.vhd:165:84  */
  assign n6725 = n6722 | n6724;
  /* src/T80/T80_ALU.vhd:219:46  */
  assign n6726 = f_in[4]; // extract
  /* src/T80/T80_ALU.vhd:223:32  */
  assign n6729 = f_in[1]; // extract
  /* src/T80/T80_ALU.vhd:223:41  */
  assign n6730 = ~n6729;
  /* src/T80/T80_ALU.vhd:159:26  */
  assign n6731 = {1'b0, busa};
  /* src/T80/T80_ALU.vhd:226:41  */
  assign n6732 = n6731[3:0]; // extract
  /* src/T80/T80_ALU.vhd:226:54  */
  assign n6734 = $unsigned(n6732) > $unsigned(4'b1001);
  /* src/T80/T80_ALU.vhd:226:65  */
  assign n6735 = f_in[4]; // extract
  /* src/T80/T80_ALU.vhd:226:58  */
  assign n6736 = n6734 | n6735;
  /* src/T80/T80_ALU.vhd:159:26  */
  assign n6737 = {1'b0, busa};
  /* src/T80/T80_ALU.vhd:227:50  */
  assign n6738 = n6737[3:0]; // extract
  /* src/T80/T80_ALU.vhd:227:63  */
  assign n6740 = $unsigned(n6738) > $unsigned(4'b1001);
  /* src/T80/T80_ALU.vhd:227:41  */
  assign n6743 = n6740 ? 1'b1 : 1'b0;
  /* src/T80/T80_ALU.vhd:159:26  */
  assign n6744 = {1'b0, busa};
  /* src/T80/T80_ALU.vhd:232:56  */
  assign n6746 = n6744 + 9'b000000110;
  /* src/T80/T80_ALU.vhd:226:33  */
  assign n6747 = n6736 ? n6743 : n6726;
  /* src/T80/T80_ALU.vhd:159:26  */
  assign n6748 = {1'b0, busa};
  /* src/T80/T80_ALU.vhd:226:33  */
  assign n6749 = n6736 ? n6746 : n6748;
  /* src/T80/T80_ALU.vhd:235:41  */
  assign n6750 = n6749[8:4]; // extract
  /* src/T80/T80_ALU.vhd:235:54  */
  assign n6752 = $unsigned(n6750) > $unsigned(5'b01001);
  /* src/T80/T80_ALU.vhd:235:65  */
  assign n6753 = f_in[0]; // extract
  /* src/T80/T80_ALU.vhd:235:58  */
  assign n6754 = n6752 | n6753;
  /* src/T80/T80_ALU.vhd:236:56  */
  assign n6756 = n6749 + 9'b001100000;
  /* src/T80/T80_ALU.vhd:235:33  */
  assign n6757 = n6754 ? n6756 : n6749;
  /* src/T80/T80_ALU.vhd:159:26  */
  assign n6758 = {1'b0, busa};
  /* src/T80/T80_ALU.vhd:240:41  */
  assign n6759 = n6758[3:0]; // extract
  /* src/T80/T80_ALU.vhd:240:54  */
  assign n6761 = $unsigned(n6759) > $unsigned(4'b1001);
  /* src/T80/T80_ALU.vhd:240:65  */
  assign n6762 = f_in[4]; // extract
  /* src/T80/T80_ALU.vhd:240:58  */
  assign n6763 = n6761 | n6762;
  /* src/T80/T80_ALU.vhd:159:26  */
  assign n6764 = {1'b0, busa};
  /* src/T80/T80_ALU.vhd:241:49  */
  assign n6765 = n6764[3:0]; // extract
  /* src/T80/T80_ALU.vhd:241:62  */
  assign n6767 = $unsigned(n6765) > $unsigned(4'b0101);
  /* src/T80/T80_ALU.vhd:240:33  */
  assign n6769 = n6774 ? 1'b0 : n6726;
  /* src/T80/T80_ALU.vhd:159:26  */
  assign n6770 = {1'b0, busa};
  /* src/T80/T80_ALU.vhd:244:67  */
  assign n6771 = n6770[7:0]; // extract
  /* src/T80/T80_ALU.vhd:244:80  */
  assign n6773 = n6771 - 8'b00000110;
  /* src/T80/T80_ALU.vhd:240:33  */
  assign n6774 = n6767 & n6763;
  /* src/T80/T80_ALU.vhd:240:33  */
  assign n6775 = n6763 ? n6773 : busa;
  /* src/T80/T80_ALU.vhd:246:51  */
  assign n6777 = $unsigned(busa) > $unsigned(8'b10011001);
  /* src/T80/T80_ALU.vhd:246:64  */
  assign n6778 = f_in[0]; // extract
  /* src/T80/T80_ALU.vhd:246:57  */
  assign n6779 = n6777 | n6778;
  /* src/T80/T80_ALU.vhd:159:26  */
  assign n6780 = {1'b0, n6775};
  /* src/T80/T80_ALU.vhd:247:56  */
  assign n6782 = n6780 - 9'b101100000;
  /* src/T80/T80_ALU.vhd:159:26  */
  assign n6783 = {1'b0, n6775};
  /* src/T80/T80_ALU.vhd:246:33  */
  assign n6784 = n6779 ? n6782 : n6783;
  /* src/T80/T80_ALU.vhd:223:25  */
  assign n6785 = n6730 ? n6747 : n6769;
  /* src/T80/T80_ALU.vhd:223:25  */
  assign n6786 = n6730 ? n6757 : n6784;
  /* src/T80/T80_ALU.vhd:250:47  */
  assign n6787 = n6786[3]; // extract
  /* src/T80/T80_ALU.vhd:251:47  */
  assign n6788 = n6786[5]; // extract
  /* src/T80/T80_ALU.vhd:252:46  */
  assign n6789 = f_in[0]; // extract
  /* src/T80/T80_ALU.vhd:252:63  */
  assign n6790 = n6786[8]; // extract
  /* src/T80/T80_ALU.vhd:252:55  */
  assign n6791 = n6789 | n6790;
  /* src/T80/T80_ALU.vhd:253:54  */
  assign n6792 = n6786[7:0]; // extract
  /* src/T80/T80_ALU.vhd:254:33  */
  assign n6793 = n6786[7:0]; // extract
  /* src/T80/T80_ALU.vhd:254:46  */
  assign n6795 = n6793 == 8'b00000000;
  /* src/T80/T80_ALU.vhd:254:25  */
  assign n6798 = n6795 ? 1'b1 : 1'b0;
  /* src/T80/T80_ALU.vhd:259:47  */
  assign n6799 = n6786[7]; // extract
  /* src/T80/T80_ALU.vhd:260:52  */
  assign n6800 = n6786[0]; // extract
  /* src/T80/T80_ALU.vhd:260:65  */
  assign n6801 = n6786[1]; // extract
  /* src/T80/T80_ALU.vhd:260:56  */
  assign n6802 = n6800 ^ n6801;
  /* src/T80/T80_ALU.vhd:260:78  */
  assign n6803 = n6786[2]; // extract
  /* src/T80/T80_ALU.vhd:260:69  */
  assign n6804 = n6802 ^ n6803;
  /* src/T80/T80_ALU.vhd:260:91  */
  assign n6805 = n6786[3]; // extract
  /* src/T80/T80_ALU.vhd:260:82  */
  assign n6806 = n6804 ^ n6805;
  /* src/T80/T80_ALU.vhd:261:38  */
  assign n6807 = n6786[4]; // extract
  /* src/T80/T80_ALU.vhd:260:95  */
  assign n6808 = n6806 ^ n6807;
  /* src/T80/T80_ALU.vhd:261:51  */
  assign n6809 = n6786[5]; // extract
  /* src/T80/T80_ALU.vhd:261:42  */
  assign n6810 = n6808 ^ n6809;
  /* src/T80/T80_ALU.vhd:261:64  */
  assign n6811 = n6786[6]; // extract
  /* src/T80/T80_ALU.vhd:261:55  */
  assign n6812 = n6810 ^ n6811;
  /* src/T80/T80_ALU.vhd:261:77  */
  assign n6813 = n6786[7]; // extract
  /* src/T80/T80_ALU.vhd:261:68  */
  assign n6814 = n6812 ^ n6813;
  /* src/T80/T80_ALU.vhd:260:42  */
  assign n6815 = ~n6814;
  /* src/T80/T80_ALU.vhd:217:17  */
  assign n6817 = alu_op == 4'b1100;
  /* src/T80/T80_ALU.vhd:264:48  */
  assign n6818 = busa[7:4]; // extract
  /* src/T80/T80_ALU.vhd:265:34  */
  assign n6819 = alu_op[0]; // extract
  /* src/T80/T80_ALU.vhd:266:56  */
  assign n6820 = busb[7:4]; // extract
  /* src/T80/T80_ALU.vhd:268:56  */
  assign n6821 = busb[3:0]; // extract
  /* src/T80/T80_ALU.vhd:265:25  */
  assign n6822 = n6819 ? n6820 : n6821;
  /* src/T80/T80_ALU.vhd:158:26  */
  assign n6825 = {n6818, n6822};
  /* src/T80/T80_ALU.vhd:272:45  */
  assign n6826 = n6825[3]; // extract
  /* src/T80/T80_ALU.vhd:158:26  */
  assign n6827 = {n6818, n6822};
  /* src/T80/T80_ALU.vhd:273:45  */
  assign n6828 = n6827[5]; // extract
  /* src/T80/T80_ALU.vhd:158:26  */
  assign n6830 = {n6818, n6822};
  /* src/T80/T80_ALU.vhd:274:44  */
  assign n6831 = n6830 == 8'b00000000;
  /* src/T80/T80_ALU.vhd:274:25  */
  assign n6834 = n6831 ? 1'b1 : 1'b0;
  /* src/T80/T80_ALU.vhd:158:26  */
  assign n6835 = {n6818, n6822};
  /* src/T80/T80_ALU.vhd:279:45  */
  assign n6836 = n6835[7]; // extract
  /* src/T80/T80_ALU.vhd:158:26  */
  assign n6837 = {n6818, n6822};
  /* src/T80/T80_ALU.vhd:280:50  */
  assign n6838 = n6837[0]; // extract
  /* src/T80/T80_ALU.vhd:158:26  */
  assign n6839 = {n6818, n6822};
  /* src/T80/T80_ALU.vhd:280:61  */
  assign n6840 = n6839[1]; // extract
  /* src/T80/T80_ALU.vhd:280:54  */
  assign n6841 = n6838 ^ n6840;
  /* src/T80/T80_ALU.vhd:158:26  */
  assign n6842 = {n6818, n6822};
  /* src/T80/T80_ALU.vhd:280:72  */
  assign n6843 = n6842[2]; // extract
  /* src/T80/T80_ALU.vhd:280:65  */
  assign n6844 = n6841 ^ n6843;
  /* src/T80/T80_ALU.vhd:158:26  */
  assign n6845 = {n6818, n6822};
  /* src/T80/T80_ALU.vhd:280:83  */
  assign n6846 = n6845[3]; // extract
  /* src/T80/T80_ALU.vhd:280:76  */
  assign n6847 = n6844 ^ n6846;
  /* src/T80/T80_ALU.vhd:158:26  */
  assign n6848 = {n6818, n6822};
  /* src/T80/T80_ALU.vhd:281:36  */
  assign n6849 = n6848[4]; // extract
  /* src/T80/T80_ALU.vhd:280:87  */
  assign n6850 = n6847 ^ n6849;
  /* src/T80/T80_ALU.vhd:158:26  */
  assign n6851 = {n6818, n6822};
  /* src/T80/T80_ALU.vhd:281:47  */
  assign n6852 = n6851[5]; // extract
  /* src/T80/T80_ALU.vhd:281:40  */
  assign n6853 = n6850 ^ n6852;
  /* src/T80/T80_ALU.vhd:158:26  */
  assign n6854 = {n6818, n6822};
  /* src/T80/T80_ALU.vhd:281:58  */
  assign n6855 = n6854[6]; // extract
  /* src/T80/T80_ALU.vhd:281:51  */
  assign n6856 = n6853 ^ n6855;
  /* src/T80/T80_ALU.vhd:158:26  */
  assign n6857 = {n6818, n6822};
  /* src/T80/T80_ALU.vhd:281:69  */
  assign n6858 = n6857[7]; // extract
  /* src/T80/T80_ALU.vhd:281:62  */
  assign n6859 = n6856 ^ n6858;
  /* src/T80/T80_ALU.vhd:280:42  */
  assign n6860 = ~n6859;
  /* src/T80/T80_ALU.vhd:262:17  */
  assign n6862 = alu_op == 4'b1101;
  /* src/T80/T80_ALU.vhd:262:29  */
  assign n6864 = alu_op == 4'b1110;
  /* src/T80/T80_ALU.vhd:262:29  */
  assign n6865 = n6862 | n6864;
  /* src/T80/T80_ALU.vhd:284:49  */
  assign n6866 = busb & bitmask;
  /* src/T80/T80_ALU.vhd:285:45  */
  assign n6867 = n6866[7]; // extract
  /* src/T80/T80_ALU.vhd:286:44  */
  assign n6869 = n6866 == 8'b00000000;
  /* src/T80/T80_ALU.vhd:286:25  */
  assign n6874 = n6869 ? 1'b1 : 1'b0;
  /* src/T80/T80_ALU.vhd:286:25  */
  assign n6875 = n6869 ? 1'b1 : 1'b0;
  /* src/T80/T80_ALU.vhd:297:30  */
  assign n6880 = ir[2:0]; // extract
  /* src/T80/T80_ALU.vhd:297:43  */
  assign n6882 = n6880 != 3'b110;
  /* src/T80/T80_ALU.vhd:298:54  */
  assign n6883 = busb[3]; // extract
  /* src/T80/T80_ALU.vhd:299:54  */
  assign n6884 = busb[5]; // extract
  /* src/T80/T80_ALU.vhd:297:25  */
  assign n6885 = n6882 ? n6883 : 1'b0;
  /* src/T80/T80_ALU.vhd:297:25  */
  assign n6886 = n6882 ? n6884 : 1'b0;
  /* src/T80/T80_ALU.vhd:282:17  */
  assign n6888 = alu_op == 4'b1001;
  /* src/T80/T80_ALU.vhd:303:49  */
  assign n6889 = busb | bitmask;
  /* src/T80/T80_ALU.vhd:301:17  */
  assign n6891 = alu_op == 4'b1010;
  /* src/T80/T80_ALU.vhd:306:53  */
  assign n6892 = ~bitmask;
  /* src/T80/T80_ALU.vhd:306:49  */
  assign n6893 = busb & n6892;
  /* src/T80/T80_ALU.vhd:304:17  */
  assign n6895 = alu_op == 4'b1011;
  /* src/T80/T80_ALU.vhd:309:32  */
  assign n6896 = ir[5:3]; // extract
  /* src/T80/T80_ALU.vhd:311:56  */
  assign n6897 = busa[6:0]; // extract
  /* src/T80/T80_ALU.vhd:312:47  */
  assign n6898 = busa[7]; // extract
  /* src/T80/T80_ALU.vhd:313:54  */
  assign n6899 = busa[7]; // extract
  /* src/T80/T80_ALU.vhd:310:25  */
  assign n6901 = n6896 == 3'b000;
  /* src/T80/T80_ALU.vhd:315:56  */
  assign n6902 = busa[6:0]; // extract
  /* src/T80/T80_ALU.vhd:316:47  */
  assign n6903 = f_in[0]; // extract
  /* src/T80/T80_ALU.vhd:317:54  */
  assign n6904 = busa[7]; // extract
  /* src/T80/T80_ALU.vhd:314:25  */
  assign n6906 = n6896 == 3'b010;
  /* src/T80/T80_ALU.vhd:319:56  */
  assign n6907 = busa[7:1]; // extract
  /* src/T80/T80_ALU.vhd:320:47  */
  assign n6908 = busa[0]; // extract
  /* src/T80/T80_ALU.vhd:321:54  */
  assign n6909 = busa[0]; // extract
  /* src/T80/T80_ALU.vhd:318:25  */
  assign n6911 = n6896 == 3'b001;
  /* src/T80/T80_ALU.vhd:323:56  */
  assign n6912 = busa[7:1]; // extract
  /* src/T80/T80_ALU.vhd:324:47  */
  assign n6913 = f_in[0]; // extract
  /* src/T80/T80_ALU.vhd:325:54  */
  assign n6914 = busa[0]; // extract
  /* src/T80/T80_ALU.vhd:322:25  */
  assign n6916 = n6896 == 3'b011;
  /* src/T80/T80_ALU.vhd:327:56  */
  assign n6917 = busa[6:0]; // extract
  /* src/T80/T80_ALU.vhd:329:54  */
  assign n6919 = busa[7]; // extract
  /* src/T80/T80_ALU.vhd:326:25  */
  assign n6921 = n6896 == 3'b100;
  /* src/T80/T80_ALU.vhd:336:64  */
  assign n6922 = busa[6:0]; // extract
  /* src/T80/T80_ALU.vhd:338:62  */
  assign n6924 = busa[7]; // extract
  /* src/T80/T80_ALU.vhd:330:25  */
  assign n6926 = n6896 == 3'b110;
  /* src/T80/T80_ALU.vhd:341:56  */
  assign n6927 = busa[7:1]; // extract
  /* src/T80/T80_ALU.vhd:342:47  */
  assign n6928 = busa[7]; // extract
  /* src/T80/T80_ALU.vhd:343:54  */
  assign n6929 = busa[0]; // extract
  /* src/T80/T80_ALU.vhd:340:25  */
  assign n6931 = n6896 == 3'b101;
  /* src/T80/T80_ALU.vhd:345:56  */
  assign n6932 = busa[7:1]; // extract
  /* src/T80/T80_ALU.vhd:347:54  */
  assign n6934 = busa[0]; // extract
  /* src/T80/T80_ALU.vhd:309:25  */
  assign n6935 = {n6931, n6926, n6921, n6916, n6911, n6906, n6901};
  /* src/T80/T80_ALU.vhd:309:25  */
  always @*
    case (n6935)
      7'b1000000: n6936 = n6929;
      7'b0100000: n6936 = n6924;
      7'b0010000: n6936 = n6919;
      7'b0001000: n6936 = n6914;
      7'b0000100: n6936 = n6909;
      7'b0000010: n6936 = n6904;
      7'b0000001: n6936 = n6899;
      default: n6936 = n6934;
    endcase
  /* src/T80/T80_ALU.vhd:319:56  */
  assign n6937 = n6907[0]; // extract
  /* src/T80/T80_ALU.vhd:323:56  */
  assign n6938 = n6912[0]; // extract
  /* src/T80/T80_ALU.vhd:341:56  */
  assign n6939 = n6927[0]; // extract
  /* src/T80/T80_ALU.vhd:345:56  */
  assign n6940 = n6932[0]; // extract
  /* src/T80/T80_ALU.vhd:309:25  */
  always @*
    case (n6935)
      7'b1000000: n6941 = n6939;
      7'b0100000: n6941 = 1'b1;
      7'b0010000: n6941 = 1'b0;
      7'b0001000: n6941 = n6938;
      7'b0000100: n6941 = n6937;
      7'b0000010: n6941 = n6903;
      7'b0000001: n6941 = n6898;
      default: n6941 = n6940;
    endcase
  /* src/T80/T80_ALU.vhd:311:56  */
  assign n6942 = n6897[5:0]; // extract
  /* src/T80/T80_ALU.vhd:315:56  */
  assign n6943 = n6902[5:0]; // extract
  /* src/T80/T80_ALU.vhd:319:56  */
  assign n6944 = n6907[6:1]; // extract
  /* src/T80/T80_ALU.vhd:323:56  */
  assign n6945 = n6912[6:1]; // extract
  /* src/T80/T80_ALU.vhd:327:56  */
  assign n6946 = n6917[5:0]; // extract
  /* src/T80/T80_ALU.vhd:336:64  */
  assign n6947 = n6922[5:0]; // extract
  /* src/T80/T80_ALU.vhd:341:56  */
  assign n6948 = n6927[6:1]; // extract
  /* src/T80/T80_ALU.vhd:345:56  */
  assign n6949 = n6932[6:1]; // extract
  /* src/T80/T80_ALU.vhd:309:25  */
  always @*
    case (n6935)
      7'b1000000: n6950 = n6948;
      7'b0100000: n6950 = n6947;
      7'b0010000: n6950 = n6946;
      7'b0001000: n6950 = n6945;
      7'b0000100: n6950 = n6944;
      7'b0000010: n6950 = n6943;
      7'b0000001: n6950 = n6942;
      default: n6950 = n6949;
    endcase
  /* src/T80/T80_ALU.vhd:311:56  */
  assign n6951 = n6897[6]; // extract
  /* src/T80/T80_ALU.vhd:315:56  */
  assign n6952 = n6902[6]; // extract
  /* src/T80/T80_ALU.vhd:327:56  */
  assign n6953 = n6917[6]; // extract
  /* src/T80/T80_ALU.vhd:336:64  */
  assign n6954 = n6922[6]; // extract
  /* src/T80/T80_ALU.vhd:309:25  */
  always @*
    case (n6935)
      7'b1000000: n6955 = n6928;
      7'b0100000: n6955 = n6954;
      7'b0010000: n6955 = n6953;
      7'b0001000: n6955 = n6913;
      7'b0000100: n6955 = n6908;
      7'b0000010: n6955 = n6952;
      7'b0000001: n6955 = n6951;
      default: n6955 = 1'b0;
    endcase
  /* src/T80/T80_ALU.vhd:158:26  */
  assign n6958 = {n6955, n6950, n6941};
  /* src/T80/T80_ALU.vhd:351:45  */
  assign n6959 = n6958[3]; // extract
  /* src/T80/T80_ALU.vhd:158:26  */
  assign n6960 = {n6955, n6950, n6941};
  /* src/T80/T80_ALU.vhd:352:45  */
  assign n6961 = n6960[5]; // extract
  /* src/T80/T80_ALU.vhd:158:26  */
  assign n6962 = {n6955, n6950, n6941};
  /* src/T80/T80_ALU.vhd:353:45  */
  assign n6963 = n6962[7]; // extract
  /* src/T80/T80_ALU.vhd:158:26  */
  assign n6965 = {n6955, n6950, n6941};
  /* src/T80/T80_ALU.vhd:354:44  */
  assign n6966 = n6965 == 8'b00000000;
  /* src/T80/T80_ALU.vhd:354:25  */
  assign n6969 = n6966 ? 1'b1 : 1'b0;
  /* src/T80/T80_ALU.vhd:158:26  */
  assign n6970 = {n6955, n6950, n6941};
  /* src/T80/T80_ALU.vhd:359:50  */
  assign n6971 = n6970[0]; // extract
  /* src/T80/T80_ALU.vhd:158:26  */
  assign n6972 = {n6955, n6950, n6941};
  /* src/T80/T80_ALU.vhd:359:61  */
  assign n6973 = n6972[1]; // extract
  /* src/T80/T80_ALU.vhd:359:54  */
  assign n6974 = n6971 ^ n6973;
  /* src/T80/T80_ALU.vhd:158:26  */
  assign n6975 = {n6955, n6950, n6941};
  /* src/T80/T80_ALU.vhd:359:72  */
  assign n6976 = n6975[2]; // extract
  /* src/T80/T80_ALU.vhd:359:65  */
  assign n6977 = n6974 ^ n6976;
  /* src/T80/T80_ALU.vhd:158:26  */
  assign n6978 = {n6955, n6950, n6941};
  /* src/T80/T80_ALU.vhd:359:83  */
  assign n6979 = n6978[3]; // extract
  /* src/T80/T80_ALU.vhd:359:76  */
  assign n6980 = n6977 ^ n6979;
  /* src/T80/T80_ALU.vhd:158:26  */
  assign n6981 = {n6955, n6950, n6941};
  /* src/T80/T80_ALU.vhd:360:36  */
  assign n6982 = n6981[4]; // extract
  /* src/T80/T80_ALU.vhd:359:87  */
  assign n6983 = n6980 ^ n6982;
  /* src/T80/T80_ALU.vhd:158:26  */
  assign n6984 = {n6955, n6950, n6941};
  /* src/T80/T80_ALU.vhd:360:47  */
  assign n6985 = n6984[5]; // extract
  /* src/T80/T80_ALU.vhd:360:40  */
  assign n6986 = n6983 ^ n6985;
  /* src/T80/T80_ALU.vhd:158:26  */
  assign n6987 = {n6955, n6950, n6941};
  /* src/T80/T80_ALU.vhd:360:58  */
  assign n6988 = n6987[6]; // extract
  /* src/T80/T80_ALU.vhd:360:51  */
  assign n6989 = n6986 ^ n6988;
  /* src/T80/T80_ALU.vhd:158:26  */
  assign n6990 = {n6955, n6950, n6941};
  /* src/T80/T80_ALU.vhd:360:69  */
  assign n6991 = n6990[7]; // extract
  /* src/T80/T80_ALU.vhd:360:62  */
  assign n6992 = n6989 ^ n6991;
  /* src/T80/T80_ALU.vhd:359:42  */
  assign n6993 = ~n6992;
  /* src/T80/T80_ALU.vhd:361:33  */
  assign n6995 = iset == 2'b00;
  /* src/T80/T80_ALU.vhd:362:54  */
  assign n6996 = f_in[2]; // extract
  /* src/T80/T80_ALU.vhd:363:54  */
  assign n6997 = f_in[7]; // extract
  /* src/T80/T80_ALU.vhd:364:54  */
  assign n6998 = f_in[6]; // extract
  /* src/T80/T80_ALU.vhd:361:25  */
  assign n6999 = {n6997, n6998};
  /* src/T80/T80_ALU.vhd:361:25  */
  assign n7000 = n6995 ? n6996 : n6993;
  /* src/T80/T80_ALU.vhd:94:17  */
  assign n7001 = {n6963, n6969};
  /* src/T80/T80_ALU.vhd:361:25  */
  assign n7002 = n6995 ? n6999 : n7001;
  /* src/T80/T80_ALU.vhd:307:17  */
  assign n7004 = alu_op == 4'b1000;
  /* src/T80/T80_ALU.vhd:164:17  */
  assign n7005 = {n7004, n6895, n6891, n6888, n6865, n6817, n6725};
  /* src/T80/T80_ALU.vhd:94:17  */
  assign n7006 = f_in[0]; // extract
  /* src/T80/T80_ALU.vhd:164:17  */
  always @*
    case (n7005)
      7'b1000000: n7007 = n6936;
      7'b0100000: n7007 = n7006;
      7'b0010000: n7007 = n7006;
      7'b0001000: n7007 = n7006;
      7'b0000100: n7007 = n7006;
      7'b0000010: n7007 = n6791;
      7'b0000001: n7007 = n6641;
      default: n7007 = n7006;
    endcase
  /* src/T80/T80_ALU.vhd:94:17  */
  assign n7008 = f_in[1]; // extract
  /* src/T80/T80_ALU.vhd:164:17  */
  always @*
    case (n7005)
      7'b1000000: n7009 = 1'b0;
      7'b0100000: n7009 = n7008;
      7'b0010000: n7009 = n7008;
      7'b0001000: n7009 = 1'b0;
      7'b0000100: n7009 = 1'b0;
      7'b0000010: n7009 = n7008;
      7'b0000001: n7009 = n6642;
      default: n7009 = n7008;
    endcase
  /* src/T80/T80_ALU.vhd:94:17  */
  assign n7010 = f_in[2]; // extract
  /* src/T80/T80_ALU.vhd:164:17  */
  always @*
    case (n7005)
      7'b1000000: n7011 = n7000;
      7'b0100000: n7011 = n7010;
      7'b0010000: n7011 = n7010;
      7'b0001000: n7011 = n6874;
      7'b0000100: n7011 = n6860;
      7'b0000010: n7011 = n6815;
      7'b0000001: n7011 = n6700;
      default: n7011 = n7010;
    endcase
  /* src/T80/T80_ALU.vhd:94:17  */
  assign n7012 = f_in[3]; // extract
  /* src/T80/T80_ALU.vhd:164:17  */
  always @*
    case (n7005)
      7'b1000000: n7013 = n6959;
      7'b0100000: n7013 = n7012;
      7'b0010000: n7013 = n7012;
      7'b0001000: n7013 = n6885;
      7'b0000100: n7013 = n6826;
      7'b0000010: n7013 = n6787;
      7'b0000001: n7013 = n6654;
      default: n7013 = n7012;
    endcase
  /* src/T80/T80_ALU.vhd:94:17  */
  assign n7014 = f_in[4]; // extract
  /* src/T80/T80_ALU.vhd:164:17  */
  always @*
    case (n7005)
      7'b1000000: n7015 = 1'b0;
      7'b0100000: n7015 = n7014;
      7'b0010000: n7015 = n7014;
      7'b0001000: n7015 = 1'b1;
      7'b0000100: n7015 = 1'b0;
      7'b0000010: n7015 = n6785;
      7'b0000001: n7015 = n6645;
      default: n7015 = n7014;
    endcase
  /* src/T80/T80_ALU.vhd:94:17  */
  assign n7016 = f_in[5]; // extract
  /* src/T80/T80_ALU.vhd:164:17  */
  always @*
    case (n7005)
      7'b1000000: n7017 = n6961;
      7'b0100000: n7017 = n7016;
      7'b0010000: n7017 = n7016;
      7'b0001000: n7017 = n6886;
      7'b0000100: n7017 = n6828;
      7'b0000010: n7017 = n6788;
      7'b0000001: n7017 = n6655;
      default: n7017 = n7016;
    endcase
  /* src/T80/T80_ALU.vhd:212:25  */
  assign n7018 = n6702[0]; // extract
  /* src/T80/T80_ALU.vhd:361:25  */
  assign n7019 = n7002[0]; // extract
  /* src/T80/T80_ALU.vhd:94:17  */
  assign n7020 = f_in[6]; // extract
  /* src/T80/T80_ALU.vhd:164:17  */
  always @*
    case (n7005)
      7'b1000000: n7021 = n7019;
      7'b0100000: n7021 = n7020;
      7'b0010000: n7021 = n7020;
      7'b0001000: n7021 = n6875;
      7'b0000100: n7021 = n6834;
      7'b0000010: n7021 = n6798;
      7'b0000001: n7021 = n7018;
      default: n7021 = n7020;
    endcase
  /* src/T80/T80_ALU.vhd:212:25  */
  assign n7022 = n6702[1]; // extract
  /* src/T80/T80_ALU.vhd:361:25  */
  assign n7023 = n7002[1]; // extract
  /* src/T80/T80_ALU.vhd:94:17  */
  assign n7024 = f_in[7]; // extract
  /* src/T80/T80_ALU.vhd:164:17  */
  always @*
    case (n7005)
      7'b1000000: n7025 = n7023;
      7'b0100000: n7025 = n7024;
      7'b0010000: n7025 = n7024;
      7'b0001000: n7025 = n6867;
      7'b0000100: n7025 = n6836;
      7'b0000010: n7025 = n6799;
      7'b0000001: n7025 = n7022;
      default: n7025 = n7024;
    endcase
  /* src/T80/T80_ALU.vhd:168:25  */
  assign n7033 = n6646[0]; // extract
  /* src/T80/T80_ALU.vhd:253:54  */
  assign n7034 = n6792[0]; // extract
  /* src/T80/T80_ALU.vhd:265:25  */
  assign n7035 = n6822[0]; // extract
  /* src/T80/T80_ALU.vhd:284:49  */
  assign n7036 = n6866[0]; // extract
  /* src/T80/T80_ALU.vhd:303:49  */
  assign n7037 = n6889[0]; // extract
  /* src/T80/T80_ALU.vhd:306:49  */
  assign n7038 = n6893[0]; // extract
  /* src/T80/T80_ALU.vhd:164:17  */
  always @*
    case (n7005)
      7'b1000000: n7040 = n6941;
      7'b0100000: n7040 = n7038;
      7'b0010000: n7040 = n7037;
      7'b0001000: n7040 = n7036;
      7'b0000100: n7040 = n7035;
      7'b0000010: n7040 = n7034;
      7'b0000001: n7040 = n7033;
      default: n7040 = 1'bX;
    endcase
  /* src/T80/T80_ALU.vhd:168:25  */
  assign n7041 = n6646[3:1]; // extract
  /* src/T80/T80_ALU.vhd:253:54  */
  assign n7042 = n6792[3:1]; // extract
  /* src/T80/T80_ALU.vhd:265:25  */
  assign n7043 = n6822[3:1]; // extract
  /* src/T80/T80_ALU.vhd:284:49  */
  assign n7044 = n6866[3:1]; // extract
  /* src/T80/T80_ALU.vhd:303:49  */
  assign n7045 = n6889[3:1]; // extract
  /* src/T80/T80_ALU.vhd:306:49  */
  assign n7046 = n6893[3:1]; // extract
  /* src/T80/T80_ALU.vhd:309:25  */
  assign n7047 = n6950[2:0]; // extract
  /* src/T80/T80_ALU.vhd:164:17  */
  always @*
    case (n7005)
      7'b1000000: n7049 = n7047;
      7'b0100000: n7049 = n7046;
      7'b0010000: n7049 = n7045;
      7'b0001000: n7049 = n7044;
      7'b0000100: n7049 = n7043;
      7'b0000010: n7049 = n7042;
      7'b0000001: n7049 = n7041;
      default: n7049 = 3'bX;
    endcase
  /* src/T80/T80_ALU.vhd:168:25  */
  assign n7050 = n6646[6:4]; // extract
  /* src/T80/T80_ALU.vhd:253:54  */
  assign n7051 = n6792[6:4]; // extract
  /* src/T80/T80_ALU.vhd:264:48  */
  assign n7052 = n6818[2:0]; // extract
  /* src/T80/T80_ALU.vhd:284:49  */
  assign n7053 = n6866[6:4]; // extract
  /* src/T80/T80_ALU.vhd:303:49  */
  assign n7054 = n6889[6:4]; // extract
  /* src/T80/T80_ALU.vhd:306:49  */
  assign n7055 = n6893[6:4]; // extract
  /* src/T80/T80_ALU.vhd:309:25  */
  assign n7056 = n6950[5:3]; // extract
  /* src/T80/T80_ALU.vhd:164:17  */
  always @*
    case (n7005)
      7'b1000000: n7058 = n7056;
      7'b0100000: n7058 = n7055;
      7'b0010000: n7058 = n7054;
      7'b0001000: n7058 = n7053;
      7'b0000100: n7058 = n7052;
      7'b0000010: n7058 = n7051;
      7'b0000001: n7058 = n7050;
      default: n7058 = 3'bX;
    endcase
  /* src/T80/T80_ALU.vhd:168:25  */
  assign n7059 = n6646[7]; // extract
  /* src/T80/T80_ALU.vhd:253:54  */
  assign n7060 = n6792[7]; // extract
  /* src/T80/T80_ALU.vhd:264:48  */
  assign n7061 = n6818[3]; // extract
  /* src/T80/T80_ALU.vhd:284:49  */
  assign n7062 = n6866[7]; // extract
  /* src/T80/T80_ALU.vhd:303:49  */
  assign n7063 = n6889[7]; // extract
  /* src/T80/T80_ALU.vhd:306:49  */
  assign n7064 = n6893[7]; // extract
  /* src/T80/T80_ALU.vhd:164:17  */
  always @*
    case (n7005)
      7'b1000000: n7066 = n6955;
      7'b0100000: n7066 = n7064;
      7'b0010000: n7066 = n7063;
      7'b0001000: n7066 = n7062;
      7'b0000100: n7066 = n7061;
      7'b0000010: n7066 = n7060;
      7'b0000001: n7066 = n7059;
      default: n7066 = 1'bX;
    endcase
  /* src/T80/T80_ALU.vhd:158:26  */
  assign n7074 = {n7066, n7058, n7049, n7040};
  /* src/T80/T80_ALU.vhd:127:16  */
  assign n7077 = {n6602, n6580, n6558};
  /* src/T80/T80_ALU.vhd:94:17  */
  assign n7078 = {n7025, n7021, n7017, n7015, n7013, n7011, n7009, n7007};
endmodule

module t80_mcode_Brtl_0_0_1_2_3_4_5_6_7
  (input  [7:0] ir,
   input  [1:0] iset,
   input  [2:0] mcycle,
   input  [7:0] f,
   input  nmicycle,
   input  intcycle,
   output [2:0] mcycles,
   output [2:0] tstates,
   output [1:0] prefix,
   output inc_pc,
   output inc_wz,
   output [3:0] incdec_16,
   output read_to_reg,
   output read_to_acc,
   output [3:0] set_busa_to,
   output [3:0] set_busb_to,
   output [3:0] alu_op,
   output save_alu,
   output preservec,
   output arith16,
   output [2:0] set_addr_to,
   output iorq,
   output jump,
   output jumpe,
   output jumpxy,
   output call,
   output rstp,
   output ldz,
   output ldw,
   output ldsphl,
   output [2:0] special_ld,
   output exchangedh,
   output exchangerp,
   output exchangeaf,
   output exchangers,
   output i_djnz,
   output i_cpl,
   output i_ccf,
   output i_scf,
   output i_retn,
   output i_bt,
   output i_bc,
   output i_btr,
   output i_rld,
   output i_rrd,
   output i_inrc,
   output setdi,
   output setei,
   output [1:0] imode,
   output halt,
   output noread,
   output write);
  wire [2:0] n1725;
  wire [2:0] n1726;
  wire [1:0] n1727;
  wire n1729;
  wire [2:0] n1732;
  wire [2:0] n1733;
  wire [3:0] n1735;
  wire n1737;
  wire n1739;
  wire n1740;
  wire n1742;
  wire n1743;
  wire n1745;
  wire n1746;
  wire n1748;
  wire n1749;
  wire n1751;
  wire n1752;
  wire n1754;
  wire n1755;
  wire n1757;
  wire n1758;
  wire n1760;
  wire n1761;
  wire n1763;
  wire n1764;
  wire n1766;
  wire n1767;
  wire n1769;
  wire n1770;
  wire n1772;
  wire n1773;
  wire n1775;
  wire n1776;
  wire n1778;
  wire n1779;
  wire n1781;
  wire n1782;
  wire n1784;
  wire n1785;
  wire n1787;
  wire n1788;
  wire n1790;
  wire n1791;
  wire n1793;
  wire n1794;
  wire n1796;
  wire n1797;
  wire n1799;
  wire n1800;
  wire n1802;
  wire n1803;
  wire n1805;
  wire n1806;
  wire n1808;
  wire n1809;
  wire n1811;
  wire n1812;
  wire n1814;
  wire n1815;
  wire n1817;
  wire n1818;
  wire n1820;
  wire n1821;
  wire n1823;
  wire n1824;
  wire n1826;
  wire n1827;
  wire n1829;
  wire n1830;
  wire n1832;
  wire n1833;
  wire n1835;
  wire n1836;
  wire n1838;
  wire n1839;
  wire n1841;
  wire n1842;
  wire n1844;
  wire n1845;
  wire n1847;
  wire n1848;
  wire n1850;
  wire n1851;
  wire n1853;
  wire n1854;
  wire n1856;
  wire n1857;
  wire n1859;
  wire n1860;
  wire n1862;
  wire n1863;
  wire n1865;
  wire n1866;
  wire n1868;
  wire n1869;
  wire n1871;
  wire n1872;
  wire n1874;
  wire n1875;
  wire n1877;
  wire n1878;
  wire n1880;
  wire n1881;
  wire [30:0] n1882;
  wire n1884;
  reg n1887;
  reg n1890;
  reg [2:0] n1892;
  wire n1894;
  wire n1896;
  wire n1897;
  wire n1899;
  wire n1900;
  wire n1902;
  wire n1903;
  wire n1905;
  wire n1906;
  wire n1908;
  wire n1909;
  wire n1911;
  wire n1912;
  wire [30:0] n1913;
  wire n1915;
  wire n1917;
  wire [1:0] n1918;
  reg n1921;
  reg [2:0] n1923;
  reg [2:0] n1926;
  wire n1928;
  wire n1930;
  wire n1931;
  wire n1933;
  wire n1934;
  wire n1936;
  wire n1937;
  wire n1939;
  wire n1940;
  wire n1942;
  wire n1943;
  wire n1945;
  wire n1946;
  wire [30:0] n1947;
  wire n1950;
  wire n1952;
  wire [1:0] n1953;
  reg [2:0] n1955;
  reg n1957;
  reg [2:0] n1960;
  reg n1963;
  wire n1965;
  wire n1967;
  wire n1968;
  wire n1970;
  wire n1971;
  wire n1973;
  wire n1974;
  wire n1976;
  wire n1977;
  wire n1979;
  wire n1980;
  wire n1982;
  wire n1983;
  wire [30:0] n1984;
  wire n1987;
  wire n1989;
  wire [1:0] n1990;
  reg n1993;
  reg [2:0] n1995;
  reg n1997;
  reg [2:0] n2000;
  reg n2003;
  wire n2005;
  wire [30:0] n2006;
  wire n2008;
  wire n2010;
  wire [1:0] n2011;
  reg n2014;
  reg [2:0] n2017;
  wire n2019;
  wire [30:0] n2020;
  wire n2022;
  wire n2024;
  wire [1:0] n2025;
  reg n2028;
  reg [2:0] n2031;
  wire n2033;
  wire [30:0] n2034;
  wire n2036;
  wire n2038;
  wire n2040;
  wire [2:0] n2041;
  reg n2045;
  reg n2048;
  reg [2:0] n2051;
  reg n2054;
  wire n2056;
  wire [30:0] n2057;
  wire n2059;
  wire n2061;
  wire [1:0] n2062;
  reg [3:0] n2065;
  reg [2:0] n2068;
  reg n2071;
  wire n2073;
  wire [30:0] n2074;
  wire n2076;
  wire n2078;
  wire [1:0] n2079;
  reg [3:0] n2082;
  reg [2:0] n2085;
  reg n2088;
  wire n2090;
  wire [30:0] n2091;
  wire n2093;
  wire n2095;
  wire n2097;
  wire [2:0] n2098;
  reg n2102;
  reg [3:0] n2105;
  reg [2:0] n2108;
  reg n2111;
  reg n2114;
  wire n2116;
  wire [30:0] n2117;
  wire n2119;
  wire [2:0] n2121;
  wire [2:0] n2123;
  wire n2126;
  wire n2128;
  wire n2130;
  wire [2:0] n2132;
  wire [2:0] n2134;
  wire n2137;
  wire n2139;
  wire [1:0] n2140;
  reg n2144;
  reg n2148;
  reg [2:0] n2150;
  reg n2152;
  wire n2154;
  wire n2156;
  wire n2157;
  wire n2159;
  wire n2160;
  wire n2162;
  wire n2163;
  wire [30:0] n2164;
  wire n2166;
  wire n2168;
  wire n2171;
  wire n2174;
  wire [3:0] n2175;
  reg n2179;
  reg n2182;
  reg n2186;
  reg [2:0] n2188;
  reg [2:0] n2192;
  reg n2195;
  reg n2198;
  wire n2200;
  wire [30:0] n2201;
  wire n2203;
  wire n2205;
  wire n2207;
  wire n2209;
  wire [3:0] n2210;
  reg n2214;
  reg n2217;
  reg [3:0] n2221;
  reg [2:0] n2225;
  reg n2228;
  reg n2231;
  reg n2235;
  wire n2237;
  wire n2239;
  wire [30:0] n2240;
  wire n2242;
  wire [3:0] n2245;
  wire [3:0] n2247;
  wire n2249;
  wire n2251;
  wire [3:0] n2254;
  wire [3:0] n2256;
  wire n2258;
  wire n2260;
  wire [2:0] n2261;
  reg [2:0] n2263;
  reg [3:0] n2267;
  reg [3:0] n2269;
  reg [2:0] n2273;
  reg n2277;
  wire n2279;
  wire n2281;
  wire n2282;
  wire n2284;
  wire n2285;
  wire n2287;
  wire n2288;
  wire [30:0] n2289;
  wire n2291;
  wire n2293;
  wire [2:0] n2295;
  wire [2:0] n2297;
  wire n2300;
  wire n2302;
  wire n2304;
  wire [2:0] n2306;
  wire [2:0] n2308;
  wire n2311;
  wire n2313;
  wire [2:0] n2314;
  reg [3:0] n2318;
  reg n2322;
  reg [2:0] n2324;
  reg n2326;
  reg [2:0] n2330;
  wire n2332;
  wire n2334;
  wire n2335;
  wire n2337;
  wire n2338;
  wire n2340;
  wire n2341;
  wire n2343;
  wire n2345;
  wire n2347;
  wire [30:0] n2348;
  wire n2350;
  wire n2352;
  wire n2354;
  wire n2356;
  wire n2358;
  wire [4:0] n2359;
  reg [2:0] n2362;
  reg [3:0] n2366;
  reg n2370;
  reg [3:0] n2374;
  reg [3:0] n2378;
  reg [2:0] n2384;
  reg n2388;
  wire n2390;
  wire n2393;
  wire n2395;
  wire n2396;
  wire n2398;
  wire n2399;
  wire n2401;
  wire n2402;
  wire n2404;
  wire n2405;
  wire n2407;
  wire n2408;
  wire n2410;
  wire n2411;
  wire n2413;
  wire n2414;
  wire n2416;
  wire n2417;
  wire n2419;
  wire n2420;
  wire n2422;
  wire n2423;
  wire n2425;
  wire n2426;
  wire n2428;
  wire n2429;
  wire n2431;
  wire n2432;
  wire n2434;
  wire n2435;
  wire n2437;
  wire n2438;
  wire n2440;
  wire n2441;
  wire n2443;
  wire n2444;
  wire n2446;
  wire n2447;
  wire n2449;
  wire n2450;
  wire n2452;
  wire n2453;
  wire n2455;
  wire n2456;
  wire n2458;
  wire n2459;
  wire n2461;
  wire n2462;
  wire n2464;
  wire n2465;
  wire n2467;
  wire n2468;
  wire n2470;
  wire n2471;
  wire n2473;
  wire n2474;
  wire n2476;
  wire n2477;
  wire n2479;
  wire n2480;
  wire n2482;
  wire n2483;
  wire n2485;
  wire n2486;
  wire n2488;
  wire n2489;
  wire n2491;
  wire n2492;
  wire n2494;
  wire n2495;
  wire n2497;
  wire n2498;
  wire n2500;
  wire n2501;
  wire n2503;
  wire n2504;
  wire n2506;
  wire n2507;
  wire n2509;
  wire n2510;
  wire n2512;
  wire n2513;
  wire n2515;
  wire n2516;
  wire n2518;
  wire n2519;
  wire n2521;
  wire n2522;
  wire n2524;
  wire n2525;
  wire n2527;
  wire n2528;
  wire n2530;
  wire n2531;
  wire n2533;
  wire n2534;
  wire n2536;
  wire n2537;
  wire n2539;
  wire n2540;
  wire n2542;
  wire n2543;
  wire n2545;
  wire n2546;
  wire n2548;
  wire n2549;
  wire n2551;
  wire n2552;
  wire n2554;
  wire n2555;
  wire n2557;
  wire n2558;
  wire [30:0] n2559;
  wire n2561;
  wire n2564;
  wire [1:0] n2565;
  reg n2568;
  reg [2:0] n2570;
  reg [2:0] n2572;
  reg n2575;
  reg [2:0] n2578;
  wire n2580;
  wire n2582;
  wire n2583;
  wire n2585;
  wire n2586;
  wire n2588;
  wire n2589;
  wire n2591;
  wire n2592;
  wire n2594;
  wire n2595;
  wire n2597;
  wire n2598;
  wire n2600;
  wire n2601;
  wire n2603;
  wire n2607;
  wire n2610;
  wire [2:0] n2612;
  wire [2:0] n2614;
  wire n2617;
  wire n2619;
  wire n2621;
  wire n2622;
  wire n2624;
  wire n2625;
  wire n2627;
  wire n2628;
  wire n2630;
  wire n2631;
  wire n2633;
  wire n2634;
  wire n2636;
  wire n2637;
  wire n2639;
  wire n2640;
  wire n2642;
  wire n2644;
  wire n2645;
  wire n2647;
  wire n2648;
  wire n2650;
  wire n2651;
  wire n2653;
  wire n2654;
  wire n2656;
  wire n2657;
  wire n2659;
  wire n2660;
  wire [30:0] n2661;
  wire n2663;
  wire n2665;
  wire n2667;
  wire [2:0] n2668;
  reg [2:0] n2670;
  reg n2673;
  reg [2:0] n2675;
  reg [3:0] n2678;
  reg [3:0] n2680;
  reg n2683;
  reg n2686;
  reg [2:0] n2690;
  reg n2693;
  wire n2695;
  wire n2697;
  wire n2699;
  wire n2700;
  wire n2702;
  wire n2703;
  wire n2705;
  wire n2706;
  wire n2708;
  wire n2709;
  wire n2711;
  wire n2712;
  wire n2714;
  wire n2715;
  wire [30:0] n2716;
  wire n2718;
  wire n2720;
  wire n2722;
  wire [2:0] n2723;
  reg [2:0] n2725;
  reg n2728;
  reg [2:0] n2730;
  reg [3:0] n2733;
  reg [3:0] n2735;
  reg n2738;
  reg n2741;
  reg [2:0] n2745;
  reg n2748;
  wire n2750;
  wire n2753;
  wire n2755;
  wire n2757;
  wire n2759;
  wire [30:0] n2760;
  wire n2762;
  wire n2764;
  wire n2766;
  wire [2:0] n2767;
  reg [2:0] n2771;
  reg [3:0] n2775;
  reg [3:0] n2779;
  reg [2:0] n2783;
  reg n2787;
  wire [30:0] n2788;
  wire n2790;
  wire n2792;
  wire n2794;
  wire n2796;
  wire n2798;
  wire [4:0] n2799;
  reg [2:0] n2803;
  reg n2806;
  reg [3:0] n2810;
  reg [3:0] n2814;
  reg [2:0] n2818;
  reg n2821;
  reg n2825;
  reg n2829;
  wire [2:0] n2832;
  wire [2:0] n2833;
  wire n2835;
  wire [3:0] n2837;
  wire [3:0] n2839;
  wire [2:0] n2841;
  wire n2843;
  wire n2845;
  wire n2847;
  wire [2:0] n2849;
  wire [2:0] n2850;
  wire n2852;
  wire [3:0] n2853;
  wire [3:0] n2854;
  wire [2:0] n2855;
  wire n2857;
  wire n2859;
  wire n2860;
  wire n2862;
  wire n2864;
  wire n2866;
  wire n2868;
  wire [30:0] n2869;
  wire [1:0] n2871;
  wire [30:0] n2872;
  wire [1:0] n2873;
  wire n2876;
  wire n2878;
  wire n2879;
  wire n2881;
  wire n2882;
  reg n2884;
  reg [1:0] n2886;
  reg n2889;
  wire n2891;
  wire [1:0] n2893;
  wire [30:0] n2894;
  wire [1:0] n2895;
  wire n2897;
  wire n2899;
  wire n2900;
  wire n2902;
  wire n2903;
  reg n2906;
  reg [1:0] n2908;
  reg n2911;
  wire n2913;
  wire [1:0] n2914;
  reg [2:0] n2916;
  reg n2920;
  reg [2:0] n2922;
  reg n2924;
  reg [1:0] n2926;
  reg n2928;
  reg [3:0] n2931;
  reg n2935;
  reg n2939;
  reg n2943;
  wire n2945;
  wire n2947;
  wire n2948;
  wire n2950;
  wire n2951;
  wire n2953;
  wire n2954;
  wire n2957;
  wire n2959;
  wire n2960;
  wire n2962;
  wire n2963;
  wire n2965;
  wire n2966;
  wire n2969;
  wire n2971;
  wire n2972;
  wire n2974;
  wire n2975;
  wire n2977;
  wire n2978;
  wire n2981;
  wire n2983;
  wire n2984;
  wire n2986;
  wire n2987;
  wire n2989;
  wire n2990;
  wire [30:0] n2991;
  wire n2993;
  wire n2995;
  wire [1:0] n2996;
  reg n3000;
  reg n3003;
  reg n3006;
  wire n3008;
  wire [30:0] n3010;
  wire n3012;
  wire [2:0] n3014;
  wire n3019;
  wire n3020;
  wire n3022;
  wire n3023;
  wire n3025;
  wire n3026;
  wire n3027;
  wire n3029;
  wire n3030;
  wire n3032;
  wire n3033;
  wire n3034;
  wire n3036;
  wire n3037;
  wire n3039;
  wire n3040;
  wire n3041;
  wire n3043;
  wire n3044;
  wire n3046;
  wire [7:0] n3047;
  reg n3049;
  wire n3052;
  wire n3054;
  wire [1:0] n3055;
  reg n3059;
  reg n3061;
  reg n3064;
  wire n3066;
  wire n3068;
  wire n3069;
  wire n3071;
  wire n3072;
  wire n3074;
  wire n3075;
  wire n3077;
  wire n3078;
  wire n3080;
  wire n3081;
  wire n3083;
  wire n3084;
  wire n3086;
  wire n3087;
  wire [30:0] n3088;
  wire n3090;
  wire n3092;
  wire [1:0] n3093;
  reg [2:0] n3095;
  reg n3098;
  reg n3101;
  reg n3104;
  wire n3106;
  wire [30:0] n3107;
  wire n3108;
  wire n3109;
  wire [2:0] n3112;
  wire n3114;
  wire n3116;
  wire [1:0] n3117;
  reg [2:0] n3119;
  reg [2:0] n3122;
  reg n3125;
  reg n3128;
  reg n3131;
  wire n3133;
  wire [30:0] n3134;
  wire n3135;
  wire [2:0] n3138;
  wire n3140;
  wire n3142;
  wire [1:0] n3143;
  reg [2:0] n3145;
  reg [2:0] n3148;
  reg n3151;
  reg n3154;
  reg n3157;
  wire n3159;
  wire [30:0] n3160;
  wire n3161;
  wire n3162;
  wire [2:0] n3165;
  wire n3167;
  wire n3169;
  wire [1:0] n3170;
  reg [2:0] n3172;
  reg [2:0] n3175;
  reg n3178;
  reg n3181;
  reg n3184;
  wire n3186;
  wire [30:0] n3187;
  wire n3188;
  wire [2:0] n3191;
  wire n3193;
  wire n3195;
  wire [1:0] n3196;
  reg [2:0] n3198;
  reg [2:0] n3201;
  reg n3204;
  reg n3207;
  reg n3210;
  wire n3212;
  wire n3214;
  wire [30:0] n3215;
  wire n3218;
  wire n3220;
  wire n3222;
  wire [2:0] n3223;
  reg [2:0] n3226;
  reg n3229;
  reg n3232;
  reg [2:0] n3234;
  reg [3:0] n3237;
  reg [3:0] n3239;
  reg n3242;
  reg n3245;
  reg n3249;
  reg n3252;
  wire n3254;
  wire [30:0] n3255;
  wire n3257;
  wire n3259;
  wire n3261;
  wire n3263;
  wire [3:0] n3264;
  reg [2:0] n3266;
  reg n3270;
  reg [3:0] n3274;
  reg [3:0] n3278;
  reg [2:0] n3282;
  reg n3285;
  reg n3288;
  reg n3291;
  reg n3295;
  wire n3297;
  wire [30:0] n3300;
  wire n3302;
  wire [2:0] n3304;
  wire n3309;
  wire n3310;
  wire n3312;
  wire n3313;
  wire n3315;
  wire n3316;
  wire n3317;
  wire n3319;
  wire n3320;
  wire n3322;
  wire n3323;
  wire n3324;
  wire n3326;
  wire n3327;
  wire n3329;
  wire n3330;
  wire n3331;
  wire n3333;
  wire n3334;
  wire n3336;
  wire [7:0] n3337;
  reg n3339;
  wire [2:0] n3342;
  wire [2:0] n3344;
  wire [3:0] n3347;
  wire [3:0] n3350;
  wire [2:0] n3353;
  wire n3355;
  wire n3357;
  wire n3359;
  wire [3:0] n3360;
  reg [2:0] n3362;
  reg [2:0] n3364;
  reg n3368;
  reg [3:0] n3371;
  reg [3:0] n3374;
  reg [2:0] n3377;
  reg n3380;
  reg n3383;
  reg n3386;
  reg n3390;
  wire n3392;
  wire n3394;
  wire n3395;
  wire n3397;
  wire n3398;
  wire n3400;
  wire n3401;
  wire n3403;
  wire n3404;
  wire n3406;
  wire n3407;
  wire n3409;
  wire n3410;
  wire n3412;
  wire n3413;
  wire [30:0] n3414;
  wire n3416;
  wire n3418;
  wire n3420;
  wire [2:0] n3421;
  reg [2:0] n3423;
  reg [3:0] n3427;
  reg [2:0] n3431;
  reg n3434;
  reg n3437;
  wire n3439;
  wire [30:0] n3441;
  wire [2:0] n3443;
  wire n3448;
  wire n3449;
  wire n3451;
  wire n3452;
  wire n3454;
  wire n3455;
  wire n3456;
  wire n3458;
  wire n3459;
  wire n3461;
  wire n3462;
  wire n3463;
  wire n3465;
  wire n3466;
  wire n3468;
  wire n3469;
  wire n3470;
  wire n3472;
  wire n3473;
  wire n3475;
  wire [7:0] n3476;
  reg n3478;
  wire [2:0] n3481;
  wire [2:0] n3484;
  wire n3486;
  wire n3488;
  wire n3490;
  wire [2:0] n3491;
  reg [2:0] n3493;
  reg [2:0] n3496;
  reg [3:0] n3500;
  reg [2:0] n3503;
  reg n3506;
  reg n3509;
  wire n3511;
  wire n3513;
  wire n3514;
  wire n3516;
  wire n3517;
  wire n3519;
  wire n3520;
  wire n3522;
  wire n3523;
  wire n3525;
  wire n3526;
  wire n3528;
  wire n3529;
  wire n3531;
  wire n3532;
  wire [30:0] n3533;
  wire n3535;
  wire n3537;
  wire n3539;
  wire [2:0] n3540;
  reg [2:0] n3542;
  reg [3:0] n3546;
  reg [3:0] n3550;
  reg [2:0] n3554;
  reg n3557;
  reg n3561;
  wire n3563;
  wire n3565;
  wire n3566;
  wire n3568;
  wire n3569;
  wire n3571;
  wire n3572;
  wire n3574;
  wire n3575;
  wire n3577;
  wire n3578;
  wire n3580;
  wire n3581;
  wire n3583;
  wire n3584;
  wire [30:0] n3585;
  wire n3587;
  wire n3589;
  wire [1:0] n3590;
  reg n3593;
  reg n3596;
  reg [2:0] n3599;
  reg n3602;
  wire n3604;
  wire [30:0] n3605;
  wire n3607;
  wire n3609;
  wire [1:0] n3610;
  reg n3613;
  reg [3:0] n3616;
  reg [2:0] n3619;
  reg n3622;
  reg n3625;
  wire n3627;
  wire n3629;
  wire n3631;
  wire n3633;
  wire n3635;
  wire n3636;
  wire [58:0] n3637;
  reg [2:0] n3670;
  reg [2:0] n3675;
  reg [1:0] n3681;
  reg n3684;
  reg n3687;
  wire [1:0] n3688;
  wire [1:0] n3689;
  wire [1:0] n3690;
  wire [1:0] n3691;
  wire [1:0] n3692;
  wire [1:0] n3693;
  wire [1:0] n3694;
  wire [1:0] n3695;
  wire [1:0] n3696;
  reg [1:0] n3699;
  wire [1:0] n3700;
  wire [1:0] n3701;
  wire [1:0] n3702;
  wire [1:0] n3703;
  wire [1:0] n3704;
  wire [1:0] n3705;
  wire [1:0] n3706;
  wire [1:0] n3707;
  wire [1:0] n3708;
  reg [1:0] n3711;
  reg n3720;
  reg n3723;
  wire [2:0] n3724;
  reg [2:0] n3727;
  wire n3728;
  reg n3731;
  wire n3732;
  wire n3733;
  wire n3734;
  wire n3735;
  wire n3736;
  wire n3737;
  wire n3738;
  wire n3739;
  wire n3740;
  wire n3741;
  wire n3742;
  wire n3743;
  wire n3745;
  wire n3747;
  wire n3748;
  wire n3749;
  wire n3750;
  wire n3751;
  wire n3752;
  wire n3753;
  reg n3756;
  wire [1:0] n3757;
  wire [1:0] n3758;
  wire [1:0] n3759;
  wire [1:0] n3760;
  wire [1:0] n3761;
  wire [1:0] n3762;
  wire [1:0] n3763;
  wire [1:0] n3764;
  wire [1:0] n3765;
  wire [1:0] n3766;
  wire [1:0] n3767;
  wire [1:0] n3768;
  wire [1:0] n3770;
  wire [1:0] n3772;
  wire [1:0] n3773;
  wire [1:0] n3774;
  wire [1:0] n3775;
  wire [1:0] n3776;
  wire [1:0] n3777;
  wire [1:0] n3778;
  reg [1:0] n3781;
  wire n3782;
  wire n3783;
  wire n3784;
  wire n3785;
  wire n3786;
  wire n3787;
  wire n3789;
  wire n3791;
  wire n3792;
  wire n3793;
  wire n3794;
  wire n3795;
  wire n3796;
  wire n3797;
  reg n3800;
  reg [3:0] n3806;
  reg n3814;
  reg n3819;
  reg n3822;
  reg [2:0] n3825;
  reg n3828;
  reg n3831;
  reg n3834;
  reg n3838;
  reg n3841;
  reg n3844;
  reg n3847;
  reg n3850;
  reg n3854;
  reg n3858;
  reg n3862;
  reg n3866;
  reg n3870;
  reg n3873;
  reg n3877;
  reg n3881;
  reg n3885;
  reg n3889;
  reg n3893;
  reg n3897;
  reg n3900;
  reg n3903;
  wire n3905;
  wire [2:0] n3906;
  wire [2:0] n3907;
  wire n3909;
  wire n3912;
  wire [3:0] n3914;
  wire n3917;
  wire n3919;
  wire n3921;
  wire n3922;
  wire n3924;
  wire n3925;
  wire n3927;
  wire n3928;
  wire n3930;
  wire n3931;
  wire n3933;
  wire n3934;
  wire n3936;
  wire n3937;
  wire n3939;
  wire n3940;
  wire n3942;
  wire n3943;
  wire n3945;
  wire n3946;
  wire n3948;
  wire n3949;
  wire n3951;
  wire n3952;
  wire n3954;
  wire n3955;
  wire n3957;
  wire n3958;
  wire n3960;
  wire n3961;
  wire n3963;
  wire n3964;
  wire n3966;
  wire n3967;
  wire n3969;
  wire n3970;
  wire n3972;
  wire n3973;
  wire n3975;
  wire n3976;
  wire n3978;
  wire n3979;
  wire n3981;
  wire n3982;
  wire n3984;
  wire n3985;
  wire n3987;
  wire n3988;
  wire n3990;
  wire n3991;
  wire n3993;
  wire n3994;
  wire n3996;
  wire n3997;
  wire n3999;
  wire n4000;
  wire n4002;
  wire n4003;
  wire n4005;
  wire n4006;
  wire n4008;
  wire n4009;
  wire n4011;
  wire n4012;
  wire n4014;
  wire n4015;
  wire n4017;
  wire n4018;
  wire n4020;
  wire n4021;
  wire n4023;
  wire n4024;
  wire n4026;
  wire n4027;
  wire n4029;
  wire n4030;
  wire n4032;
  wire n4033;
  wire n4035;
  wire n4036;
  wire n4038;
  wire n4039;
  wire n4041;
  wire n4042;
  wire n4044;
  wire n4045;
  wire n4047;
  wire n4048;
  wire n4050;
  wire n4051;
  wire n4053;
  wire n4054;
  wire n4056;
  wire n4057;
  wire n4059;
  wire n4060;
  wire n4062;
  wire n4063;
  wire n4065;
  wire n4066;
  wire n4068;
  wire n4069;
  wire n4071;
  wire n4072;
  wire n4074;
  wire n4075;
  wire n4077;
  wire n4078;
  wire n4080;
  wire n4081;
  wire n4083;
  wire n4084;
  wire [30:0] n4085;
  wire n4087;
  wire n4089;
  wire n4090;
  wire n4092;
  wire n4094;
  wire [2:0] n4095;
  reg [2:0] n4097;
  reg n4100;
  reg [3:0] n4102;
  reg n4105;
  reg [2:0] n4109;
  reg n4112;
  wire n4114;
  wire n4116;
  wire n4117;
  wire n4119;
  wire n4120;
  wire n4122;
  wire n4123;
  wire n4125;
  wire n4126;
  wire n4128;
  wire n4129;
  wire n4131;
  wire n4132;
  wire n4134;
  wire n4135;
  wire n4137;
  wire [2:0] n4138;
  wire [2:0] n4139;
  wire [3:0] n4141;
  wire n4143;
  wire n4145;
  wire n4146;
  wire n4148;
  wire n4149;
  wire n4151;
  wire n4152;
  wire n4154;
  wire n4155;
  wire n4157;
  wire n4158;
  wire n4160;
  wire n4161;
  wire n4163;
  wire n4164;
  wire n4166;
  wire n4167;
  wire n4169;
  wire n4170;
  wire n4172;
  wire n4173;
  wire n4175;
  wire n4176;
  wire n4178;
  wire n4179;
  wire n4181;
  wire n4182;
  wire n4184;
  wire n4185;
  wire n4187;
  wire n4188;
  wire n4190;
  wire n4191;
  wire n4193;
  wire n4194;
  wire n4196;
  wire n4197;
  wire n4199;
  wire n4200;
  wire n4202;
  wire n4203;
  wire n4205;
  wire n4206;
  wire n4208;
  wire n4209;
  wire n4211;
  wire n4212;
  wire n4214;
  wire n4215;
  wire n4217;
  wire n4218;
  wire n4220;
  wire n4221;
  wire n4223;
  wire n4224;
  wire n4226;
  wire n4227;
  wire n4229;
  wire n4230;
  wire n4232;
  wire n4233;
  wire n4235;
  wire n4236;
  wire n4238;
  wire n4239;
  wire n4241;
  wire n4242;
  wire n4244;
  wire n4245;
  wire n4247;
  wire n4248;
  wire n4250;
  wire n4251;
  wire n4253;
  wire n4254;
  wire n4256;
  wire n4257;
  wire n4259;
  wire n4260;
  wire n4262;
  wire n4263;
  wire n4265;
  wire n4266;
  wire n4268;
  wire n4269;
  wire n4271;
  wire n4272;
  wire n4274;
  wire n4275;
  wire n4277;
  wire n4278;
  wire n4280;
  wire n4281;
  wire n4283;
  wire n4284;
  wire n4286;
  wire n4287;
  wire n4289;
  wire n4290;
  wire n4292;
  wire n4293;
  wire n4295;
  wire n4296;
  wire n4298;
  wire n4299;
  wire n4301;
  wire n4302;
  wire n4304;
  wire n4305;
  wire n4307;
  wire n4308;
  wire [30:0] n4309;
  wire n4311;
  wire n4313;
  wire n4314;
  wire n4316;
  wire [1:0] n4317;
  reg [2:0] n4319;
  reg [3:0] n4321;
  reg [2:0] n4324;
  wire n4326;
  wire n4328;
  wire n4329;
  wire n4331;
  wire n4332;
  wire n4334;
  wire n4335;
  wire n4337;
  wire n4338;
  wire n4340;
  wire n4341;
  wire n4343;
  wire n4344;
  wire n4346;
  wire n4347;
  wire n4349;
  wire n4352;
  wire [3:0] n4354;
  wire n4357;
  wire n4359;
  wire n4361;
  wire n4362;
  wire n4364;
  wire n4365;
  wire n4367;
  wire n4368;
  wire n4370;
  wire n4371;
  wire n4373;
  wire n4374;
  wire n4376;
  wire n4377;
  wire n4379;
  wire n4380;
  wire n4382;
  wire n4383;
  wire n4385;
  wire n4386;
  wire n4388;
  wire n4389;
  wire n4391;
  wire n4392;
  wire n4394;
  wire n4395;
  wire n4397;
  wire n4398;
  wire n4400;
  wire n4401;
  wire n4403;
  wire n4404;
  wire n4406;
  wire n4407;
  wire n4409;
  wire n4410;
  wire n4412;
  wire n4413;
  wire n4415;
  wire n4416;
  wire n4418;
  wire n4419;
  wire n4421;
  wire n4422;
  wire n4424;
  wire n4425;
  wire n4427;
  wire n4428;
  wire n4430;
  wire n4431;
  wire n4433;
  wire n4434;
  wire n4436;
  wire n4437;
  wire n4439;
  wire n4440;
  wire n4442;
  wire n4443;
  wire n4445;
  wire n4446;
  wire n4448;
  wire n4449;
  wire n4451;
  wire n4452;
  wire n4454;
  wire n4455;
  wire n4457;
  wire n4458;
  wire n4460;
  wire n4461;
  wire n4463;
  wire n4464;
  wire n4466;
  wire n4467;
  wire n4469;
  wire n4470;
  wire n4472;
  wire n4473;
  wire n4475;
  wire n4476;
  wire n4478;
  wire n4479;
  wire n4481;
  wire n4482;
  wire n4484;
  wire n4485;
  wire n4487;
  wire n4488;
  wire n4490;
  wire n4491;
  wire n4493;
  wire n4494;
  wire n4496;
  wire n4497;
  wire n4499;
  wire n4500;
  wire n4502;
  wire n4503;
  wire n4505;
  wire n4506;
  wire n4508;
  wire n4509;
  wire n4511;
  wire n4512;
  wire n4514;
  wire n4515;
  wire n4517;
  wire n4518;
  wire n4520;
  wire n4521;
  wire n4523;
  wire n4524;
  wire [30:0] n4525;
  wire n4527;
  wire n4529;
  wire n4530;
  wire n4532;
  wire n4534;
  wire [2:0] n4535;
  reg [2:0] n4537;
  reg n4540;
  reg [3:0] n4542;
  reg n4545;
  reg [2:0] n4549;
  reg n4552;
  wire n4554;
  wire n4556;
  wire n4557;
  wire n4559;
  wire n4560;
  wire n4562;
  wire n4563;
  wire n4565;
  wire n4566;
  wire n4568;
  wire n4569;
  wire n4571;
  wire n4572;
  wire n4574;
  wire n4575;
  wire n4577;
  wire n4580;
  wire [3:0] n4582;
  wire n4585;
  wire n4587;
  wire n4589;
  wire n4590;
  wire n4592;
  wire n4593;
  wire n4595;
  wire n4596;
  wire n4598;
  wire n4599;
  wire n4601;
  wire n4602;
  wire n4604;
  wire n4605;
  wire n4607;
  wire n4608;
  wire n4610;
  wire n4611;
  wire n4613;
  wire n4614;
  wire n4616;
  wire n4617;
  wire n4619;
  wire n4620;
  wire n4622;
  wire n4623;
  wire n4625;
  wire n4626;
  wire n4628;
  wire n4629;
  wire n4631;
  wire n4632;
  wire n4634;
  wire n4635;
  wire n4637;
  wire n4638;
  wire n4640;
  wire n4641;
  wire n4643;
  wire n4644;
  wire n4646;
  wire n4647;
  wire n4649;
  wire n4650;
  wire n4652;
  wire n4653;
  wire n4655;
  wire n4656;
  wire n4658;
  wire n4659;
  wire n4661;
  wire n4662;
  wire n4664;
  wire n4665;
  wire n4667;
  wire n4668;
  wire n4670;
  wire n4671;
  wire n4673;
  wire n4674;
  wire n4676;
  wire n4677;
  wire n4679;
  wire n4680;
  wire n4682;
  wire n4683;
  wire n4685;
  wire n4686;
  wire n4688;
  wire n4689;
  wire n4691;
  wire n4692;
  wire n4694;
  wire n4695;
  wire n4697;
  wire n4698;
  wire n4700;
  wire n4701;
  wire n4703;
  wire n4704;
  wire n4706;
  wire n4707;
  wire n4709;
  wire n4710;
  wire n4712;
  wire n4713;
  wire n4715;
  wire n4716;
  wire n4718;
  wire n4719;
  wire n4721;
  wire n4722;
  wire n4724;
  wire n4725;
  wire n4727;
  wire n4728;
  wire n4730;
  wire n4731;
  wire n4733;
  wire n4734;
  wire n4736;
  wire n4737;
  wire n4739;
  wire n4740;
  wire n4742;
  wire n4743;
  wire n4745;
  wire n4746;
  wire n4748;
  wire n4749;
  wire n4751;
  wire n4752;
  wire [30:0] n4753;
  wire n4755;
  wire n4757;
  wire n4758;
  wire n4760;
  wire n4762;
  wire [2:0] n4763;
  reg [2:0] n4765;
  reg n4768;
  reg [3:0] n4770;
  reg n4773;
  reg [2:0] n4777;
  reg n4780;
  wire n4782;
  wire n4784;
  wire n4785;
  wire n4787;
  wire n4788;
  wire n4790;
  wire n4791;
  wire n4793;
  wire n4794;
  wire n4796;
  wire n4797;
  wire n4799;
  wire n4800;
  wire n4802;
  wire n4803;
  wire [7:0] n4804;
  reg [2:0] n4811;
  reg [2:0] n4813;
  reg n4816;
  reg [2:0] n4818;
  reg [3:0] n4820;
  reg n4823;
  reg [2:0] n4826;
  reg n4829;
  wire n4831;
  wire n4833;
  wire n4835;
  wire n4836;
  wire n4838;
  wire n4839;
  wire n4841;
  wire n4842;
  wire n4844;
  wire n4845;
  wire n4847;
  wire n4848;
  wire n4850;
  wire n4851;
  wire n4853;
  wire n4854;
  wire n4856;
  wire n4857;
  wire n4859;
  wire n4860;
  wire n4862;
  wire n4863;
  wire n4865;
  wire n4866;
  wire n4868;
  wire n4869;
  wire n4871;
  wire n4872;
  wire n4874;
  wire n4875;
  wire n4877;
  wire n4878;
  wire n4880;
  wire n4881;
  wire n4883;
  wire n4884;
  wire n4886;
  wire n4887;
  wire n4889;
  wire n4890;
  wire n4892;
  wire n4893;
  wire n4895;
  wire n4896;
  wire n4898;
  wire n4899;
  wire n4901;
  wire n4902;
  wire n4904;
  wire n4905;
  wire n4907;
  wire n4908;
  wire n4910;
  wire n4911;
  wire n4913;
  wire n4914;
  wire n4916;
  wire n4917;
  wire n4919;
  wire n4920;
  wire n4922;
  wire n4923;
  wire n4925;
  wire n4926;
  wire n4928;
  wire n4929;
  wire n4931;
  wire n4932;
  wire n4934;
  wire n4935;
  wire n4937;
  wire n4938;
  wire n4940;
  wire n4941;
  wire n4943;
  wire n4944;
  wire n4946;
  wire n4947;
  wire n4949;
  wire n4950;
  wire n4952;
  wire n4953;
  wire n4955;
  wire n4956;
  wire n4958;
  wire n4959;
  wire n4961;
  wire n4962;
  wire n4964;
  wire n4965;
  wire n4967;
  wire n4968;
  wire n4970;
  wire n4971;
  wire n4973;
  wire n4974;
  wire n4976;
  wire n4977;
  wire n4979;
  wire n4980;
  wire n4982;
  wire n4983;
  wire n4985;
  wire n4986;
  wire n4988;
  wire n4989;
  wire n4991;
  wire n4992;
  wire n4994;
  wire n4995;
  wire n4997;
  wire n4998;
  wire n5000;
  wire n5001;
  wire n5003;
  wire n5004;
  wire n5006;
  wire n5007;
  wire n5009;
  wire n5010;
  wire n5012;
  wire n5013;
  wire n5015;
  wire n5016;
  wire n5018;
  wire n5019;
  wire n5021;
  wire n5022;
  wire n5024;
  wire n5025;
  wire n5027;
  wire n5028;
  wire n5030;
  wire n5031;
  wire n5033;
  wire n5034;
  wire n5036;
  wire n5037;
  wire n5039;
  wire n5040;
  wire n5042;
  wire n5043;
  wire n5045;
  wire n5046;
  wire n5048;
  wire n5049;
  wire n5051;
  wire n5052;
  wire n5054;
  wire n5055;
  wire n5057;
  wire n5058;
  wire n5060;
  wire n5061;
  wire n5063;
  wire n5064;
  wire n5066;
  wire n5067;
  wire n5069;
  wire n5070;
  wire n5072;
  wire n5073;
  wire n5075;
  wire n5076;
  wire n5078;
  wire n5079;
  wire n5081;
  wire n5082;
  wire n5084;
  wire n5085;
  wire n5087;
  wire n5088;
  wire n5090;
  wire n5091;
  wire n5093;
  wire n5094;
  wire n5096;
  wire n5097;
  wire n5099;
  wire n5100;
  wire n5102;
  wire n5103;
  wire n5105;
  wire n5106;
  wire n5108;
  wire n5109;
  wire n5111;
  wire n5112;
  wire n5114;
  wire n5115;
  wire n5117;
  wire n5118;
  wire n5120;
  wire n5121;
  wire n5123;
  wire n5124;
  wire n5126;
  wire n5127;
  wire n5129;
  wire n5130;
  wire n5132;
  wire n5133;
  wire n5135;
  wire n5136;
  wire n5138;
  wire n5139;
  wire n5141;
  wire n5142;
  wire n5144;
  wire n5145;
  wire n5147;
  wire n5148;
  wire n5150;
  wire n5151;
  wire n5153;
  wire n5154;
  wire n5156;
  wire n5157;
  wire n5159;
  wire n5160;
  wire n5162;
  wire n5163;
  wire n5165;
  wire n5166;
  wire n5168;
  wire n5169;
  wire n5171;
  wire n5172;
  wire n5174;
  wire n5175;
  wire n5177;
  wire n5178;
  wire n5180;
  wire n5181;
  wire n5183;
  wire n5184;
  wire n5186;
  wire n5187;
  wire n5189;
  wire n5190;
  wire n5192;
  wire n5193;
  wire n5195;
  wire n5196;
  wire n5198;
  wire n5199;
  wire n5201;
  wire n5202;
  wire n5204;
  wire n5205;
  wire n5207;
  wire n5208;
  wire n5210;
  wire n5211;
  wire n5213;
  wire n5214;
  wire n5216;
  wire n5217;
  wire n5219;
  wire n5220;
  wire n5222;
  wire n5223;
  wire n5225;
  wire n5226;
  wire n5228;
  wire n5229;
  wire n5231;
  wire n5232;
  wire n5234;
  wire n5235;
  wire n5237;
  wire n5238;
  wire n5240;
  wire n5241;
  wire n5243;
  wire n5244;
  wire n5246;
  wire n5247;
  wire n5249;
  wire n5250;
  wire n5252;
  wire n5253;
  wire n5255;
  wire n5256;
  wire n5258;
  wire n5259;
  wire n5261;
  wire n5262;
  wire n5264;
  wire n5265;
  wire n5267;
  wire n5268;
  wire n5270;
  wire n5271;
  wire n5273;
  wire n5274;
  wire n5276;
  wire n5277;
  wire n5279;
  wire n5280;
  wire n5282;
  wire n5283;
  wire n5285;
  wire n5286;
  wire n5288;
  wire n5289;
  wire n5291;
  wire n5292;
  wire n5294;
  wire n5295;
  wire n5297;
  wire n5298;
  wire n5300;
  wire n5301;
  wire n5303;
  wire n5304;
  wire n5306;
  wire n5307;
  wire n5309;
  wire n5310;
  wire n5312;
  wire n5313;
  wire n5315;
  wire n5316;
  wire n5318;
  wire n5319;
  wire n5321;
  wire n5322;
  wire n5324;
  wire n5325;
  wire n5327;
  wire n5328;
  wire n5330;
  wire n5331;
  wire n5333;
  wire n5334;
  wire n5336;
  wire n5337;
  wire n5339;
  wire n5340;
  wire n5342;
  wire n5343;
  wire n5345;
  wire n5346;
  wire n5348;
  wire n5349;
  wire n5351;
  wire n5352;
  wire n5354;
  wire n5355;
  wire n5357;
  wire n5358;
  wire n5360;
  wire n5362;
  wire n5363;
  wire n5365;
  wire n5367;
  wire n5369;
  wire n5371;
  wire [30:0] n5372;
  wire n5374;
  wire n5376;
  wire [1:0] n5377;
  wire n5379;
  wire [1:0] n5380;
  wire [2:0] n5382;
  wire [2:0] n5384;
  wire n5387;
  wire n5389;
  wire [1:0] n5390;
  wire n5392;
  wire [1:0] n5393;
  wire [2:0] n5395;
  wire [2:0] n5397;
  wire n5400;
  wire n5402;
  wire [3:0] n5403;
  reg n5407;
  reg n5410;
  reg n5414;
  reg [2:0] n5416;
  reg n5418;
  reg [2:0] n5422;
  reg n5425;
  reg n5428;
  wire n5430;
  wire n5432;
  wire n5433;
  wire n5435;
  wire n5436;
  wire n5438;
  wire n5439;
  wire [30:0] n5440;
  wire n5442;
  wire [1:0] n5443;
  wire n5445;
  wire [1:0] n5446;
  wire [3:0] n5449;
  wire [3:0] n5451;
  wire n5453;
  wire [1:0] n5454;
  wire n5456;
  wire [1:0] n5457;
  wire [3:0] n5460;
  wire [3:0] n5462;
  wire n5464;
  wire n5466;
  wire [3:0] n5467;
  reg n5471;
  reg n5474;
  reg [3:0] n5476;
  reg [2:0] n5480;
  reg n5483;
  reg n5486;
  reg n5490;
  wire n5492;
  wire n5494;
  wire n5495;
  wire n5497;
  wire n5498;
  wire n5500;
  wire n5501;
  wire [30:0] n5502;
  wire n5504;
  wire n5506;
  wire n5507;
  wire [3:0] n5510;
  wire n5512;
  wire n5513;
  wire n5514;
  wire [3:0] n5517;
  wire n5519;
  wire n5521;
  wire [3:0] n5522;
  reg [2:0] n5525;
  reg [3:0] n5528;
  reg [2:0] n5530;
  reg [3:0] n5533;
  reg [3:0] n5535;
  reg [2:0] n5539;
  reg n5542;
  reg n5545;
  reg n5548;
  wire n5550;
  wire n5552;
  wire n5553;
  wire n5555;
  wire n5556;
  wire n5558;
  wire n5559;
  wire [30:0] n5560;
  wire n5562;
  wire n5564;
  wire n5565;
  wire [3:0] n5568;
  wire n5570;
  wire n5572;
  wire n5574;
  wire [3:0] n5575;
  reg [2:0] n5578;
  reg [3:0] n5581;
  reg [2:0] n5583;
  reg [3:0] n5586;
  reg [3:0] n5588;
  reg n5591;
  reg n5594;
  reg [2:0] n5597;
  reg n5600;
  reg n5604;
  wire n5606;
  wire n5608;
  wire n5609;
  wire n5611;
  wire n5612;
  wire n5614;
  wire n5615;
  wire n5617;
  wire n5619;
  wire n5620;
  wire n5622;
  wire n5623;
  wire n5625;
  wire n5626;
  wire n5628;
  wire n5629;
  wire n5631;
  wire n5632;
  wire n5634;
  wire n5635;
  wire n5637;
  wire n5638;
  wire n5640;
  wire n5642;
  wire n5643;
  wire n5645;
  wire n5646;
  wire n5648;
  wire n5649;
  wire n5651;
  wire n5653;
  wire n5654;
  wire n5656;
  wire n5658;
  wire n5659;
  wire [30:0] n5660;
  wire [1:0] n5662;
  wire [30:0] n5663;
  wire [1:0] n5664;
  wire n5667;
  wire n5669;
  wire n5670;
  wire n5672;
  wire n5673;
  reg n5675;
  reg [1:0] n5677;
  reg n5680;
  wire n5682;
  wire [1:0] n5684;
  wire [30:0] n5685;
  wire [1:0] n5686;
  wire n5689;
  wire n5691;
  wire n5692;
  wire n5694;
  wire n5695;
  reg n5697;
  reg [1:0] n5699;
  reg n5702;
  wire n5704;
  wire [1:0] n5705;
  reg [2:0] n5707;
  reg n5711;
  reg [2:0] n5713;
  reg n5715;
  reg [1:0] n5717;
  reg n5719;
  reg [3:0] n5722;
  reg n5726;
  reg n5730;
  wire n5732;
  wire n5734;
  wire n5735;
  wire n5737;
  wire n5738;
  wire n5740;
  wire n5741;
  wire [30:0] n5742;
  wire [1:0] n5744;
  wire [30:0] n5745;
  wire [1:0] n5746;
  wire n5749;
  wire n5751;
  wire n5752;
  wire n5754;
  wire n5755;
  reg n5757;
  reg [1:0] n5759;
  reg n5762;
  wire n5764;
  wire [1:0] n5766;
  wire [30:0] n5767;
  wire [1:0] n5768;
  wire n5770;
  wire n5772;
  wire n5773;
  wire n5775;
  wire n5776;
  reg n5779;
  reg [1:0] n5781;
  reg n5784;
  wire n5786;
  wire [1:0] n5787;
  reg [2:0] n5789;
  reg n5793;
  reg [2:0] n5795;
  reg n5797;
  reg [1:0] n5799;
  reg n5801;
  reg [3:0] n5804;
  reg n5808;
  reg n5812;
  wire n5814;
  wire n5816;
  wire n5817;
  wire n5819;
  wire n5820;
  wire n5822;
  wire n5823;
  wire [30:0] n5824;
  wire n5826;
  wire n5830;
  wire n5832;
  wire [2:0] n5833;
  reg [2:0] n5835;
  reg n5838;
  reg [2:0] n5840;
  reg [2:0] n5842;
  reg [3:0] n5844;
  reg n5847;
  reg [2:0] n5851;
  reg n5854;
  reg n5857;
  reg n5860;
  wire n5862;
  wire [30:0] n5863;
  wire n5865;
  wire n5869;
  wire n5871;
  wire [2:0] n5872;
  reg [2:0] n5874;
  reg n5877;
  reg [2:0] n5879;
  reg [2:0] n5881;
  reg [3:0] n5883;
  reg n5886;
  reg [2:0] n5890;
  reg n5893;
  reg n5896;
  wire n5898;
  wire [30:0] n5899;
  wire n5901;
  wire n5903;
  wire n5905;
  wire [2:0] n5906;
  reg [3:0] n5910;
  reg [2:0] n5914;
  reg n5917;
  reg n5920;
  reg n5923;
  wire n5925;
  wire n5927;
  wire n5928;
  wire n5930;
  wire n5931;
  wire n5933;
  wire n5934;
  wire n5936;
  wire n5937;
  wire n5939;
  wire n5940;
  wire n5942;
  wire n5943;
  wire n5945;
  wire n5946;
  wire [30:0] n5947;
  wire n5949;
  wire [2:0] n5950;
  wire n5952;
  wire [2:0] n5953;
  wire n5956;
  wire [2:0] n5958;
  wire n5960;
  wire [1:0] n5961;
  reg n5963;
  reg [2:0] n5965;
  reg [2:0] n5968;
  reg n5971;
  reg n5974;
  wire n5976;
  wire n5978;
  wire n5979;
  wire n5981;
  wire n5982;
  wire n5984;
  wire n5985;
  wire n5987;
  wire n5988;
  wire n5990;
  wire n5991;
  wire n5993;
  wire n5994;
  wire n5996;
  wire n5997;
  wire [30:0] n5998;
  wire [2:0] n5999;
  wire [2:0] n6000;
  wire n6002;
  wire n6005;
  wire n6007;
  wire n6009;
  wire [1:0] n6010;
  reg [2:0] n6012;
  reg n6014;
  reg [2:0] n6017;
  reg n6020;
  reg n6023;
  wire n6025;
  wire n6027;
  wire n6028;
  wire n6030;
  wire n6031;
  wire n6033;
  wire n6034;
  wire n6036;
  wire n6037;
  wire n6039;
  wire n6040;
  wire n6042;
  wire n6043;
  wire n6045;
  wire n6046;
  wire [30:0] n6047;
  wire n6049;
  wire n6051;
  wire n6052;
  wire n6053;
  wire [3:0] n6056;
  wire n6058;
  wire n6060;
  wire [3:0] n6061;
  reg [2:0] n6064;
  reg [3:0] n6066;
  reg n6069;
  reg [3:0] n6072;
  reg [3:0] n6076;
  reg [3:0] n6078;
  reg n6081;
  reg [2:0] n6085;
  reg n6088;
  reg n6091;
  reg n6094;
  reg n6097;
  wire n6099;
  wire n6101;
  wire n6102;
  wire n6104;
  wire n6105;
  wire n6107;
  wire n6108;
  wire [30:0] n6109;
  wire n6111;
  wire n6113;
  wire n6114;
  wire n6115;
  wire [3:0] n6118;
  wire n6120;
  wire n6122;
  wire [3:0] n6123;
  reg [2:0] n6126;
  reg [3:0] n6128;
  reg n6131;
  reg [3:0] n6134;
  reg [3:0] n6138;
  reg [3:0] n6140;
  reg n6143;
  reg [2:0] n6147;
  reg n6150;
  reg n6153;
  reg n6156;
  reg n6159;
  wire n6161;
  wire n6163;
  wire n6164;
  wire n6166;
  wire n6167;
  wire n6169;
  wire n6170;
  wire [22:0] n6171;
  reg [2:0] n6187;
  reg [2:0] n6193;
  reg n6196;
  reg n6199;
  reg [3:0] n6202;
  reg n6205;
  reg n6209;
  wire [2:0] n6211;
  wire [2:0] n6212;
  reg [2:0] n6215;
  wire n6217;
  wire n6218;
  reg n6221;
  wire n6222;
  wire n6223;
  wire n6224;
  wire n6226;
  wire n6227;
  wire n6228;
  wire n6229;
  wire n6230;
  reg n6233;
  wire [1:0] n6234;
  wire [1:0] n6235;
  wire [1:0] n6236;
  wire [1:0] n6238;
  wire [1:0] n6239;
  wire [1:0] n6240;
  wire [1:0] n6241;
  wire [1:0] n6242;
  reg [1:0] n6245;
  wire n6246;
  wire n6247;
  wire n6248;
  wire n6250;
  wire n6251;
  reg n6254;
  reg [3:0] n6257;
  reg n6261;
  reg n6264;
  reg [2:0] n6267;
  reg n6270;
  reg n6273;
  reg n6276;
  reg n6279;
  reg [2:0] n6286;
  reg n6289;
  reg n6292;
  reg n6295;
  reg n6298;
  reg n6301;
  reg n6304;
  reg n6307;
  reg [1:0] n6313;
  reg n6316;
  reg n6319;
  wire [1:0] n6320;
  reg [2:0] n6321;
  reg [2:0] n6323;
  reg [1:0] n6325;
  reg n6328;
  reg n6331;
  wire [1:0] n6333;
  reg [1:0] n6335;
  wire [1:0] n6336;
  reg [1:0] n6338;
  reg n6341;
  reg n6344;
  reg [2:0] n6346;
  reg n6348;
  wire n6351;
  reg n6352;
  wire [1:0] n6353;
  reg [1:0] n6354;
  reg n6356;
  reg [3:0] n6360;
  reg n6361;
  reg n6364;
  reg n6367;
  reg [2:0] n6369;
  reg n6372;
  reg n6375;
  reg n6378;
  reg n6381;
  reg n6384;
  reg n6387;
  reg n6390;
  reg n6393;
  reg n6396;
  reg [2:0] n6399;
  reg n6402;
  reg n6405;
  reg n6408;
  reg n6411;
  reg n6414;
  reg n6417;
  reg n6420;
  reg n6423;
  reg n6426;
  reg n6429;
  reg n6432;
  reg n6435;
  reg n6438;
  reg n6441;
  reg n6444;
  reg n6447;
  reg n6450;
  reg [1:0] n6453;
  reg n6456;
  reg n6459;
  reg n6461;
  wire n6464;
  wire n6466;
  wire n6468;
  wire n6469;
  wire [2:0] n6471;
  wire n6473;
  wire n6474;
  wire n6476;
  wire n6478;
  wire [2:0] n6480;
  wire n6483;
  wire n6485;
  wire n6486;
  wire n6488;
  wire n6490;
  wire [2:0] n6492;
  wire n6493;
  wire [3:0] n6494;
  wire [3:0] n6495;
  wire [3:0] n6496;
  wire n6497;
  wire n6498;
  wire [3:0] n6500;
  wire [3:0] n6501;
  assign mcycles = n6321; //(module output)
  assign tstates = n6492; //(module output)
  assign prefix = n6325; //(module output)
  assign inc_pc = n6488; //(module output)
  assign inc_wz = n6331; //(module output)
  assign incdec_16 = n6500; //(module output)
  assign read_to_reg = n6341; //(module output)
  assign read_to_acc = n6344; //(module output)
  assign set_busa_to = n6501; //(module output)
  assign set_busb_to = n6496; //(module output)
  assign alu_op = n6360; //(module output)
  assign save_alu = n6361; //(module output)
  assign preservec = n6364; //(module output)
  assign arith16 = n6367; //(module output)
  assign set_addr_to = n6480; //(module output)
  assign iorq = n6372; //(module output)
  assign jump = n6375; //(module output)
  assign jumpe = n6378; //(module output)
  assign jumpxy = n6381; //(module output)
  assign call = n6384; //(module output)
  assign rstp = n6387; //(module output)
  assign ldz = n6390; //(module output)
  assign ldw = n6393; //(module output)
  assign ldsphl = n6396; //(module output)
  assign special_ld = n6399; //(module output)
  assign exchangedh = n6402; //(module output)
  assign exchangerp = n6405; //(module output)
  assign exchangeaf = n6408; //(module output)
  assign exchangers = n6411; //(module output)
  assign i_djnz = n6414; //(module output)
  assign i_cpl = n6417; //(module output)
  assign i_ccf = n6420; //(module output)
  assign i_scf = n6423; //(module output)
  assign i_retn = n6426; //(module output)
  assign i_bt = n6429; //(module output)
  assign i_bc = n6432; //(module output)
  assign i_btr = n6435; //(module output)
  assign i_rld = n6438; //(module output)
  assign i_rrd = n6441; //(module output)
  assign i_inrc = n6444; //(module output)
  assign setdi = n6447; //(module output)
  assign setei = n6450; //(module output)
  assign imode = n6453; //(module output)
  assign halt = n6456; //(module output)
  assign noread = n6498; //(module output)
  assign write = n6461; //(module output)
  /* src/T80/T80_MCode.vhd:197:26  */
  assign n1725 = ir[5:3]; // extract
  /* src/T80/T80_MCode.vhd:198:26  */
  assign n1726 = ir[2:0]; // extract
  /* src/T80/T80_MCode.vhd:199:28  */
  assign n1727 = ir[5:4]; // extract
  /* src/T80/T80_MCode.vhd:203:27  */
  assign n1729 = mcycle == 3'b001;
  /* src/T80/T80_MCode.vhd:203:17  */
  assign n1732 = n1729 ? 3'b100 : 3'b011;
  /* src/T80/T80_MCode.vhd:216:35  */
  assign n1733 = ir[5:3]; // extract
  /* src/T80/T80_MCode.vhd:216:31  */
  assign n1735 = {1'b0, n1733};
  /* src/T80/T80_MCode.vhd:264:17  */
  assign n1737 = ir == 8'b01000000;
  /* src/T80/T80_MCode.vhd:264:32  */
  assign n1739 = ir == 8'b01000001;
  /* src/T80/T80_MCode.vhd:264:32  */
  assign n1740 = n1737 | n1739;
  /* src/T80/T80_MCode.vhd:264:43  */
  assign n1742 = ir == 8'b01000010;
  /* src/T80/T80_MCode.vhd:264:43  */
  assign n1743 = n1740 | n1742;
  /* src/T80/T80_MCode.vhd:264:54  */
  assign n1745 = ir == 8'b01000011;
  /* src/T80/T80_MCode.vhd:264:54  */
  assign n1746 = n1743 | n1745;
  /* src/T80/T80_MCode.vhd:264:65  */
  assign n1748 = ir == 8'b01000100;
  /* src/T80/T80_MCode.vhd:264:65  */
  assign n1749 = n1746 | n1748;
  /* src/T80/T80_MCode.vhd:264:76  */
  assign n1751 = ir == 8'b01000101;
  /* src/T80/T80_MCode.vhd:264:76  */
  assign n1752 = n1749 | n1751;
  /* src/T80/T80_MCode.vhd:264:87  */
  assign n1754 = ir == 8'b01000111;
  /* src/T80/T80_MCode.vhd:264:87  */
  assign n1755 = n1752 | n1754;
  /* src/T80/T80_MCode.vhd:265:25  */
  assign n1757 = ir == 8'b01001000;
  /* src/T80/T80_MCode.vhd:265:25  */
  assign n1758 = n1755 | n1757;
  /* src/T80/T80_MCode.vhd:265:36  */
  assign n1760 = ir == 8'b01001001;
  /* src/T80/T80_MCode.vhd:265:36  */
  assign n1761 = n1758 | n1760;
  /* src/T80/T80_MCode.vhd:265:47  */
  assign n1763 = ir == 8'b01001010;
  /* src/T80/T80_MCode.vhd:265:47  */
  assign n1764 = n1761 | n1763;
  /* src/T80/T80_MCode.vhd:265:58  */
  assign n1766 = ir == 8'b01001011;
  /* src/T80/T80_MCode.vhd:265:58  */
  assign n1767 = n1764 | n1766;
  /* src/T80/T80_MCode.vhd:265:69  */
  assign n1769 = ir == 8'b01001100;
  /* src/T80/T80_MCode.vhd:265:69  */
  assign n1770 = n1767 | n1769;
  /* src/T80/T80_MCode.vhd:265:80  */
  assign n1772 = ir == 8'b01001101;
  /* src/T80/T80_MCode.vhd:265:80  */
  assign n1773 = n1770 | n1772;
  /* src/T80/T80_MCode.vhd:265:91  */
  assign n1775 = ir == 8'b01001111;
  /* src/T80/T80_MCode.vhd:265:91  */
  assign n1776 = n1773 | n1775;
  /* src/T80/T80_MCode.vhd:266:25  */
  assign n1778 = ir == 8'b01010000;
  /* src/T80/T80_MCode.vhd:266:25  */
  assign n1779 = n1776 | n1778;
  /* src/T80/T80_MCode.vhd:266:36  */
  assign n1781 = ir == 8'b01010001;
  /* src/T80/T80_MCode.vhd:266:36  */
  assign n1782 = n1779 | n1781;
  /* src/T80/T80_MCode.vhd:266:47  */
  assign n1784 = ir == 8'b01010010;
  /* src/T80/T80_MCode.vhd:266:47  */
  assign n1785 = n1782 | n1784;
  /* src/T80/T80_MCode.vhd:266:58  */
  assign n1787 = ir == 8'b01010011;
  /* src/T80/T80_MCode.vhd:266:58  */
  assign n1788 = n1785 | n1787;
  /* src/T80/T80_MCode.vhd:266:69  */
  assign n1790 = ir == 8'b01010100;
  /* src/T80/T80_MCode.vhd:266:69  */
  assign n1791 = n1788 | n1790;
  /* src/T80/T80_MCode.vhd:266:80  */
  assign n1793 = ir == 8'b01010101;
  /* src/T80/T80_MCode.vhd:266:80  */
  assign n1794 = n1791 | n1793;
  /* src/T80/T80_MCode.vhd:266:91  */
  assign n1796 = ir == 8'b01010111;
  /* src/T80/T80_MCode.vhd:266:91  */
  assign n1797 = n1794 | n1796;
  /* src/T80/T80_MCode.vhd:267:25  */
  assign n1799 = ir == 8'b01011000;
  /* src/T80/T80_MCode.vhd:267:25  */
  assign n1800 = n1797 | n1799;
  /* src/T80/T80_MCode.vhd:267:36  */
  assign n1802 = ir == 8'b01011001;
  /* src/T80/T80_MCode.vhd:267:36  */
  assign n1803 = n1800 | n1802;
  /* src/T80/T80_MCode.vhd:267:47  */
  assign n1805 = ir == 8'b01011010;
  /* src/T80/T80_MCode.vhd:267:47  */
  assign n1806 = n1803 | n1805;
  /* src/T80/T80_MCode.vhd:267:58  */
  assign n1808 = ir == 8'b01011011;
  /* src/T80/T80_MCode.vhd:267:58  */
  assign n1809 = n1806 | n1808;
  /* src/T80/T80_MCode.vhd:267:69  */
  assign n1811 = ir == 8'b01011100;
  /* src/T80/T80_MCode.vhd:267:69  */
  assign n1812 = n1809 | n1811;
  /* src/T80/T80_MCode.vhd:267:80  */
  assign n1814 = ir == 8'b01011101;
  /* src/T80/T80_MCode.vhd:267:80  */
  assign n1815 = n1812 | n1814;
  /* src/T80/T80_MCode.vhd:267:91  */
  assign n1817 = ir == 8'b01011111;
  /* src/T80/T80_MCode.vhd:267:91  */
  assign n1818 = n1815 | n1817;
  /* src/T80/T80_MCode.vhd:268:25  */
  assign n1820 = ir == 8'b01100000;
  /* src/T80/T80_MCode.vhd:268:25  */
  assign n1821 = n1818 | n1820;
  /* src/T80/T80_MCode.vhd:268:36  */
  assign n1823 = ir == 8'b01100001;
  /* src/T80/T80_MCode.vhd:268:36  */
  assign n1824 = n1821 | n1823;
  /* src/T80/T80_MCode.vhd:268:47  */
  assign n1826 = ir == 8'b01100010;
  /* src/T80/T80_MCode.vhd:268:47  */
  assign n1827 = n1824 | n1826;
  /* src/T80/T80_MCode.vhd:268:58  */
  assign n1829 = ir == 8'b01100011;
  /* src/T80/T80_MCode.vhd:268:58  */
  assign n1830 = n1827 | n1829;
  /* src/T80/T80_MCode.vhd:268:69  */
  assign n1832 = ir == 8'b01100100;
  /* src/T80/T80_MCode.vhd:268:69  */
  assign n1833 = n1830 | n1832;
  /* src/T80/T80_MCode.vhd:268:80  */
  assign n1835 = ir == 8'b01100101;
  /* src/T80/T80_MCode.vhd:268:80  */
  assign n1836 = n1833 | n1835;
  /* src/T80/T80_MCode.vhd:268:91  */
  assign n1838 = ir == 8'b01100111;
  /* src/T80/T80_MCode.vhd:268:91  */
  assign n1839 = n1836 | n1838;
  /* src/T80/T80_MCode.vhd:269:25  */
  assign n1841 = ir == 8'b01101000;
  /* src/T80/T80_MCode.vhd:269:25  */
  assign n1842 = n1839 | n1841;
  /* src/T80/T80_MCode.vhd:269:36  */
  assign n1844 = ir == 8'b01101001;
  /* src/T80/T80_MCode.vhd:269:36  */
  assign n1845 = n1842 | n1844;
  /* src/T80/T80_MCode.vhd:269:47  */
  assign n1847 = ir == 8'b01101010;
  /* src/T80/T80_MCode.vhd:269:47  */
  assign n1848 = n1845 | n1847;
  /* src/T80/T80_MCode.vhd:269:58  */
  assign n1850 = ir == 8'b01101011;
  /* src/T80/T80_MCode.vhd:269:58  */
  assign n1851 = n1848 | n1850;
  /* src/T80/T80_MCode.vhd:269:69  */
  assign n1853 = ir == 8'b01101100;
  /* src/T80/T80_MCode.vhd:269:69  */
  assign n1854 = n1851 | n1853;
  /* src/T80/T80_MCode.vhd:269:80  */
  assign n1856 = ir == 8'b01101101;
  /* src/T80/T80_MCode.vhd:269:80  */
  assign n1857 = n1854 | n1856;
  /* src/T80/T80_MCode.vhd:269:91  */
  assign n1859 = ir == 8'b01101111;
  /* src/T80/T80_MCode.vhd:269:91  */
  assign n1860 = n1857 | n1859;
  /* src/T80/T80_MCode.vhd:270:25  */
  assign n1862 = ir == 8'b01111000;
  /* src/T80/T80_MCode.vhd:270:25  */
  assign n1863 = n1860 | n1862;
  /* src/T80/T80_MCode.vhd:270:36  */
  assign n1865 = ir == 8'b01111001;
  /* src/T80/T80_MCode.vhd:270:36  */
  assign n1866 = n1863 | n1865;
  /* src/T80/T80_MCode.vhd:270:47  */
  assign n1868 = ir == 8'b01111010;
  /* src/T80/T80_MCode.vhd:270:47  */
  assign n1869 = n1866 | n1868;
  /* src/T80/T80_MCode.vhd:270:58  */
  assign n1871 = ir == 8'b01111011;
  /* src/T80/T80_MCode.vhd:270:58  */
  assign n1872 = n1869 | n1871;
  /* src/T80/T80_MCode.vhd:270:69  */
  assign n1874 = ir == 8'b01111100;
  /* src/T80/T80_MCode.vhd:270:69  */
  assign n1875 = n1872 | n1874;
  /* src/T80/T80_MCode.vhd:270:80  */
  assign n1877 = ir == 8'b01111101;
  /* src/T80/T80_MCode.vhd:270:80  */
  assign n1878 = n1875 | n1877;
  /* src/T80/T80_MCode.vhd:270:91  */
  assign n1880 = ir == 8'b01111111;
  /* src/T80/T80_MCode.vhd:270:91  */
  assign n1881 = n1878 | n1880;
  /* src/T80/T80_MCode.vhd:279:30  */
  assign n1882 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:280:25  */
  assign n1884 = n1882 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:279:25  */
  always @*
    case (n1884)
      1'b1: n1887 = 1'b1;
      default: n1887 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:279:25  */
  always @*
    case (n1884)
      1'b1: n1890 = 1'b1;
      default: n1890 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:279:25  */
  always @*
    case (n1884)
      1'b1: n1892 = n1725;
      default: n1892 = 3'b000;
    endcase
  /* src/T80/T80_MCode.vhd:276:17  */
  assign n1894 = ir == 8'b00000110;
  /* src/T80/T80_MCode.vhd:276:32  */
  assign n1896 = ir == 8'b00001110;
  /* src/T80/T80_MCode.vhd:276:32  */
  assign n1897 = n1894 | n1896;
  /* src/T80/T80_MCode.vhd:276:43  */
  assign n1899 = ir == 8'b00010110;
  /* src/T80/T80_MCode.vhd:276:43  */
  assign n1900 = n1897 | n1899;
  /* src/T80/T80_MCode.vhd:276:54  */
  assign n1902 = ir == 8'b00011110;
  /* src/T80/T80_MCode.vhd:276:54  */
  assign n1903 = n1900 | n1902;
  /* src/T80/T80_MCode.vhd:276:65  */
  assign n1905 = ir == 8'b00100110;
  /* src/T80/T80_MCode.vhd:276:65  */
  assign n1906 = n1903 | n1905;
  /* src/T80/T80_MCode.vhd:276:76  */
  assign n1908 = ir == 8'b00101110;
  /* src/T80/T80_MCode.vhd:276:76  */
  assign n1909 = n1906 | n1908;
  /* src/T80/T80_MCode.vhd:276:87  */
  assign n1911 = ir == 8'b00111110;
  /* src/T80/T80_MCode.vhd:276:87  */
  assign n1912 = n1909 | n1911;
  /* src/T80/T80_MCode.vhd:289:30  */
  assign n1913 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:290:25  */
  assign n1915 = n1913 == 31'b0000000000000000000000000000001;
  /* src/T80/T80_MCode.vhd:292:25  */
  assign n1917 = n1913 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:289:25  */
  assign n1918 = {n1917, n1915};
  /* src/T80/T80_MCode.vhd:289:25  */
  always @*
    case (n1918)
      2'b10: n1921 = 1'b1;
      2'b01: n1921 = 1'b0;
      default: n1921 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:289:25  */
  always @*
    case (n1918)
      2'b10: n1923 = n1725;
      2'b01: n1923 = 3'b000;
      default: n1923 = 3'b000;
    endcase
  /* src/T80/T80_MCode.vhd:289:25  */
  always @*
    case (n1918)
      2'b10: n1926 = 3'b111;
      2'b01: n1926 = 3'b010;
      default: n1926 = 3'b111;
    endcase
  /* src/T80/T80_MCode.vhd:286:17  */
  assign n1928 = ir == 8'b01000110;
  /* src/T80/T80_MCode.vhd:286:32  */
  assign n1930 = ir == 8'b01001110;
  /* src/T80/T80_MCode.vhd:286:32  */
  assign n1931 = n1928 | n1930;
  /* src/T80/T80_MCode.vhd:286:43  */
  assign n1933 = ir == 8'b01010110;
  /* src/T80/T80_MCode.vhd:286:43  */
  assign n1934 = n1931 | n1933;
  /* src/T80/T80_MCode.vhd:286:54  */
  assign n1936 = ir == 8'b01011110;
  /* src/T80/T80_MCode.vhd:286:54  */
  assign n1937 = n1934 | n1936;
  /* src/T80/T80_MCode.vhd:286:65  */
  assign n1939 = ir == 8'b01100110;
  /* src/T80/T80_MCode.vhd:286:65  */
  assign n1940 = n1937 | n1939;
  /* src/T80/T80_MCode.vhd:286:76  */
  assign n1942 = ir == 8'b01101110;
  /* src/T80/T80_MCode.vhd:286:76  */
  assign n1943 = n1940 | n1942;
  /* src/T80/T80_MCode.vhd:286:87  */
  assign n1945 = ir == 8'b01111110;
  /* src/T80/T80_MCode.vhd:286:87  */
  assign n1946 = n1943 | n1945;
  /* src/T80/T80_MCode.vhd:300:30  */
  assign n1947 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:301:25  */
  assign n1950 = n1947 == 31'b0000000000000000000000000000001;
  /* src/T80/T80_MCode.vhd:305:25  */
  assign n1952 = n1947 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:300:25  */
  assign n1953 = {n1952, n1950};
  /* src/T80/T80_MCode.vhd:300:25  */
  always @*
    case (n1953)
      2'b10: n1955 = 3'b000;
      2'b01: n1955 = n1726;
      default: n1955 = 3'b000;
    endcase
  /* src/T80/T80_MCode.vhd:300:25  */
  always @*
    case (n1953)
      2'b10: n1957 = 1'b0;
      2'b01: n1957 = 1'b0;
      default: n1957 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:300:25  */
  always @*
    case (n1953)
      2'b10: n1960 = 3'b111;
      2'b01: n1960 = 3'b010;
      default: n1960 = 3'b111;
    endcase
  /* src/T80/T80_MCode.vhd:300:25  */
  always @*
    case (n1953)
      2'b10: n1963 = 1'b1;
      2'b01: n1963 = 1'b0;
      default: n1963 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:297:17  */
  assign n1965 = ir == 8'b01110000;
  /* src/T80/T80_MCode.vhd:297:32  */
  assign n1967 = ir == 8'b01110001;
  /* src/T80/T80_MCode.vhd:297:32  */
  assign n1968 = n1965 | n1967;
  /* src/T80/T80_MCode.vhd:297:43  */
  assign n1970 = ir == 8'b01110010;
  /* src/T80/T80_MCode.vhd:297:43  */
  assign n1971 = n1968 | n1970;
  /* src/T80/T80_MCode.vhd:297:54  */
  assign n1973 = ir == 8'b01110011;
  /* src/T80/T80_MCode.vhd:297:54  */
  assign n1974 = n1971 | n1973;
  /* src/T80/T80_MCode.vhd:297:65  */
  assign n1976 = ir == 8'b01110100;
  /* src/T80/T80_MCode.vhd:297:65  */
  assign n1977 = n1974 | n1976;
  /* src/T80/T80_MCode.vhd:297:76  */
  assign n1979 = ir == 8'b01110101;
  /* src/T80/T80_MCode.vhd:297:76  */
  assign n1980 = n1977 | n1979;
  /* src/T80/T80_MCode.vhd:297:87  */
  assign n1982 = ir == 8'b01110111;
  /* src/T80/T80_MCode.vhd:297:87  */
  assign n1983 = n1980 | n1982;
  /* src/T80/T80_MCode.vhd:312:30  */
  assign n1984 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:313:25  */
  assign n1987 = n1984 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:318:25  */
  assign n1989 = n1984 == 31'b0000000000000000000000000000011;
  /* src/T80/T80_MCode.vhd:312:25  */
  assign n1990 = {n1989, n1987};
  /* src/T80/T80_MCode.vhd:312:25  */
  always @*
    case (n1990)
      2'b10: n1993 = 1'b0;
      2'b01: n1993 = 1'b1;
      default: n1993 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:312:25  */
  always @*
    case (n1990)
      2'b10: n1995 = 3'b000;
      2'b01: n1995 = n1726;
      default: n1995 = 3'b000;
    endcase
  /* src/T80/T80_MCode.vhd:312:25  */
  always @*
    case (n1990)
      2'b10: n1997 = 1'b0;
      2'b01: n1997 = 1'b0;
      default: n1997 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:312:25  */
  always @*
    case (n1990)
      2'b10: n2000 = 3'b111;
      2'b01: n2000 = 3'b010;
      default: n2000 = 3'b111;
    endcase
  /* src/T80/T80_MCode.vhd:312:25  */
  always @*
    case (n1990)
      2'b10: n2003 = 1'b1;
      2'b01: n2003 = 1'b0;
      default: n2003 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:309:17  */
  assign n2005 = ir == 8'b00110110;
  /* src/T80/T80_MCode.vhd:325:30  */
  assign n2006 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:326:25  */
  assign n2008 = n2006 == 31'b0000000000000000000000000000001;
  /* src/T80/T80_MCode.vhd:328:25  */
  assign n2010 = n2006 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:325:25  */
  assign n2011 = {n2010, n2008};
  /* src/T80/T80_MCode.vhd:325:25  */
  always @*
    case (n2011)
      2'b10: n2014 = 1'b1;
      2'b01: n2014 = 1'b0;
      default: n2014 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:325:25  */
  always @*
    case (n2011)
      2'b10: n2017 = 3'b111;
      2'b01: n2017 = 3'b000;
      default: n2017 = 3'b111;
    endcase
  /* src/T80/T80_MCode.vhd:322:17  */
  assign n2019 = ir == 8'b00001010;
  /* src/T80/T80_MCode.vhd:335:30  */
  assign n2020 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:336:25  */
  assign n2022 = n2020 == 31'b0000000000000000000000000000001;
  /* src/T80/T80_MCode.vhd:338:25  */
  assign n2024 = n2020 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:335:25  */
  assign n2025 = {n2024, n2022};
  /* src/T80/T80_MCode.vhd:335:25  */
  always @*
    case (n2025)
      2'b10: n2028 = 1'b1;
      2'b01: n2028 = 1'b0;
      default: n2028 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:335:25  */
  always @*
    case (n2025)
      2'b10: n2031 = 3'b111;
      2'b01: n2031 = 3'b001;
      default: n2031 = 3'b111;
    endcase
  /* src/T80/T80_MCode.vhd:332:17  */
  assign n2033 = ir == 8'b00011010;
  /* src/T80/T80_MCode.vhd:357:38  */
  assign n2034 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:358:33  */
  assign n2036 = n2034 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:361:33  */
  assign n2038 = n2034 == 31'b0000000000000000000000000000011;
  /* src/T80/T80_MCode.vhd:364:33  */
  assign n2040 = n2034 == 31'b0000000000000000000000000000100;
  /* src/T80/T80_MCode.vhd:357:33  */
  assign n2041 = {n2040, n2038, n2036};
  /* src/T80/T80_MCode.vhd:357:33  */
  always @*
    case (n2041)
      3'b100: n2045 = 1'b0;
      3'b010: n2045 = 1'b1;
      3'b001: n2045 = 1'b1;
      default: n2045 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:357:33  */
  always @*
    case (n2041)
      3'b100: n2048 = 1'b1;
      3'b010: n2048 = 1'b0;
      3'b001: n2048 = 1'b0;
      default: n2048 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:357:33  */
  always @*
    case (n2041)
      3'b100: n2051 = 3'b111;
      3'b010: n2051 = 3'b110;
      3'b001: n2051 = 3'b111;
      default: n2051 = 3'b111;
    endcase
  /* src/T80/T80_MCode.vhd:357:33  */
  always @*
    case (n2041)
      3'b100: n2054 = 1'b0;
      3'b010: n2054 = 1'b0;
      3'b001: n2054 = 1'b1;
      default: n2054 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:342:17  */
  assign n2056 = ir == 8'b00111010;
  /* src/T80/T80_MCode.vhd:372:30  */
  assign n2057 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:373:25  */
  assign n2059 = n2057 == 31'b0000000000000000000000000000001;
  /* src/T80/T80_MCode.vhd:376:25  */
  assign n2061 = n2057 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:372:25  */
  assign n2062 = {n2061, n2059};
  /* src/T80/T80_MCode.vhd:372:25  */
  always @*
    case (n2062)
      2'b10: n2065 = 4'b0000;
      2'b01: n2065 = 4'b0111;
      default: n2065 = 4'b0000;
    endcase
  /* src/T80/T80_MCode.vhd:372:25  */
  always @*
    case (n2062)
      2'b10: n2068 = 3'b111;
      2'b01: n2068 = 3'b000;
      default: n2068 = 3'b111;
    endcase
  /* src/T80/T80_MCode.vhd:372:25  */
  always @*
    case (n2062)
      2'b10: n2071 = 1'b1;
      2'b01: n2071 = 1'b0;
      default: n2071 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:369:17  */
  assign n2073 = ir == 8'b00000010;
  /* src/T80/T80_MCode.vhd:383:30  */
  assign n2074 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:384:25  */
  assign n2076 = n2074 == 31'b0000000000000000000000000000001;
  /* src/T80/T80_MCode.vhd:387:25  */
  assign n2078 = n2074 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:383:25  */
  assign n2079 = {n2078, n2076};
  /* src/T80/T80_MCode.vhd:383:25  */
  always @*
    case (n2079)
      2'b10: n2082 = 4'b0000;
      2'b01: n2082 = 4'b0111;
      default: n2082 = 4'b0000;
    endcase
  /* src/T80/T80_MCode.vhd:383:25  */
  always @*
    case (n2079)
      2'b10: n2085 = 3'b111;
      2'b01: n2085 = 3'b001;
      default: n2085 = 3'b111;
    endcase
  /* src/T80/T80_MCode.vhd:383:25  */
  always @*
    case (n2079)
      2'b10: n2088 = 1'b1;
      2'b01: n2088 = 1'b0;
      default: n2088 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:380:17  */
  assign n2090 = ir == 8'b00010010;
  /* src/T80/T80_MCode.vhd:407:38  */
  assign n2091 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:408:33  */
  assign n2093 = n2091 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:411:33  */
  assign n2095 = n2091 == 31'b0000000000000000000000000000011;
  /* src/T80/T80_MCode.vhd:415:33  */
  assign n2097 = n2091 == 31'b0000000000000000000000000000100;
  /* src/T80/T80_MCode.vhd:407:33  */
  assign n2098 = {n2097, n2095, n2093};
  /* src/T80/T80_MCode.vhd:407:33  */
  always @*
    case (n2098)
      3'b100: n2102 = 1'b0;
      3'b010: n2102 = 1'b1;
      3'b001: n2102 = 1'b1;
      default: n2102 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:407:33  */
  always @*
    case (n2098)
      3'b100: n2105 = 4'b0000;
      3'b010: n2105 = 4'b0111;
      3'b001: n2105 = 4'b0000;
      default: n2105 = 4'b0000;
    endcase
  /* src/T80/T80_MCode.vhd:407:33  */
  always @*
    case (n2098)
      3'b100: n2108 = 3'b111;
      3'b010: n2108 = 3'b110;
      3'b001: n2108 = 3'b111;
      default: n2108 = 3'b111;
    endcase
  /* src/T80/T80_MCode.vhd:407:33  */
  always @*
    case (n2098)
      3'b100: n2111 = 1'b0;
      3'b010: n2111 = 1'b0;
      3'b001: n2111 = 1'b1;
      default: n2111 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:407:33  */
  always @*
    case (n2098)
      3'b100: n2114 = 1'b1;
      3'b010: n2114 = 1'b0;
      3'b001: n2114 = 1'b0;
      default: n2114 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:391:17  */
  assign n2116 = ir == 8'b00110010;
  /* src/T80/T80_MCode.vhd:425:30  */
  assign n2117 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:429:42  */
  assign n2119 = n1727 == 2'b11;
  /* src/T80/T80_MCode.vhd:429:33  */
  assign n2121 = {n1727, 1'b1};
  /* src/T80/T80_MCode.vhd:429:33  */
  assign n2123 = n2119 ? 3'b000 : n2121;
  /* src/T80/T80_MCode.vhd:429:33  */
  assign n2126 = n2119 ? 1'b1 : 1'b0;
  /* src/T80/T80_MCode.vhd:426:25  */
  assign n2128 = n2117 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:438:42  */
  assign n2130 = n1727 == 2'b11;
  /* src/T80/T80_MCode.vhd:438:33  */
  assign n2132 = {n1727, 1'b0};
  /* src/T80/T80_MCode.vhd:438:33  */
  assign n2134 = n2130 ? 3'b001 : n2132;
  /* src/T80/T80_MCode.vhd:438:33  */
  assign n2137 = n2130 ? 1'b1 : 1'b0;
  /* src/T80/T80_MCode.vhd:435:25  */
  assign n2139 = n2117 == 31'b0000000000000000000000000000011;
  /* src/T80/T80_MCode.vhd:425:25  */
  assign n2140 = {n2139, n2128};
  /* src/T80/T80_MCode.vhd:425:25  */
  always @*
    case (n2140)
      2'b10: n2144 = 1'b1;
      2'b01: n2144 = 1'b1;
      default: n2144 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:425:25  */
  always @*
    case (n2140)
      2'b10: n2148 = 1'b1;
      2'b01: n2148 = 1'b1;
      default: n2148 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:425:25  */
  always @*
    case (n2140)
      2'b10: n2150 = n2134;
      2'b01: n2150 = n2123;
      default: n2150 = 3'b000;
    endcase
  /* src/T80/T80_MCode.vhd:425:25  */
  always @*
    case (n2140)
      2'b10: n2152 = n2137;
      2'b01: n2152 = n2126;
      default: n2152 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:422:17  */
  assign n2154 = ir == 8'b00000001;
  /* src/T80/T80_MCode.vhd:422:32  */
  assign n2156 = ir == 8'b00010001;
  /* src/T80/T80_MCode.vhd:422:32  */
  assign n2157 = n2154 | n2156;
  /* src/T80/T80_MCode.vhd:422:43  */
  assign n2159 = ir == 8'b00100001;
  /* src/T80/T80_MCode.vhd:422:43  */
  assign n2160 = n2157 | n2159;
  /* src/T80/T80_MCode.vhd:422:54  */
  assign n2162 = ir == 8'b00110001;
  /* src/T80/T80_MCode.vhd:422:54  */
  assign n2163 = n2160 | n2162;
  /* src/T80/T80_MCode.vhd:461:38  */
  assign n2164 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:462:33  */
  assign n2166 = n2164 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:465:33  */
  assign n2168 = n2164 == 31'b0000000000000000000000000000011;
  /* src/T80/T80_MCode.vhd:469:33  */
  assign n2171 = n2164 == 31'b0000000000000000000000000000100;
  /* src/T80/T80_MCode.vhd:474:33  */
  assign n2174 = n2164 == 31'b0000000000000000000000000000101;
  /* src/T80/T80_MCode.vhd:461:33  */
  assign n2175 = {n2174, n2171, n2168, n2166};
  /* src/T80/T80_MCode.vhd:461:33  */
  always @*
    case (n2175)
      4'b1000: n2179 = 1'b0;
      4'b0100: n2179 = 1'b0;
      4'b0010: n2179 = 1'b1;
      4'b0001: n2179 = 1'b1;
      default: n2179 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:461:33  */
  always @*
    case (n2175)
      4'b1000: n2182 = 1'b0;
      4'b0100: n2182 = 1'b1;
      4'b0010: n2182 = 1'b0;
      4'b0001: n2182 = 1'b0;
      default: n2182 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:461:33  */
  always @*
    case (n2175)
      4'b1000: n2186 = 1'b1;
      4'b0100: n2186 = 1'b1;
      4'b0010: n2186 = 1'b0;
      4'b0001: n2186 = 1'b0;
      default: n2186 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:461:33  */
  always @*
    case (n2175)
      4'b1000: n2188 = 3'b100;
      4'b0100: n2188 = 3'b101;
      4'b0010: n2188 = 3'b000;
      4'b0001: n2188 = 3'b000;
      default: n2188 = 3'b000;
    endcase
  /* src/T80/T80_MCode.vhd:461:33  */
  always @*
    case (n2175)
      4'b1000: n2192 = 3'b111;
      4'b0100: n2192 = 3'b110;
      4'b0010: n2192 = 3'b110;
      4'b0001: n2192 = 3'b111;
      default: n2192 = 3'b111;
    endcase
  /* src/T80/T80_MCode.vhd:461:33  */
  always @*
    case (n2175)
      4'b1000: n2195 = 1'b0;
      4'b0100: n2195 = 1'b0;
      4'b0010: n2195 = 1'b0;
      4'b0001: n2195 = 1'b1;
      default: n2195 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:461:33  */
  always @*
    case (n2175)
      4'b1000: n2198 = 1'b0;
      4'b0100: n2198 = 1'b0;
      4'b0010: n2198 = 1'b1;
      4'b0001: n2198 = 1'b0;
      default: n2198 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:446:17  */
  assign n2200 = ir == 8'b00101010;
  /* src/T80/T80_MCode.vhd:496:38  */
  assign n2201 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:497:33  */
  assign n2203 = n2201 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:500:33  */
  assign n2205 = n2201 == 31'b0000000000000000000000000000011;
  /* src/T80/T80_MCode.vhd:505:33  */
  assign n2207 = n2201 == 31'b0000000000000000000000000000100;
  /* src/T80/T80_MCode.vhd:510:33  */
  assign n2209 = n2201 == 31'b0000000000000000000000000000101;
  /* src/T80/T80_MCode.vhd:496:33  */
  assign n2210 = {n2209, n2207, n2205, n2203};
  /* src/T80/T80_MCode.vhd:496:33  */
  always @*
    case (n2210)
      4'b1000: n2214 = 1'b0;
      4'b0100: n2214 = 1'b0;
      4'b0010: n2214 = 1'b1;
      4'b0001: n2214 = 1'b1;
      default: n2214 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:496:33  */
  always @*
    case (n2210)
      4'b1000: n2217 = 1'b0;
      4'b0100: n2217 = 1'b1;
      4'b0010: n2217 = 1'b0;
      4'b0001: n2217 = 1'b0;
      default: n2217 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:496:33  */
  always @*
    case (n2210)
      4'b1000: n2221 = 4'b0000;
      4'b0100: n2221 = 4'b0100;
      4'b0010: n2221 = 4'b0101;
      4'b0001: n2221 = 4'b0000;
      default: n2221 = 4'b0000;
    endcase
  /* src/T80/T80_MCode.vhd:496:33  */
  always @*
    case (n2210)
      4'b1000: n2225 = 3'b111;
      4'b0100: n2225 = 3'b110;
      4'b0010: n2225 = 3'b110;
      4'b0001: n2225 = 3'b111;
      default: n2225 = 3'b111;
    endcase
  /* src/T80/T80_MCode.vhd:496:33  */
  always @*
    case (n2210)
      4'b1000: n2228 = 1'b0;
      4'b0100: n2228 = 1'b0;
      4'b0010: n2228 = 1'b0;
      4'b0001: n2228 = 1'b1;
      default: n2228 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:496:33  */
  always @*
    case (n2210)
      4'b1000: n2231 = 1'b0;
      4'b0100: n2231 = 1'b0;
      4'b0010: n2231 = 1'b1;
      4'b0001: n2231 = 1'b0;
      default: n2231 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:496:33  */
  always @*
    case (n2210)
      4'b1000: n2235 = 1'b1;
      4'b0100: n2235 = 1'b1;
      4'b0010: n2235 = 1'b0;
      4'b0001: n2235 = 1'b0;
      default: n2235 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:480:17  */
  assign n2237 = ir == 8'b00100010;
  /* src/T80/T80_MCode.vhd:515:17  */
  assign n2239 = ir == 8'b11111001;
  /* src/T80/T80_MCode.vhd:522:30  */
  assign n2240 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:527:42  */
  assign n2242 = n1727 == 2'b11;
  /* src/T80/T80_MCode.vhd:527:33  */
  assign n2245 = {1'b0, n1727, 1'b0};
  /* src/T80/T80_MCode.vhd:527:33  */
  assign n2247 = n2242 ? 4'b0111 : n2245;
  /* src/T80/T80_MCode.vhd:523:25  */
  assign n2249 = n2240 == 31'b0000000000000000000000000000001;
  /* src/T80/T80_MCode.vhd:537:42  */
  assign n2251 = n1727 == 2'b11;
  /* src/T80/T80_MCode.vhd:537:33  */
  assign n2254 = {1'b0, n1727, 1'b1};
  /* src/T80/T80_MCode.vhd:537:33  */
  assign n2256 = n2251 ? 4'b1011 : n2254;
  /* src/T80/T80_MCode.vhd:534:25  */
  assign n2258 = n2240 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:545:25  */
  assign n2260 = n2240 == 31'b0000000000000000000000000000011;
  /* src/T80/T80_MCode.vhd:522:25  */
  assign n2261 = {n2260, n2258, n2249};
  /* src/T80/T80_MCode.vhd:522:25  */
  always @*
    case (n2261)
      3'b100: n2263 = n1732;
      3'b010: n2263 = n1732;
      3'b001: n2263 = 3'b101;
      default: n2263 = n1732;
    endcase
  /* src/T80/T80_MCode.vhd:522:25  */
  always @*
    case (n2261)
      3'b100: n2267 = 4'b0000;
      3'b010: n2267 = 4'b1111;
      3'b001: n2267 = 4'b1111;
      default: n2267 = 4'b0000;
    endcase
  /* src/T80/T80_MCode.vhd:522:25  */
  always @*
    case (n2261)
      3'b100: n2269 = 4'b0000;
      3'b010: n2269 = n2256;
      3'b001: n2269 = n2247;
      default: n2269 = 4'b0000;
    endcase
  /* src/T80/T80_MCode.vhd:522:25  */
  always @*
    case (n2261)
      3'b100: n2273 = 3'b111;
      3'b010: n2273 = 3'b101;
      3'b001: n2273 = 3'b101;
      default: n2273 = 3'b111;
    endcase
  /* src/T80/T80_MCode.vhd:522:25  */
  always @*
    case (n2261)
      3'b100: n2277 = 1'b1;
      3'b010: n2277 = 1'b1;
      3'b001: n2277 = 1'b0;
      default: n2277 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:519:17  */
  assign n2279 = ir == 8'b11000101;
  /* src/T80/T80_MCode.vhd:519:32  */
  assign n2281 = ir == 8'b11010101;
  /* src/T80/T80_MCode.vhd:519:32  */
  assign n2282 = n2279 | n2281;
  /* src/T80/T80_MCode.vhd:519:43  */
  assign n2284 = ir == 8'b11100101;
  /* src/T80/T80_MCode.vhd:519:43  */
  assign n2285 = n2282 | n2284;
  /* src/T80/T80_MCode.vhd:519:54  */
  assign n2287 = ir == 8'b11110101;
  /* src/T80/T80_MCode.vhd:519:54  */
  assign n2288 = n2285 | n2287;
  /* src/T80/T80_MCode.vhd:552:30  */
  assign n2289 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:553:25  */
  assign n2291 = n2289 == 31'b0000000000000000000000000000001;
  /* src/T80/T80_MCode.vhd:559:42  */
  assign n2293 = n1727 == 2'b11;
  /* src/T80/T80_MCode.vhd:559:33  */
  assign n2295 = {n1727, 1'b1};
  /* src/T80/T80_MCode.vhd:559:33  */
  assign n2297 = n2293 ? 3'b011 : n2295;
  /* src/T80/T80_MCode.vhd:559:33  */
  assign n2300 = n2293 ? 1'b1 : 1'b0;
  /* src/T80/T80_MCode.vhd:555:25  */
  assign n2302 = n2289 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:568:42  */
  assign n2304 = n1727 == 2'b11;
  /* src/T80/T80_MCode.vhd:568:33  */
  assign n2306 = {n1727, 1'b0};
  /* src/T80/T80_MCode.vhd:568:33  */
  assign n2308 = n2304 ? 3'b111 : n2306;
  /* src/T80/T80_MCode.vhd:568:33  */
  assign n2311 = n2304 ? 1'b0 : 1'b0;
  /* src/T80/T80_MCode.vhd:565:25  */
  assign n2313 = n2289 == 31'b0000000000000000000000000000011;
  /* src/T80/T80_MCode.vhd:552:25  */
  assign n2314 = {n2313, n2302, n2291};
  /* src/T80/T80_MCode.vhd:552:25  */
  always @*
    case (n2314)
      3'b100: n2318 = 4'b0111;
      3'b010: n2318 = 4'b0111;
      3'b001: n2318 = 4'b0000;
      default: n2318 = 4'b0000;
    endcase
  /* src/T80/T80_MCode.vhd:552:25  */
  always @*
    case (n2314)
      3'b100: n2322 = 1'b1;
      3'b010: n2322 = 1'b1;
      3'b001: n2322 = 1'b0;
      default: n2322 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:552:25  */
  always @*
    case (n2314)
      3'b100: n2324 = n2308;
      3'b010: n2324 = n2297;
      3'b001: n2324 = 3'b000;
      default: n2324 = 3'b000;
    endcase
  /* src/T80/T80_MCode.vhd:552:25  */
  always @*
    case (n2314)
      3'b100: n2326 = n2311;
      3'b010: n2326 = n2300;
      3'b001: n2326 = 1'b0;
      default: n2326 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:552:25  */
  always @*
    case (n2314)
      3'b100: n2330 = 3'b111;
      3'b010: n2330 = 3'b101;
      3'b001: n2330 = 3'b101;
      default: n2330 = 3'b111;
    endcase
  /* src/T80/T80_MCode.vhd:549:17  */
  assign n2332 = ir == 8'b11000001;
  /* src/T80/T80_MCode.vhd:549:32  */
  assign n2334 = ir == 8'b11010001;
  /* src/T80/T80_MCode.vhd:549:32  */
  assign n2335 = n2332 | n2334;
  /* src/T80/T80_MCode.vhd:549:43  */
  assign n2337 = ir == 8'b11100001;
  /* src/T80/T80_MCode.vhd:549:43  */
  assign n2338 = n2335 | n2337;
  /* src/T80/T80_MCode.vhd:549:54  */
  assign n2340 = ir == 8'b11110001;
  /* src/T80/T80_MCode.vhd:549:54  */
  assign n2341 = n2338 | n2340;
  /* src/T80/T80_MCode.vhd:578:17  */
  assign n2343 = ir == 8'b11101011;
  /* src/T80/T80_MCode.vhd:583:17  */
  assign n2345 = ir == 8'b00001000;
  /* src/T80/T80_MCode.vhd:609:17  */
  assign n2347 = ir == 8'b11011001;
  /* src/T80/T80_MCode.vhd:635:38  */
  assign n2348 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:636:33  */
  assign n2350 = n2348 == 31'b0000000000000000000000000000001;
  /* src/T80/T80_MCode.vhd:638:33  */
  assign n2352 = n2348 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:643:33  */
  assign n2354 = n2348 == 31'b0000000000000000000000000000011;
  /* src/T80/T80_MCode.vhd:648:33  */
  assign n2356 = n2348 == 31'b0000000000000000000000000000100;
  /* src/T80/T80_MCode.vhd:653:33  */
  assign n2358 = n2348 == 31'b0000000000000000000000000000101;
  /* src/T80/T80_MCode.vhd:635:33  */
  assign n2359 = {n2358, n2356, n2354, n2352, n2350};
  /* src/T80/T80_MCode.vhd:635:33  */
  always @*
    case (n2359)
      5'b10000: n2362 = 3'b101;
      5'b01000: n2362 = n1732;
      5'b00100: n2362 = 3'b100;
      5'b00010: n2362 = n1732;
      5'b00001: n2362 = n1732;
      default: n2362 = n1732;
    endcase
  /* src/T80/T80_MCode.vhd:635:33  */
  always @*
    case (n2359)
      5'b10000: n2366 = 4'b1111;
      5'b01000: n2366 = 4'b0000;
      5'b00100: n2366 = 4'b0111;
      5'b00010: n2366 = 4'b0000;
      5'b00001: n2366 = 4'b0000;
      default: n2366 = 4'b0000;
    endcase
  /* src/T80/T80_MCode.vhd:635:33  */
  always @*
    case (n2359)
      5'b10000: n2370 = 1'b0;
      5'b01000: n2370 = 1'b1;
      5'b00100: n2370 = 1'b0;
      5'b00010: n2370 = 1'b1;
      5'b00001: n2370 = 1'b0;
      default: n2370 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:635:33  */
  always @*
    case (n2359)
      5'b10000: n2374 = 4'b0000;
      5'b01000: n2374 = 4'b0100;
      5'b00100: n2374 = 4'b0000;
      5'b00010: n2374 = 4'b0101;
      5'b00001: n2374 = 4'b0000;
      default: n2374 = 4'b0000;
    endcase
  /* src/T80/T80_MCode.vhd:635:33  */
  always @*
    case (n2359)
      5'b10000: n2378 = 4'b0000;
      5'b01000: n2378 = 4'b0100;
      5'b00100: n2378 = 4'b0000;
      5'b00010: n2378 = 4'b0101;
      5'b00001: n2378 = 4'b0000;
      default: n2378 = 4'b0000;
    endcase
  /* src/T80/T80_MCode.vhd:635:33  */
  always @*
    case (n2359)
      5'b10000: n2384 = 3'b111;
      5'b01000: n2384 = 3'b101;
      5'b00100: n2384 = 3'b101;
      5'b00010: n2384 = 3'b101;
      5'b00001: n2384 = 3'b101;
      default: n2384 = 3'b111;
    endcase
  /* src/T80/T80_MCode.vhd:635:33  */
  always @*
    case (n2359)
      5'b10000: n2388 = 1'b1;
      5'b01000: n2388 = 1'b0;
      5'b00100: n2388 = 1'b1;
      5'b00010: n2388 = 1'b0;
      5'b00001: n2388 = 1'b0;
      default: n2388 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:631:17  */
  assign n2390 = ir == 8'b11100011;
  /* src/T80/T80_MCode.vhd:662:17  */
  assign n2393 = ir == 8'b10000000;
  /* src/T80/T80_MCode.vhd:662:32  */
  assign n2395 = ir == 8'b10000001;
  /* src/T80/T80_MCode.vhd:662:32  */
  assign n2396 = n2393 | n2395;
  /* src/T80/T80_MCode.vhd:662:43  */
  assign n2398 = ir == 8'b10000010;
  /* src/T80/T80_MCode.vhd:662:43  */
  assign n2399 = n2396 | n2398;
  /* src/T80/T80_MCode.vhd:662:54  */
  assign n2401 = ir == 8'b10000011;
  /* src/T80/T80_MCode.vhd:662:54  */
  assign n2402 = n2399 | n2401;
  /* src/T80/T80_MCode.vhd:662:65  */
  assign n2404 = ir == 8'b10000100;
  /* src/T80/T80_MCode.vhd:662:65  */
  assign n2405 = n2402 | n2404;
  /* src/T80/T80_MCode.vhd:662:76  */
  assign n2407 = ir == 8'b10000101;
  /* src/T80/T80_MCode.vhd:662:76  */
  assign n2408 = n2405 | n2407;
  /* src/T80/T80_MCode.vhd:662:87  */
  assign n2410 = ir == 8'b10000111;
  /* src/T80/T80_MCode.vhd:662:87  */
  assign n2411 = n2408 | n2410;
  /* src/T80/T80_MCode.vhd:663:25  */
  assign n2413 = ir == 8'b10001000;
  /* src/T80/T80_MCode.vhd:663:25  */
  assign n2414 = n2411 | n2413;
  /* src/T80/T80_MCode.vhd:663:36  */
  assign n2416 = ir == 8'b10001001;
  /* src/T80/T80_MCode.vhd:663:36  */
  assign n2417 = n2414 | n2416;
  /* src/T80/T80_MCode.vhd:663:47  */
  assign n2419 = ir == 8'b10001010;
  /* src/T80/T80_MCode.vhd:663:47  */
  assign n2420 = n2417 | n2419;
  /* src/T80/T80_MCode.vhd:663:58  */
  assign n2422 = ir == 8'b10001011;
  /* src/T80/T80_MCode.vhd:663:58  */
  assign n2423 = n2420 | n2422;
  /* src/T80/T80_MCode.vhd:663:69  */
  assign n2425 = ir == 8'b10001100;
  /* src/T80/T80_MCode.vhd:663:69  */
  assign n2426 = n2423 | n2425;
  /* src/T80/T80_MCode.vhd:663:80  */
  assign n2428 = ir == 8'b10001101;
  /* src/T80/T80_MCode.vhd:663:80  */
  assign n2429 = n2426 | n2428;
  /* src/T80/T80_MCode.vhd:663:91  */
  assign n2431 = ir == 8'b10001111;
  /* src/T80/T80_MCode.vhd:663:91  */
  assign n2432 = n2429 | n2431;
  /* src/T80/T80_MCode.vhd:664:25  */
  assign n2434 = ir == 8'b10010000;
  /* src/T80/T80_MCode.vhd:664:25  */
  assign n2435 = n2432 | n2434;
  /* src/T80/T80_MCode.vhd:664:36  */
  assign n2437 = ir == 8'b10010001;
  /* src/T80/T80_MCode.vhd:664:36  */
  assign n2438 = n2435 | n2437;
  /* src/T80/T80_MCode.vhd:664:47  */
  assign n2440 = ir == 8'b10010010;
  /* src/T80/T80_MCode.vhd:664:47  */
  assign n2441 = n2438 | n2440;
  /* src/T80/T80_MCode.vhd:664:58  */
  assign n2443 = ir == 8'b10010011;
  /* src/T80/T80_MCode.vhd:664:58  */
  assign n2444 = n2441 | n2443;
  /* src/T80/T80_MCode.vhd:664:69  */
  assign n2446 = ir == 8'b10010100;
  /* src/T80/T80_MCode.vhd:664:69  */
  assign n2447 = n2444 | n2446;
  /* src/T80/T80_MCode.vhd:664:80  */
  assign n2449 = ir == 8'b10010101;
  /* src/T80/T80_MCode.vhd:664:80  */
  assign n2450 = n2447 | n2449;
  /* src/T80/T80_MCode.vhd:664:91  */
  assign n2452 = ir == 8'b10010111;
  /* src/T80/T80_MCode.vhd:664:91  */
  assign n2453 = n2450 | n2452;
  /* src/T80/T80_MCode.vhd:665:25  */
  assign n2455 = ir == 8'b10011000;
  /* src/T80/T80_MCode.vhd:665:25  */
  assign n2456 = n2453 | n2455;
  /* src/T80/T80_MCode.vhd:665:36  */
  assign n2458 = ir == 8'b10011001;
  /* src/T80/T80_MCode.vhd:665:36  */
  assign n2459 = n2456 | n2458;
  /* src/T80/T80_MCode.vhd:665:47  */
  assign n2461 = ir == 8'b10011010;
  /* src/T80/T80_MCode.vhd:665:47  */
  assign n2462 = n2459 | n2461;
  /* src/T80/T80_MCode.vhd:665:58  */
  assign n2464 = ir == 8'b10011011;
  /* src/T80/T80_MCode.vhd:665:58  */
  assign n2465 = n2462 | n2464;
  /* src/T80/T80_MCode.vhd:665:69  */
  assign n2467 = ir == 8'b10011100;
  /* src/T80/T80_MCode.vhd:665:69  */
  assign n2468 = n2465 | n2467;
  /* src/T80/T80_MCode.vhd:665:80  */
  assign n2470 = ir == 8'b10011101;
  /* src/T80/T80_MCode.vhd:665:80  */
  assign n2471 = n2468 | n2470;
  /* src/T80/T80_MCode.vhd:665:91  */
  assign n2473 = ir == 8'b10011111;
  /* src/T80/T80_MCode.vhd:665:91  */
  assign n2474 = n2471 | n2473;
  /* src/T80/T80_MCode.vhd:666:25  */
  assign n2476 = ir == 8'b10100000;
  /* src/T80/T80_MCode.vhd:666:25  */
  assign n2477 = n2474 | n2476;
  /* src/T80/T80_MCode.vhd:666:36  */
  assign n2479 = ir == 8'b10100001;
  /* src/T80/T80_MCode.vhd:666:36  */
  assign n2480 = n2477 | n2479;
  /* src/T80/T80_MCode.vhd:666:47  */
  assign n2482 = ir == 8'b10100010;
  /* src/T80/T80_MCode.vhd:666:47  */
  assign n2483 = n2480 | n2482;
  /* src/T80/T80_MCode.vhd:666:58  */
  assign n2485 = ir == 8'b10100011;
  /* src/T80/T80_MCode.vhd:666:58  */
  assign n2486 = n2483 | n2485;
  /* src/T80/T80_MCode.vhd:666:69  */
  assign n2488 = ir == 8'b10100100;
  /* src/T80/T80_MCode.vhd:666:69  */
  assign n2489 = n2486 | n2488;
  /* src/T80/T80_MCode.vhd:666:80  */
  assign n2491 = ir == 8'b10100101;
  /* src/T80/T80_MCode.vhd:666:80  */
  assign n2492 = n2489 | n2491;
  /* src/T80/T80_MCode.vhd:666:91  */
  assign n2494 = ir == 8'b10100111;
  /* src/T80/T80_MCode.vhd:666:91  */
  assign n2495 = n2492 | n2494;
  /* src/T80/T80_MCode.vhd:667:25  */
  assign n2497 = ir == 8'b10101000;
  /* src/T80/T80_MCode.vhd:667:25  */
  assign n2498 = n2495 | n2497;
  /* src/T80/T80_MCode.vhd:667:36  */
  assign n2500 = ir == 8'b10101001;
  /* src/T80/T80_MCode.vhd:667:36  */
  assign n2501 = n2498 | n2500;
  /* src/T80/T80_MCode.vhd:667:47  */
  assign n2503 = ir == 8'b10101010;
  /* src/T80/T80_MCode.vhd:667:47  */
  assign n2504 = n2501 | n2503;
  /* src/T80/T80_MCode.vhd:667:58  */
  assign n2506 = ir == 8'b10101011;
  /* src/T80/T80_MCode.vhd:667:58  */
  assign n2507 = n2504 | n2506;
  /* src/T80/T80_MCode.vhd:667:69  */
  assign n2509 = ir == 8'b10101100;
  /* src/T80/T80_MCode.vhd:667:69  */
  assign n2510 = n2507 | n2509;
  /* src/T80/T80_MCode.vhd:667:80  */
  assign n2512 = ir == 8'b10101101;
  /* src/T80/T80_MCode.vhd:667:80  */
  assign n2513 = n2510 | n2512;
  /* src/T80/T80_MCode.vhd:667:91  */
  assign n2515 = ir == 8'b10101111;
  /* src/T80/T80_MCode.vhd:667:91  */
  assign n2516 = n2513 | n2515;
  /* src/T80/T80_MCode.vhd:668:25  */
  assign n2518 = ir == 8'b10110000;
  /* src/T80/T80_MCode.vhd:668:25  */
  assign n2519 = n2516 | n2518;
  /* src/T80/T80_MCode.vhd:668:36  */
  assign n2521 = ir == 8'b10110001;
  /* src/T80/T80_MCode.vhd:668:36  */
  assign n2522 = n2519 | n2521;
  /* src/T80/T80_MCode.vhd:668:47  */
  assign n2524 = ir == 8'b10110010;
  /* src/T80/T80_MCode.vhd:668:47  */
  assign n2525 = n2522 | n2524;
  /* src/T80/T80_MCode.vhd:668:58  */
  assign n2527 = ir == 8'b10110011;
  /* src/T80/T80_MCode.vhd:668:58  */
  assign n2528 = n2525 | n2527;
  /* src/T80/T80_MCode.vhd:668:69  */
  assign n2530 = ir == 8'b10110100;
  /* src/T80/T80_MCode.vhd:668:69  */
  assign n2531 = n2528 | n2530;
  /* src/T80/T80_MCode.vhd:668:80  */
  assign n2533 = ir == 8'b10110101;
  /* src/T80/T80_MCode.vhd:668:80  */
  assign n2534 = n2531 | n2533;
  /* src/T80/T80_MCode.vhd:668:91  */
  assign n2536 = ir == 8'b10110111;
  /* src/T80/T80_MCode.vhd:668:91  */
  assign n2537 = n2534 | n2536;
  /* src/T80/T80_MCode.vhd:669:25  */
  assign n2539 = ir == 8'b10111000;
  /* src/T80/T80_MCode.vhd:669:25  */
  assign n2540 = n2537 | n2539;
  /* src/T80/T80_MCode.vhd:669:36  */
  assign n2542 = ir == 8'b10111001;
  /* src/T80/T80_MCode.vhd:669:36  */
  assign n2543 = n2540 | n2542;
  /* src/T80/T80_MCode.vhd:669:47  */
  assign n2545 = ir == 8'b10111010;
  /* src/T80/T80_MCode.vhd:669:47  */
  assign n2546 = n2543 | n2545;
  /* src/T80/T80_MCode.vhd:669:58  */
  assign n2548 = ir == 8'b10111011;
  /* src/T80/T80_MCode.vhd:669:58  */
  assign n2549 = n2546 | n2548;
  /* src/T80/T80_MCode.vhd:669:69  */
  assign n2551 = ir == 8'b10111100;
  /* src/T80/T80_MCode.vhd:669:69  */
  assign n2552 = n2549 | n2551;
  /* src/T80/T80_MCode.vhd:669:80  */
  assign n2554 = ir == 8'b10111101;
  /* src/T80/T80_MCode.vhd:669:80  */
  assign n2555 = n2552 | n2554;
  /* src/T80/T80_MCode.vhd:669:91  */
  assign n2557 = ir == 8'b10111111;
  /* src/T80/T80_MCode.vhd:669:91  */
  assign n2558 = n2555 | n2557;
  /* src/T80/T80_MCode.vhd:692:30  */
  assign n2559 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:693:25  */
  assign n2561 = n2559 == 31'b0000000000000000000000000000001;
  /* src/T80/T80_MCode.vhd:695:25  */
  assign n2564 = n2559 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:692:25  */
  assign n2565 = {n2564, n2561};
  /* src/T80/T80_MCode.vhd:692:25  */
  always @*
    case (n2565)
      2'b10: n2568 = 1'b1;
      2'b01: n2568 = 1'b0;
      default: n2568 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:692:25  */
  always @*
    case (n2565)
      2'b10: n2570 = 3'b111;
      2'b01: n2570 = 3'b000;
      default: n2570 = 3'b000;
    endcase
  /* src/T80/T80_MCode.vhd:692:25  */
  always @*
    case (n2565)
      2'b10: n2572 = n1726;
      2'b01: n2572 = 3'b000;
      default: n2572 = 3'b000;
    endcase
  /* src/T80/T80_MCode.vhd:692:25  */
  always @*
    case (n2565)
      2'b10: n2575 = 1'b1;
      2'b01: n2575 = 1'b0;
      default: n2575 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:692:25  */
  always @*
    case (n2565)
      2'b10: n2578 = 3'b111;
      2'b01: n2578 = 3'b010;
      default: n2578 = 3'b111;
    endcase
  /* src/T80/T80_MCode.vhd:682:17  */
  assign n2580 = ir == 8'b10000110;
  /* src/T80/T80_MCode.vhd:682:32  */
  assign n2582 = ir == 8'b10001110;
  /* src/T80/T80_MCode.vhd:682:32  */
  assign n2583 = n2580 | n2582;
  /* src/T80/T80_MCode.vhd:682:43  */
  assign n2585 = ir == 8'b10010110;
  /* src/T80/T80_MCode.vhd:682:43  */
  assign n2586 = n2583 | n2585;
  /* src/T80/T80_MCode.vhd:682:54  */
  assign n2588 = ir == 8'b10011110;
  /* src/T80/T80_MCode.vhd:682:54  */
  assign n2589 = n2586 | n2588;
  /* src/T80/T80_MCode.vhd:682:65  */
  assign n2591 = ir == 8'b10100110;
  /* src/T80/T80_MCode.vhd:682:65  */
  assign n2592 = n2589 | n2591;
  /* src/T80/T80_MCode.vhd:682:76  */
  assign n2594 = ir == 8'b10101110;
  /* src/T80/T80_MCode.vhd:682:76  */
  assign n2595 = n2592 | n2594;
  /* src/T80/T80_MCode.vhd:682:87  */
  assign n2597 = ir == 8'b10110110;
  /* src/T80/T80_MCode.vhd:682:87  */
  assign n2598 = n2595 | n2597;
  /* src/T80/T80_MCode.vhd:682:98  */
  assign n2600 = ir == 8'b10111110;
  /* src/T80/T80_MCode.vhd:682:98  */
  assign n2601 = n2598 | n2600;
  /* src/T80/T80_MCode.vhd:712:35  */
  assign n2603 = mcycle == 3'b010;
  /* src/T80/T80_MCode.vhd:712:25  */
  assign n2607 = n2603 ? 1'b1 : 1'b0;
  /* src/T80/T80_MCode.vhd:712:25  */
  assign n2610 = n2603 ? 1'b1 : 1'b0;
  /* src/T80/T80_MCode.vhd:712:25  */
  assign n2612 = n2603 ? 3'b111 : 3'b000;
  /* src/T80/T80_MCode.vhd:712:25  */
  assign n2614 = n2603 ? n1726 : 3'b000;
  /* src/T80/T80_MCode.vhd:712:25  */
  assign n2617 = n2603 ? 1'b1 : 1'b0;
  /* src/T80/T80_MCode.vhd:702:17  */
  assign n2619 = ir == 8'b11000110;
  /* src/T80/T80_MCode.vhd:702:32  */
  assign n2621 = ir == 8'b11001110;
  /* src/T80/T80_MCode.vhd:702:32  */
  assign n2622 = n2619 | n2621;
  /* src/T80/T80_MCode.vhd:702:43  */
  assign n2624 = ir == 8'b11010110;
  /* src/T80/T80_MCode.vhd:702:43  */
  assign n2625 = n2622 | n2624;
  /* src/T80/T80_MCode.vhd:702:54  */
  assign n2627 = ir == 8'b11011110;
  /* src/T80/T80_MCode.vhd:702:54  */
  assign n2628 = n2625 | n2627;
  /* src/T80/T80_MCode.vhd:702:65  */
  assign n2630 = ir == 8'b11100110;
  /* src/T80/T80_MCode.vhd:702:65  */
  assign n2631 = n2628 | n2630;
  /* src/T80/T80_MCode.vhd:702:76  */
  assign n2633 = ir == 8'b11101110;
  /* src/T80/T80_MCode.vhd:702:76  */
  assign n2634 = n2631 | n2633;
  /* src/T80/T80_MCode.vhd:702:87  */
  assign n2636 = ir == 8'b11110110;
  /* src/T80/T80_MCode.vhd:702:87  */
  assign n2637 = n2634 | n2636;
  /* src/T80/T80_MCode.vhd:702:98  */
  assign n2639 = ir == 8'b11111110;
  /* src/T80/T80_MCode.vhd:702:98  */
  assign n2640 = n2637 | n2639;
  /* src/T80/T80_MCode.vhd:719:17  */
  assign n2642 = ir == 8'b00000100;
  /* src/T80/T80_MCode.vhd:719:32  */
  assign n2644 = ir == 8'b00001100;
  /* src/T80/T80_MCode.vhd:719:32  */
  assign n2645 = n2642 | n2644;
  /* src/T80/T80_MCode.vhd:719:43  */
  assign n2647 = ir == 8'b00010100;
  /* src/T80/T80_MCode.vhd:719:43  */
  assign n2648 = n2645 | n2647;
  /* src/T80/T80_MCode.vhd:719:54  */
  assign n2650 = ir == 8'b00011100;
  /* src/T80/T80_MCode.vhd:719:54  */
  assign n2651 = n2648 | n2650;
  /* src/T80/T80_MCode.vhd:719:65  */
  assign n2653 = ir == 8'b00100100;
  /* src/T80/T80_MCode.vhd:719:65  */
  assign n2654 = n2651 | n2653;
  /* src/T80/T80_MCode.vhd:719:76  */
  assign n2656 = ir == 8'b00101100;
  /* src/T80/T80_MCode.vhd:719:76  */
  assign n2657 = n2654 | n2656;
  /* src/T80/T80_MCode.vhd:719:87  */
  assign n2659 = ir == 8'b00111100;
  /* src/T80/T80_MCode.vhd:719:87  */
  assign n2660 = n2657 | n2659;
  /* src/T80/T80_MCode.vhd:730:30  */
  assign n2661 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:731:25  */
  assign n2663 = n2661 == 31'b0000000000000000000000000000001;
  /* src/T80/T80_MCode.vhd:733:25  */
  assign n2665 = n2661 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:742:25  */
  assign n2667 = n2661 == 31'b0000000000000000000000000000011;
  /* src/T80/T80_MCode.vhd:730:25  */
  assign n2668 = {n2667, n2665, n2663};
  /* src/T80/T80_MCode.vhd:730:25  */
  always @*
    case (n2668)
      3'b100: n2670 = n1732;
      3'b010: n2670 = 3'b100;
      3'b001: n2670 = n1732;
      default: n2670 = n1732;
    endcase
  /* src/T80/T80_MCode.vhd:730:25  */
  always @*
    case (n2668)
      3'b100: n2673 = 1'b0;
      3'b010: n2673 = 1'b1;
      3'b001: n2673 = 1'b0;
      default: n2673 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:730:25  */
  always @*
    case (n2668)
      3'b100: n2675 = 3'b000;
      3'b010: n2675 = n1725;
      3'b001: n2675 = 3'b000;
      default: n2675 = 3'b000;
    endcase
  /* src/T80/T80_MCode.vhd:730:25  */
  always @*
    case (n2668)
      3'b100: n2678 = 4'b0000;
      3'b010: n2678 = 4'b1010;
      3'b001: n2678 = 4'b0000;
      default: n2678 = 4'b0000;
    endcase
  /* src/T80/T80_MCode.vhd:730:25  */
  always @*
    case (n2668)
      3'b100: n2680 = n1735;
      3'b010: n2680 = 4'b0000;
      3'b001: n2680 = n1735;
      default: n2680 = n1735;
    endcase
  /* src/T80/T80_MCode.vhd:730:25  */
  always @*
    case (n2668)
      3'b100: n2683 = 1'b0;
      3'b010: n2683 = 1'b1;
      3'b001: n2683 = 1'b0;
      default: n2683 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:730:25  */
  always @*
    case (n2668)
      3'b100: n2686 = 1'b0;
      3'b010: n2686 = 1'b1;
      3'b001: n2686 = 1'b0;
      default: n2686 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:730:25  */
  always @*
    case (n2668)
      3'b100: n2690 = 3'b111;
      3'b010: n2690 = 3'b010;
      3'b001: n2690 = 3'b010;
      default: n2690 = 3'b111;
    endcase
  /* src/T80/T80_MCode.vhd:730:25  */
  always @*
    case (n2668)
      3'b100: n2693 = 1'b1;
      3'b010: n2693 = 1'b0;
      3'b001: n2693 = 1'b0;
      default: n2693 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:727:17  */
  assign n2695 = ir == 8'b00110100;
  /* src/T80/T80_MCode.vhd:746:17  */
  assign n2697 = ir == 8'b00000101;
  /* src/T80/T80_MCode.vhd:746:32  */
  assign n2699 = ir == 8'b00001101;
  /* src/T80/T80_MCode.vhd:746:32  */
  assign n2700 = n2697 | n2699;
  /* src/T80/T80_MCode.vhd:746:43  */
  assign n2702 = ir == 8'b00010101;
  /* src/T80/T80_MCode.vhd:746:43  */
  assign n2703 = n2700 | n2702;
  /* src/T80/T80_MCode.vhd:746:54  */
  assign n2705 = ir == 8'b00011101;
  /* src/T80/T80_MCode.vhd:746:54  */
  assign n2706 = n2703 | n2705;
  /* src/T80/T80_MCode.vhd:746:65  */
  assign n2708 = ir == 8'b00100101;
  /* src/T80/T80_MCode.vhd:746:65  */
  assign n2709 = n2706 | n2708;
  /* src/T80/T80_MCode.vhd:746:76  */
  assign n2711 = ir == 8'b00101101;
  /* src/T80/T80_MCode.vhd:746:76  */
  assign n2712 = n2709 | n2711;
  /* src/T80/T80_MCode.vhd:746:87  */
  assign n2714 = ir == 8'b00111101;
  /* src/T80/T80_MCode.vhd:746:87  */
  assign n2715 = n2712 | n2714;
  /* src/T80/T80_MCode.vhd:757:30  */
  assign n2716 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:758:25  */
  assign n2718 = n2716 == 31'b0000000000000000000000000000001;
  /* src/T80/T80_MCode.vhd:760:25  */
  assign n2720 = n2716 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:769:25  */
  assign n2722 = n2716 == 31'b0000000000000000000000000000011;
  /* src/T80/T80_MCode.vhd:757:25  */
  assign n2723 = {n2722, n2720, n2718};
  /* src/T80/T80_MCode.vhd:757:25  */
  always @*
    case (n2723)
      3'b100: n2725 = n1732;
      3'b010: n2725 = 3'b100;
      3'b001: n2725 = n1732;
      default: n2725 = n1732;
    endcase
  /* src/T80/T80_MCode.vhd:757:25  */
  always @*
    case (n2723)
      3'b100: n2728 = 1'b0;
      3'b010: n2728 = 1'b1;
      3'b001: n2728 = 1'b0;
      default: n2728 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:757:25  */
  always @*
    case (n2723)
      3'b100: n2730 = 3'b000;
      3'b010: n2730 = n1725;
      3'b001: n2730 = 3'b000;
      default: n2730 = 3'b000;
    endcase
  /* src/T80/T80_MCode.vhd:757:25  */
  always @*
    case (n2723)
      3'b100: n2733 = 4'b0000;
      3'b010: n2733 = 4'b1010;
      3'b001: n2733 = 4'b0000;
      default: n2733 = 4'b0000;
    endcase
  /* src/T80/T80_MCode.vhd:757:25  */
  always @*
    case (n2723)
      3'b100: n2735 = n1735;
      3'b010: n2735 = 4'b0010;
      3'b001: n2735 = n1735;
      default: n2735 = n1735;
    endcase
  /* src/T80/T80_MCode.vhd:757:25  */
  always @*
    case (n2723)
      3'b100: n2738 = 1'b0;
      3'b010: n2738 = 1'b1;
      3'b001: n2738 = 1'b0;
      default: n2738 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:757:25  */
  always @*
    case (n2723)
      3'b100: n2741 = 1'b0;
      3'b010: n2741 = 1'b1;
      3'b001: n2741 = 1'b0;
      default: n2741 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:757:25  */
  always @*
    case (n2723)
      3'b100: n2745 = 3'b111;
      3'b010: n2745 = 3'b010;
      3'b001: n2745 = 3'b010;
      default: n2745 = 3'b111;
    endcase
  /* src/T80/T80_MCode.vhd:757:25  */
  always @*
    case (n2723)
      3'b100: n2748 = 1'b1;
      3'b010: n2748 = 1'b0;
      3'b001: n2748 = 1'b0;
      default: n2748 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:754:17  */
  assign n2750 = ir == 8'b00110101;
  /* src/T80/T80_MCode.vhd:775:17  */
  assign n2753 = ir == 8'b00100111;
  /* src/T80/T80_MCode.vhd:781:17  */
  assign n2755 = ir == 8'b00101111;
  /* src/T80/T80_MCode.vhd:784:17  */
  assign n2757 = ir == 8'b00111111;
  /* src/T80/T80_MCode.vhd:787:17  */
  assign n2759 = ir == 8'b00110111;
  /* src/T80/T80_MCode.vhd:794:38  */
  assign n2760 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:795:33  */
  assign n2762 = n2760 == 31'b0000000000000000000000000000001;
  /* src/T80/T80_MCode.vhd:800:33  */
  assign n2764 = n2760 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:806:33  */
  assign n2766 = n2760 == 31'b0000000000000000000000000000011;
  /* src/T80/T80_MCode.vhd:794:33  */
  assign n2767 = {n2766, n2764, n2762};
  /* src/T80/T80_MCode.vhd:794:33  */
  always @*
    case (n2767)
      3'b100: n2771 = 3'b100;
      3'b010: n2771 = 3'b100;
      3'b001: n2771 = 3'b101;
      default: n2771 = n1732;
    endcase
  /* src/T80/T80_MCode.vhd:794:33  */
  always @*
    case (n2767)
      3'b100: n2775 = 4'b0000;
      3'b010: n2775 = 4'b1111;
      3'b001: n2775 = 4'b1111;
      default: n2775 = 4'b0000;
    endcase
  /* src/T80/T80_MCode.vhd:794:33  */
  always @*
    case (n2767)
      3'b100: n2779 = 4'b0000;
      3'b010: n2779 = 4'b1100;
      3'b001: n2779 = 4'b1101;
      default: n2779 = 4'b0000;
    endcase
  /* src/T80/T80_MCode.vhd:794:33  */
  always @*
    case (n2767)
      3'b100: n2783 = 3'b111;
      3'b010: n2783 = 3'b101;
      3'b001: n2783 = 3'b101;
      default: n2783 = 3'b111;
    endcase
  /* src/T80/T80_MCode.vhd:794:33  */
  always @*
    case (n2767)
      3'b100: n2787 = 1'b1;
      3'b010: n2787 = 1'b1;
      3'b001: n2787 = 1'b0;
      default: n2787 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:814:38  */
  assign n2788 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:815:33  */
  assign n2790 = n2788 == 31'b0000000000000000000000000000001;
  /* src/T80/T80_MCode.vhd:821:33  */
  assign n2792 = n2788 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:827:33  */
  assign n2794 = n2788 == 31'b0000000000000000000000000000011;
  /* src/T80/T80_MCode.vhd:830:33  */
  assign n2796 = n2788 == 31'b0000000000000000000000000000100;
  /* src/T80/T80_MCode.vhd:833:33  */
  assign n2798 = n2788 == 31'b0000000000000000000000000000101;
  /* src/T80/T80_MCode.vhd:814:33  */
  assign n2799 = {n2798, n2796, n2794, n2792, n2790};
  /* src/T80/T80_MCode.vhd:814:33  */
  always @*
    case (n2799)
      5'b10000: n2803 = n1732;
      5'b01000: n2803 = n1732;
      5'b00100: n2803 = 3'b100;
      5'b00010: n2803 = 3'b100;
      5'b00001: n2803 = 3'b101;
      default: n2803 = n1732;
    endcase
  /* src/T80/T80_MCode.vhd:814:33  */
  always @*
    case (n2799)
      5'b10000: n2806 = 1'b0;
      5'b01000: n2806 = 1'b1;
      5'b00100: n2806 = 1'b0;
      5'b00010: n2806 = 1'b0;
      5'b00001: n2806 = 1'b0;
      default: n2806 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:814:33  */
  always @*
    case (n2799)
      5'b10000: n2810 = 4'b0000;
      5'b01000: n2810 = 4'b0000;
      5'b00100: n2810 = 4'b0000;
      5'b00010: n2810 = 4'b1111;
      5'b00001: n2810 = 4'b1111;
      default: n2810 = 4'b0000;
    endcase
  /* src/T80/T80_MCode.vhd:814:33  */
  always @*
    case (n2799)
      5'b10000: n2814 = 4'b0000;
      5'b01000: n2814 = 4'b0000;
      5'b00100: n2814 = 4'b0000;
      5'b00010: n2814 = 4'b1100;
      5'b00001: n2814 = 4'b1101;
      default: n2814 = 4'b0000;
    endcase
  /* src/T80/T80_MCode.vhd:814:33  */
  always @*
    case (n2799)
      5'b10000: n2818 = 3'b111;
      5'b01000: n2818 = 3'b111;
      5'b00100: n2818 = 3'b111;
      5'b00010: n2818 = 3'b101;
      5'b00001: n2818 = 3'b101;
      default: n2818 = 3'b111;
    endcase
  /* src/T80/T80_MCode.vhd:814:33  */
  always @*
    case (n2799)
      5'b10000: n2821 = 1'b1;
      5'b01000: n2821 = 1'b0;
      5'b00100: n2821 = 1'b0;
      5'b00010: n2821 = 1'b0;
      5'b00001: n2821 = 1'b0;
      default: n2821 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:814:33  */
  always @*
    case (n2799)
      5'b10000: n2825 = 1'b0;
      5'b01000: n2825 = 1'b1;
      5'b00100: n2825 = 1'b0;
      5'b00010: n2825 = 1'b0;
      5'b00001: n2825 = 1'b1;
      default: n2825 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:814:33  */
  always @*
    case (n2799)
      5'b10000: n2829 = 1'b0;
      5'b01000: n2829 = 1'b0;
      5'b00100: n2829 = 1'b1;
      5'b00010: n2829 = 1'b1;
      5'b00001: n2829 = 1'b0;
      default: n2829 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:811:25  */
  assign n2832 = intcycle ? 3'b101 : 3'b001;
  /* src/T80/T80_MCode.vhd:811:25  */
  assign n2833 = intcycle ? n2803 : n1732;
  /* src/T80/T80_MCode.vhd:811:25  */
  assign n2835 = intcycle ? n2806 : 1'b0;
  /* src/T80/T80_MCode.vhd:811:25  */
  assign n2837 = intcycle ? n2810 : 4'b0000;
  /* src/T80/T80_MCode.vhd:811:25  */
  assign n2839 = intcycle ? n2814 : 4'b0000;
  /* src/T80/T80_MCode.vhd:811:25  */
  assign n2841 = intcycle ? n2818 : 3'b111;
  /* src/T80/T80_MCode.vhd:811:25  */
  assign n2843 = intcycle ? n2821 : 1'b0;
  /* src/T80/T80_MCode.vhd:811:25  */
  assign n2845 = intcycle ? n2825 : 1'b0;
  /* src/T80/T80_MCode.vhd:811:25  */
  assign n2847 = intcycle ? n2829 : 1'b0;
  /* src/T80/T80_MCode.vhd:791:25  */
  assign n2849 = nmicycle ? 3'b011 : n2832;
  /* src/T80/T80_MCode.vhd:791:25  */
  assign n2850 = nmicycle ? n2771 : n2833;
  /* src/T80/T80_MCode.vhd:791:25  */
  assign n2852 = nmicycle ? 1'b0 : n2835;
  /* src/T80/T80_MCode.vhd:791:25  */
  assign n2853 = nmicycle ? n2775 : n2837;
  /* src/T80/T80_MCode.vhd:791:25  */
  assign n2854 = nmicycle ? n2779 : n2839;
  /* src/T80/T80_MCode.vhd:791:25  */
  assign n2855 = nmicycle ? n2783 : n2841;
  /* src/T80/T80_MCode.vhd:791:25  */
  assign n2857 = nmicycle ? 1'b0 : n2843;
  /* src/T80/T80_MCode.vhd:791:25  */
  assign n2859 = nmicycle ? 1'b0 : n2845;
  /* src/T80/T80_MCode.vhd:791:25  */
  assign n2860 = nmicycle ? n2787 : n2847;
  /* src/T80/T80_MCode.vhd:790:17  */
  assign n2862 = ir == 8'b00000000;
  /* src/T80/T80_MCode.vhd:840:17  */
  assign n2864 = ir == 8'b01110110;
  /* src/T80/T80_MCode.vhd:843:17  */
  assign n2866 = ir == 8'b11110011;
  /* src/T80/T80_MCode.vhd:846:17  */
  assign n2868 = ir == 8'b11111011;
  /* src/T80/T80_MCode.vhd:854:30  */
  assign n2869 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:861:60  */
  assign n2871 = ir[5:4]; // extract
  /* src/T80/T80_MCode.vhd:861:38  */
  assign n2872 = {29'b0, n2871};  //  uext
  /* src/T80/T80_MCode.vhd:863:70  */
  assign n2873 = ir[5:4]; // extract
  /* src/T80/T80_MCode.vhd:862:33  */
  assign n2876 = n2872 == 31'b0000000000000000000000000000000;
  /* src/T80/T80_MCode.vhd:862:39  */
  assign n2878 = n2872 == 31'b0000000000000000000000000000001;
  /* src/T80/T80_MCode.vhd:862:39  */
  assign n2879 = n2876 | n2878;
  /* src/T80/T80_MCode.vhd:862:41  */
  assign n2881 = n2872 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:862:41  */
  assign n2882 = n2879 | n2881;
  /* src/T80/T80_MCode.vhd:861:33  */
  always @*
    case (n2882)
      1'b1: n2884 = 1'b1;
      default: n2884 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:861:33  */
  always @*
    case (n2882)
      1'b1: n2886 = n2873;
      default: n2886 = 2'b00;
    endcase
  /* src/T80/T80_MCode.vhd:861:33  */
  always @*
    case (n2882)
      1'b1: n2889 = 1'b0;
      default: n2889 = 1'b1;
    endcase
  /* src/T80/T80_MCode.vhd:855:25  */
  assign n2891 = n2869 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:876:60  */
  assign n2893 = ir[5:4]; // extract
  /* src/T80/T80_MCode.vhd:876:38  */
  assign n2894 = {29'b0, n2893};  //  uext
  /* src/T80/T80_MCode.vhd:878:70  */
  assign n2895 = ir[5:4]; // extract
  /* src/T80/T80_MCode.vhd:877:33  */
  assign n2897 = n2894 == 31'b0000000000000000000000000000000;
  /* src/T80/T80_MCode.vhd:877:39  */
  assign n2899 = n2894 == 31'b0000000000000000000000000000001;
  /* src/T80/T80_MCode.vhd:877:39  */
  assign n2900 = n2897 | n2899;
  /* src/T80/T80_MCode.vhd:877:41  */
  assign n2902 = n2894 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:877:41  */
  assign n2903 = n2900 | n2902;
  /* src/T80/T80_MCode.vhd:876:33  */
  always @*
    case (n2903)
      1'b1: n2906 = 1'b0;
      default: n2906 = 1'b1;
    endcase
  /* src/T80/T80_MCode.vhd:876:33  */
  always @*
    case (n2903)
      1'b1: n2908 = n2895;
      default: n2908 = 2'b00;
    endcase
  /* src/T80/T80_MCode.vhd:876:33  */
  always @*
    case (n2903)
      1'b1: n2911 = 1'b0;
      default: n2911 = 1'b1;
    endcase
  /* src/T80/T80_MCode.vhd:870:25  */
  assign n2913 = n2869 == 31'b0000000000000000000000000000011;
  /* src/T80/T80_MCode.vhd:854:25  */
  assign n2914 = {n2913, n2891};
  /* src/T80/T80_MCode.vhd:854:25  */
  always @*
    case (n2914)
      2'b10: n2916 = n1732;
      2'b01: n2916 = 3'b100;
      default: n2916 = n1732;
    endcase
  /* src/T80/T80_MCode.vhd:854:25  */
  always @*
    case (n2914)
      2'b10: n2920 = 1'b1;
      2'b01: n2920 = 1'b1;
      default: n2920 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:854:25  */
  always @*
    case (n2914)
      2'b10: n2922 = 3'b100;
      2'b01: n2922 = 3'b101;
      default: n2922 = 3'b000;
    endcase
  /* src/T80/T80_MCode.vhd:854:25  */
  always @*
    case (n2914)
      2'b10: n2924 = n2906;
      2'b01: n2924 = n2884;
      default: n2924 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:854:25  */
  always @*
    case (n2914)
      2'b10: n2926 = n2908;
      2'b01: n2926 = n2886;
      default: n2926 = 2'b00;
    endcase
  /* src/T80/T80_MCode.vhd:854:25  */
  always @*
    case (n2914)
      2'b10: n2928 = n2911;
      2'b01: n2928 = n2889;
      default: n2928 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:854:25  */
  always @*
    case (n2914)
      2'b10: n2931 = 4'b0001;
      2'b01: n2931 = 4'b0000;
      default: n2931 = n1735;
    endcase
  /* src/T80/T80_MCode.vhd:854:25  */
  always @*
    case (n2914)
      2'b10: n2935 = 1'b1;
      2'b01: n2935 = 1'b1;
      default: n2935 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:854:25  */
  always @*
    case (n2914)
      2'b10: n2939 = 1'b1;
      2'b01: n2939 = 1'b1;
      default: n2939 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:854:25  */
  always @*
    case (n2914)
      2'b10: n2943 = 1'b1;
      2'b01: n2943 = 1'b1;
      default: n2943 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:851:17  */
  assign n2945 = ir == 8'b00001001;
  /* src/T80/T80_MCode.vhd:851:32  */
  assign n2947 = ir == 8'b00011001;
  /* src/T80/T80_MCode.vhd:851:32  */
  assign n2948 = n2945 | n2947;
  /* src/T80/T80_MCode.vhd:851:43  */
  assign n2950 = ir == 8'b00101001;
  /* src/T80/T80_MCode.vhd:851:43  */
  assign n2951 = n2948 | n2950;
  /* src/T80/T80_MCode.vhd:851:54  */
  assign n2953 = ir == 8'b00111001;
  /* src/T80/T80_MCode.vhd:851:54  */
  assign n2954 = n2951 | n2953;
  /* src/T80/T80_MCode.vhd:885:17  */
  assign n2957 = ir == 8'b00000011;
  /* src/T80/T80_MCode.vhd:885:32  */
  assign n2959 = ir == 8'b00010011;
  /* src/T80/T80_MCode.vhd:885:32  */
  assign n2960 = n2957 | n2959;
  /* src/T80/T80_MCode.vhd:885:43  */
  assign n2962 = ir == 8'b00100011;
  /* src/T80/T80_MCode.vhd:885:43  */
  assign n2963 = n2960 | n2962;
  /* src/T80/T80_MCode.vhd:885:54  */
  assign n2965 = ir == 8'b00110011;
  /* src/T80/T80_MCode.vhd:885:54  */
  assign n2966 = n2963 | n2965;
  /* src/T80/T80_MCode.vhd:890:17  */
  assign n2969 = ir == 8'b00001011;
  /* src/T80/T80_MCode.vhd:890:32  */
  assign n2971 = ir == 8'b00011011;
  /* src/T80/T80_MCode.vhd:890:32  */
  assign n2972 = n2969 | n2971;
  /* src/T80/T80_MCode.vhd:890:43  */
  assign n2974 = ir == 8'b00101011;
  /* src/T80/T80_MCode.vhd:890:43  */
  assign n2975 = n2972 | n2974;
  /* src/T80/T80_MCode.vhd:890:54  */
  assign n2977 = ir == 8'b00111011;
  /* src/T80/T80_MCode.vhd:890:54  */
  assign n2978 = n2975 | n2977;
  /* src/T80/T80_MCode.vhd:897:17  */
  assign n2981 = ir == 8'b00000111;
  /* src/T80/T80_MCode.vhd:899:25  */
  assign n2983 = ir == 8'b00010111;
  /* src/T80/T80_MCode.vhd:899:25  */
  assign n2984 = n2981 | n2983;
  /* src/T80/T80_MCode.vhd:901:25  */
  assign n2986 = ir == 8'b00001111;
  /* src/T80/T80_MCode.vhd:901:25  */
  assign n2987 = n2984 | n2986;
  /* src/T80/T80_MCode.vhd:903:25  */
  assign n2989 = ir == 8'b00011111;
  /* src/T80/T80_MCode.vhd:903:25  */
  assign n2990 = n2987 | n2989;
  /* src/T80/T80_MCode.vhd:914:30  */
  assign n2991 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:915:25  */
  assign n2993 = n2991 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:918:25  */
  assign n2995 = n2991 == 31'b0000000000000000000000000000011;
  /* src/T80/T80_MCode.vhd:914:25  */
  assign n2996 = {n2995, n2993};
  /* src/T80/T80_MCode.vhd:914:25  */
  always @*
    case (n2996)
      2'b10: n3000 = 1'b1;
      2'b01: n3000 = 1'b1;
      default: n3000 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:914:25  */
  always @*
    case (n2996)
      2'b10: n3003 = 1'b1;
      2'b01: n3003 = 1'b0;
      default: n3003 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:914:25  */
  always @*
    case (n2996)
      2'b10: n3006 = 1'b0;
      2'b01: n3006 = 1'b1;
      default: n3006 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:911:17  */
  assign n3008 = ir == 8'b11000011;
  /* src/T80/T80_MCode.vhd:982:38  */
  assign n3010 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:983:33  */
  assign n3012 = n3010 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:988:73  */
  assign n3014 = ir[5:3]; // extract
  /* src/T80/T80_MCode.vhd:177:47  */
  assign n3019 = f[6]; // extract
  /* src/T80/T80_MCode.vhd:177:51  */
  assign n3020 = ~n3019;
  /* src/T80/T80_MCode.vhd:177:25  */
  assign n3022 = n3014 == 3'b000;
  /* src/T80/T80_MCode.vhd:178:47  */
  assign n3023 = f[6]; // extract
  /* src/T80/T80_MCode.vhd:178:25  */
  assign n3025 = n3014 == 3'b001;
  /* src/T80/T80_MCode.vhd:179:47  */
  assign n3026 = f[0]; // extract
  /* src/T80/T80_MCode.vhd:179:51  */
  assign n3027 = ~n3026;
  /* src/T80/T80_MCode.vhd:179:25  */
  assign n3029 = n3014 == 3'b010;
  /* src/T80/T80_MCode.vhd:180:47  */
  assign n3030 = f[0]; // extract
  /* src/T80/T80_MCode.vhd:180:25  */
  assign n3032 = n3014 == 3'b011;
  /* src/T80/T80_MCode.vhd:181:47  */
  assign n3033 = f[2]; // extract
  /* src/T80/T80_MCode.vhd:181:51  */
  assign n3034 = ~n3033;
  /* src/T80/T80_MCode.vhd:181:25  */
  assign n3036 = n3014 == 3'b100;
  /* src/T80/T80_MCode.vhd:182:47  */
  assign n3037 = f[2]; // extract
  /* src/T80/T80_MCode.vhd:182:25  */
  assign n3039 = n3014 == 3'b101;
  /* src/T80/T80_MCode.vhd:183:47  */
  assign n3040 = f[7]; // extract
  /* src/T80/T80_MCode.vhd:183:51  */
  assign n3041 = ~n3040;
  /* src/T80/T80_MCode.vhd:183:25  */
  assign n3043 = n3014 == 3'b110;
  /* src/T80/T80_MCode.vhd:184:47  */
  assign n3044 = f[7]; // extract
  /* src/T80/T80_MCode.vhd:184:25  */
  assign n3046 = n3014 == 3'b111;
  /* src/T80/T80_MCode.vhd:176:25  */
  assign n3047 = {n3046, n3043, n3039, n3036, n3032, n3029, n3025, n3022};
  /* src/T80/T80_MCode.vhd:176:25  */
  always @*
    case (n3047)
      8'b10000000: n3049 = n3044;
      8'b01000000: n3049 = n3041;
      8'b00100000: n3049 = n3037;
      8'b00010000: n3049 = n3034;
      8'b00001000: n3049 = n3030;
      8'b00000100: n3049 = n3027;
      8'b00000010: n3049 = n3023;
      8'b00000001: n3049 = n3020;
      default: n3049 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:988:41  */
  assign n3052 = n3049 ? 1'b1 : 1'b0;
  /* src/T80/T80_MCode.vhd:986:33  */
  assign n3054 = n3010 == 31'b0000000000000000000000000000011;
  /* src/T80/T80_MCode.vhd:982:33  */
  assign n3055 = {n3054, n3012};
  /* src/T80/T80_MCode.vhd:982:33  */
  always @*
    case (n3055)
      2'b10: n3059 = 1'b1;
      2'b01: n3059 = 1'b1;
      default: n3059 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:982:33  */
  always @*
    case (n3055)
      2'b10: n3061 = n3052;
      2'b01: n3061 = 1'b0;
      default: n3061 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:982:33  */
  always @*
    case (n3055)
      2'b10: n3064 = 1'b0;
      2'b01: n3064 = 1'b1;
      default: n3064 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:923:17  */
  assign n3066 = ir == 8'b11000010;
  /* src/T80/T80_MCode.vhd:923:32  */
  assign n3068 = ir == 8'b11001010;
  /* src/T80/T80_MCode.vhd:923:32  */
  assign n3069 = n3066 | n3068;
  /* src/T80/T80_MCode.vhd:923:43  */
  assign n3071 = ir == 8'b11010010;
  /* src/T80/T80_MCode.vhd:923:43  */
  assign n3072 = n3069 | n3071;
  /* src/T80/T80_MCode.vhd:923:54  */
  assign n3074 = ir == 8'b11011010;
  /* src/T80/T80_MCode.vhd:923:54  */
  assign n3075 = n3072 | n3074;
  /* src/T80/T80_MCode.vhd:923:65  */
  assign n3077 = ir == 8'b11100010;
  /* src/T80/T80_MCode.vhd:923:65  */
  assign n3078 = n3075 | n3077;
  /* src/T80/T80_MCode.vhd:923:76  */
  assign n3080 = ir == 8'b11101010;
  /* src/T80/T80_MCode.vhd:923:76  */
  assign n3081 = n3078 | n3080;
  /* src/T80/T80_MCode.vhd:923:87  */
  assign n3083 = ir == 8'b11110010;
  /* src/T80/T80_MCode.vhd:923:87  */
  assign n3084 = n3081 | n3083;
  /* src/T80/T80_MCode.vhd:923:98  */
  assign n3086 = ir == 8'b11111010;
  /* src/T80/T80_MCode.vhd:923:98  */
  assign n3087 = n3084 | n3086;
  /* src/T80/T80_MCode.vhd:998:38  */
  assign n3088 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:999:33  */
  assign n3090 = n3088 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:1001:33  */
  assign n3092 = n3088 == 31'b0000000000000000000000000000011;
  /* src/T80/T80_MCode.vhd:998:33  */
  assign n3093 = {n3092, n3090};
  /* src/T80/T80_MCode.vhd:998:33  */
  always @*
    case (n3093)
      2'b10: n3095 = 3'b101;
      2'b01: n3095 = n1732;
      default: n3095 = n1732;
    endcase
  /* src/T80/T80_MCode.vhd:998:33  */
  always @*
    case (n3093)
      2'b10: n3098 = 1'b0;
      2'b01: n3098 = 1'b1;
      default: n3098 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:998:33  */
  always @*
    case (n3093)
      2'b10: n3101 = 1'b1;
      2'b01: n3101 = 1'b0;
      default: n3101 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:998:33  */
  always @*
    case (n3093)
      2'b10: n3104 = 1'b1;
      2'b01: n3104 = 1'b0;
      default: n3104 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:994:17  */
  assign n3106 = ir == 8'b00011000;
  /* src/T80/T80_MCode.vhd:1012:38  */
  assign n3107 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:1015:45  */
  assign n3108 = f[0]; // extract
  /* src/T80/T80_MCode.vhd:1015:54  */
  assign n3109 = ~n3108;
  /* src/T80/T80_MCode.vhd:1015:41  */
  assign n3112 = n3109 ? 3'b010 : 3'b011;
  /* src/T80/T80_MCode.vhd:1013:33  */
  assign n3114 = n3107 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:1018:33  */
  assign n3116 = n3107 == 31'b0000000000000000000000000000011;
  /* src/T80/T80_MCode.vhd:1012:33  */
  assign n3117 = {n3116, n3114};
  /* src/T80/T80_MCode.vhd:1012:33  */
  always @*
    case (n3117)
      2'b10: n3119 = 3'b011;
      2'b01: n3119 = n3112;
      default: n3119 = 3'b011;
    endcase
  /* src/T80/T80_MCode.vhd:1012:33  */
  always @*
    case (n3117)
      2'b10: n3122 = 3'b101;
      2'b01: n3122 = n1732;
      default: n3122 = n1732;
    endcase
  /* src/T80/T80_MCode.vhd:1012:33  */
  always @*
    case (n3117)
      2'b10: n3125 = 1'b0;
      2'b01: n3125 = 1'b1;
      default: n3125 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1012:33  */
  always @*
    case (n3117)
      2'b10: n3128 = 1'b1;
      2'b01: n3128 = 1'b0;
      default: n3128 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1012:33  */
  always @*
    case (n3117)
      2'b10: n3131 = 1'b1;
      2'b01: n3131 = 1'b0;
      default: n3131 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1008:17  */
  assign n3133 = ir == 8'b00111000;
  /* src/T80/T80_MCode.vhd:1029:38  */
  assign n3134 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:1032:45  */
  assign n3135 = f[0]; // extract
  /* src/T80/T80_MCode.vhd:1032:41  */
  assign n3138 = n3135 ? 3'b010 : 3'b011;
  /* src/T80/T80_MCode.vhd:1030:33  */
  assign n3140 = n3134 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:1035:33  */
  assign n3142 = n3134 == 31'b0000000000000000000000000000011;
  /* src/T80/T80_MCode.vhd:1029:33  */
  assign n3143 = {n3142, n3140};
  /* src/T80/T80_MCode.vhd:1029:33  */
  always @*
    case (n3143)
      2'b10: n3145 = 3'b011;
      2'b01: n3145 = n3138;
      default: n3145 = 3'b011;
    endcase
  /* src/T80/T80_MCode.vhd:1029:33  */
  always @*
    case (n3143)
      2'b10: n3148 = 3'b101;
      2'b01: n3148 = n1732;
      default: n3148 = n1732;
    endcase
  /* src/T80/T80_MCode.vhd:1029:33  */
  always @*
    case (n3143)
      2'b10: n3151 = 1'b0;
      2'b01: n3151 = 1'b1;
      default: n3151 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1029:33  */
  always @*
    case (n3143)
      2'b10: n3154 = 1'b1;
      2'b01: n3154 = 1'b0;
      default: n3154 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1029:33  */
  always @*
    case (n3143)
      2'b10: n3157 = 1'b1;
      2'b01: n3157 = 1'b0;
      default: n3157 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1025:17  */
  assign n3159 = ir == 8'b00110000;
  /* src/T80/T80_MCode.vhd:1046:38  */
  assign n3160 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:1049:45  */
  assign n3161 = f[6]; // extract
  /* src/T80/T80_MCode.vhd:1049:54  */
  assign n3162 = ~n3161;
  /* src/T80/T80_MCode.vhd:1049:41  */
  assign n3165 = n3162 ? 3'b010 : 3'b011;
  /* src/T80/T80_MCode.vhd:1047:33  */
  assign n3167 = n3160 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:1052:33  */
  assign n3169 = n3160 == 31'b0000000000000000000000000000011;
  /* src/T80/T80_MCode.vhd:1046:33  */
  assign n3170 = {n3169, n3167};
  /* src/T80/T80_MCode.vhd:1046:33  */
  always @*
    case (n3170)
      2'b10: n3172 = 3'b011;
      2'b01: n3172 = n3165;
      default: n3172 = 3'b011;
    endcase
  /* src/T80/T80_MCode.vhd:1046:33  */
  always @*
    case (n3170)
      2'b10: n3175 = 3'b101;
      2'b01: n3175 = n1732;
      default: n3175 = n1732;
    endcase
  /* src/T80/T80_MCode.vhd:1046:33  */
  always @*
    case (n3170)
      2'b10: n3178 = 1'b0;
      2'b01: n3178 = 1'b1;
      default: n3178 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1046:33  */
  always @*
    case (n3170)
      2'b10: n3181 = 1'b1;
      2'b01: n3181 = 1'b0;
      default: n3181 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1046:33  */
  always @*
    case (n3170)
      2'b10: n3184 = 1'b1;
      2'b01: n3184 = 1'b0;
      default: n3184 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1042:17  */
  assign n3186 = ir == 8'b00101000;
  /* src/T80/T80_MCode.vhd:1063:38  */
  assign n3187 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:1066:45  */
  assign n3188 = f[6]; // extract
  /* src/T80/T80_MCode.vhd:1066:41  */
  assign n3191 = n3188 ? 3'b010 : 3'b011;
  /* src/T80/T80_MCode.vhd:1064:33  */
  assign n3193 = n3187 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:1069:33  */
  assign n3195 = n3187 == 31'b0000000000000000000000000000011;
  /* src/T80/T80_MCode.vhd:1063:33  */
  assign n3196 = {n3195, n3193};
  /* src/T80/T80_MCode.vhd:1063:33  */
  always @*
    case (n3196)
      2'b10: n3198 = 3'b011;
      2'b01: n3198 = n3191;
      default: n3198 = 3'b011;
    endcase
  /* src/T80/T80_MCode.vhd:1063:33  */
  always @*
    case (n3196)
      2'b10: n3201 = 3'b101;
      2'b01: n3201 = n1732;
      default: n3201 = n1732;
    endcase
  /* src/T80/T80_MCode.vhd:1063:33  */
  always @*
    case (n3196)
      2'b10: n3204 = 1'b0;
      2'b01: n3204 = 1'b1;
      default: n3204 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1063:33  */
  always @*
    case (n3196)
      2'b10: n3207 = 1'b1;
      2'b01: n3207 = 1'b0;
      default: n3207 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1063:33  */
  always @*
    case (n3196)
      2'b10: n3210 = 1'b1;
      2'b01: n3210 = 1'b0;
      default: n3210 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1059:17  */
  assign n3212 = ir == 8'b00100000;
  /* src/T80/T80_MCode.vhd:1076:17  */
  assign n3214 = ir == 8'b11101001;
  /* src/T80/T80_MCode.vhd:1085:38  */
  assign n3215 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:1086:33  */
  assign n3218 = n3215 == 31'b0000000000000000000000000000001;
  /* src/T80/T80_MCode.vhd:1094:33  */
  assign n3220 = n3215 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:1097:33  */
  assign n3222 = n3215 == 31'b0000000000000000000000000000011;
  /* src/T80/T80_MCode.vhd:1085:33  */
  assign n3223 = {n3222, n3220, n3218};
  /* src/T80/T80_MCode.vhd:1085:33  */
  always @*
    case (n3223)
      3'b100: n3226 = 3'b101;
      3'b010: n3226 = n1732;
      3'b001: n3226 = 3'b101;
      default: n3226 = n1732;
    endcase
  /* src/T80/T80_MCode.vhd:1085:33  */
  always @*
    case (n3223)
      3'b100: n3229 = 1'b0;
      3'b010: n3229 = 1'b1;
      3'b001: n3229 = 1'b0;
      default: n3229 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1085:33  */
  always @*
    case (n3223)
      3'b100: n3232 = 1'b0;
      3'b010: n3232 = 1'b0;
      3'b001: n3232 = 1'b1;
      default: n3232 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1085:33  */
  always @*
    case (n3223)
      3'b100: n3234 = 3'b000;
      3'b010: n3234 = 3'b000;
      3'b001: n3234 = 3'b000;
      default: n3234 = 3'b000;
    endcase
  /* src/T80/T80_MCode.vhd:1085:33  */
  always @*
    case (n3223)
      3'b100: n3237 = 4'b0000;
      3'b010: n3237 = 4'b0000;
      3'b001: n3237 = 4'b1010;
      default: n3237 = 4'b0000;
    endcase
  /* src/T80/T80_MCode.vhd:1085:33  */
  always @*
    case (n3223)
      3'b100: n3239 = n1735;
      3'b010: n3239 = n1735;
      3'b001: n3239 = 4'b0010;
      default: n3239 = n1735;
    endcase
  /* src/T80/T80_MCode.vhd:1085:33  */
  always @*
    case (n3223)
      3'b100: n3242 = 1'b0;
      3'b010: n3242 = 1'b0;
      3'b001: n3242 = 1'b1;
      default: n3242 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1085:33  */
  always @*
    case (n3223)
      3'b100: n3245 = 1'b1;
      3'b010: n3245 = 1'b0;
      3'b001: n3245 = 1'b0;
      default: n3245 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1085:33  */
  always @*
    case (n3223)
      3'b100: n3249 = 1'b0;
      3'b010: n3249 = 1'b1;
      3'b001: n3249 = 1'b1;
      default: n3249 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1085:33  */
  always @*
    case (n3223)
      3'b100: n3252 = 1'b1;
      3'b010: n3252 = 1'b0;
      3'b001: n3252 = 1'b0;
      default: n3252 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1079:17  */
  assign n3254 = ir == 8'b00010000;
  /* src/T80/T80_MCode.vhd:1109:30  */
  assign n3255 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:1110:25  */
  assign n3257 = n3255 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:1113:25  */
  assign n3259 = n3255 == 31'b0000000000000000000000000000011;
  /* src/T80/T80_MCode.vhd:1120:25  */
  assign n3261 = n3255 == 31'b0000000000000000000000000000100;
  /* src/T80/T80_MCode.vhd:1125:25  */
  assign n3263 = n3255 == 31'b0000000000000000000000000000101;
  /* src/T80/T80_MCode.vhd:1109:25  */
  assign n3264 = {n3263, n3261, n3259, n3257};
  /* src/T80/T80_MCode.vhd:1109:25  */
  always @*
    case (n3264)
      4'b1000: n3266 = n1732;
      4'b0100: n3266 = n1732;
      4'b0010: n3266 = 3'b100;
      4'b0001: n3266 = n1732;
      default: n3266 = n1732;
    endcase
  /* src/T80/T80_MCode.vhd:1109:25  */
  always @*
    case (n3264)
      4'b1000: n3270 = 1'b0;
      4'b0100: n3270 = 1'b0;
      4'b0010: n3270 = 1'b1;
      4'b0001: n3270 = 1'b1;
      default: n3270 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1109:25  */
  always @*
    case (n3264)
      4'b1000: n3274 = 4'b0000;
      4'b0100: n3274 = 4'b1111;
      4'b0010: n3274 = 4'b1111;
      4'b0001: n3274 = 4'b0000;
      default: n3274 = 4'b0000;
    endcase
  /* src/T80/T80_MCode.vhd:1109:25  */
  always @*
    case (n3264)
      4'b1000: n3278 = 4'b0000;
      4'b0100: n3278 = 4'b1100;
      4'b0010: n3278 = 4'b1101;
      4'b0001: n3278 = 4'b0000;
      default: n3278 = 4'b0000;
    endcase
  /* src/T80/T80_MCode.vhd:1109:25  */
  always @*
    case (n3264)
      4'b1000: n3282 = 3'b111;
      4'b0100: n3282 = 3'b101;
      4'b0010: n3282 = 3'b101;
      4'b0001: n3282 = 3'b111;
      default: n3282 = 3'b111;
    endcase
  /* src/T80/T80_MCode.vhd:1109:25  */
  always @*
    case (n3264)
      4'b1000: n3285 = 1'b1;
      4'b0100: n3285 = 1'b0;
      4'b0010: n3285 = 1'b0;
      4'b0001: n3285 = 1'b0;
      default: n3285 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1109:25  */
  always @*
    case (n3264)
      4'b1000: n3288 = 1'b0;
      4'b0100: n3288 = 1'b0;
      4'b0010: n3288 = 1'b0;
      4'b0001: n3288 = 1'b1;
      default: n3288 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1109:25  */
  always @*
    case (n3264)
      4'b1000: n3291 = 1'b0;
      4'b0100: n3291 = 1'b0;
      4'b0010: n3291 = 1'b1;
      4'b0001: n3291 = 1'b0;
      default: n3291 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1109:25  */
  always @*
    case (n3264)
      4'b1000: n3295 = 1'b1;
      4'b0100: n3295 = 1'b1;
      4'b0010: n3295 = 1'b0;
      4'b0001: n3295 = 1'b0;
      default: n3295 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1106:17  */
  assign n3297 = ir == 8'b11001101;
  /* src/T80/T80_MCode.vhd:1134:38  */
  assign n3300 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:1135:33  */
  assign n3302 = n3300 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:1141:73  */
  assign n3304 = ir[5:3]; // extract
  /* src/T80/T80_MCode.vhd:177:47  */
  assign n3309 = f[6]; // extract
  /* src/T80/T80_MCode.vhd:177:51  */
  assign n3310 = ~n3309;
  /* src/T80/T80_MCode.vhd:177:25  */
  assign n3312 = n3304 == 3'b000;
  /* src/T80/T80_MCode.vhd:178:47  */
  assign n3313 = f[6]; // extract
  /* src/T80/T80_MCode.vhd:178:25  */
  assign n3315 = n3304 == 3'b001;
  /* src/T80/T80_MCode.vhd:179:47  */
  assign n3316 = f[0]; // extract
  /* src/T80/T80_MCode.vhd:179:51  */
  assign n3317 = ~n3316;
  /* src/T80/T80_MCode.vhd:179:25  */
  assign n3319 = n3304 == 3'b010;
  /* src/T80/T80_MCode.vhd:180:47  */
  assign n3320 = f[0]; // extract
  /* src/T80/T80_MCode.vhd:180:25  */
  assign n3322 = n3304 == 3'b011;
  /* src/T80/T80_MCode.vhd:181:47  */
  assign n3323 = f[2]; // extract
  /* src/T80/T80_MCode.vhd:181:51  */
  assign n3324 = ~n3323;
  /* src/T80/T80_MCode.vhd:181:25  */
  assign n3326 = n3304 == 3'b100;
  /* src/T80/T80_MCode.vhd:182:47  */
  assign n3327 = f[2]; // extract
  /* src/T80/T80_MCode.vhd:182:25  */
  assign n3329 = n3304 == 3'b101;
  /* src/T80/T80_MCode.vhd:183:47  */
  assign n3330 = f[7]; // extract
  /* src/T80/T80_MCode.vhd:183:51  */
  assign n3331 = ~n3330;
  /* src/T80/T80_MCode.vhd:183:25  */
  assign n3333 = n3304 == 3'b110;
  /* src/T80/T80_MCode.vhd:184:47  */
  assign n3334 = f[7]; // extract
  /* src/T80/T80_MCode.vhd:184:25  */
  assign n3336 = n3304 == 3'b111;
  /* src/T80/T80_MCode.vhd:176:25  */
  assign n3337 = {n3336, n3333, n3329, n3326, n3322, n3319, n3315, n3312};
  /* src/T80/T80_MCode.vhd:176:25  */
  always @*
    case (n3337)
      8'b10000000: n3339 = n3334;
      8'b01000000: n3339 = n3331;
      8'b00100000: n3339 = n3327;
      8'b00010000: n3339 = n3324;
      8'b00001000: n3339 = n3320;
      8'b00000100: n3339 = n3317;
      8'b00000010: n3339 = n3313;
      8'b00000001: n3339 = n3310;
      default: n3339 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:1141:41  */
  assign n3342 = n3339 ? 3'b101 : 3'b011;
  /* src/T80/T80_MCode.vhd:1141:41  */
  assign n3344 = n3339 ? 3'b100 : n1732;
  /* src/T80/T80_MCode.vhd:1141:41  */
  assign n3347 = n3339 ? 4'b1111 : 4'b0000;
  /* src/T80/T80_MCode.vhd:1141:41  */
  assign n3350 = n3339 ? 4'b1101 : 4'b0000;
  /* src/T80/T80_MCode.vhd:1141:41  */
  assign n3353 = n3339 ? 3'b101 : 3'b111;
  /* src/T80/T80_MCode.vhd:1138:33  */
  assign n3355 = n3300 == 31'b0000000000000000000000000000011;
  /* src/T80/T80_MCode.vhd:1149:33  */
  assign n3357 = n3300 == 31'b0000000000000000000000000000100;
  /* src/T80/T80_MCode.vhd:1154:33  */
  assign n3359 = n3300 == 31'b0000000000000000000000000000101;
  /* src/T80/T80_MCode.vhd:1134:33  */
  assign n3360 = {n3359, n3357, n3355, n3302};
  /* src/T80/T80_MCode.vhd:1134:33  */
  always @*
    case (n3360)
      4'b1000: n3362 = 3'b101;
      4'b0100: n3362 = 3'b101;
      4'b0010: n3362 = n3342;
      4'b0001: n3362 = 3'b101;
      default: n3362 = 3'b101;
    endcase
  /* src/T80/T80_MCode.vhd:1134:33  */
  always @*
    case (n3360)
      4'b1000: n3364 = n1732;
      4'b0100: n3364 = n1732;
      4'b0010: n3364 = n3344;
      4'b0001: n3364 = n1732;
      default: n3364 = n1732;
    endcase
  /* src/T80/T80_MCode.vhd:1134:33  */
  always @*
    case (n3360)
      4'b1000: n3368 = 1'b0;
      4'b0100: n3368 = 1'b0;
      4'b0010: n3368 = 1'b1;
      4'b0001: n3368 = 1'b1;
      default: n3368 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1134:33  */
  always @*
    case (n3360)
      4'b1000: n3371 = 4'b0000;
      4'b0100: n3371 = 4'b1111;
      4'b0010: n3371 = n3347;
      4'b0001: n3371 = 4'b0000;
      default: n3371 = 4'b0000;
    endcase
  /* src/T80/T80_MCode.vhd:1134:33  */
  always @*
    case (n3360)
      4'b1000: n3374 = 4'b0000;
      4'b0100: n3374 = 4'b1100;
      4'b0010: n3374 = n3350;
      4'b0001: n3374 = 4'b0000;
      default: n3374 = 4'b0000;
    endcase
  /* src/T80/T80_MCode.vhd:1134:33  */
  always @*
    case (n3360)
      4'b1000: n3377 = 3'b111;
      4'b0100: n3377 = 3'b101;
      4'b0010: n3377 = n3353;
      4'b0001: n3377 = 3'b111;
      default: n3377 = 3'b111;
    endcase
  /* src/T80/T80_MCode.vhd:1134:33  */
  always @*
    case (n3360)
      4'b1000: n3380 = 1'b1;
      4'b0100: n3380 = 1'b0;
      4'b0010: n3380 = 1'b0;
      4'b0001: n3380 = 1'b0;
      default: n3380 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1134:33  */
  always @*
    case (n3360)
      4'b1000: n3383 = 1'b0;
      4'b0100: n3383 = 1'b0;
      4'b0010: n3383 = 1'b0;
      4'b0001: n3383 = 1'b1;
      default: n3383 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1134:33  */
  always @*
    case (n3360)
      4'b1000: n3386 = 1'b0;
      4'b0100: n3386 = 1'b0;
      4'b0010: n3386 = 1'b1;
      4'b0001: n3386 = 1'b0;
      default: n3386 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1134:33  */
  always @*
    case (n3360)
      4'b1000: n3390 = 1'b1;
      4'b0100: n3390 = 1'b1;
      4'b0010: n3390 = 1'b0;
      4'b0001: n3390 = 1'b0;
      default: n3390 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1130:17  */
  assign n3392 = ir == 8'b11000100;
  /* src/T80/T80_MCode.vhd:1130:32  */
  assign n3394 = ir == 8'b11001100;
  /* src/T80/T80_MCode.vhd:1130:32  */
  assign n3395 = n3392 | n3394;
  /* src/T80/T80_MCode.vhd:1130:43  */
  assign n3397 = ir == 8'b11010100;
  /* src/T80/T80_MCode.vhd:1130:43  */
  assign n3398 = n3395 | n3397;
  /* src/T80/T80_MCode.vhd:1130:54  */
  assign n3400 = ir == 8'b11011100;
  /* src/T80/T80_MCode.vhd:1130:54  */
  assign n3401 = n3398 | n3400;
  /* src/T80/T80_MCode.vhd:1130:65  */
  assign n3403 = ir == 8'b11100100;
  /* src/T80/T80_MCode.vhd:1130:65  */
  assign n3404 = n3401 | n3403;
  /* src/T80/T80_MCode.vhd:1130:76  */
  assign n3406 = ir == 8'b11101100;
  /* src/T80/T80_MCode.vhd:1130:76  */
  assign n3407 = n3404 | n3406;
  /* src/T80/T80_MCode.vhd:1130:87  */
  assign n3409 = ir == 8'b11110100;
  /* src/T80/T80_MCode.vhd:1130:87  */
  assign n3410 = n3407 | n3409;
  /* src/T80/T80_MCode.vhd:1130:98  */
  assign n3412 = ir == 8'b11111100;
  /* src/T80/T80_MCode.vhd:1130:98  */
  assign n3413 = n3410 | n3412;
  /* src/T80/T80_MCode.vhd:1163:30  */
  assign n3414 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:1164:25  */
  assign n3416 = n3414 == 31'b0000000000000000000000000000001;
  /* src/T80/T80_MCode.vhd:1167:25  */
  assign n3418 = n3414 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:1171:25  */
  assign n3420 = n3414 == 31'b0000000000000000000000000000011;
  /* src/T80/T80_MCode.vhd:1163:25  */
  assign n3421 = {n3420, n3418, n3416};
  /* src/T80/T80_MCode.vhd:1163:25  */
  always @*
    case (n3421)
      3'b100: n3423 = n1732;
      3'b010: n3423 = n1732;
      3'b001: n3423 = 3'b101;
      default: n3423 = n1732;
    endcase
  /* src/T80/T80_MCode.vhd:1163:25  */
  always @*
    case (n3421)
      3'b100: n3427 = 4'b0111;
      3'b010: n3427 = 4'b0111;
      3'b001: n3427 = 4'b0000;
      default: n3427 = 4'b0000;
    endcase
  /* src/T80/T80_MCode.vhd:1163:25  */
  always @*
    case (n3421)
      3'b100: n3431 = 3'b111;
      3'b010: n3431 = 3'b101;
      3'b001: n3431 = 3'b101;
      default: n3431 = 3'b111;
    endcase
  /* src/T80/T80_MCode.vhd:1163:25  */
  always @*
    case (n3421)
      3'b100: n3434 = 1'b1;
      3'b010: n3434 = 1'b0;
      3'b001: n3434 = 1'b0;
      default: n3434 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1163:25  */
  always @*
    case (n3421)
      3'b100: n3437 = 1'b0;
      3'b010: n3437 = 1'b1;
      3'b001: n3437 = 1'b0;
      default: n3437 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1160:17  */
  assign n3439 = ir == 8'b11001001;
  /* src/T80/T80_MCode.vhd:1247:38  */
  assign n3441 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:1249:73  */
  assign n3443 = ir[5:3]; // extract
  /* src/T80/T80_MCode.vhd:177:47  */
  assign n3448 = f[6]; // extract
  /* src/T80/T80_MCode.vhd:177:51  */
  assign n3449 = ~n3448;
  /* src/T80/T80_MCode.vhd:177:25  */
  assign n3451 = n3443 == 3'b000;
  /* src/T80/T80_MCode.vhd:178:47  */
  assign n3452 = f[6]; // extract
  /* src/T80/T80_MCode.vhd:178:25  */
  assign n3454 = n3443 == 3'b001;
  /* src/T80/T80_MCode.vhd:179:47  */
  assign n3455 = f[0]; // extract
  /* src/T80/T80_MCode.vhd:179:51  */
  assign n3456 = ~n3455;
  /* src/T80/T80_MCode.vhd:179:25  */
  assign n3458 = n3443 == 3'b010;
  /* src/T80/T80_MCode.vhd:180:47  */
  assign n3459 = f[0]; // extract
  /* src/T80/T80_MCode.vhd:180:25  */
  assign n3461 = n3443 == 3'b011;
  /* src/T80/T80_MCode.vhd:181:47  */
  assign n3462 = f[2]; // extract
  /* src/T80/T80_MCode.vhd:181:51  */
  assign n3463 = ~n3462;
  /* src/T80/T80_MCode.vhd:181:25  */
  assign n3465 = n3443 == 3'b100;
  /* src/T80/T80_MCode.vhd:182:47  */
  assign n3466 = f[2]; // extract
  /* src/T80/T80_MCode.vhd:182:25  */
  assign n3468 = n3443 == 3'b101;
  /* src/T80/T80_MCode.vhd:183:47  */
  assign n3469 = f[7]; // extract
  /* src/T80/T80_MCode.vhd:183:51  */
  assign n3470 = ~n3469;
  /* src/T80/T80_MCode.vhd:183:25  */
  assign n3472 = n3443 == 3'b110;
  /* src/T80/T80_MCode.vhd:184:47  */
  assign n3473 = f[7]; // extract
  /* src/T80/T80_MCode.vhd:184:25  */
  assign n3475 = n3443 == 3'b111;
  /* src/T80/T80_MCode.vhd:176:25  */
  assign n3476 = {n3475, n3472, n3468, n3465, n3461, n3458, n3454, n3451};
  /* src/T80/T80_MCode.vhd:176:25  */
  always @*
    case (n3476)
      8'b10000000: n3478 = n3473;
      8'b01000000: n3478 = n3470;
      8'b00100000: n3478 = n3466;
      8'b00010000: n3478 = n3463;
      8'b00001000: n3478 = n3459;
      8'b00000100: n3478 = n3456;
      8'b00000010: n3478 = n3452;
      8'b00000001: n3478 = n3449;
      default: n3478 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:1249:41  */
  assign n3481 = n3478 ? 3'b011 : 3'b001;
  /* src/T80/T80_MCode.vhd:1249:41  */
  assign n3484 = n3478 ? 3'b101 : 3'b111;
  /* src/T80/T80_MCode.vhd:1248:33  */
  assign n3486 = n3441 == 31'b0000000000000000000000000000001;
  /* src/T80/T80_MCode.vhd:1255:33  */
  assign n3488 = n3441 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:1259:33  */
  assign n3490 = n3441 == 31'b0000000000000000000000000000011;
  /* src/T80/T80_MCode.vhd:1247:33  */
  assign n3491 = {n3490, n3488, n3486};
  /* src/T80/T80_MCode.vhd:1247:33  */
  always @*
    case (n3491)
      3'b100: n3493 = 3'b011;
      3'b010: n3493 = 3'b011;
      3'b001: n3493 = n3481;
      default: n3493 = 3'b011;
    endcase
  /* src/T80/T80_MCode.vhd:1247:33  */
  always @*
    case (n3491)
      3'b100: n3496 = n1732;
      3'b010: n3496 = n1732;
      3'b001: n3496 = 3'b101;
      default: n3496 = n1732;
    endcase
  /* src/T80/T80_MCode.vhd:1247:33  */
  always @*
    case (n3491)
      3'b100: n3500 = 4'b0111;
      3'b010: n3500 = 4'b0111;
      3'b001: n3500 = 4'b0000;
      default: n3500 = 4'b0000;
    endcase
  /* src/T80/T80_MCode.vhd:1247:33  */
  always @*
    case (n3491)
      3'b100: n3503 = 3'b111;
      3'b010: n3503 = 3'b101;
      3'b001: n3503 = n3484;
      default: n3503 = 3'b111;
    endcase
  /* src/T80/T80_MCode.vhd:1247:33  */
  always @*
    case (n3491)
      3'b100: n3506 = 1'b1;
      3'b010: n3506 = 1'b0;
      3'b001: n3506 = 1'b0;
      default: n3506 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1247:33  */
  always @*
    case (n3491)
      3'b100: n3509 = 1'b0;
      3'b010: n3509 = 1'b1;
      3'b001: n3509 = 1'b0;
      default: n3509 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1176:17  */
  assign n3511 = ir == 8'b11000000;
  /* src/T80/T80_MCode.vhd:1176:32  */
  assign n3513 = ir == 8'b11001000;
  /* src/T80/T80_MCode.vhd:1176:32  */
  assign n3514 = n3511 | n3513;
  /* src/T80/T80_MCode.vhd:1176:43  */
  assign n3516 = ir == 8'b11010000;
  /* src/T80/T80_MCode.vhd:1176:43  */
  assign n3517 = n3514 | n3516;
  /* src/T80/T80_MCode.vhd:1176:54  */
  assign n3519 = ir == 8'b11011000;
  /* src/T80/T80_MCode.vhd:1176:54  */
  assign n3520 = n3517 | n3519;
  /* src/T80/T80_MCode.vhd:1176:65  */
  assign n3522 = ir == 8'b11100000;
  /* src/T80/T80_MCode.vhd:1176:65  */
  assign n3523 = n3520 | n3522;
  /* src/T80/T80_MCode.vhd:1176:76  */
  assign n3525 = ir == 8'b11101000;
  /* src/T80/T80_MCode.vhd:1176:76  */
  assign n3526 = n3523 | n3525;
  /* src/T80/T80_MCode.vhd:1176:87  */
  assign n3528 = ir == 8'b11110000;
  /* src/T80/T80_MCode.vhd:1176:87  */
  assign n3529 = n3526 | n3528;
  /* src/T80/T80_MCode.vhd:1176:98  */
  assign n3531 = ir == 8'b11111000;
  /* src/T80/T80_MCode.vhd:1176:98  */
  assign n3532 = n3529 | n3531;
  /* src/T80/T80_MCode.vhd:1268:30  */
  assign n3533 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:1269:25  */
  assign n3535 = n3533 == 31'b0000000000000000000000000000001;
  /* src/T80/T80_MCode.vhd:1274:25  */
  assign n3537 = n3533 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:1279:25  */
  assign n3539 = n3533 == 31'b0000000000000000000000000000011;
  /* src/T80/T80_MCode.vhd:1268:25  */
  assign n3540 = {n3539, n3537, n3535};
  /* src/T80/T80_MCode.vhd:1268:25  */
  always @*
    case (n3540)
      3'b100: n3542 = n1732;
      3'b010: n3542 = n1732;
      3'b001: n3542 = 3'b101;
      default: n3542 = n1732;
    endcase
  /* src/T80/T80_MCode.vhd:1268:25  */
  always @*
    case (n3540)
      3'b100: n3546 = 4'b0000;
      3'b010: n3546 = 4'b1111;
      3'b001: n3546 = 4'b1111;
      default: n3546 = 4'b0000;
    endcase
  /* src/T80/T80_MCode.vhd:1268:25  */
  always @*
    case (n3540)
      3'b100: n3550 = 4'b0000;
      3'b010: n3550 = 4'b1100;
      3'b001: n3550 = 4'b1101;
      default: n3550 = 4'b0000;
    endcase
  /* src/T80/T80_MCode.vhd:1268:25  */
  always @*
    case (n3540)
      3'b100: n3554 = 3'b111;
      3'b010: n3554 = 3'b101;
      3'b001: n3554 = 3'b101;
      default: n3554 = 3'b111;
    endcase
  /* src/T80/T80_MCode.vhd:1268:25  */
  always @*
    case (n3540)
      3'b100: n3557 = 1'b1;
      3'b010: n3557 = 1'b0;
      3'b001: n3557 = 1'b0;
      default: n3557 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1268:25  */
  always @*
    case (n3540)
      3'b100: n3561 = 1'b1;
      3'b010: n3561 = 1'b1;
      3'b001: n3561 = 1'b0;
      default: n3561 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1265:17  */
  assign n3563 = ir == 8'b11000111;
  /* src/T80/T80_MCode.vhd:1265:32  */
  assign n3565 = ir == 8'b11001111;
  /* src/T80/T80_MCode.vhd:1265:32  */
  assign n3566 = n3563 | n3565;
  /* src/T80/T80_MCode.vhd:1265:43  */
  assign n3568 = ir == 8'b11010111;
  /* src/T80/T80_MCode.vhd:1265:43  */
  assign n3569 = n3566 | n3568;
  /* src/T80/T80_MCode.vhd:1265:54  */
  assign n3571 = ir == 8'b11011111;
  /* src/T80/T80_MCode.vhd:1265:54  */
  assign n3572 = n3569 | n3571;
  /* src/T80/T80_MCode.vhd:1265:65  */
  assign n3574 = ir == 8'b11100111;
  /* src/T80/T80_MCode.vhd:1265:65  */
  assign n3575 = n3572 | n3574;
  /* src/T80/T80_MCode.vhd:1265:76  */
  assign n3577 = ir == 8'b11101111;
  /* src/T80/T80_MCode.vhd:1265:76  */
  assign n3578 = n3575 | n3577;
  /* src/T80/T80_MCode.vhd:1265:87  */
  assign n3580 = ir == 8'b11110111;
  /* src/T80/T80_MCode.vhd:1265:87  */
  assign n3581 = n3578 | n3580;
  /* src/T80/T80_MCode.vhd:1265:98  */
  assign n3583 = ir == 8'b11111111;
  /* src/T80/T80_MCode.vhd:1265:98  */
  assign n3584 = n3581 | n3583;
  /* src/T80/T80_MCode.vhd:1290:38  */
  assign n3585 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:1291:33  */
  assign n3587 = n3585 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:1294:33  */
  assign n3589 = n3585 == 31'b0000000000000000000000000000011;
  /* src/T80/T80_MCode.vhd:1290:33  */
  assign n3590 = {n3589, n3587};
  /* src/T80/T80_MCode.vhd:1290:33  */
  always @*
    case (n3590)
      2'b10: n3593 = 1'b0;
      2'b01: n3593 = 1'b1;
      default: n3593 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1290:33  */
  always @*
    case (n3590)
      2'b10: n3596 = 1'b1;
      2'b01: n3596 = 1'b0;
      default: n3596 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1290:33  */
  always @*
    case (n3590)
      2'b10: n3599 = 3'b111;
      2'b01: n3599 = 3'b100;
      default: n3599 = 3'b111;
    endcase
  /* src/T80/T80_MCode.vhd:1290:33  */
  always @*
    case (n3590)
      2'b10: n3602 = 1'b1;
      2'b01: n3602 = 1'b0;
      default: n3602 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1286:17  */
  assign n3604 = ir == 8'b11011011;
  /* src/T80/T80_MCode.vhd:1304:38  */
  assign n3605 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:1305:33  */
  assign n3607 = n3605 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:1309:33  */
  assign n3609 = n3605 == 31'b0000000000000000000000000000011;
  /* src/T80/T80_MCode.vhd:1304:33  */
  assign n3610 = {n3609, n3607};
  /* src/T80/T80_MCode.vhd:1304:33  */
  always @*
    case (n3610)
      2'b10: n3613 = 1'b0;
      2'b01: n3613 = 1'b1;
      default: n3613 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1304:33  */
  always @*
    case (n3610)
      2'b10: n3616 = 4'b0000;
      2'b01: n3616 = 4'b0111;
      default: n3616 = 4'b0000;
    endcase
  /* src/T80/T80_MCode.vhd:1304:33  */
  always @*
    case (n3610)
      2'b10: n3619 = 3'b111;
      2'b01: n3619 = 3'b100;
      default: n3619 = 3'b111;
    endcase
  /* src/T80/T80_MCode.vhd:1304:33  */
  always @*
    case (n3610)
      2'b10: n3622 = 1'b1;
      2'b01: n3622 = 1'b0;
      default: n3622 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1304:33  */
  always @*
    case (n3610)
      2'b10: n3625 = 1'b1;
      2'b01: n3625 = 1'b0;
      default: n3625 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1300:17  */
  assign n3627 = ir == 8'b11010011;
  /* src/T80/T80_MCode.vhd:1322:17  */
  assign n3629 = ir == 8'b11001011;
  /* src/T80/T80_MCode.vhd:1327:17  */
  assign n3631 = ir == 8'b11101101;
  /* src/T80/T80_MCode.vhd:1332:17  */
  assign n3633 = ir == 8'b11011101;
  /* src/T80/T80_MCode.vhd:1332:32  */
  assign n3635 = ir == 8'b11111101;
  /* src/T80/T80_MCode.vhd:1332:32  */
  assign n3636 = n3633 | n3635;
  /* src/T80/T80_MCode.vhd:262:17  */
  assign n3637 = {n3636, n3631, n3629, n3627, n3604, n3584, n3532, n3439, n3413, n3297, n3254, n3214, n3212, n3186, n3159, n3133, n3106, n3087, n3008, n2990, n2978, n2966, n2954, n2868, n2866, n2864, n2862, n2759, n2757, n2755, n2753, n2750, n2715, n2695, n2660, n2640, n2601, n2558, n2390, n2347, n2345, n2343, n2341, n2288, n2239, n2237, n2200, n2163, n2116, n2090, n2073, n2056, n2033, n2019, n2005, n1983, n1946, n1912, n1881};
  /* src/T80/T80_MCode.vhd:262:17  */
  always @*
    case (n3637)
      59'b10000000000000000000000000000000000000000000000000000000000: n3670 = 3'b001;
      59'b01000000000000000000000000000000000000000000000000000000000: n3670 = 3'b001;
      59'b00100000000000000000000000000000000000000000000000000000000: n3670 = 3'b001;
      59'b00010000000000000000000000000000000000000000000000000000000: n3670 = 3'b011;
      59'b00001000000000000000000000000000000000000000000000000000000: n3670 = 3'b011;
      59'b00000100000000000000000000000000000000000000000000000000000: n3670 = 3'b011;
      59'b00000010000000000000000000000000000000000000000000000000000: n3670 = n3493;
      59'b00000001000000000000000000000000000000000000000000000000000: n3670 = 3'b011;
      59'b00000000100000000000000000000000000000000000000000000000000: n3670 = n3362;
      59'b00000000010000000000000000000000000000000000000000000000000: n3670 = 3'b101;
      59'b00000000001000000000000000000000000000000000000000000000000: n3670 = 3'b011;
      59'b00000000000100000000000000000000000000000000000000000000000: n3670 = 3'b001;
      59'b00000000000010000000000000000000000000000000000000000000000: n3670 = n3198;
      59'b00000000000001000000000000000000000000000000000000000000000: n3670 = n3172;
      59'b00000000000000100000000000000000000000000000000000000000000: n3670 = n3145;
      59'b00000000000000010000000000000000000000000000000000000000000: n3670 = n3119;
      59'b00000000000000001000000000000000000000000000000000000000000: n3670 = 3'b011;
      59'b00000000000000000100000000000000000000000000000000000000000: n3670 = 3'b011;
      59'b00000000000000000010000000000000000000000000000000000000000: n3670 = 3'b011;
      59'b00000000000000000001000000000000000000000000000000000000000: n3670 = 3'b001;
      59'b00000000000000000000100000000000000000000000000000000000000: n3670 = 3'b001;
      59'b00000000000000000000010000000000000000000000000000000000000: n3670 = 3'b001;
      59'b00000000000000000000001000000000000000000000000000000000000: n3670 = 3'b011;
      59'b00000000000000000000000100000000000000000000000000000000000: n3670 = 3'b001;
      59'b00000000000000000000000010000000000000000000000000000000000: n3670 = 3'b001;
      59'b00000000000000000000000001000000000000000000000000000000000: n3670 = 3'b001;
      59'b00000000000000000000000000100000000000000000000000000000000: n3670 = n2849;
      59'b00000000000000000000000000010000000000000000000000000000000: n3670 = 3'b001;
      59'b00000000000000000000000000001000000000000000000000000000000: n3670 = 3'b001;
      59'b00000000000000000000000000000100000000000000000000000000000: n3670 = 3'b001;
      59'b00000000000000000000000000000010000000000000000000000000000: n3670 = 3'b001;
      59'b00000000000000000000000000000001000000000000000000000000000: n3670 = 3'b011;
      59'b00000000000000000000000000000000100000000000000000000000000: n3670 = 3'b001;
      59'b00000000000000000000000000000000010000000000000000000000000: n3670 = 3'b011;
      59'b00000000000000000000000000000000001000000000000000000000000: n3670 = 3'b001;
      59'b00000000000000000000000000000000000100000000000000000000000: n3670 = 3'b010;
      59'b00000000000000000000000000000000000010000000000000000000000: n3670 = 3'b010;
      59'b00000000000000000000000000000000000001000000000000000000000: n3670 = 3'b001;
      59'b00000000000000000000000000000000000000100000000000000000000: n3670 = 3'b101;
      59'b00000000000000000000000000000000000000010000000000000000000: n3670 = 3'b001;
      59'b00000000000000000000000000000000000000001000000000000000000: n3670 = 3'b001;
      59'b00000000000000000000000000000000000000000100000000000000000: n3670 = 3'b001;
      59'b00000000000000000000000000000000000000000010000000000000000: n3670 = 3'b011;
      59'b00000000000000000000000000000000000000000001000000000000000: n3670 = 3'b011;
      59'b00000000000000000000000000000000000000000000100000000000000: n3670 = 3'b001;
      59'b00000000000000000000000000000000000000000000010000000000000: n3670 = 3'b101;
      59'b00000000000000000000000000000000000000000000001000000000000: n3670 = 3'b101;
      59'b00000000000000000000000000000000000000000000000100000000000: n3670 = 3'b011;
      59'b00000000000000000000000000000000000000000000000010000000000: n3670 = 3'b100;
      59'b00000000000000000000000000000000000000000000000001000000000: n3670 = 3'b010;
      59'b00000000000000000000000000000000000000000000000000100000000: n3670 = 3'b010;
      59'b00000000000000000000000000000000000000000000000000010000000: n3670 = 3'b100;
      59'b00000000000000000000000000000000000000000000000000001000000: n3670 = 3'b010;
      59'b00000000000000000000000000000000000000000000000000000100000: n3670 = 3'b010;
      59'b00000000000000000000000000000000000000000000000000000010000: n3670 = 3'b011;
      59'b00000000000000000000000000000000000000000000000000000001000: n3670 = 3'b010;
      59'b00000000000000000000000000000000000000000000000000000000100: n3670 = 3'b010;
      59'b00000000000000000000000000000000000000000000000000000000010: n3670 = 3'b010;
      59'b00000000000000000000000000000000000000000000000000000000001: n3670 = 3'b001;
      default: n3670 = 3'bX;
    endcase
  /* src/T80/T80_MCode.vhd:262:17  */
  always @*
    case (n3637)
      59'b10000000000000000000000000000000000000000000000000000000000: n3675 = n1732;
      59'b01000000000000000000000000000000000000000000000000000000000: n3675 = n1732;
      59'b00100000000000000000000000000000000000000000000000000000000: n3675 = n1732;
      59'b00010000000000000000000000000000000000000000000000000000000: n3675 = n1732;
      59'b00001000000000000000000000000000000000000000000000000000000: n3675 = n1732;
      59'b00000100000000000000000000000000000000000000000000000000000: n3675 = n3542;
      59'b00000010000000000000000000000000000000000000000000000000000: n3675 = n3496;
      59'b00000001000000000000000000000000000000000000000000000000000: n3675 = n3423;
      59'b00000000100000000000000000000000000000000000000000000000000: n3675 = n3364;
      59'b00000000010000000000000000000000000000000000000000000000000: n3675 = n3266;
      59'b00000000001000000000000000000000000000000000000000000000000: n3675 = n3226;
      59'b00000000000100000000000000000000000000000000000000000000000: n3675 = n1732;
      59'b00000000000010000000000000000000000000000000000000000000000: n3675 = n3201;
      59'b00000000000001000000000000000000000000000000000000000000000: n3675 = n3175;
      59'b00000000000000100000000000000000000000000000000000000000000: n3675 = n3148;
      59'b00000000000000010000000000000000000000000000000000000000000: n3675 = n3122;
      59'b00000000000000001000000000000000000000000000000000000000000: n3675 = n3095;
      59'b00000000000000000100000000000000000000000000000000000000000: n3675 = n1732;
      59'b00000000000000000010000000000000000000000000000000000000000: n3675 = n1732;
      59'b00000000000000000001000000000000000000000000000000000000000: n3675 = n1732;
      59'b00000000000000000000100000000000000000000000000000000000000: n3675 = 3'b110;
      59'b00000000000000000000010000000000000000000000000000000000000: n3675 = 3'b110;
      59'b00000000000000000000001000000000000000000000000000000000000: n3675 = n2916;
      59'b00000000000000000000000100000000000000000000000000000000000: n3675 = n1732;
      59'b00000000000000000000000010000000000000000000000000000000000: n3675 = n1732;
      59'b00000000000000000000000001000000000000000000000000000000000: n3675 = n1732;
      59'b00000000000000000000000000100000000000000000000000000000000: n3675 = n2850;
      59'b00000000000000000000000000010000000000000000000000000000000: n3675 = n1732;
      59'b00000000000000000000000000001000000000000000000000000000000: n3675 = n1732;
      59'b00000000000000000000000000000100000000000000000000000000000: n3675 = n1732;
      59'b00000000000000000000000000000010000000000000000000000000000: n3675 = n1732;
      59'b00000000000000000000000000000001000000000000000000000000000: n3675 = n2725;
      59'b00000000000000000000000000000000100000000000000000000000000: n3675 = n1732;
      59'b00000000000000000000000000000000010000000000000000000000000: n3675 = n2670;
      59'b00000000000000000000000000000000001000000000000000000000000: n3675 = n1732;
      59'b00000000000000000000000000000000000100000000000000000000000: n3675 = n1732;
      59'b00000000000000000000000000000000000010000000000000000000000: n3675 = n1732;
      59'b00000000000000000000000000000000000001000000000000000000000: n3675 = n1732;
      59'b00000000000000000000000000000000000000100000000000000000000: n3675 = n2362;
      59'b00000000000000000000000000000000000000010000000000000000000: n3675 = n1732;
      59'b00000000000000000000000000000000000000001000000000000000000: n3675 = n1732;
      59'b00000000000000000000000000000000000000000100000000000000000: n3675 = n1732;
      59'b00000000000000000000000000000000000000000010000000000000000: n3675 = n1732;
      59'b00000000000000000000000000000000000000000001000000000000000: n3675 = n2263;
      59'b00000000000000000000000000000000000000000000100000000000000: n3675 = 3'b110;
      59'b00000000000000000000000000000000000000000000010000000000000: n3675 = n1732;
      59'b00000000000000000000000000000000000000000000001000000000000: n3675 = n1732;
      59'b00000000000000000000000000000000000000000000000100000000000: n3675 = n1732;
      59'b00000000000000000000000000000000000000000000000010000000000: n3675 = n1732;
      59'b00000000000000000000000000000000000000000000000001000000000: n3675 = n1732;
      59'b00000000000000000000000000000000000000000000000000100000000: n3675 = n1732;
      59'b00000000000000000000000000000000000000000000000000010000000: n3675 = n1732;
      59'b00000000000000000000000000000000000000000000000000001000000: n3675 = n1732;
      59'b00000000000000000000000000000000000000000000000000000100000: n3675 = n1732;
      59'b00000000000000000000000000000000000000000000000000000010000: n3675 = n1732;
      59'b00000000000000000000000000000000000000000000000000000001000: n3675 = n1732;
      59'b00000000000000000000000000000000000000000000000000000000100: n3675 = n1732;
      59'b00000000000000000000000000000000000000000000000000000000010: n3675 = n1732;
      59'b00000000000000000000000000000000000000000000000000000000001: n3675 = n1732;
      default: n3675 = 3'bX;
    endcase
  /* src/T80/T80_MCode.vhd:262:17  */
  always @*
    case (n3637)
      59'b10000000000000000000000000000000000000000000000000000000000: n3681 = 2'b11;
      59'b01000000000000000000000000000000000000000000000000000000000: n3681 = 2'b10;
      59'b00100000000000000000000000000000000000000000000000000000000: n3681 = 2'b01;
      59'b00010000000000000000000000000000000000000000000000000000000: n3681 = 2'b00;
      59'b00001000000000000000000000000000000000000000000000000000000: n3681 = 2'b00;
      59'b00000100000000000000000000000000000000000000000000000000000: n3681 = 2'b00;
      59'b00000010000000000000000000000000000000000000000000000000000: n3681 = 2'b00;
      59'b00000001000000000000000000000000000000000000000000000000000: n3681 = 2'b00;
      59'b00000000100000000000000000000000000000000000000000000000000: n3681 = 2'b00;
      59'b00000000010000000000000000000000000000000000000000000000000: n3681 = 2'b00;
      59'b00000000001000000000000000000000000000000000000000000000000: n3681 = 2'b00;
      59'b00000000000100000000000000000000000000000000000000000000000: n3681 = 2'b00;
      59'b00000000000010000000000000000000000000000000000000000000000: n3681 = 2'b00;
      59'b00000000000001000000000000000000000000000000000000000000000: n3681 = 2'b00;
      59'b00000000000000100000000000000000000000000000000000000000000: n3681 = 2'b00;
      59'b00000000000000010000000000000000000000000000000000000000000: n3681 = 2'b00;
      59'b00000000000000001000000000000000000000000000000000000000000: n3681 = 2'b00;
      59'b00000000000000000100000000000000000000000000000000000000000: n3681 = 2'b00;
      59'b00000000000000000010000000000000000000000000000000000000000: n3681 = 2'b00;
      59'b00000000000000000001000000000000000000000000000000000000000: n3681 = 2'b00;
      59'b00000000000000000000100000000000000000000000000000000000000: n3681 = 2'b00;
      59'b00000000000000000000010000000000000000000000000000000000000: n3681 = 2'b00;
      59'b00000000000000000000001000000000000000000000000000000000000: n3681 = 2'b00;
      59'b00000000000000000000000100000000000000000000000000000000000: n3681 = 2'b00;
      59'b00000000000000000000000010000000000000000000000000000000000: n3681 = 2'b00;
      59'b00000000000000000000000001000000000000000000000000000000000: n3681 = 2'b00;
      59'b00000000000000000000000000100000000000000000000000000000000: n3681 = 2'b00;
      59'b00000000000000000000000000010000000000000000000000000000000: n3681 = 2'b00;
      59'b00000000000000000000000000001000000000000000000000000000000: n3681 = 2'b00;
      59'b00000000000000000000000000000100000000000000000000000000000: n3681 = 2'b00;
      59'b00000000000000000000000000000010000000000000000000000000000: n3681 = 2'b00;
      59'b00000000000000000000000000000001000000000000000000000000000: n3681 = 2'b00;
      59'b00000000000000000000000000000000100000000000000000000000000: n3681 = 2'b00;
      59'b00000000000000000000000000000000010000000000000000000000000: n3681 = 2'b00;
      59'b00000000000000000000000000000000001000000000000000000000000: n3681 = 2'b00;
      59'b00000000000000000000000000000000000100000000000000000000000: n3681 = 2'b00;
      59'b00000000000000000000000000000000000010000000000000000000000: n3681 = 2'b00;
      59'b00000000000000000000000000000000000001000000000000000000000: n3681 = 2'b00;
      59'b00000000000000000000000000000000000000100000000000000000000: n3681 = 2'b00;
      59'b00000000000000000000000000000000000000010000000000000000000: n3681 = 2'b00;
      59'b00000000000000000000000000000000000000001000000000000000000: n3681 = 2'b00;
      59'b00000000000000000000000000000000000000000100000000000000000: n3681 = 2'b00;
      59'b00000000000000000000000000000000000000000010000000000000000: n3681 = 2'b00;
      59'b00000000000000000000000000000000000000000001000000000000000: n3681 = 2'b00;
      59'b00000000000000000000000000000000000000000000100000000000000: n3681 = 2'b00;
      59'b00000000000000000000000000000000000000000000010000000000000: n3681 = 2'b00;
      59'b00000000000000000000000000000000000000000000001000000000000: n3681 = 2'b00;
      59'b00000000000000000000000000000000000000000000000100000000000: n3681 = 2'b00;
      59'b00000000000000000000000000000000000000000000000010000000000: n3681 = 2'b00;
      59'b00000000000000000000000000000000000000000000000001000000000: n3681 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000100000000: n3681 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000010000000: n3681 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000001000000: n3681 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000000100000: n3681 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000000010000: n3681 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000000001000: n3681 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000000000100: n3681 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000000000010: n3681 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000000000001: n3681 = 2'b00;
      default: n3681 = 2'bX;
    endcase
  /* src/T80/T80_MCode.vhd:262:17  */
  always @*
    case (n3637)
      59'b10000000000000000000000000000000000000000000000000000000000: n3684 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n3684 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n3684 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n3684 = n3613;
      59'b00001000000000000000000000000000000000000000000000000000000: n3684 = n3593;
      59'b00000100000000000000000000000000000000000000000000000000000: n3684 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n3684 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n3684 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n3684 = n3368;
      59'b00000000010000000000000000000000000000000000000000000000000: n3684 = n3270;
      59'b00000000001000000000000000000000000000000000000000000000000: n3684 = n3229;
      59'b00000000000100000000000000000000000000000000000000000000000: n3684 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n3684 = n3204;
      59'b00000000000001000000000000000000000000000000000000000000000: n3684 = n3178;
      59'b00000000000000100000000000000000000000000000000000000000000: n3684 = n3151;
      59'b00000000000000010000000000000000000000000000000000000000000: n3684 = n3125;
      59'b00000000000000001000000000000000000000000000000000000000000: n3684 = n3098;
      59'b00000000000000000100000000000000000000000000000000000000000: n3684 = n3059;
      59'b00000000000000000010000000000000000000000000000000000000000: n3684 = n3000;
      59'b00000000000000000001000000000000000000000000000000000000000: n3684 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n3684 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n3684 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n3684 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n3684 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n3684 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n3684 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n3684 = n2852;
      59'b00000000000000000000000000010000000000000000000000000000000: n3684 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n3684 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n3684 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n3684 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n3684 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n3684 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n3684 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n3684 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n3684 = n2607;
      59'b00000000000000000000000000000000000010000000000000000000000: n3684 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n3684 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n3684 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n3684 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n3684 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n3684 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n3684 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n3684 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n3684 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n3684 = n2214;
      59'b00000000000000000000000000000000000000000000001000000000000: n3684 = n2179;
      59'b00000000000000000000000000000000000000000000000100000000000: n3684 = n2144;
      59'b00000000000000000000000000000000000000000000000010000000000: n3684 = n2102;
      59'b00000000000000000000000000000000000000000000000001000000000: n3684 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n3684 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n3684 = n2045;
      59'b00000000000000000000000000000000000000000000000000001000000: n3684 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n3684 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n3684 = n1993;
      59'b00000000000000000000000000000000000000000000000000000001000: n3684 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n3684 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n3684 = n1887;
      59'b00000000000000000000000000000000000000000000000000000000001: n3684 = 1'b0;
      default: n3684 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:262:17  */
  always @*
    case (n3637)
      59'b10000000000000000000000000000000000000000000000000000000000: n3687 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n3687 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n3687 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n3687 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n3687 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n3687 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n3687 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n3687 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n3687 = 1'b0;
      59'b00000000010000000000000000000000000000000000000000000000000: n3687 = 1'b0;
      59'b00000000001000000000000000000000000000000000000000000000000: n3687 = 1'b0;
      59'b00000000000100000000000000000000000000000000000000000000000: n3687 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n3687 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n3687 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n3687 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n3687 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n3687 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n3687 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n3687 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n3687 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n3687 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n3687 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n3687 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n3687 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n3687 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n3687 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n3687 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n3687 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n3687 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n3687 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n3687 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n3687 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n3687 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n3687 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n3687 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n3687 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n3687 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n3687 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n3687 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n3687 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n3687 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n3687 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n3687 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n3687 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n3687 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n3687 = n2217;
      59'b00000000000000000000000000000000000000000000001000000000000: n3687 = n2182;
      59'b00000000000000000000000000000000000000000000000100000000000: n3687 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n3687 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n3687 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n3687 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n3687 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n3687 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n3687 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n3687 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n3687 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n3687 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n3687 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n3687 = 1'b0;
      default: n3687 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:522:25  */
  assign n3688 = n2267[1:0]; // extract
  /* src/T80/T80_MCode.vhd:552:25  */
  assign n3689 = n2318[1:0]; // extract
  /* src/T80/T80_MCode.vhd:635:33  */
  assign n3690 = n2366[1:0]; // extract
  /* src/T80/T80_MCode.vhd:791:25  */
  assign n3691 = n2853[1:0]; // extract
  /* src/T80/T80_MCode.vhd:1109:25  */
  assign n3692 = n3274[1:0]; // extract
  /* src/T80/T80_MCode.vhd:1134:33  */
  assign n3693 = n3371[1:0]; // extract
  /* src/T80/T80_MCode.vhd:1163:25  */
  assign n3694 = n3427[1:0]; // extract
  /* src/T80/T80_MCode.vhd:1247:33  */
  assign n3695 = n3500[1:0]; // extract
  /* src/T80/T80_MCode.vhd:1268:25  */
  assign n3696 = n3546[1:0]; // extract
  /* src/T80/T80_MCode.vhd:262:17  */
  always @*
    case (n3637)
      59'b10000000000000000000000000000000000000000000000000000000000: n3699 = 2'b00;
      59'b01000000000000000000000000000000000000000000000000000000000: n3699 = 2'b00;
      59'b00100000000000000000000000000000000000000000000000000000000: n3699 = 2'b00;
      59'b00010000000000000000000000000000000000000000000000000000000: n3699 = 2'b00;
      59'b00001000000000000000000000000000000000000000000000000000000: n3699 = 2'b00;
      59'b00000100000000000000000000000000000000000000000000000000000: n3699 = n3696;
      59'b00000010000000000000000000000000000000000000000000000000000: n3699 = n3695;
      59'b00000001000000000000000000000000000000000000000000000000000: n3699 = n3694;
      59'b00000000100000000000000000000000000000000000000000000000000: n3699 = n3693;
      59'b00000000010000000000000000000000000000000000000000000000000: n3699 = n3692;
      59'b00000000001000000000000000000000000000000000000000000000000: n3699 = 2'b00;
      59'b00000000000100000000000000000000000000000000000000000000000: n3699 = 2'b00;
      59'b00000000000010000000000000000000000000000000000000000000000: n3699 = 2'b00;
      59'b00000000000001000000000000000000000000000000000000000000000: n3699 = 2'b00;
      59'b00000000000000100000000000000000000000000000000000000000000: n3699 = 2'b00;
      59'b00000000000000010000000000000000000000000000000000000000000: n3699 = 2'b00;
      59'b00000000000000001000000000000000000000000000000000000000000: n3699 = 2'b00;
      59'b00000000000000000100000000000000000000000000000000000000000: n3699 = 2'b00;
      59'b00000000000000000010000000000000000000000000000000000000000: n3699 = 2'b00;
      59'b00000000000000000001000000000000000000000000000000000000000: n3699 = 2'b00;
      59'b00000000000000000000100000000000000000000000000000000000000: n3699 = n1727;
      59'b00000000000000000000010000000000000000000000000000000000000: n3699 = n1727;
      59'b00000000000000000000001000000000000000000000000000000000000: n3699 = 2'b00;
      59'b00000000000000000000000100000000000000000000000000000000000: n3699 = 2'b00;
      59'b00000000000000000000000010000000000000000000000000000000000: n3699 = 2'b00;
      59'b00000000000000000000000001000000000000000000000000000000000: n3699 = 2'b00;
      59'b00000000000000000000000000100000000000000000000000000000000: n3699 = n3691;
      59'b00000000000000000000000000010000000000000000000000000000000: n3699 = 2'b00;
      59'b00000000000000000000000000001000000000000000000000000000000: n3699 = 2'b00;
      59'b00000000000000000000000000000100000000000000000000000000000: n3699 = 2'b00;
      59'b00000000000000000000000000000010000000000000000000000000000: n3699 = 2'b00;
      59'b00000000000000000000000000000001000000000000000000000000000: n3699 = 2'b00;
      59'b00000000000000000000000000000000100000000000000000000000000: n3699 = 2'b00;
      59'b00000000000000000000000000000000010000000000000000000000000: n3699 = 2'b00;
      59'b00000000000000000000000000000000001000000000000000000000000: n3699 = 2'b00;
      59'b00000000000000000000000000000000000100000000000000000000000: n3699 = 2'b00;
      59'b00000000000000000000000000000000000010000000000000000000000: n3699 = 2'b00;
      59'b00000000000000000000000000000000000001000000000000000000000: n3699 = 2'b00;
      59'b00000000000000000000000000000000000000100000000000000000000: n3699 = n3690;
      59'b00000000000000000000000000000000000000010000000000000000000: n3699 = 2'b00;
      59'b00000000000000000000000000000000000000001000000000000000000: n3699 = 2'b00;
      59'b00000000000000000000000000000000000000000100000000000000000: n3699 = 2'b00;
      59'b00000000000000000000000000000000000000000010000000000000000: n3699 = n3689;
      59'b00000000000000000000000000000000000000000001000000000000000: n3699 = n3688;
      59'b00000000000000000000000000000000000000000000100000000000000: n3699 = 2'b00;
      59'b00000000000000000000000000000000000000000000010000000000000: n3699 = 2'b00;
      59'b00000000000000000000000000000000000000000000001000000000000: n3699 = 2'b00;
      59'b00000000000000000000000000000000000000000000000100000000000: n3699 = 2'b00;
      59'b00000000000000000000000000000000000000000000000010000000000: n3699 = 2'b00;
      59'b00000000000000000000000000000000000000000000000001000000000: n3699 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000100000000: n3699 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000010000000: n3699 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000001000000: n3699 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000000100000: n3699 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000000010000: n3699 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000000001000: n3699 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000000000100: n3699 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000000000010: n3699 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000000000001: n3699 = 2'b00;
      default: n3699 = 2'bX;
    endcase
  /* src/T80/T80_MCode.vhd:522:25  */
  assign n3700 = n2267[3:2]; // extract
  /* src/T80/T80_MCode.vhd:552:25  */
  assign n3701 = n2318[3:2]; // extract
  /* src/T80/T80_MCode.vhd:635:33  */
  assign n3702 = n2366[3:2]; // extract
  /* src/T80/T80_MCode.vhd:791:25  */
  assign n3703 = n2853[3:2]; // extract
  /* src/T80/T80_MCode.vhd:1109:25  */
  assign n3704 = n3274[3:2]; // extract
  /* src/T80/T80_MCode.vhd:1134:33  */
  assign n3705 = n3371[3:2]; // extract
  /* src/T80/T80_MCode.vhd:1163:25  */
  assign n3706 = n3427[3:2]; // extract
  /* src/T80/T80_MCode.vhd:1247:33  */
  assign n3707 = n3500[3:2]; // extract
  /* src/T80/T80_MCode.vhd:1268:25  */
  assign n3708 = n3546[3:2]; // extract
  /* src/T80/T80_MCode.vhd:262:17  */
  always @*
    case (n3637)
      59'b10000000000000000000000000000000000000000000000000000000000: n3711 = 2'b00;
      59'b01000000000000000000000000000000000000000000000000000000000: n3711 = 2'b00;
      59'b00100000000000000000000000000000000000000000000000000000000: n3711 = 2'b00;
      59'b00010000000000000000000000000000000000000000000000000000000: n3711 = 2'b00;
      59'b00001000000000000000000000000000000000000000000000000000000: n3711 = 2'b00;
      59'b00000100000000000000000000000000000000000000000000000000000: n3711 = n3708;
      59'b00000010000000000000000000000000000000000000000000000000000: n3711 = n3707;
      59'b00000001000000000000000000000000000000000000000000000000000: n3711 = n3706;
      59'b00000000100000000000000000000000000000000000000000000000000: n3711 = n3705;
      59'b00000000010000000000000000000000000000000000000000000000000: n3711 = n3704;
      59'b00000000001000000000000000000000000000000000000000000000000: n3711 = 2'b00;
      59'b00000000000100000000000000000000000000000000000000000000000: n3711 = 2'b00;
      59'b00000000000010000000000000000000000000000000000000000000000: n3711 = 2'b00;
      59'b00000000000001000000000000000000000000000000000000000000000: n3711 = 2'b00;
      59'b00000000000000100000000000000000000000000000000000000000000: n3711 = 2'b00;
      59'b00000000000000010000000000000000000000000000000000000000000: n3711 = 2'b00;
      59'b00000000000000001000000000000000000000000000000000000000000: n3711 = 2'b00;
      59'b00000000000000000100000000000000000000000000000000000000000: n3711 = 2'b00;
      59'b00000000000000000010000000000000000000000000000000000000000: n3711 = 2'b00;
      59'b00000000000000000001000000000000000000000000000000000000000: n3711 = 2'b00;
      59'b00000000000000000000100000000000000000000000000000000000000: n3711 = 2'b11;
      59'b00000000000000000000010000000000000000000000000000000000000: n3711 = 2'b01;
      59'b00000000000000000000001000000000000000000000000000000000000: n3711 = 2'b00;
      59'b00000000000000000000000100000000000000000000000000000000000: n3711 = 2'b00;
      59'b00000000000000000000000010000000000000000000000000000000000: n3711 = 2'b00;
      59'b00000000000000000000000001000000000000000000000000000000000: n3711 = 2'b00;
      59'b00000000000000000000000000100000000000000000000000000000000: n3711 = n3703;
      59'b00000000000000000000000000010000000000000000000000000000000: n3711 = 2'b00;
      59'b00000000000000000000000000001000000000000000000000000000000: n3711 = 2'b00;
      59'b00000000000000000000000000000100000000000000000000000000000: n3711 = 2'b00;
      59'b00000000000000000000000000000010000000000000000000000000000: n3711 = 2'b00;
      59'b00000000000000000000000000000001000000000000000000000000000: n3711 = 2'b00;
      59'b00000000000000000000000000000000100000000000000000000000000: n3711 = 2'b00;
      59'b00000000000000000000000000000000010000000000000000000000000: n3711 = 2'b00;
      59'b00000000000000000000000000000000001000000000000000000000000: n3711 = 2'b00;
      59'b00000000000000000000000000000000000100000000000000000000000: n3711 = 2'b00;
      59'b00000000000000000000000000000000000010000000000000000000000: n3711 = 2'b00;
      59'b00000000000000000000000000000000000001000000000000000000000: n3711 = 2'b00;
      59'b00000000000000000000000000000000000000100000000000000000000: n3711 = n3702;
      59'b00000000000000000000000000000000000000010000000000000000000: n3711 = 2'b00;
      59'b00000000000000000000000000000000000000001000000000000000000: n3711 = 2'b00;
      59'b00000000000000000000000000000000000000000100000000000000000: n3711 = 2'b00;
      59'b00000000000000000000000000000000000000000010000000000000000: n3711 = n3701;
      59'b00000000000000000000000000000000000000000001000000000000000: n3711 = n3700;
      59'b00000000000000000000000000000000000000000000100000000000000: n3711 = 2'b00;
      59'b00000000000000000000000000000000000000000000010000000000000: n3711 = 2'b00;
      59'b00000000000000000000000000000000000000000000001000000000000: n3711 = 2'b00;
      59'b00000000000000000000000000000000000000000000000100000000000: n3711 = 2'b00;
      59'b00000000000000000000000000000000000000000000000010000000000: n3711 = 2'b00;
      59'b00000000000000000000000000000000000000000000000001000000000: n3711 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000100000000: n3711 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000010000000: n3711 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000001000000: n3711 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000000100000: n3711 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000000010000: n3711 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000000001000: n3711 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000000000100: n3711 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000000000010: n3711 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000000000001: n3711 = 2'b00;
      default: n3711 = 2'bX;
    endcase
  /* src/T80/T80_MCode.vhd:262:17  */
  always @*
    case (n3637)
      59'b10000000000000000000000000000000000000000000000000000000000: n3720 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n3720 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n3720 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n3720 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n3720 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n3720 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n3720 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n3720 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n3720 = 1'b0;
      59'b00000000010000000000000000000000000000000000000000000000000: n3720 = 1'b0;
      59'b00000000001000000000000000000000000000000000000000000000000: n3720 = n3232;
      59'b00000000000100000000000000000000000000000000000000000000000: n3720 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n3720 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n3720 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n3720 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n3720 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n3720 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n3720 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n3720 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n3720 = 1'b1;
      59'b00000000000000000000100000000000000000000000000000000000000: n3720 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n3720 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n3720 = n2920;
      59'b00000000000000000000000100000000000000000000000000000000000: n3720 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n3720 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n3720 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n3720 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n3720 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n3720 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n3720 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n3720 = 1'b1;
      59'b00000000000000000000000000000001000000000000000000000000000: n3720 = n2728;
      59'b00000000000000000000000000000000100000000000000000000000000: n3720 = 1'b1;
      59'b00000000000000000000000000000000010000000000000000000000000: n3720 = n2673;
      59'b00000000000000000000000000000000001000000000000000000000000: n3720 = 1'b1;
      59'b00000000000000000000000000000000000100000000000000000000000: n3720 = n2610;
      59'b00000000000000000000000000000000000010000000000000000000000: n3720 = n2568;
      59'b00000000000000000000000000000000000001000000000000000000000: n3720 = 1'b1;
      59'b00000000000000000000000000000000000000100000000000000000000: n3720 = n2370;
      59'b00000000000000000000000000000000000000010000000000000000000: n3720 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n3720 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n3720 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n3720 = n2322;
      59'b00000000000000000000000000000000000000000001000000000000000: n3720 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n3720 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n3720 = 1'b0;
      59'b00000000000000000000000000000000000000000000001000000000000: n3720 = n2186;
      59'b00000000000000000000000000000000000000000000000100000000000: n3720 = n2148;
      59'b00000000000000000000000000000000000000000000000010000000000: n3720 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n3720 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n3720 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n3720 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n3720 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n3720 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n3720 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n3720 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n3720 = n1921;
      59'b00000000000000000000000000000000000000000000000000000000010: n3720 = n1890;
      59'b00000000000000000000000000000000000000000000000000000000001: n3720 = 1'b1;
      default: n3720 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:262:17  */
  always @*
    case (n3637)
      59'b10000000000000000000000000000000000000000000000000000000000: n3723 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n3723 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n3723 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n3723 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n3723 = n3596;
      59'b00000100000000000000000000000000000000000000000000000000000: n3723 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n3723 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n3723 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n3723 = 1'b0;
      59'b00000000010000000000000000000000000000000000000000000000000: n3723 = 1'b0;
      59'b00000000001000000000000000000000000000000000000000000000000: n3723 = 1'b0;
      59'b00000000000100000000000000000000000000000000000000000000000: n3723 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n3723 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n3723 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n3723 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n3723 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n3723 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n3723 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n3723 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n3723 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n3723 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n3723 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n3723 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n3723 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n3723 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n3723 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n3723 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n3723 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n3723 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n3723 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n3723 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n3723 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n3723 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n3723 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n3723 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n3723 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n3723 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n3723 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n3723 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n3723 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n3723 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n3723 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n3723 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n3723 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n3723 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n3723 = 1'b0;
      59'b00000000000000000000000000000000000000000000001000000000000: n3723 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n3723 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n3723 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n3723 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n3723 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n3723 = n2048;
      59'b00000000000000000000000000000000000000000000000000001000000: n3723 = n2028;
      59'b00000000000000000000000000000000000000000000000000000100000: n3723 = n2014;
      59'b00000000000000000000000000000000000000000000000000000010000: n3723 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n3723 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n3723 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n3723 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n3723 = 1'b0;
      default: n3723 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:635:33  */
  assign n3724 = n2374[2:0]; // extract
  /* src/T80/T80_MCode.vhd:262:17  */
  always @*
    case (n3637)
      59'b10000000000000000000000000000000000000000000000000000000000: n3727 = 3'b000;
      59'b01000000000000000000000000000000000000000000000000000000000: n3727 = 3'b000;
      59'b00100000000000000000000000000000000000000000000000000000000: n3727 = 3'b000;
      59'b00010000000000000000000000000000000000000000000000000000000: n3727 = 3'b000;
      59'b00001000000000000000000000000000000000000000000000000000000: n3727 = 3'b000;
      59'b00000100000000000000000000000000000000000000000000000000000: n3727 = 3'b000;
      59'b00000010000000000000000000000000000000000000000000000000000: n3727 = 3'b000;
      59'b00000001000000000000000000000000000000000000000000000000000: n3727 = 3'b000;
      59'b00000000100000000000000000000000000000000000000000000000000: n3727 = 3'b000;
      59'b00000000010000000000000000000000000000000000000000000000000: n3727 = 3'b000;
      59'b00000000001000000000000000000000000000000000000000000000000: n3727 = n3234;
      59'b00000000000100000000000000000000000000000000000000000000000: n3727 = 3'b000;
      59'b00000000000010000000000000000000000000000000000000000000000: n3727 = 3'b000;
      59'b00000000000001000000000000000000000000000000000000000000000: n3727 = 3'b000;
      59'b00000000000000100000000000000000000000000000000000000000000: n3727 = 3'b000;
      59'b00000000000000010000000000000000000000000000000000000000000: n3727 = 3'b000;
      59'b00000000000000001000000000000000000000000000000000000000000: n3727 = 3'b000;
      59'b00000000000000000100000000000000000000000000000000000000000: n3727 = 3'b000;
      59'b00000000000000000010000000000000000000000000000000000000000: n3727 = 3'b000;
      59'b00000000000000000001000000000000000000000000000000000000000: n3727 = 3'b111;
      59'b00000000000000000000100000000000000000000000000000000000000: n3727 = 3'b000;
      59'b00000000000000000000010000000000000000000000000000000000000: n3727 = 3'b000;
      59'b00000000000000000000001000000000000000000000000000000000000: n3727 = n2922;
      59'b00000000000000000000000100000000000000000000000000000000000: n3727 = 3'b000;
      59'b00000000000000000000000010000000000000000000000000000000000: n3727 = 3'b000;
      59'b00000000000000000000000001000000000000000000000000000000000: n3727 = 3'b000;
      59'b00000000000000000000000000100000000000000000000000000000000: n3727 = 3'b000;
      59'b00000000000000000000000000010000000000000000000000000000000: n3727 = 3'b000;
      59'b00000000000000000000000000001000000000000000000000000000000: n3727 = 3'b000;
      59'b00000000000000000000000000000100000000000000000000000000000: n3727 = 3'b000;
      59'b00000000000000000000000000000010000000000000000000000000000: n3727 = 3'b111;
      59'b00000000000000000000000000000001000000000000000000000000000: n3727 = n2730;
      59'b00000000000000000000000000000000100000000000000000000000000: n3727 = n1725;
      59'b00000000000000000000000000000000010000000000000000000000000: n3727 = n2675;
      59'b00000000000000000000000000000000001000000000000000000000000: n3727 = n1725;
      59'b00000000000000000000000000000000000100000000000000000000000: n3727 = n2612;
      59'b00000000000000000000000000000000000010000000000000000000000: n3727 = n2570;
      59'b00000000000000000000000000000000000001000000000000000000000: n3727 = 3'b111;
      59'b00000000000000000000000000000000000000100000000000000000000: n3727 = n3724;
      59'b00000000000000000000000000000000000000010000000000000000000: n3727 = 3'b000;
      59'b00000000000000000000000000000000000000001000000000000000000: n3727 = 3'b000;
      59'b00000000000000000000000000000000000000000100000000000000000: n3727 = 3'b000;
      59'b00000000000000000000000000000000000000000010000000000000000: n3727 = n2324;
      59'b00000000000000000000000000000000000000000001000000000000000: n3727 = 3'b000;
      59'b00000000000000000000000000000000000000000000100000000000000: n3727 = 3'b000;
      59'b00000000000000000000000000000000000000000000010000000000000: n3727 = 3'b000;
      59'b00000000000000000000000000000000000000000000001000000000000: n3727 = n2188;
      59'b00000000000000000000000000000000000000000000000100000000000: n3727 = n2150;
      59'b00000000000000000000000000000000000000000000000010000000000: n3727 = 3'b000;
      59'b00000000000000000000000000000000000000000000000001000000000: n3727 = 3'b000;
      59'b00000000000000000000000000000000000000000000000000100000000: n3727 = 3'b000;
      59'b00000000000000000000000000000000000000000000000000010000000: n3727 = 3'b000;
      59'b00000000000000000000000000000000000000000000000000001000000: n3727 = 3'b000;
      59'b00000000000000000000000000000000000000000000000000000100000: n3727 = 3'b000;
      59'b00000000000000000000000000000000000000000000000000000010000: n3727 = 3'b000;
      59'b00000000000000000000000000000000000000000000000000000001000: n3727 = 3'b000;
      59'b00000000000000000000000000000000000000000000000000000000100: n3727 = n1923;
      59'b00000000000000000000000000000000000000000000000000000000010: n3727 = n1892;
      59'b00000000000000000000000000000000000000000000000000000000001: n3727 = n1725;
      default: n3727 = 3'bX;
    endcase
  /* src/T80/T80_MCode.vhd:635:33  */
  assign n3728 = n2374[3]; // extract
  /* src/T80/T80_MCode.vhd:262:17  */
  always @*
    case (n3637)
      59'b10000000000000000000000000000000000000000000000000000000000: n3731 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n3731 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n3731 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n3731 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n3731 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n3731 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n3731 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n3731 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n3731 = 1'b0;
      59'b00000000010000000000000000000000000000000000000000000000000: n3731 = 1'b0;
      59'b00000000001000000000000000000000000000000000000000000000000: n3731 = 1'b0;
      59'b00000000000100000000000000000000000000000000000000000000000: n3731 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n3731 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n3731 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n3731 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n3731 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n3731 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n3731 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n3731 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n3731 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n3731 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n3731 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n3731 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n3731 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n3731 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n3731 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n3731 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n3731 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n3731 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n3731 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n3731 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n3731 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n3731 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n3731 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n3731 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n3731 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n3731 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n3731 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n3731 = n3728;
      59'b00000000000000000000000000000000000000010000000000000000000: n3731 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n3731 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n3731 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n3731 = n2326;
      59'b00000000000000000000000000000000000000000001000000000000000: n3731 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n3731 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n3731 = 1'b0;
      59'b00000000000000000000000000000000000000000000001000000000000: n3731 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n3731 = n2152;
      59'b00000000000000000000000000000000000000000000000010000000000: n3731 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n3731 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n3731 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n3731 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n3731 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n3731 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n3731 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n3731 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n3731 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n3731 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n3731 = 1'b0;
      default: n3731 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:198:26  */
  assign n3732 = n1726[0]; // extract
  /* src/T80/T80_MCode.vhd:300:25  */
  assign n3733 = n1955[0]; // extract
  /* src/T80/T80_MCode.vhd:312:25  */
  assign n3734 = n1995[0]; // extract
  /* src/T80/T80_MCode.vhd:372:25  */
  assign n3735 = n2065[0]; // extract
  /* src/T80/T80_MCode.vhd:383:25  */
  assign n3736 = n2082[0]; // extract
  /* src/T80/T80_MCode.vhd:407:33  */
  assign n3737 = n2105[0]; // extract
  /* src/T80/T80_MCode.vhd:496:33  */
  assign n3738 = n2221[0]; // extract
  /* src/T80/T80_MCode.vhd:522:25  */
  assign n3739 = n2269[0]; // extract
  /* src/T80/T80_MCode.vhd:635:33  */
  assign n3740 = n2378[0]; // extract
  /* src/T80/T80_MCode.vhd:198:26  */
  assign n3741 = n1726[0]; // extract
  /* src/T80/T80_MCode.vhd:692:25  */
  assign n3742 = n2572[0]; // extract
  /* src/T80/T80_MCode.vhd:712:25  */
  assign n3743 = n2614[0]; // extract
  /* src/T80/T80_MCode.vhd:730:25  */
  assign n3745 = n2678[0]; // extract
  /* src/T80/T80_MCode.vhd:757:25  */
  assign n3747 = n2733[0]; // extract
  /* src/T80/T80_MCode.vhd:791:25  */
  assign n3748 = n2854[0]; // extract
  /* src/T80/T80_MCode.vhd:1085:33  */
  assign n3749 = n3237[0]; // extract
  /* src/T80/T80_MCode.vhd:1109:25  */
  assign n3750 = n3278[0]; // extract
  /* src/T80/T80_MCode.vhd:1134:33  */
  assign n3751 = n3374[0]; // extract
  /* src/T80/T80_MCode.vhd:1268:25  */
  assign n3752 = n3550[0]; // extract
  /* src/T80/T80_MCode.vhd:1304:33  */
  assign n3753 = n3616[0]; // extract
  /* src/T80/T80_MCode.vhd:262:17  */
  always @*
    case (n3637)
      59'b10000000000000000000000000000000000000000000000000000000000: n3756 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n3756 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n3756 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n3756 = n3753;
      59'b00001000000000000000000000000000000000000000000000000000000: n3756 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n3756 = n3752;
      59'b00000010000000000000000000000000000000000000000000000000000: n3756 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n3756 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n3756 = n3751;
      59'b00000000010000000000000000000000000000000000000000000000000: n3756 = n3750;
      59'b00000000001000000000000000000000000000000000000000000000000: n3756 = n3749;
      59'b00000000000100000000000000000000000000000000000000000000000: n3756 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n3756 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n3756 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n3756 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n3756 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n3756 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n3756 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n3756 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n3756 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n3756 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n3756 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n3756 = n2924;
      59'b00000000000000000000000100000000000000000000000000000000000: n3756 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n3756 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n3756 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n3756 = n3748;
      59'b00000000000000000000000000010000000000000000000000000000000: n3756 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n3756 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n3756 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n3756 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n3756 = n3747;
      59'b00000000000000000000000000000000100000000000000000000000000: n3756 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n3756 = n3745;
      59'b00000000000000000000000000000000001000000000000000000000000: n3756 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n3756 = n3743;
      59'b00000000000000000000000000000000000010000000000000000000000: n3756 = n3742;
      59'b00000000000000000000000000000000000001000000000000000000000: n3756 = n3741;
      59'b00000000000000000000000000000000000000100000000000000000000: n3756 = n3740;
      59'b00000000000000000000000000000000000000010000000000000000000: n3756 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n3756 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n3756 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n3756 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n3756 = n3739;
      59'b00000000000000000000000000000000000000000000100000000000000: n3756 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n3756 = n3738;
      59'b00000000000000000000000000000000000000000000001000000000000: n3756 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n3756 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n3756 = n3737;
      59'b00000000000000000000000000000000000000000000000001000000000: n3756 = n3736;
      59'b00000000000000000000000000000000000000000000000000100000000: n3756 = n3735;
      59'b00000000000000000000000000000000000000000000000000010000000: n3756 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n3756 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n3756 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n3756 = n3734;
      59'b00000000000000000000000000000000000000000000000000000001000: n3756 = n3733;
      59'b00000000000000000000000000000000000000000000000000000000100: n3756 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n3756 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n3756 = n3732;
      default: n3756 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:198:26  */
  assign n3757 = n1726[2:1]; // extract
  /* src/T80/T80_MCode.vhd:300:25  */
  assign n3758 = n1955[2:1]; // extract
  /* src/T80/T80_MCode.vhd:312:25  */
  assign n3759 = n1995[2:1]; // extract
  /* src/T80/T80_MCode.vhd:372:25  */
  assign n3760 = n2065[2:1]; // extract
  /* src/T80/T80_MCode.vhd:383:25  */
  assign n3761 = n2082[2:1]; // extract
  /* src/T80/T80_MCode.vhd:407:33  */
  assign n3762 = n2105[2:1]; // extract
  /* src/T80/T80_MCode.vhd:496:33  */
  assign n3763 = n2221[2:1]; // extract
  /* src/T80/T80_MCode.vhd:522:25  */
  assign n3764 = n2269[2:1]; // extract
  /* src/T80/T80_MCode.vhd:635:33  */
  assign n3765 = n2378[2:1]; // extract
  /* src/T80/T80_MCode.vhd:198:26  */
  assign n3766 = n1726[2:1]; // extract
  /* src/T80/T80_MCode.vhd:692:25  */
  assign n3767 = n2572[2:1]; // extract
  /* src/T80/T80_MCode.vhd:712:25  */
  assign n3768 = n2614[2:1]; // extract
  /* src/T80/T80_MCode.vhd:730:25  */
  assign n3770 = n2678[2:1]; // extract
  /* src/T80/T80_MCode.vhd:757:25  */
  assign n3772 = n2733[2:1]; // extract
  /* src/T80/T80_MCode.vhd:791:25  */
  assign n3773 = n2854[2:1]; // extract
  /* src/T80/T80_MCode.vhd:1085:33  */
  assign n3774 = n3237[2:1]; // extract
  /* src/T80/T80_MCode.vhd:1109:25  */
  assign n3775 = n3278[2:1]; // extract
  /* src/T80/T80_MCode.vhd:1134:33  */
  assign n3776 = n3374[2:1]; // extract
  /* src/T80/T80_MCode.vhd:1268:25  */
  assign n3777 = n3550[2:1]; // extract
  /* src/T80/T80_MCode.vhd:1304:33  */
  assign n3778 = n3616[2:1]; // extract
  /* src/T80/T80_MCode.vhd:262:17  */
  always @*
    case (n3637)
      59'b10000000000000000000000000000000000000000000000000000000000: n3781 = 2'b00;
      59'b01000000000000000000000000000000000000000000000000000000000: n3781 = 2'b00;
      59'b00100000000000000000000000000000000000000000000000000000000: n3781 = 2'b00;
      59'b00010000000000000000000000000000000000000000000000000000000: n3781 = n3778;
      59'b00001000000000000000000000000000000000000000000000000000000: n3781 = 2'b00;
      59'b00000100000000000000000000000000000000000000000000000000000: n3781 = n3777;
      59'b00000010000000000000000000000000000000000000000000000000000: n3781 = 2'b00;
      59'b00000001000000000000000000000000000000000000000000000000000: n3781 = 2'b00;
      59'b00000000100000000000000000000000000000000000000000000000000: n3781 = n3776;
      59'b00000000010000000000000000000000000000000000000000000000000: n3781 = n3775;
      59'b00000000001000000000000000000000000000000000000000000000000: n3781 = n3774;
      59'b00000000000100000000000000000000000000000000000000000000000: n3781 = 2'b00;
      59'b00000000000010000000000000000000000000000000000000000000000: n3781 = 2'b00;
      59'b00000000000001000000000000000000000000000000000000000000000: n3781 = 2'b00;
      59'b00000000000000100000000000000000000000000000000000000000000: n3781 = 2'b00;
      59'b00000000000000010000000000000000000000000000000000000000000: n3781 = 2'b00;
      59'b00000000000000001000000000000000000000000000000000000000000: n3781 = 2'b00;
      59'b00000000000000000100000000000000000000000000000000000000000: n3781 = 2'b00;
      59'b00000000000000000010000000000000000000000000000000000000000: n3781 = 2'b00;
      59'b00000000000000000001000000000000000000000000000000000000000: n3781 = 2'b00;
      59'b00000000000000000000100000000000000000000000000000000000000: n3781 = 2'b00;
      59'b00000000000000000000010000000000000000000000000000000000000: n3781 = 2'b00;
      59'b00000000000000000000001000000000000000000000000000000000000: n3781 = n2926;
      59'b00000000000000000000000100000000000000000000000000000000000: n3781 = 2'b00;
      59'b00000000000000000000000010000000000000000000000000000000000: n3781 = 2'b00;
      59'b00000000000000000000000001000000000000000000000000000000000: n3781 = 2'b00;
      59'b00000000000000000000000000100000000000000000000000000000000: n3781 = n3773;
      59'b00000000000000000000000000010000000000000000000000000000000: n3781 = 2'b00;
      59'b00000000000000000000000000001000000000000000000000000000000: n3781 = 2'b00;
      59'b00000000000000000000000000000100000000000000000000000000000: n3781 = 2'b00;
      59'b00000000000000000000000000000010000000000000000000000000000: n3781 = 2'b00;
      59'b00000000000000000000000000000001000000000000000000000000000: n3781 = n3772;
      59'b00000000000000000000000000000000100000000000000000000000000: n3781 = 2'b01;
      59'b00000000000000000000000000000000010000000000000000000000000: n3781 = n3770;
      59'b00000000000000000000000000000000001000000000000000000000000: n3781 = 2'b01;
      59'b00000000000000000000000000000000000100000000000000000000000: n3781 = n3768;
      59'b00000000000000000000000000000000000010000000000000000000000: n3781 = n3767;
      59'b00000000000000000000000000000000000001000000000000000000000: n3781 = n3766;
      59'b00000000000000000000000000000000000000100000000000000000000: n3781 = n3765;
      59'b00000000000000000000000000000000000000010000000000000000000: n3781 = 2'b00;
      59'b00000000000000000000000000000000000000001000000000000000000: n3781 = 2'b00;
      59'b00000000000000000000000000000000000000000100000000000000000: n3781 = 2'b00;
      59'b00000000000000000000000000000000000000000010000000000000000: n3781 = 2'b00;
      59'b00000000000000000000000000000000000000000001000000000000000: n3781 = n3764;
      59'b00000000000000000000000000000000000000000000100000000000000: n3781 = 2'b00;
      59'b00000000000000000000000000000000000000000000010000000000000: n3781 = n3763;
      59'b00000000000000000000000000000000000000000000001000000000000: n3781 = 2'b00;
      59'b00000000000000000000000000000000000000000000000100000000000: n3781 = 2'b00;
      59'b00000000000000000000000000000000000000000000000010000000000: n3781 = n3762;
      59'b00000000000000000000000000000000000000000000000001000000000: n3781 = n3761;
      59'b00000000000000000000000000000000000000000000000000100000000: n3781 = n3760;
      59'b00000000000000000000000000000000000000000000000000010000000: n3781 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000001000000: n3781 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000000100000: n3781 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000000010000: n3781 = n3759;
      59'b00000000000000000000000000000000000000000000000000000001000: n3781 = n3758;
      59'b00000000000000000000000000000000000000000000000000000000100: n3781 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000000000010: n3781 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000000000001: n3781 = n3757;
      default: n3781 = 2'bX;
    endcase
  /* src/T80/T80_MCode.vhd:372:25  */
  assign n3782 = n2065[3]; // extract
  /* src/T80/T80_MCode.vhd:383:25  */
  assign n3783 = n2082[3]; // extract
  /* src/T80/T80_MCode.vhd:407:33  */
  assign n3784 = n2105[3]; // extract
  /* src/T80/T80_MCode.vhd:496:33  */
  assign n3785 = n2221[3]; // extract
  /* src/T80/T80_MCode.vhd:522:25  */
  assign n3786 = n2269[3]; // extract
  /* src/T80/T80_MCode.vhd:635:33  */
  assign n3787 = n2378[3]; // extract
  /* src/T80/T80_MCode.vhd:730:25  */
  assign n3789 = n2678[3]; // extract
  /* src/T80/T80_MCode.vhd:757:25  */
  assign n3791 = n2733[3]; // extract
  /* src/T80/T80_MCode.vhd:791:25  */
  assign n3792 = n2854[3]; // extract
  /* src/T80/T80_MCode.vhd:1085:33  */
  assign n3793 = n3237[3]; // extract
  /* src/T80/T80_MCode.vhd:1109:25  */
  assign n3794 = n3278[3]; // extract
  /* src/T80/T80_MCode.vhd:1134:33  */
  assign n3795 = n3374[3]; // extract
  /* src/T80/T80_MCode.vhd:1268:25  */
  assign n3796 = n3550[3]; // extract
  /* src/T80/T80_MCode.vhd:1304:33  */
  assign n3797 = n3616[3]; // extract
  /* src/T80/T80_MCode.vhd:262:17  */
  always @*
    case (n3637)
      59'b10000000000000000000000000000000000000000000000000000000000: n3800 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n3800 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n3800 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n3800 = n3797;
      59'b00001000000000000000000000000000000000000000000000000000000: n3800 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n3800 = n3796;
      59'b00000010000000000000000000000000000000000000000000000000000: n3800 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n3800 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n3800 = n3795;
      59'b00000000010000000000000000000000000000000000000000000000000: n3800 = n3794;
      59'b00000000001000000000000000000000000000000000000000000000000: n3800 = n3793;
      59'b00000000000100000000000000000000000000000000000000000000000: n3800 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n3800 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n3800 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n3800 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n3800 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n3800 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n3800 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n3800 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n3800 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n3800 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n3800 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n3800 = n2928;
      59'b00000000000000000000000100000000000000000000000000000000000: n3800 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n3800 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n3800 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n3800 = n3792;
      59'b00000000000000000000000000010000000000000000000000000000000: n3800 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n3800 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n3800 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n3800 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n3800 = n3791;
      59'b00000000000000000000000000000000100000000000000000000000000: n3800 = 1'b1;
      59'b00000000000000000000000000000000010000000000000000000000000: n3800 = n3789;
      59'b00000000000000000000000000000000001000000000000000000000000: n3800 = 1'b1;
      59'b00000000000000000000000000000000000100000000000000000000000: n3800 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n3800 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n3800 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n3800 = n3787;
      59'b00000000000000000000000000000000000000010000000000000000000: n3800 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n3800 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n3800 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n3800 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n3800 = n3786;
      59'b00000000000000000000000000000000000000000000100000000000000: n3800 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n3800 = n3785;
      59'b00000000000000000000000000000000000000000000001000000000000: n3800 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n3800 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n3800 = n3784;
      59'b00000000000000000000000000000000000000000000000001000000000: n3800 = n3783;
      59'b00000000000000000000000000000000000000000000000000100000000: n3800 = n3782;
      59'b00000000000000000000000000000000000000000000000000010000000: n3800 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n3800 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n3800 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n3800 = n1997;
      59'b00000000000000000000000000000000000000000000000000000001000: n3800 = n1957;
      59'b00000000000000000000000000000000000000000000000000000000100: n3800 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n3800 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n3800 = 1'b0;
      default: n3800 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:262:17  */
  always @*
    case (n3637)
      59'b10000000000000000000000000000000000000000000000000000000000: n3806 = n1735;
      59'b01000000000000000000000000000000000000000000000000000000000: n3806 = n1735;
      59'b00100000000000000000000000000000000000000000000000000000000: n3806 = n1735;
      59'b00010000000000000000000000000000000000000000000000000000000: n3806 = n1735;
      59'b00001000000000000000000000000000000000000000000000000000000: n3806 = n1735;
      59'b00000100000000000000000000000000000000000000000000000000000: n3806 = n1735;
      59'b00000010000000000000000000000000000000000000000000000000000: n3806 = n1735;
      59'b00000001000000000000000000000000000000000000000000000000000: n3806 = n1735;
      59'b00000000100000000000000000000000000000000000000000000000000: n3806 = n1735;
      59'b00000000010000000000000000000000000000000000000000000000000: n3806 = n1735;
      59'b00000000001000000000000000000000000000000000000000000000000: n3806 = n3239;
      59'b00000000000100000000000000000000000000000000000000000000000: n3806 = n1735;
      59'b00000000000010000000000000000000000000000000000000000000000: n3806 = n1735;
      59'b00000000000001000000000000000000000000000000000000000000000: n3806 = n1735;
      59'b00000000000000100000000000000000000000000000000000000000000: n3806 = n1735;
      59'b00000000000000010000000000000000000000000000000000000000000: n3806 = n1735;
      59'b00000000000000001000000000000000000000000000000000000000000: n3806 = n1735;
      59'b00000000000000000100000000000000000000000000000000000000000: n3806 = n1735;
      59'b00000000000000000010000000000000000000000000000000000000000: n3806 = n1735;
      59'b00000000000000000001000000000000000000000000000000000000000: n3806 = 4'b1000;
      59'b00000000000000000000100000000000000000000000000000000000000: n3806 = n1735;
      59'b00000000000000000000010000000000000000000000000000000000000: n3806 = n1735;
      59'b00000000000000000000001000000000000000000000000000000000000: n3806 = n2931;
      59'b00000000000000000000000100000000000000000000000000000000000: n3806 = n1735;
      59'b00000000000000000000000010000000000000000000000000000000000: n3806 = n1735;
      59'b00000000000000000000000001000000000000000000000000000000000: n3806 = n1735;
      59'b00000000000000000000000000100000000000000000000000000000000: n3806 = n1735;
      59'b00000000000000000000000000010000000000000000000000000000000: n3806 = n1735;
      59'b00000000000000000000000000001000000000000000000000000000000: n3806 = n1735;
      59'b00000000000000000000000000000100000000000000000000000000000: n3806 = n1735;
      59'b00000000000000000000000000000010000000000000000000000000000: n3806 = 4'b1100;
      59'b00000000000000000000000000000001000000000000000000000000000: n3806 = n2735;
      59'b00000000000000000000000000000000100000000000000000000000000: n3806 = 4'b0010;
      59'b00000000000000000000000000000000010000000000000000000000000: n3806 = n2680;
      59'b00000000000000000000000000000000001000000000000000000000000: n3806 = 4'b0000;
      59'b00000000000000000000000000000000000100000000000000000000000: n3806 = n1735;
      59'b00000000000000000000000000000000000010000000000000000000000: n3806 = n1735;
      59'b00000000000000000000000000000000000001000000000000000000000: n3806 = n1735;
      59'b00000000000000000000000000000000000000100000000000000000000: n3806 = n1735;
      59'b00000000000000000000000000000000000000010000000000000000000: n3806 = n1735;
      59'b00000000000000000000000000000000000000001000000000000000000: n3806 = n1735;
      59'b00000000000000000000000000000000000000000100000000000000000: n3806 = n1735;
      59'b00000000000000000000000000000000000000000010000000000000000: n3806 = n1735;
      59'b00000000000000000000000000000000000000000001000000000000000: n3806 = n1735;
      59'b00000000000000000000000000000000000000000000100000000000000: n3806 = n1735;
      59'b00000000000000000000000000000000000000000000010000000000000: n3806 = n1735;
      59'b00000000000000000000000000000000000000000000001000000000000: n3806 = n1735;
      59'b00000000000000000000000000000000000000000000000100000000000: n3806 = n1735;
      59'b00000000000000000000000000000000000000000000000010000000000: n3806 = n1735;
      59'b00000000000000000000000000000000000000000000000001000000000: n3806 = n1735;
      59'b00000000000000000000000000000000000000000000000000100000000: n3806 = n1735;
      59'b00000000000000000000000000000000000000000000000000010000000: n3806 = n1735;
      59'b00000000000000000000000000000000000000000000000000001000000: n3806 = n1735;
      59'b00000000000000000000000000000000000000000000000000000100000: n3806 = n1735;
      59'b00000000000000000000000000000000000000000000000000000010000: n3806 = n1735;
      59'b00000000000000000000000000000000000000000000000000000001000: n3806 = n1735;
      59'b00000000000000000000000000000000000000000000000000000000100: n3806 = n1735;
      59'b00000000000000000000000000000000000000000000000000000000010: n3806 = n1735;
      59'b00000000000000000000000000000000000000000000000000000000001: n3806 = n1735;
      default: n3806 = 4'bX;
    endcase
  /* src/T80/T80_MCode.vhd:262:17  */
  always @*
    case (n3637)
      59'b10000000000000000000000000000000000000000000000000000000000: n3814 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n3814 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n3814 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n3814 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n3814 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n3814 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n3814 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n3814 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n3814 = 1'b0;
      59'b00000000010000000000000000000000000000000000000000000000000: n3814 = 1'b0;
      59'b00000000001000000000000000000000000000000000000000000000000: n3814 = n3242;
      59'b00000000000100000000000000000000000000000000000000000000000: n3814 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n3814 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n3814 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n3814 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n3814 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n3814 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n3814 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n3814 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n3814 = 1'b1;
      59'b00000000000000000000100000000000000000000000000000000000000: n3814 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n3814 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n3814 = n2935;
      59'b00000000000000000000000100000000000000000000000000000000000: n3814 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n3814 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n3814 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n3814 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n3814 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n3814 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n3814 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n3814 = 1'b1;
      59'b00000000000000000000000000000001000000000000000000000000000: n3814 = n2738;
      59'b00000000000000000000000000000000100000000000000000000000000: n3814 = 1'b1;
      59'b00000000000000000000000000000000010000000000000000000000000: n3814 = n2683;
      59'b00000000000000000000000000000000001000000000000000000000000: n3814 = 1'b1;
      59'b00000000000000000000000000000000000100000000000000000000000: n3814 = n2617;
      59'b00000000000000000000000000000000000010000000000000000000000: n3814 = n2575;
      59'b00000000000000000000000000000000000001000000000000000000000: n3814 = 1'b1;
      59'b00000000000000000000000000000000000000100000000000000000000: n3814 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n3814 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n3814 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n3814 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n3814 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n3814 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n3814 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n3814 = 1'b0;
      59'b00000000000000000000000000000000000000000000001000000000000: n3814 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n3814 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n3814 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n3814 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n3814 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n3814 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n3814 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n3814 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n3814 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n3814 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n3814 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n3814 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n3814 = 1'b0;
      default: n3814 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:262:17  */
  always @*
    case (n3637)
      59'b10000000000000000000000000000000000000000000000000000000000: n3819 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n3819 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n3819 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n3819 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n3819 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n3819 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n3819 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n3819 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n3819 = 1'b0;
      59'b00000000010000000000000000000000000000000000000000000000000: n3819 = 1'b0;
      59'b00000000001000000000000000000000000000000000000000000000000: n3819 = 1'b0;
      59'b00000000000100000000000000000000000000000000000000000000000: n3819 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n3819 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n3819 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n3819 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n3819 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n3819 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n3819 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n3819 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n3819 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n3819 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n3819 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n3819 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n3819 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n3819 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n3819 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n3819 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n3819 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n3819 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n3819 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n3819 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n3819 = n2741;
      59'b00000000000000000000000000000000100000000000000000000000000: n3819 = 1'b1;
      59'b00000000000000000000000000000000010000000000000000000000000: n3819 = n2686;
      59'b00000000000000000000000000000000001000000000000000000000000: n3819 = 1'b1;
      59'b00000000000000000000000000000000000100000000000000000000000: n3819 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n3819 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n3819 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n3819 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n3819 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n3819 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n3819 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n3819 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n3819 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n3819 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n3819 = 1'b0;
      59'b00000000000000000000000000000000000000000000001000000000000: n3819 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n3819 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n3819 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n3819 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n3819 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n3819 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n3819 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n3819 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n3819 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n3819 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n3819 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n3819 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n3819 = 1'b0;
      default: n3819 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:262:17  */
  always @*
    case (n3637)
      59'b10000000000000000000000000000000000000000000000000000000000: n3822 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n3822 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n3822 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n3822 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n3822 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n3822 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n3822 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n3822 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n3822 = 1'b0;
      59'b00000000010000000000000000000000000000000000000000000000000: n3822 = 1'b0;
      59'b00000000001000000000000000000000000000000000000000000000000: n3822 = 1'b0;
      59'b00000000000100000000000000000000000000000000000000000000000: n3822 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n3822 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n3822 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n3822 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n3822 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n3822 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n3822 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n3822 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n3822 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n3822 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n3822 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n3822 = n2939;
      59'b00000000000000000000000100000000000000000000000000000000000: n3822 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n3822 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n3822 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n3822 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n3822 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n3822 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n3822 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n3822 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n3822 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n3822 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n3822 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n3822 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n3822 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n3822 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n3822 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n3822 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n3822 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n3822 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n3822 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n3822 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n3822 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n3822 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n3822 = 1'b0;
      59'b00000000000000000000000000000000000000000000001000000000000: n3822 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n3822 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n3822 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n3822 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n3822 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n3822 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n3822 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n3822 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n3822 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n3822 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n3822 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n3822 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n3822 = 1'b0;
      default: n3822 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:262:17  */
  always @*
    case (n3637)
      59'b10000000000000000000000000000000000000000000000000000000000: n3825 = 3'b111;
      59'b01000000000000000000000000000000000000000000000000000000000: n3825 = 3'b111;
      59'b00100000000000000000000000000000000000000000000000000000000: n3825 = 3'b111;
      59'b00010000000000000000000000000000000000000000000000000000000: n3825 = n3619;
      59'b00001000000000000000000000000000000000000000000000000000000: n3825 = n3599;
      59'b00000100000000000000000000000000000000000000000000000000000: n3825 = n3554;
      59'b00000010000000000000000000000000000000000000000000000000000: n3825 = n3503;
      59'b00000001000000000000000000000000000000000000000000000000000: n3825 = n3431;
      59'b00000000100000000000000000000000000000000000000000000000000: n3825 = n3377;
      59'b00000000010000000000000000000000000000000000000000000000000: n3825 = n3282;
      59'b00000000001000000000000000000000000000000000000000000000000: n3825 = 3'b111;
      59'b00000000000100000000000000000000000000000000000000000000000: n3825 = 3'b111;
      59'b00000000000010000000000000000000000000000000000000000000000: n3825 = 3'b111;
      59'b00000000000001000000000000000000000000000000000000000000000: n3825 = 3'b111;
      59'b00000000000000100000000000000000000000000000000000000000000: n3825 = 3'b111;
      59'b00000000000000010000000000000000000000000000000000000000000: n3825 = 3'b111;
      59'b00000000000000001000000000000000000000000000000000000000000: n3825 = 3'b111;
      59'b00000000000000000100000000000000000000000000000000000000000: n3825 = 3'b111;
      59'b00000000000000000010000000000000000000000000000000000000000: n3825 = 3'b111;
      59'b00000000000000000001000000000000000000000000000000000000000: n3825 = 3'b111;
      59'b00000000000000000000100000000000000000000000000000000000000: n3825 = 3'b111;
      59'b00000000000000000000010000000000000000000000000000000000000: n3825 = 3'b111;
      59'b00000000000000000000001000000000000000000000000000000000000: n3825 = 3'b111;
      59'b00000000000000000000000100000000000000000000000000000000000: n3825 = 3'b111;
      59'b00000000000000000000000010000000000000000000000000000000000: n3825 = 3'b111;
      59'b00000000000000000000000001000000000000000000000000000000000: n3825 = 3'b111;
      59'b00000000000000000000000000100000000000000000000000000000000: n3825 = n2855;
      59'b00000000000000000000000000010000000000000000000000000000000: n3825 = 3'b111;
      59'b00000000000000000000000000001000000000000000000000000000000: n3825 = 3'b111;
      59'b00000000000000000000000000000100000000000000000000000000000: n3825 = 3'b111;
      59'b00000000000000000000000000000010000000000000000000000000000: n3825 = 3'b111;
      59'b00000000000000000000000000000001000000000000000000000000000: n3825 = n2745;
      59'b00000000000000000000000000000000100000000000000000000000000: n3825 = 3'b111;
      59'b00000000000000000000000000000000010000000000000000000000000: n3825 = n2690;
      59'b00000000000000000000000000000000001000000000000000000000000: n3825 = 3'b111;
      59'b00000000000000000000000000000000000100000000000000000000000: n3825 = 3'b111;
      59'b00000000000000000000000000000000000010000000000000000000000: n3825 = n2578;
      59'b00000000000000000000000000000000000001000000000000000000000: n3825 = 3'b111;
      59'b00000000000000000000000000000000000000100000000000000000000: n3825 = n2384;
      59'b00000000000000000000000000000000000000010000000000000000000: n3825 = 3'b111;
      59'b00000000000000000000000000000000000000001000000000000000000: n3825 = 3'b111;
      59'b00000000000000000000000000000000000000000100000000000000000: n3825 = 3'b111;
      59'b00000000000000000000000000000000000000000010000000000000000: n3825 = n2330;
      59'b00000000000000000000000000000000000000000001000000000000000: n3825 = n2273;
      59'b00000000000000000000000000000000000000000000100000000000000: n3825 = 3'b111;
      59'b00000000000000000000000000000000000000000000010000000000000: n3825 = n2225;
      59'b00000000000000000000000000000000000000000000001000000000000: n3825 = n2192;
      59'b00000000000000000000000000000000000000000000000100000000000: n3825 = 3'b111;
      59'b00000000000000000000000000000000000000000000000010000000000: n3825 = n2108;
      59'b00000000000000000000000000000000000000000000000001000000000: n3825 = n2085;
      59'b00000000000000000000000000000000000000000000000000100000000: n3825 = n2068;
      59'b00000000000000000000000000000000000000000000000000010000000: n3825 = n2051;
      59'b00000000000000000000000000000000000000000000000000001000000: n3825 = n2031;
      59'b00000000000000000000000000000000000000000000000000000100000: n3825 = n2017;
      59'b00000000000000000000000000000000000000000000000000000010000: n3825 = n2000;
      59'b00000000000000000000000000000000000000000000000000000001000: n3825 = n1960;
      59'b00000000000000000000000000000000000000000000000000000000100: n3825 = n1926;
      59'b00000000000000000000000000000000000000000000000000000000010: n3825 = 3'b111;
      59'b00000000000000000000000000000000000000000000000000000000001: n3825 = 3'b111;
      default: n3825 = 3'bX;
    endcase
  /* src/T80/T80_MCode.vhd:262:17  */
  always @*
    case (n3637)
      59'b10000000000000000000000000000000000000000000000000000000000: n3828 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n3828 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n3828 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n3828 = n3622;
      59'b00001000000000000000000000000000000000000000000000000000000: n3828 = n3602;
      59'b00000100000000000000000000000000000000000000000000000000000: n3828 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n3828 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n3828 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n3828 = 1'b0;
      59'b00000000010000000000000000000000000000000000000000000000000: n3828 = 1'b0;
      59'b00000000001000000000000000000000000000000000000000000000000: n3828 = 1'b0;
      59'b00000000000100000000000000000000000000000000000000000000000: n3828 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n3828 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n3828 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n3828 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n3828 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n3828 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n3828 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n3828 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n3828 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n3828 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n3828 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n3828 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n3828 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n3828 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n3828 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n3828 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n3828 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n3828 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n3828 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n3828 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n3828 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n3828 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n3828 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n3828 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n3828 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n3828 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n3828 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n3828 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n3828 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n3828 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n3828 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n3828 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n3828 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n3828 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n3828 = 1'b0;
      59'b00000000000000000000000000000000000000000000001000000000000: n3828 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n3828 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n3828 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n3828 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n3828 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n3828 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n3828 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n3828 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n3828 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n3828 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n3828 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n3828 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n3828 = 1'b0;
      default: n3828 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:262:17  */
  always @*
    case (n3637)
      59'b10000000000000000000000000000000000000000000000000000000000: n3831 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n3831 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n3831 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n3831 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n3831 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n3831 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n3831 = n3506;
      59'b00000001000000000000000000000000000000000000000000000000000: n3831 = n3434;
      59'b00000000100000000000000000000000000000000000000000000000000: n3831 = 1'b0;
      59'b00000000010000000000000000000000000000000000000000000000000: n3831 = 1'b0;
      59'b00000000001000000000000000000000000000000000000000000000000: n3831 = 1'b0;
      59'b00000000000100000000000000000000000000000000000000000000000: n3831 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n3831 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n3831 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n3831 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n3831 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n3831 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n3831 = n3061;
      59'b00000000000000000010000000000000000000000000000000000000000: n3831 = n3003;
      59'b00000000000000000001000000000000000000000000000000000000000: n3831 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n3831 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n3831 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n3831 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n3831 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n3831 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n3831 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n3831 = n2857;
      59'b00000000000000000000000000010000000000000000000000000000000: n3831 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n3831 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n3831 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n3831 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n3831 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n3831 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n3831 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n3831 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n3831 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n3831 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n3831 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n3831 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n3831 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n3831 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n3831 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n3831 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n3831 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n3831 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n3831 = 1'b0;
      59'b00000000000000000000000000000000000000000000001000000000000: n3831 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n3831 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n3831 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n3831 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n3831 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n3831 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n3831 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n3831 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n3831 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n3831 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n3831 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n3831 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n3831 = 1'b0;
      default: n3831 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:262:17  */
  always @*
    case (n3637)
      59'b10000000000000000000000000000000000000000000000000000000000: n3834 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n3834 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n3834 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n3834 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n3834 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n3834 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n3834 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n3834 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n3834 = 1'b0;
      59'b00000000010000000000000000000000000000000000000000000000000: n3834 = 1'b0;
      59'b00000000001000000000000000000000000000000000000000000000000: n3834 = n3245;
      59'b00000000000100000000000000000000000000000000000000000000000: n3834 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n3834 = n3207;
      59'b00000000000001000000000000000000000000000000000000000000000: n3834 = n3181;
      59'b00000000000000100000000000000000000000000000000000000000000: n3834 = n3154;
      59'b00000000000000010000000000000000000000000000000000000000000: n3834 = n3128;
      59'b00000000000000001000000000000000000000000000000000000000000: n3834 = n3101;
      59'b00000000000000000100000000000000000000000000000000000000000: n3834 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n3834 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n3834 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n3834 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n3834 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n3834 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n3834 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n3834 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n3834 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n3834 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n3834 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n3834 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n3834 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n3834 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n3834 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n3834 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n3834 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n3834 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n3834 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n3834 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n3834 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n3834 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n3834 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n3834 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n3834 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n3834 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n3834 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n3834 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n3834 = 1'b0;
      59'b00000000000000000000000000000000000000000000001000000000000: n3834 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n3834 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n3834 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n3834 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n3834 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n3834 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n3834 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n3834 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n3834 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n3834 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n3834 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n3834 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n3834 = 1'b0;
      default: n3834 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:262:17  */
  always @*
    case (n3637)
      59'b10000000000000000000000000000000000000000000000000000000000: n3838 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n3838 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n3838 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n3838 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n3838 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n3838 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n3838 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n3838 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n3838 = 1'b0;
      59'b00000000010000000000000000000000000000000000000000000000000: n3838 = 1'b0;
      59'b00000000001000000000000000000000000000000000000000000000000: n3838 = 1'b0;
      59'b00000000000100000000000000000000000000000000000000000000000: n3838 = 1'b1;
      59'b00000000000010000000000000000000000000000000000000000000000: n3838 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n3838 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n3838 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n3838 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n3838 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n3838 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n3838 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n3838 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n3838 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n3838 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n3838 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n3838 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n3838 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n3838 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n3838 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n3838 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n3838 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n3838 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n3838 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n3838 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n3838 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n3838 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n3838 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n3838 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n3838 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n3838 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n3838 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n3838 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n3838 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n3838 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n3838 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n3838 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n3838 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n3838 = 1'b0;
      59'b00000000000000000000000000000000000000000000001000000000000: n3838 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n3838 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n3838 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n3838 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n3838 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n3838 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n3838 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n3838 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n3838 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n3838 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n3838 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n3838 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n3838 = 1'b0;
      default: n3838 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:262:17  */
  always @*
    case (n3637)
      59'b10000000000000000000000000000000000000000000000000000000000: n3841 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n3841 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n3841 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n3841 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n3841 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n3841 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n3841 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n3841 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n3841 = n3380;
      59'b00000000010000000000000000000000000000000000000000000000000: n3841 = n3285;
      59'b00000000001000000000000000000000000000000000000000000000000: n3841 = 1'b0;
      59'b00000000000100000000000000000000000000000000000000000000000: n3841 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n3841 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n3841 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n3841 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n3841 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n3841 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n3841 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n3841 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n3841 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n3841 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n3841 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n3841 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n3841 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n3841 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n3841 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n3841 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n3841 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n3841 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n3841 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n3841 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n3841 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n3841 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n3841 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n3841 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n3841 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n3841 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n3841 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n3841 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n3841 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n3841 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n3841 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n3841 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n3841 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n3841 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n3841 = 1'b0;
      59'b00000000000000000000000000000000000000000000001000000000000: n3841 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n3841 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n3841 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n3841 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n3841 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n3841 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n3841 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n3841 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n3841 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n3841 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n3841 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n3841 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n3841 = 1'b0;
      default: n3841 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:262:17  */
  always @*
    case (n3637)
      59'b10000000000000000000000000000000000000000000000000000000000: n3844 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n3844 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n3844 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n3844 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n3844 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n3844 = n3557;
      59'b00000010000000000000000000000000000000000000000000000000000: n3844 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n3844 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n3844 = 1'b0;
      59'b00000000010000000000000000000000000000000000000000000000000: n3844 = 1'b0;
      59'b00000000001000000000000000000000000000000000000000000000000: n3844 = 1'b0;
      59'b00000000000100000000000000000000000000000000000000000000000: n3844 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n3844 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n3844 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n3844 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n3844 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n3844 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n3844 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n3844 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n3844 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n3844 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n3844 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n3844 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n3844 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n3844 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n3844 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n3844 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n3844 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n3844 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n3844 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n3844 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n3844 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n3844 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n3844 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n3844 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n3844 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n3844 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n3844 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n3844 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n3844 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n3844 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n3844 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n3844 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n3844 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n3844 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n3844 = 1'b0;
      59'b00000000000000000000000000000000000000000000001000000000000: n3844 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n3844 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n3844 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n3844 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n3844 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n3844 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n3844 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n3844 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n3844 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n3844 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n3844 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n3844 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n3844 = 1'b0;
      default: n3844 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:262:17  */
  always @*
    case (n3637)
      59'b10000000000000000000000000000000000000000000000000000000000: n3847 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n3847 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n3847 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n3847 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n3847 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n3847 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n3847 = n3509;
      59'b00000001000000000000000000000000000000000000000000000000000: n3847 = n3437;
      59'b00000000100000000000000000000000000000000000000000000000000: n3847 = n3383;
      59'b00000000010000000000000000000000000000000000000000000000000: n3847 = n3288;
      59'b00000000001000000000000000000000000000000000000000000000000: n3847 = 1'b0;
      59'b00000000000100000000000000000000000000000000000000000000000: n3847 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n3847 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n3847 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n3847 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n3847 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n3847 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n3847 = n3064;
      59'b00000000000000000010000000000000000000000000000000000000000: n3847 = n3006;
      59'b00000000000000000001000000000000000000000000000000000000000: n3847 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n3847 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n3847 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n3847 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n3847 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n3847 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n3847 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n3847 = n2859;
      59'b00000000000000000000000000010000000000000000000000000000000: n3847 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n3847 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n3847 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n3847 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n3847 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n3847 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n3847 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n3847 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n3847 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n3847 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n3847 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n3847 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n3847 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n3847 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n3847 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n3847 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n3847 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n3847 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n3847 = n2228;
      59'b00000000000000000000000000000000000000000000001000000000000: n3847 = n2195;
      59'b00000000000000000000000000000000000000000000000100000000000: n3847 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n3847 = n2111;
      59'b00000000000000000000000000000000000000000000000001000000000: n3847 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n3847 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n3847 = n2054;
      59'b00000000000000000000000000000000000000000000000000001000000: n3847 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n3847 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n3847 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n3847 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n3847 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n3847 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n3847 = 1'b0;
      default: n3847 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:262:17  */
  always @*
    case (n3637)
      59'b10000000000000000000000000000000000000000000000000000000000: n3850 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n3850 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n3850 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n3850 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n3850 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n3850 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n3850 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n3850 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n3850 = n3386;
      59'b00000000010000000000000000000000000000000000000000000000000: n3850 = n3291;
      59'b00000000001000000000000000000000000000000000000000000000000: n3850 = 1'b0;
      59'b00000000000100000000000000000000000000000000000000000000000: n3850 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n3850 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n3850 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n3850 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n3850 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n3850 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n3850 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n3850 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n3850 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n3850 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n3850 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n3850 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n3850 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n3850 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n3850 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n3850 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n3850 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n3850 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n3850 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n3850 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n3850 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n3850 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n3850 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n3850 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n3850 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n3850 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n3850 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n3850 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n3850 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n3850 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n3850 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n3850 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n3850 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n3850 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n3850 = n2231;
      59'b00000000000000000000000000000000000000000000001000000000000: n3850 = n2198;
      59'b00000000000000000000000000000000000000000000000100000000000: n3850 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n3850 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n3850 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n3850 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n3850 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n3850 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n3850 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n3850 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n3850 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n3850 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n3850 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n3850 = 1'b0;
      default: n3850 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:262:17  */
  always @*
    case (n3637)
      59'b10000000000000000000000000000000000000000000000000000000000: n3854 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n3854 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n3854 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n3854 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n3854 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n3854 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n3854 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n3854 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n3854 = 1'b0;
      59'b00000000010000000000000000000000000000000000000000000000000: n3854 = 1'b0;
      59'b00000000001000000000000000000000000000000000000000000000000: n3854 = 1'b0;
      59'b00000000000100000000000000000000000000000000000000000000000: n3854 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n3854 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n3854 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n3854 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n3854 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n3854 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n3854 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n3854 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n3854 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n3854 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n3854 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n3854 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n3854 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n3854 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n3854 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n3854 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n3854 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n3854 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n3854 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n3854 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n3854 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n3854 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n3854 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n3854 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n3854 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n3854 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n3854 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n3854 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n3854 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n3854 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n3854 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n3854 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n3854 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n3854 = 1'b1;
      59'b00000000000000000000000000000000000000000000010000000000000: n3854 = 1'b0;
      59'b00000000000000000000000000000000000000000000001000000000000: n3854 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n3854 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n3854 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n3854 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n3854 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n3854 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n3854 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n3854 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n3854 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n3854 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n3854 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n3854 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n3854 = 1'b0;
      default: n3854 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:262:17  */
  always @*
    case (n3637)
      59'b10000000000000000000000000000000000000000000000000000000000: n3858 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n3858 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n3858 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n3858 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n3858 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n3858 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n3858 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n3858 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n3858 = 1'b0;
      59'b00000000010000000000000000000000000000000000000000000000000: n3858 = 1'b0;
      59'b00000000001000000000000000000000000000000000000000000000000: n3858 = 1'b0;
      59'b00000000000100000000000000000000000000000000000000000000000: n3858 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n3858 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n3858 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n3858 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n3858 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n3858 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n3858 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n3858 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n3858 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n3858 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n3858 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n3858 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n3858 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n3858 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n3858 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n3858 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n3858 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n3858 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n3858 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n3858 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n3858 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n3858 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n3858 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n3858 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n3858 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n3858 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n3858 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n3858 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n3858 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n3858 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n3858 = 1'b1;
      59'b00000000000000000000000000000000000000000010000000000000000: n3858 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n3858 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n3858 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n3858 = 1'b0;
      59'b00000000000000000000000000000000000000000000001000000000000: n3858 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n3858 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n3858 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n3858 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n3858 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n3858 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n3858 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n3858 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n3858 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n3858 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n3858 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n3858 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n3858 = 1'b0;
      default: n3858 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:262:17  */
  always @*
    case (n3637)
      59'b10000000000000000000000000000000000000000000000000000000000: n3862 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n3862 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n3862 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n3862 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n3862 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n3862 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n3862 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n3862 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n3862 = 1'b0;
      59'b00000000010000000000000000000000000000000000000000000000000: n3862 = 1'b0;
      59'b00000000001000000000000000000000000000000000000000000000000: n3862 = 1'b0;
      59'b00000000000100000000000000000000000000000000000000000000000: n3862 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n3862 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n3862 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n3862 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n3862 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n3862 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n3862 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n3862 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n3862 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n3862 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n3862 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n3862 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n3862 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n3862 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n3862 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n3862 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n3862 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n3862 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n3862 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n3862 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n3862 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n3862 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n3862 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n3862 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n3862 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n3862 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n3862 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n3862 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n3862 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n3862 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n3862 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n3862 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n3862 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n3862 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n3862 = 1'b0;
      59'b00000000000000000000000000000000000000000000001000000000000: n3862 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n3862 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n3862 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n3862 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n3862 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n3862 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n3862 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n3862 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n3862 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n3862 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n3862 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n3862 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n3862 = 1'b1;
      default: n3862 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:262:17  */
  always @*
    case (n3637)
      59'b10000000000000000000000000000000000000000000000000000000000: n3866 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n3866 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n3866 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n3866 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n3866 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n3866 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n3866 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n3866 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n3866 = 1'b0;
      59'b00000000010000000000000000000000000000000000000000000000000: n3866 = 1'b0;
      59'b00000000001000000000000000000000000000000000000000000000000: n3866 = 1'b0;
      59'b00000000000100000000000000000000000000000000000000000000000: n3866 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n3866 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n3866 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n3866 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n3866 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n3866 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n3866 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n3866 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n3866 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n3866 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n3866 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n3866 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n3866 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n3866 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n3866 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n3866 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n3866 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n3866 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n3866 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n3866 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n3866 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n3866 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n3866 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n3866 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n3866 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n3866 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n3866 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n3866 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n3866 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n3866 = 1'b1;
      59'b00000000000000000000000000000000000000000100000000000000000: n3866 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n3866 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n3866 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n3866 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n3866 = 1'b0;
      59'b00000000000000000000000000000000000000000000001000000000000: n3866 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n3866 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n3866 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n3866 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n3866 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n3866 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n3866 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n3866 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n3866 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n3866 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n3866 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n3866 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n3866 = 1'b0;
      default: n3866 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:262:17  */
  always @*
    case (n3637)
      59'b10000000000000000000000000000000000000000000000000000000000: n3870 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n3870 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n3870 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n3870 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n3870 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n3870 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n3870 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n3870 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n3870 = 1'b0;
      59'b00000000010000000000000000000000000000000000000000000000000: n3870 = 1'b0;
      59'b00000000001000000000000000000000000000000000000000000000000: n3870 = 1'b0;
      59'b00000000000100000000000000000000000000000000000000000000000: n3870 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n3870 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n3870 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n3870 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n3870 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n3870 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n3870 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n3870 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n3870 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n3870 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n3870 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n3870 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n3870 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n3870 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n3870 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n3870 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n3870 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n3870 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n3870 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n3870 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n3870 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n3870 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n3870 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n3870 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n3870 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n3870 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n3870 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n3870 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n3870 = 1'b1;
      59'b00000000000000000000000000000000000000001000000000000000000: n3870 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n3870 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n3870 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n3870 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n3870 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n3870 = 1'b0;
      59'b00000000000000000000000000000000000000000000001000000000000: n3870 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n3870 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n3870 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n3870 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n3870 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n3870 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n3870 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n3870 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n3870 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n3870 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n3870 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n3870 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n3870 = 1'b0;
      default: n3870 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:262:17  */
  always @*
    case (n3637)
      59'b10000000000000000000000000000000000000000000000000000000000: n3873 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n3873 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n3873 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n3873 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n3873 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n3873 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n3873 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n3873 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n3873 = 1'b0;
      59'b00000000010000000000000000000000000000000000000000000000000: n3873 = 1'b0;
      59'b00000000001000000000000000000000000000000000000000000000000: n3873 = n3249;
      59'b00000000000100000000000000000000000000000000000000000000000: n3873 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n3873 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n3873 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n3873 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n3873 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n3873 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n3873 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n3873 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n3873 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n3873 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n3873 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n3873 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n3873 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n3873 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n3873 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n3873 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n3873 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n3873 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n3873 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n3873 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n3873 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n3873 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n3873 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n3873 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n3873 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n3873 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n3873 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n3873 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n3873 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n3873 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n3873 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n3873 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n3873 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n3873 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n3873 = 1'b0;
      59'b00000000000000000000000000000000000000000000001000000000000: n3873 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n3873 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n3873 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n3873 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n3873 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n3873 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n3873 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n3873 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n3873 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n3873 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n3873 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n3873 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n3873 = 1'b0;
      default: n3873 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:262:17  */
  always @*
    case (n3637)
      59'b10000000000000000000000000000000000000000000000000000000000: n3877 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n3877 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n3877 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n3877 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n3877 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n3877 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n3877 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n3877 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n3877 = 1'b0;
      59'b00000000010000000000000000000000000000000000000000000000000: n3877 = 1'b0;
      59'b00000000001000000000000000000000000000000000000000000000000: n3877 = 1'b0;
      59'b00000000000100000000000000000000000000000000000000000000000: n3877 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n3877 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n3877 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n3877 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n3877 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n3877 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n3877 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n3877 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n3877 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n3877 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n3877 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n3877 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n3877 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n3877 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n3877 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n3877 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n3877 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n3877 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n3877 = 1'b1;
      59'b00000000000000000000000000000010000000000000000000000000000: n3877 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n3877 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n3877 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n3877 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n3877 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n3877 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n3877 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n3877 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n3877 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n3877 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n3877 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n3877 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n3877 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n3877 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n3877 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n3877 = 1'b0;
      59'b00000000000000000000000000000000000000000000001000000000000: n3877 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n3877 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n3877 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n3877 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n3877 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n3877 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n3877 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n3877 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n3877 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n3877 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n3877 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n3877 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n3877 = 1'b0;
      default: n3877 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:262:17  */
  always @*
    case (n3637)
      59'b10000000000000000000000000000000000000000000000000000000000: n3881 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n3881 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n3881 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n3881 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n3881 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n3881 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n3881 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n3881 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n3881 = 1'b0;
      59'b00000000010000000000000000000000000000000000000000000000000: n3881 = 1'b0;
      59'b00000000001000000000000000000000000000000000000000000000000: n3881 = 1'b0;
      59'b00000000000100000000000000000000000000000000000000000000000: n3881 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n3881 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n3881 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n3881 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n3881 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n3881 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n3881 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n3881 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n3881 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n3881 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n3881 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n3881 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n3881 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n3881 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n3881 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n3881 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n3881 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n3881 = 1'b1;
      59'b00000000000000000000000000000100000000000000000000000000000: n3881 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n3881 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n3881 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n3881 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n3881 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n3881 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n3881 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n3881 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n3881 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n3881 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n3881 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n3881 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n3881 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n3881 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n3881 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n3881 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n3881 = 1'b0;
      59'b00000000000000000000000000000000000000000000001000000000000: n3881 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n3881 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n3881 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n3881 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n3881 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n3881 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n3881 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n3881 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n3881 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n3881 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n3881 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n3881 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n3881 = 1'b0;
      default: n3881 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:262:17  */
  always @*
    case (n3637)
      59'b10000000000000000000000000000000000000000000000000000000000: n3885 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n3885 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n3885 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n3885 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n3885 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n3885 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n3885 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n3885 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n3885 = 1'b0;
      59'b00000000010000000000000000000000000000000000000000000000000: n3885 = 1'b0;
      59'b00000000001000000000000000000000000000000000000000000000000: n3885 = 1'b0;
      59'b00000000000100000000000000000000000000000000000000000000000: n3885 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n3885 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n3885 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n3885 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n3885 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n3885 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n3885 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n3885 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n3885 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n3885 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n3885 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n3885 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n3885 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n3885 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n3885 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n3885 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n3885 = 1'b1;
      59'b00000000000000000000000000001000000000000000000000000000000: n3885 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n3885 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n3885 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n3885 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n3885 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n3885 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n3885 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n3885 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n3885 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n3885 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n3885 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n3885 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n3885 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n3885 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n3885 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n3885 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n3885 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n3885 = 1'b0;
      59'b00000000000000000000000000000000000000000000001000000000000: n3885 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n3885 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n3885 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n3885 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n3885 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n3885 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n3885 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n3885 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n3885 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n3885 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n3885 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n3885 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n3885 = 1'b0;
      default: n3885 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:262:17  */
  always @*
    case (n3637)
      59'b10000000000000000000000000000000000000000000000000000000000: n3889 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n3889 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n3889 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n3889 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n3889 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n3889 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n3889 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n3889 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n3889 = 1'b0;
      59'b00000000010000000000000000000000000000000000000000000000000: n3889 = 1'b0;
      59'b00000000001000000000000000000000000000000000000000000000000: n3889 = 1'b0;
      59'b00000000000100000000000000000000000000000000000000000000000: n3889 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n3889 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n3889 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n3889 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n3889 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n3889 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n3889 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n3889 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n3889 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n3889 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n3889 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n3889 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n3889 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n3889 = 1'b1;
      59'b00000000000000000000000001000000000000000000000000000000000: n3889 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n3889 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n3889 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n3889 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n3889 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n3889 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n3889 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n3889 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n3889 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n3889 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n3889 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n3889 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n3889 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n3889 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n3889 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n3889 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n3889 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n3889 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n3889 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n3889 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n3889 = 1'b0;
      59'b00000000000000000000000000000000000000000000001000000000000: n3889 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n3889 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n3889 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n3889 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n3889 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n3889 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n3889 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n3889 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n3889 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n3889 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n3889 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n3889 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n3889 = 1'b0;
      default: n3889 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:262:17  */
  always @*
    case (n3637)
      59'b10000000000000000000000000000000000000000000000000000000000: n3893 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n3893 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n3893 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n3893 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n3893 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n3893 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n3893 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n3893 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n3893 = 1'b0;
      59'b00000000010000000000000000000000000000000000000000000000000: n3893 = 1'b0;
      59'b00000000001000000000000000000000000000000000000000000000000: n3893 = 1'b0;
      59'b00000000000100000000000000000000000000000000000000000000000: n3893 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n3893 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n3893 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n3893 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n3893 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n3893 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n3893 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n3893 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n3893 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n3893 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n3893 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n3893 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n3893 = 1'b1;
      59'b00000000000000000000000010000000000000000000000000000000000: n3893 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n3893 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n3893 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n3893 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n3893 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n3893 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n3893 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n3893 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n3893 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n3893 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n3893 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n3893 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n3893 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n3893 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n3893 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n3893 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n3893 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n3893 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n3893 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n3893 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n3893 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n3893 = 1'b0;
      59'b00000000000000000000000000000000000000000000001000000000000: n3893 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n3893 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n3893 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n3893 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n3893 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n3893 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n3893 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n3893 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n3893 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n3893 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n3893 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n3893 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n3893 = 1'b0;
      default: n3893 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:262:17  */
  always @*
    case (n3637)
      59'b10000000000000000000000000000000000000000000000000000000000: n3897 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n3897 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n3897 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n3897 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n3897 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n3897 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n3897 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n3897 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n3897 = 1'b0;
      59'b00000000010000000000000000000000000000000000000000000000000: n3897 = 1'b0;
      59'b00000000001000000000000000000000000000000000000000000000000: n3897 = 1'b0;
      59'b00000000000100000000000000000000000000000000000000000000000: n3897 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n3897 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n3897 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n3897 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n3897 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n3897 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n3897 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n3897 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n3897 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n3897 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n3897 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n3897 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n3897 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n3897 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n3897 = 1'b1;
      59'b00000000000000000000000000100000000000000000000000000000000: n3897 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n3897 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n3897 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n3897 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n3897 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n3897 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n3897 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n3897 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n3897 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n3897 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n3897 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n3897 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n3897 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n3897 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n3897 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n3897 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n3897 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n3897 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n3897 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n3897 = 1'b0;
      59'b00000000000000000000000000000000000000000000001000000000000: n3897 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n3897 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n3897 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n3897 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n3897 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n3897 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n3897 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n3897 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n3897 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n3897 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n3897 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n3897 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n3897 = 1'b0;
      default: n3897 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:262:17  */
  always @*
    case (n3637)
      59'b10000000000000000000000000000000000000000000000000000000000: n3900 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n3900 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n3900 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n3900 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n3900 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n3900 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n3900 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n3900 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n3900 = 1'b0;
      59'b00000000010000000000000000000000000000000000000000000000000: n3900 = 1'b0;
      59'b00000000001000000000000000000000000000000000000000000000000: n3900 = n3252;
      59'b00000000000100000000000000000000000000000000000000000000000: n3900 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n3900 = n3210;
      59'b00000000000001000000000000000000000000000000000000000000000: n3900 = n3184;
      59'b00000000000000100000000000000000000000000000000000000000000: n3900 = n3157;
      59'b00000000000000010000000000000000000000000000000000000000000: n3900 = n3131;
      59'b00000000000000001000000000000000000000000000000000000000000: n3900 = n3104;
      59'b00000000000000000100000000000000000000000000000000000000000: n3900 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n3900 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n3900 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n3900 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n3900 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n3900 = n2943;
      59'b00000000000000000000000100000000000000000000000000000000000: n3900 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n3900 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n3900 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n3900 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n3900 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n3900 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n3900 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n3900 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n3900 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n3900 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n3900 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n3900 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n3900 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n3900 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n3900 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n3900 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n3900 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n3900 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n3900 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n3900 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n3900 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n3900 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n3900 = 1'b0;
      59'b00000000000000000000000000000000000000000000001000000000000: n3900 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n3900 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n3900 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n3900 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n3900 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n3900 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n3900 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n3900 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n3900 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n3900 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n3900 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n3900 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n3900 = 1'b0;
      default: n3900 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:262:17  */
  always @*
    case (n3637)
      59'b10000000000000000000000000000000000000000000000000000000000: n3903 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n3903 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n3903 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n3903 = n3625;
      59'b00001000000000000000000000000000000000000000000000000000000: n3903 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n3903 = n3561;
      59'b00000010000000000000000000000000000000000000000000000000000: n3903 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n3903 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n3903 = n3390;
      59'b00000000010000000000000000000000000000000000000000000000000: n3903 = n3295;
      59'b00000000001000000000000000000000000000000000000000000000000: n3903 = 1'b0;
      59'b00000000000100000000000000000000000000000000000000000000000: n3903 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n3903 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n3903 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n3903 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n3903 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n3903 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n3903 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n3903 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n3903 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n3903 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n3903 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n3903 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n3903 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n3903 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n3903 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n3903 = n2860;
      59'b00000000000000000000000000010000000000000000000000000000000: n3903 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n3903 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n3903 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n3903 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n3903 = n2748;
      59'b00000000000000000000000000000000100000000000000000000000000: n3903 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n3903 = n2693;
      59'b00000000000000000000000000000000001000000000000000000000000: n3903 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n3903 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n3903 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n3903 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n3903 = n2388;
      59'b00000000000000000000000000000000000000010000000000000000000: n3903 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n3903 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n3903 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n3903 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n3903 = n2277;
      59'b00000000000000000000000000000000000000000000100000000000000: n3903 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n3903 = n2235;
      59'b00000000000000000000000000000000000000000000001000000000000: n3903 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n3903 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n3903 = n2114;
      59'b00000000000000000000000000000000000000000000000001000000000: n3903 = n2088;
      59'b00000000000000000000000000000000000000000000000000100000000: n3903 = n2071;
      59'b00000000000000000000000000000000000000000000000000010000000: n3903 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n3903 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n3903 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n3903 = n2003;
      59'b00000000000000000000000000000000000000000000000000000001000: n3903 = n1963;
      59'b00000000000000000000000000000000000000000000000000000000100: n3903 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n3903 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n3903 = 1'b0;
      default: n3903 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:254:17  */
  assign n3905 = iset == 2'b00;
  /* src/T80/T80_MCode.vhd:1347:54  */
  assign n3906 = ir[2:0]; // extract
  /* src/T80/T80_MCode.vhd:1348:54  */
  assign n3907 = ir[2:0]; // extract
  /* src/T80/T80_MCode.vhd:1367:43  */
  assign n3909 = mcycle == 3'b001;
  /* src/T80/T80_MCode.vhd:1367:33  */
  assign n3912 = n3909 ? 1'b1 : 1'b0;
  /* src/T80/T80_MCode.vhd:1367:33  */
  assign n3914 = n3909 ? 4'b1000 : n1735;
  /* src/T80/T80_MCode.vhd:1367:33  */
  assign n3917 = n3909 ? 1'b1 : 1'b0;
  /* src/T80/T80_MCode.vhd:1351:25  */
  assign n3919 = ir == 8'b00000000;
  /* src/T80/T80_MCode.vhd:1351:40  */
  assign n3921 = ir == 8'b00000001;
  /* src/T80/T80_MCode.vhd:1351:40  */
  assign n3922 = n3919 | n3921;
  /* src/T80/T80_MCode.vhd:1351:51  */
  assign n3924 = ir == 8'b00000010;
  /* src/T80/T80_MCode.vhd:1351:51  */
  assign n3925 = n3922 | n3924;
  /* src/T80/T80_MCode.vhd:1351:62  */
  assign n3927 = ir == 8'b00000011;
  /* src/T80/T80_MCode.vhd:1351:62  */
  assign n3928 = n3925 | n3927;
  /* src/T80/T80_MCode.vhd:1351:73  */
  assign n3930 = ir == 8'b00000100;
  /* src/T80/T80_MCode.vhd:1351:73  */
  assign n3931 = n3928 | n3930;
  /* src/T80/T80_MCode.vhd:1351:84  */
  assign n3933 = ir == 8'b00000101;
  /* src/T80/T80_MCode.vhd:1351:84  */
  assign n3934 = n3931 | n3933;
  /* src/T80/T80_MCode.vhd:1351:95  */
  assign n3936 = ir == 8'b00000111;
  /* src/T80/T80_MCode.vhd:1351:95  */
  assign n3937 = n3934 | n3936;
  /* src/T80/T80_MCode.vhd:1352:33  */
  assign n3939 = ir == 8'b00010000;
  /* src/T80/T80_MCode.vhd:1352:33  */
  assign n3940 = n3937 | n3939;
  /* src/T80/T80_MCode.vhd:1352:44  */
  assign n3942 = ir == 8'b00010001;
  /* src/T80/T80_MCode.vhd:1352:44  */
  assign n3943 = n3940 | n3942;
  /* src/T80/T80_MCode.vhd:1352:55  */
  assign n3945 = ir == 8'b00010010;
  /* src/T80/T80_MCode.vhd:1352:55  */
  assign n3946 = n3943 | n3945;
  /* src/T80/T80_MCode.vhd:1352:66  */
  assign n3948 = ir == 8'b00010011;
  /* src/T80/T80_MCode.vhd:1352:66  */
  assign n3949 = n3946 | n3948;
  /* src/T80/T80_MCode.vhd:1352:77  */
  assign n3951 = ir == 8'b00010100;
  /* src/T80/T80_MCode.vhd:1352:77  */
  assign n3952 = n3949 | n3951;
  /* src/T80/T80_MCode.vhd:1352:88  */
  assign n3954 = ir == 8'b00010101;
  /* src/T80/T80_MCode.vhd:1352:88  */
  assign n3955 = n3952 | n3954;
  /* src/T80/T80_MCode.vhd:1352:99  */
  assign n3957 = ir == 8'b00010111;
  /* src/T80/T80_MCode.vhd:1352:99  */
  assign n3958 = n3955 | n3957;
  /* src/T80/T80_MCode.vhd:1353:33  */
  assign n3960 = ir == 8'b00001000;
  /* src/T80/T80_MCode.vhd:1353:33  */
  assign n3961 = n3958 | n3960;
  /* src/T80/T80_MCode.vhd:1353:44  */
  assign n3963 = ir == 8'b00001001;
  /* src/T80/T80_MCode.vhd:1353:44  */
  assign n3964 = n3961 | n3963;
  /* src/T80/T80_MCode.vhd:1353:55  */
  assign n3966 = ir == 8'b00001010;
  /* src/T80/T80_MCode.vhd:1353:55  */
  assign n3967 = n3964 | n3966;
  /* src/T80/T80_MCode.vhd:1353:66  */
  assign n3969 = ir == 8'b00001011;
  /* src/T80/T80_MCode.vhd:1353:66  */
  assign n3970 = n3967 | n3969;
  /* src/T80/T80_MCode.vhd:1353:77  */
  assign n3972 = ir == 8'b00001100;
  /* src/T80/T80_MCode.vhd:1353:77  */
  assign n3973 = n3970 | n3972;
  /* src/T80/T80_MCode.vhd:1353:88  */
  assign n3975 = ir == 8'b00001101;
  /* src/T80/T80_MCode.vhd:1353:88  */
  assign n3976 = n3973 | n3975;
  /* src/T80/T80_MCode.vhd:1353:99  */
  assign n3978 = ir == 8'b00001111;
  /* src/T80/T80_MCode.vhd:1353:99  */
  assign n3979 = n3976 | n3978;
  /* src/T80/T80_MCode.vhd:1354:33  */
  assign n3981 = ir == 8'b00011000;
  /* src/T80/T80_MCode.vhd:1354:33  */
  assign n3982 = n3979 | n3981;
  /* src/T80/T80_MCode.vhd:1354:44  */
  assign n3984 = ir == 8'b00011001;
  /* src/T80/T80_MCode.vhd:1354:44  */
  assign n3985 = n3982 | n3984;
  /* src/T80/T80_MCode.vhd:1354:55  */
  assign n3987 = ir == 8'b00011010;
  /* src/T80/T80_MCode.vhd:1354:55  */
  assign n3988 = n3985 | n3987;
  /* src/T80/T80_MCode.vhd:1354:66  */
  assign n3990 = ir == 8'b00011011;
  /* src/T80/T80_MCode.vhd:1354:66  */
  assign n3991 = n3988 | n3990;
  /* src/T80/T80_MCode.vhd:1354:77  */
  assign n3993 = ir == 8'b00011100;
  /* src/T80/T80_MCode.vhd:1354:77  */
  assign n3994 = n3991 | n3993;
  /* src/T80/T80_MCode.vhd:1354:88  */
  assign n3996 = ir == 8'b00011101;
  /* src/T80/T80_MCode.vhd:1354:88  */
  assign n3997 = n3994 | n3996;
  /* src/T80/T80_MCode.vhd:1354:99  */
  assign n3999 = ir == 8'b00011111;
  /* src/T80/T80_MCode.vhd:1354:99  */
  assign n4000 = n3997 | n3999;
  /* src/T80/T80_MCode.vhd:1355:33  */
  assign n4002 = ir == 8'b00100000;
  /* src/T80/T80_MCode.vhd:1355:33  */
  assign n4003 = n4000 | n4002;
  /* src/T80/T80_MCode.vhd:1355:44  */
  assign n4005 = ir == 8'b00100001;
  /* src/T80/T80_MCode.vhd:1355:44  */
  assign n4006 = n4003 | n4005;
  /* src/T80/T80_MCode.vhd:1355:55  */
  assign n4008 = ir == 8'b00100010;
  /* src/T80/T80_MCode.vhd:1355:55  */
  assign n4009 = n4006 | n4008;
  /* src/T80/T80_MCode.vhd:1355:66  */
  assign n4011 = ir == 8'b00100011;
  /* src/T80/T80_MCode.vhd:1355:66  */
  assign n4012 = n4009 | n4011;
  /* src/T80/T80_MCode.vhd:1355:77  */
  assign n4014 = ir == 8'b00100100;
  /* src/T80/T80_MCode.vhd:1355:77  */
  assign n4015 = n4012 | n4014;
  /* src/T80/T80_MCode.vhd:1355:88  */
  assign n4017 = ir == 8'b00100101;
  /* src/T80/T80_MCode.vhd:1355:88  */
  assign n4018 = n4015 | n4017;
  /* src/T80/T80_MCode.vhd:1355:99  */
  assign n4020 = ir == 8'b00100111;
  /* src/T80/T80_MCode.vhd:1355:99  */
  assign n4021 = n4018 | n4020;
  /* src/T80/T80_MCode.vhd:1356:33  */
  assign n4023 = ir == 8'b00101000;
  /* src/T80/T80_MCode.vhd:1356:33  */
  assign n4024 = n4021 | n4023;
  /* src/T80/T80_MCode.vhd:1356:44  */
  assign n4026 = ir == 8'b00101001;
  /* src/T80/T80_MCode.vhd:1356:44  */
  assign n4027 = n4024 | n4026;
  /* src/T80/T80_MCode.vhd:1356:55  */
  assign n4029 = ir == 8'b00101010;
  /* src/T80/T80_MCode.vhd:1356:55  */
  assign n4030 = n4027 | n4029;
  /* src/T80/T80_MCode.vhd:1356:66  */
  assign n4032 = ir == 8'b00101011;
  /* src/T80/T80_MCode.vhd:1356:66  */
  assign n4033 = n4030 | n4032;
  /* src/T80/T80_MCode.vhd:1356:77  */
  assign n4035 = ir == 8'b00101100;
  /* src/T80/T80_MCode.vhd:1356:77  */
  assign n4036 = n4033 | n4035;
  /* src/T80/T80_MCode.vhd:1356:88  */
  assign n4038 = ir == 8'b00101101;
  /* src/T80/T80_MCode.vhd:1356:88  */
  assign n4039 = n4036 | n4038;
  /* src/T80/T80_MCode.vhd:1356:99  */
  assign n4041 = ir == 8'b00101111;
  /* src/T80/T80_MCode.vhd:1356:99  */
  assign n4042 = n4039 | n4041;
  /* src/T80/T80_MCode.vhd:1357:33  */
  assign n4044 = ir == 8'b00110000;
  /* src/T80/T80_MCode.vhd:1357:33  */
  assign n4045 = n4042 | n4044;
  /* src/T80/T80_MCode.vhd:1357:44  */
  assign n4047 = ir == 8'b00110001;
  /* src/T80/T80_MCode.vhd:1357:44  */
  assign n4048 = n4045 | n4047;
  /* src/T80/T80_MCode.vhd:1357:55  */
  assign n4050 = ir == 8'b00110010;
  /* src/T80/T80_MCode.vhd:1357:55  */
  assign n4051 = n4048 | n4050;
  /* src/T80/T80_MCode.vhd:1357:66  */
  assign n4053 = ir == 8'b00110011;
  /* src/T80/T80_MCode.vhd:1357:66  */
  assign n4054 = n4051 | n4053;
  /* src/T80/T80_MCode.vhd:1357:77  */
  assign n4056 = ir == 8'b00110100;
  /* src/T80/T80_MCode.vhd:1357:77  */
  assign n4057 = n4054 | n4056;
  /* src/T80/T80_MCode.vhd:1357:88  */
  assign n4059 = ir == 8'b00110101;
  /* src/T80/T80_MCode.vhd:1357:88  */
  assign n4060 = n4057 | n4059;
  /* src/T80/T80_MCode.vhd:1357:99  */
  assign n4062 = ir == 8'b00110111;
  /* src/T80/T80_MCode.vhd:1357:99  */
  assign n4063 = n4060 | n4062;
  /* src/T80/T80_MCode.vhd:1358:33  */
  assign n4065 = ir == 8'b00111000;
  /* src/T80/T80_MCode.vhd:1358:33  */
  assign n4066 = n4063 | n4065;
  /* src/T80/T80_MCode.vhd:1358:44  */
  assign n4068 = ir == 8'b00111001;
  /* src/T80/T80_MCode.vhd:1358:44  */
  assign n4069 = n4066 | n4068;
  /* src/T80/T80_MCode.vhd:1358:55  */
  assign n4071 = ir == 8'b00111010;
  /* src/T80/T80_MCode.vhd:1358:55  */
  assign n4072 = n4069 | n4071;
  /* src/T80/T80_MCode.vhd:1358:66  */
  assign n4074 = ir == 8'b00111011;
  /* src/T80/T80_MCode.vhd:1358:66  */
  assign n4075 = n4072 | n4074;
  /* src/T80/T80_MCode.vhd:1358:77  */
  assign n4077 = ir == 8'b00111100;
  /* src/T80/T80_MCode.vhd:1358:77  */
  assign n4078 = n4075 | n4077;
  /* src/T80/T80_MCode.vhd:1358:88  */
  assign n4080 = ir == 8'b00111101;
  /* src/T80/T80_MCode.vhd:1358:88  */
  assign n4081 = n4078 | n4080;
  /* src/T80/T80_MCode.vhd:1358:99  */
  assign n4083 = ir == 8'b00111111;
  /* src/T80/T80_MCode.vhd:1358:99  */
  assign n4084 = n4081 | n4083;
  /* src/T80/T80_MCode.vhd:1382:38  */
  assign n4085 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:1383:33  */
  assign n4087 = n4085 == 31'b0000000000000000000000000000001;
  /* src/T80/T80_MCode.vhd:1383:40  */
  assign n4089 = n4085 == 31'b0000000000000000000000000000111;
  /* src/T80/T80_MCode.vhd:1383:40  */
  assign n4090 = n4087 | n4089;
  /* src/T80/T80_MCode.vhd:1385:33  */
  assign n4092 = n4085 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:1391:33  */
  assign n4094 = n4085 == 31'b0000000000000000000000000000011;
  /* src/T80/T80_MCode.vhd:1382:33  */
  assign n4095 = {n4094, n4092, n4090};
  /* src/T80/T80_MCode.vhd:1382:33  */
  always @*
    case (n4095)
      3'b100: n4097 = n1732;
      3'b010: n4097 = 3'b100;
      3'b001: n4097 = n1732;
      default: n4097 = n1732;
    endcase
  /* src/T80/T80_MCode.vhd:1382:33  */
  always @*
    case (n4095)
      3'b100: n4100 = 1'b0;
      3'b010: n4100 = 1'b1;
      3'b001: n4100 = 1'b0;
      default: n4100 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1382:33  */
  always @*
    case (n4095)
      3'b100: n4102 = n1735;
      3'b010: n4102 = 4'b1000;
      3'b001: n4102 = n1735;
      default: n4102 = n1735;
    endcase
  /* src/T80/T80_MCode.vhd:1382:33  */
  always @*
    case (n4095)
      3'b100: n4105 = 1'b0;
      3'b010: n4105 = 1'b1;
      3'b001: n4105 = 1'b0;
      default: n4105 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1382:33  */
  always @*
    case (n4095)
      3'b100: n4109 = 3'b111;
      3'b010: n4109 = 3'b010;
      3'b001: n4109 = 3'b010;
      default: n4109 = 3'b111;
    endcase
  /* src/T80/T80_MCode.vhd:1382:33  */
  always @*
    case (n4095)
      3'b100: n4112 = 1'b1;
      3'b010: n4112 = 1'b0;
      3'b001: n4112 = 1'b0;
      default: n4112 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1372:25  */
  assign n4114 = ir == 8'b00000110;
  /* src/T80/T80_MCode.vhd:1372:40  */
  assign n4116 = ir == 8'b00010110;
  /* src/T80/T80_MCode.vhd:1372:40  */
  assign n4117 = n4114 | n4116;
  /* src/T80/T80_MCode.vhd:1372:51  */
  assign n4119 = ir == 8'b00001110;
  /* src/T80/T80_MCode.vhd:1372:51  */
  assign n4120 = n4117 | n4119;
  /* src/T80/T80_MCode.vhd:1372:62  */
  assign n4122 = ir == 8'b00011110;
  /* src/T80/T80_MCode.vhd:1372:62  */
  assign n4123 = n4120 | n4122;
  /* src/T80/T80_MCode.vhd:1372:73  */
  assign n4125 = ir == 8'b00101110;
  /* src/T80/T80_MCode.vhd:1372:73  */
  assign n4126 = n4123 | n4125;
  /* src/T80/T80_MCode.vhd:1372:84  */
  assign n4128 = ir == 8'b00111110;
  /* src/T80/T80_MCode.vhd:1372:84  */
  assign n4129 = n4126 | n4128;
  /* src/T80/T80_MCode.vhd:1372:95  */
  assign n4131 = ir == 8'b00100110;
  /* src/T80/T80_MCode.vhd:1372:95  */
  assign n4132 = n4129 | n4131;
  /* src/T80/T80_MCode.vhd:1372:106  */
  assign n4134 = ir == 8'b00110110;
  /* src/T80/T80_MCode.vhd:1372:106  */
  assign n4135 = n4132 | n4134;
  /* src/T80/T80_MCode.vhd:1404:43  */
  assign n4137 = mcycle == 3'b001;
  /* src/T80/T80_MCode.vhd:1405:64  */
  assign n4138 = ir[2:0]; // extract
  /* src/T80/T80_MCode.vhd:1404:33  */
  assign n4139 = n4137 ? n4138 : n3907;
  /* src/T80/T80_MCode.vhd:1404:33  */
  assign n4141 = n4137 ? 4'b1001 : n1735;
  /* src/T80/T80_MCode.vhd:1395:25  */
  assign n4143 = ir == 8'b01000000;
  /* src/T80/T80_MCode.vhd:1395:40  */
  assign n4145 = ir == 8'b01000001;
  /* src/T80/T80_MCode.vhd:1395:40  */
  assign n4146 = n4143 | n4145;
  /* src/T80/T80_MCode.vhd:1395:51  */
  assign n4148 = ir == 8'b01000010;
  /* src/T80/T80_MCode.vhd:1395:51  */
  assign n4149 = n4146 | n4148;
  /* src/T80/T80_MCode.vhd:1395:62  */
  assign n4151 = ir == 8'b01000011;
  /* src/T80/T80_MCode.vhd:1395:62  */
  assign n4152 = n4149 | n4151;
  /* src/T80/T80_MCode.vhd:1395:73  */
  assign n4154 = ir == 8'b01000100;
  /* src/T80/T80_MCode.vhd:1395:73  */
  assign n4155 = n4152 | n4154;
  /* src/T80/T80_MCode.vhd:1395:84  */
  assign n4157 = ir == 8'b01000101;
  /* src/T80/T80_MCode.vhd:1395:84  */
  assign n4158 = n4155 | n4157;
  /* src/T80/T80_MCode.vhd:1395:95  */
  assign n4160 = ir == 8'b01000111;
  /* src/T80/T80_MCode.vhd:1395:95  */
  assign n4161 = n4158 | n4160;
  /* src/T80/T80_MCode.vhd:1396:33  */
  assign n4163 = ir == 8'b01001000;
  /* src/T80/T80_MCode.vhd:1396:33  */
  assign n4164 = n4161 | n4163;
  /* src/T80/T80_MCode.vhd:1396:44  */
  assign n4166 = ir == 8'b01001001;
  /* src/T80/T80_MCode.vhd:1396:44  */
  assign n4167 = n4164 | n4166;
  /* src/T80/T80_MCode.vhd:1396:55  */
  assign n4169 = ir == 8'b01001010;
  /* src/T80/T80_MCode.vhd:1396:55  */
  assign n4170 = n4167 | n4169;
  /* src/T80/T80_MCode.vhd:1396:66  */
  assign n4172 = ir == 8'b01001011;
  /* src/T80/T80_MCode.vhd:1396:66  */
  assign n4173 = n4170 | n4172;
  /* src/T80/T80_MCode.vhd:1396:77  */
  assign n4175 = ir == 8'b01001100;
  /* src/T80/T80_MCode.vhd:1396:77  */
  assign n4176 = n4173 | n4175;
  /* src/T80/T80_MCode.vhd:1396:88  */
  assign n4178 = ir == 8'b01001101;
  /* src/T80/T80_MCode.vhd:1396:88  */
  assign n4179 = n4176 | n4178;
  /* src/T80/T80_MCode.vhd:1396:99  */
  assign n4181 = ir == 8'b01001111;
  /* src/T80/T80_MCode.vhd:1396:99  */
  assign n4182 = n4179 | n4181;
  /* src/T80/T80_MCode.vhd:1397:33  */
  assign n4184 = ir == 8'b01010000;
  /* src/T80/T80_MCode.vhd:1397:33  */
  assign n4185 = n4182 | n4184;
  /* src/T80/T80_MCode.vhd:1397:44  */
  assign n4187 = ir == 8'b01010001;
  /* src/T80/T80_MCode.vhd:1397:44  */
  assign n4188 = n4185 | n4187;
  /* src/T80/T80_MCode.vhd:1397:55  */
  assign n4190 = ir == 8'b01010010;
  /* src/T80/T80_MCode.vhd:1397:55  */
  assign n4191 = n4188 | n4190;
  /* src/T80/T80_MCode.vhd:1397:66  */
  assign n4193 = ir == 8'b01010011;
  /* src/T80/T80_MCode.vhd:1397:66  */
  assign n4194 = n4191 | n4193;
  /* src/T80/T80_MCode.vhd:1397:77  */
  assign n4196 = ir == 8'b01010100;
  /* src/T80/T80_MCode.vhd:1397:77  */
  assign n4197 = n4194 | n4196;
  /* src/T80/T80_MCode.vhd:1397:88  */
  assign n4199 = ir == 8'b01010101;
  /* src/T80/T80_MCode.vhd:1397:88  */
  assign n4200 = n4197 | n4199;
  /* src/T80/T80_MCode.vhd:1397:99  */
  assign n4202 = ir == 8'b01010111;
  /* src/T80/T80_MCode.vhd:1397:99  */
  assign n4203 = n4200 | n4202;
  /* src/T80/T80_MCode.vhd:1398:33  */
  assign n4205 = ir == 8'b01011000;
  /* src/T80/T80_MCode.vhd:1398:33  */
  assign n4206 = n4203 | n4205;
  /* src/T80/T80_MCode.vhd:1398:44  */
  assign n4208 = ir == 8'b01011001;
  /* src/T80/T80_MCode.vhd:1398:44  */
  assign n4209 = n4206 | n4208;
  /* src/T80/T80_MCode.vhd:1398:55  */
  assign n4211 = ir == 8'b01011010;
  /* src/T80/T80_MCode.vhd:1398:55  */
  assign n4212 = n4209 | n4211;
  /* src/T80/T80_MCode.vhd:1398:66  */
  assign n4214 = ir == 8'b01011011;
  /* src/T80/T80_MCode.vhd:1398:66  */
  assign n4215 = n4212 | n4214;
  /* src/T80/T80_MCode.vhd:1398:77  */
  assign n4217 = ir == 8'b01011100;
  /* src/T80/T80_MCode.vhd:1398:77  */
  assign n4218 = n4215 | n4217;
  /* src/T80/T80_MCode.vhd:1398:88  */
  assign n4220 = ir == 8'b01011101;
  /* src/T80/T80_MCode.vhd:1398:88  */
  assign n4221 = n4218 | n4220;
  /* src/T80/T80_MCode.vhd:1398:99  */
  assign n4223 = ir == 8'b01011111;
  /* src/T80/T80_MCode.vhd:1398:99  */
  assign n4224 = n4221 | n4223;
  /* src/T80/T80_MCode.vhd:1399:33  */
  assign n4226 = ir == 8'b01100000;
  /* src/T80/T80_MCode.vhd:1399:33  */
  assign n4227 = n4224 | n4226;
  /* src/T80/T80_MCode.vhd:1399:44  */
  assign n4229 = ir == 8'b01100001;
  /* src/T80/T80_MCode.vhd:1399:44  */
  assign n4230 = n4227 | n4229;
  /* src/T80/T80_MCode.vhd:1399:55  */
  assign n4232 = ir == 8'b01100010;
  /* src/T80/T80_MCode.vhd:1399:55  */
  assign n4233 = n4230 | n4232;
  /* src/T80/T80_MCode.vhd:1399:66  */
  assign n4235 = ir == 8'b01100011;
  /* src/T80/T80_MCode.vhd:1399:66  */
  assign n4236 = n4233 | n4235;
  /* src/T80/T80_MCode.vhd:1399:77  */
  assign n4238 = ir == 8'b01100100;
  /* src/T80/T80_MCode.vhd:1399:77  */
  assign n4239 = n4236 | n4238;
  /* src/T80/T80_MCode.vhd:1399:88  */
  assign n4241 = ir == 8'b01100101;
  /* src/T80/T80_MCode.vhd:1399:88  */
  assign n4242 = n4239 | n4241;
  /* src/T80/T80_MCode.vhd:1399:99  */
  assign n4244 = ir == 8'b01100111;
  /* src/T80/T80_MCode.vhd:1399:99  */
  assign n4245 = n4242 | n4244;
  /* src/T80/T80_MCode.vhd:1400:33  */
  assign n4247 = ir == 8'b01101000;
  /* src/T80/T80_MCode.vhd:1400:33  */
  assign n4248 = n4245 | n4247;
  /* src/T80/T80_MCode.vhd:1400:44  */
  assign n4250 = ir == 8'b01101001;
  /* src/T80/T80_MCode.vhd:1400:44  */
  assign n4251 = n4248 | n4250;
  /* src/T80/T80_MCode.vhd:1400:55  */
  assign n4253 = ir == 8'b01101010;
  /* src/T80/T80_MCode.vhd:1400:55  */
  assign n4254 = n4251 | n4253;
  /* src/T80/T80_MCode.vhd:1400:66  */
  assign n4256 = ir == 8'b01101011;
  /* src/T80/T80_MCode.vhd:1400:66  */
  assign n4257 = n4254 | n4256;
  /* src/T80/T80_MCode.vhd:1400:77  */
  assign n4259 = ir == 8'b01101100;
  /* src/T80/T80_MCode.vhd:1400:77  */
  assign n4260 = n4257 | n4259;
  /* src/T80/T80_MCode.vhd:1400:88  */
  assign n4262 = ir == 8'b01101101;
  /* src/T80/T80_MCode.vhd:1400:88  */
  assign n4263 = n4260 | n4262;
  /* src/T80/T80_MCode.vhd:1400:99  */
  assign n4265 = ir == 8'b01101111;
  /* src/T80/T80_MCode.vhd:1400:99  */
  assign n4266 = n4263 | n4265;
  /* src/T80/T80_MCode.vhd:1401:33  */
  assign n4268 = ir == 8'b01110000;
  /* src/T80/T80_MCode.vhd:1401:33  */
  assign n4269 = n4266 | n4268;
  /* src/T80/T80_MCode.vhd:1401:44  */
  assign n4271 = ir == 8'b01110001;
  /* src/T80/T80_MCode.vhd:1401:44  */
  assign n4272 = n4269 | n4271;
  /* src/T80/T80_MCode.vhd:1401:55  */
  assign n4274 = ir == 8'b01110010;
  /* src/T80/T80_MCode.vhd:1401:55  */
  assign n4275 = n4272 | n4274;
  /* src/T80/T80_MCode.vhd:1401:66  */
  assign n4277 = ir == 8'b01110011;
  /* src/T80/T80_MCode.vhd:1401:66  */
  assign n4278 = n4275 | n4277;
  /* src/T80/T80_MCode.vhd:1401:77  */
  assign n4280 = ir == 8'b01110100;
  /* src/T80/T80_MCode.vhd:1401:77  */
  assign n4281 = n4278 | n4280;
  /* src/T80/T80_MCode.vhd:1401:88  */
  assign n4283 = ir == 8'b01110101;
  /* src/T80/T80_MCode.vhd:1401:88  */
  assign n4284 = n4281 | n4283;
  /* src/T80/T80_MCode.vhd:1401:99  */
  assign n4286 = ir == 8'b01110111;
  /* src/T80/T80_MCode.vhd:1401:99  */
  assign n4287 = n4284 | n4286;
  /* src/T80/T80_MCode.vhd:1402:33  */
  assign n4289 = ir == 8'b01111000;
  /* src/T80/T80_MCode.vhd:1402:33  */
  assign n4290 = n4287 | n4289;
  /* src/T80/T80_MCode.vhd:1402:44  */
  assign n4292 = ir == 8'b01111001;
  /* src/T80/T80_MCode.vhd:1402:44  */
  assign n4293 = n4290 | n4292;
  /* src/T80/T80_MCode.vhd:1402:55  */
  assign n4295 = ir == 8'b01111010;
  /* src/T80/T80_MCode.vhd:1402:55  */
  assign n4296 = n4293 | n4295;
  /* src/T80/T80_MCode.vhd:1402:66  */
  assign n4298 = ir == 8'b01111011;
  /* src/T80/T80_MCode.vhd:1402:66  */
  assign n4299 = n4296 | n4298;
  /* src/T80/T80_MCode.vhd:1402:77  */
  assign n4301 = ir == 8'b01111100;
  /* src/T80/T80_MCode.vhd:1402:77  */
  assign n4302 = n4299 | n4301;
  /* src/T80/T80_MCode.vhd:1402:88  */
  assign n4304 = ir == 8'b01111101;
  /* src/T80/T80_MCode.vhd:1402:88  */
  assign n4305 = n4302 | n4304;
  /* src/T80/T80_MCode.vhd:1402:99  */
  assign n4307 = ir == 8'b01111111;
  /* src/T80/T80_MCode.vhd:1402:99  */
  assign n4308 = n4305 | n4307;
  /* src/T80/T80_MCode.vhd:1411:38  */
  assign n4309 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:1412:33  */
  assign n4311 = n4309 == 31'b0000000000000000000000000000001;
  /* src/T80/T80_MCode.vhd:1412:40  */
  assign n4313 = n4309 == 31'b0000000000000000000000000000111;
  /* src/T80/T80_MCode.vhd:1412:40  */
  assign n4314 = n4311 | n4313;
  /* src/T80/T80_MCode.vhd:1414:33  */
  assign n4316 = n4309 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:1411:33  */
  assign n4317 = {n4316, n4314};
  /* src/T80/T80_MCode.vhd:1411:33  */
  always @*
    case (n4317)
      2'b10: n4319 = 3'b100;
      2'b01: n4319 = n1732;
      default: n4319 = n1732;
    endcase
  /* src/T80/T80_MCode.vhd:1411:33  */
  always @*
    case (n4317)
      2'b10: n4321 = 4'b1001;
      2'b01: n4321 = n1735;
      default: n4321 = n1735;
    endcase
  /* src/T80/T80_MCode.vhd:1411:33  */
  always @*
    case (n4317)
      2'b10: n4324 = 3'b111;
      2'b01: n4324 = 3'b010;
      default: n4324 = 3'b111;
    endcase
  /* src/T80/T80_MCode.vhd:1408:25  */
  assign n4326 = ir == 8'b01000110;
  /* src/T80/T80_MCode.vhd:1408:40  */
  assign n4328 = ir == 8'b01001110;
  /* src/T80/T80_MCode.vhd:1408:40  */
  assign n4329 = n4326 | n4328;
  /* src/T80/T80_MCode.vhd:1408:51  */
  assign n4331 = ir == 8'b01010110;
  /* src/T80/T80_MCode.vhd:1408:51  */
  assign n4332 = n4329 | n4331;
  /* src/T80/T80_MCode.vhd:1408:62  */
  assign n4334 = ir == 8'b01011110;
  /* src/T80/T80_MCode.vhd:1408:62  */
  assign n4335 = n4332 | n4334;
  /* src/T80/T80_MCode.vhd:1408:73  */
  assign n4337 = ir == 8'b01100110;
  /* src/T80/T80_MCode.vhd:1408:73  */
  assign n4338 = n4335 | n4337;
  /* src/T80/T80_MCode.vhd:1408:84  */
  assign n4340 = ir == 8'b01101110;
  /* src/T80/T80_MCode.vhd:1408:84  */
  assign n4341 = n4338 | n4340;
  /* src/T80/T80_MCode.vhd:1408:95  */
  assign n4343 = ir == 8'b01110110;
  /* src/T80/T80_MCode.vhd:1408:95  */
  assign n4344 = n4341 | n4343;
  /* src/T80/T80_MCode.vhd:1408:106  */
  assign n4346 = ir == 8'b01111110;
  /* src/T80/T80_MCode.vhd:1408:106  */
  assign n4347 = n4344 | n4346;
  /* src/T80/T80_MCode.vhd:1428:43  */
  assign n4349 = mcycle == 3'b001;
  /* src/T80/T80_MCode.vhd:1428:33  */
  assign n4352 = n4349 ? 1'b1 : 1'b0;
  /* src/T80/T80_MCode.vhd:1428:33  */
  assign n4354 = n4349 ? 4'b1010 : n1735;
  /* src/T80/T80_MCode.vhd:1428:33  */
  assign n4357 = n4349 ? 1'b1 : 1'b0;
  /* src/T80/T80_MCode.vhd:1419:25  */
  assign n4359 = ir == 8'b11000000;
  /* src/T80/T80_MCode.vhd:1419:40  */
  assign n4361 = ir == 8'b11000001;
  /* src/T80/T80_MCode.vhd:1419:40  */
  assign n4362 = n4359 | n4361;
  /* src/T80/T80_MCode.vhd:1419:51  */
  assign n4364 = ir == 8'b11000010;
  /* src/T80/T80_MCode.vhd:1419:51  */
  assign n4365 = n4362 | n4364;
  /* src/T80/T80_MCode.vhd:1419:62  */
  assign n4367 = ir == 8'b11000011;
  /* src/T80/T80_MCode.vhd:1419:62  */
  assign n4368 = n4365 | n4367;
  /* src/T80/T80_MCode.vhd:1419:73  */
  assign n4370 = ir == 8'b11000100;
  /* src/T80/T80_MCode.vhd:1419:73  */
  assign n4371 = n4368 | n4370;
  /* src/T80/T80_MCode.vhd:1419:84  */
  assign n4373 = ir == 8'b11000101;
  /* src/T80/T80_MCode.vhd:1419:84  */
  assign n4374 = n4371 | n4373;
  /* src/T80/T80_MCode.vhd:1419:95  */
  assign n4376 = ir == 8'b11000111;
  /* src/T80/T80_MCode.vhd:1419:95  */
  assign n4377 = n4374 | n4376;
  /* src/T80/T80_MCode.vhd:1420:33  */
  assign n4379 = ir == 8'b11001000;
  /* src/T80/T80_MCode.vhd:1420:33  */
  assign n4380 = n4377 | n4379;
  /* src/T80/T80_MCode.vhd:1420:44  */
  assign n4382 = ir == 8'b11001001;
  /* src/T80/T80_MCode.vhd:1420:44  */
  assign n4383 = n4380 | n4382;
  /* src/T80/T80_MCode.vhd:1420:55  */
  assign n4385 = ir == 8'b11001010;
  /* src/T80/T80_MCode.vhd:1420:55  */
  assign n4386 = n4383 | n4385;
  /* src/T80/T80_MCode.vhd:1420:66  */
  assign n4388 = ir == 8'b11001011;
  /* src/T80/T80_MCode.vhd:1420:66  */
  assign n4389 = n4386 | n4388;
  /* src/T80/T80_MCode.vhd:1420:77  */
  assign n4391 = ir == 8'b11001100;
  /* src/T80/T80_MCode.vhd:1420:77  */
  assign n4392 = n4389 | n4391;
  /* src/T80/T80_MCode.vhd:1420:88  */
  assign n4394 = ir == 8'b11001101;
  /* src/T80/T80_MCode.vhd:1420:88  */
  assign n4395 = n4392 | n4394;
  /* src/T80/T80_MCode.vhd:1420:99  */
  assign n4397 = ir == 8'b11001111;
  /* src/T80/T80_MCode.vhd:1420:99  */
  assign n4398 = n4395 | n4397;
  /* src/T80/T80_MCode.vhd:1421:33  */
  assign n4400 = ir == 8'b11010000;
  /* src/T80/T80_MCode.vhd:1421:33  */
  assign n4401 = n4398 | n4400;
  /* src/T80/T80_MCode.vhd:1421:44  */
  assign n4403 = ir == 8'b11010001;
  /* src/T80/T80_MCode.vhd:1421:44  */
  assign n4404 = n4401 | n4403;
  /* src/T80/T80_MCode.vhd:1421:55  */
  assign n4406 = ir == 8'b11010010;
  /* src/T80/T80_MCode.vhd:1421:55  */
  assign n4407 = n4404 | n4406;
  /* src/T80/T80_MCode.vhd:1421:66  */
  assign n4409 = ir == 8'b11010011;
  /* src/T80/T80_MCode.vhd:1421:66  */
  assign n4410 = n4407 | n4409;
  /* src/T80/T80_MCode.vhd:1421:77  */
  assign n4412 = ir == 8'b11010100;
  /* src/T80/T80_MCode.vhd:1421:77  */
  assign n4413 = n4410 | n4412;
  /* src/T80/T80_MCode.vhd:1421:88  */
  assign n4415 = ir == 8'b11010101;
  /* src/T80/T80_MCode.vhd:1421:88  */
  assign n4416 = n4413 | n4415;
  /* src/T80/T80_MCode.vhd:1421:99  */
  assign n4418 = ir == 8'b11010111;
  /* src/T80/T80_MCode.vhd:1421:99  */
  assign n4419 = n4416 | n4418;
  /* src/T80/T80_MCode.vhd:1422:33  */
  assign n4421 = ir == 8'b11011000;
  /* src/T80/T80_MCode.vhd:1422:33  */
  assign n4422 = n4419 | n4421;
  /* src/T80/T80_MCode.vhd:1422:44  */
  assign n4424 = ir == 8'b11011001;
  /* src/T80/T80_MCode.vhd:1422:44  */
  assign n4425 = n4422 | n4424;
  /* src/T80/T80_MCode.vhd:1422:55  */
  assign n4427 = ir == 8'b11011010;
  /* src/T80/T80_MCode.vhd:1422:55  */
  assign n4428 = n4425 | n4427;
  /* src/T80/T80_MCode.vhd:1422:66  */
  assign n4430 = ir == 8'b11011011;
  /* src/T80/T80_MCode.vhd:1422:66  */
  assign n4431 = n4428 | n4430;
  /* src/T80/T80_MCode.vhd:1422:77  */
  assign n4433 = ir == 8'b11011100;
  /* src/T80/T80_MCode.vhd:1422:77  */
  assign n4434 = n4431 | n4433;
  /* src/T80/T80_MCode.vhd:1422:88  */
  assign n4436 = ir == 8'b11011101;
  /* src/T80/T80_MCode.vhd:1422:88  */
  assign n4437 = n4434 | n4436;
  /* src/T80/T80_MCode.vhd:1422:99  */
  assign n4439 = ir == 8'b11011111;
  /* src/T80/T80_MCode.vhd:1422:99  */
  assign n4440 = n4437 | n4439;
  /* src/T80/T80_MCode.vhd:1423:33  */
  assign n4442 = ir == 8'b11100000;
  /* src/T80/T80_MCode.vhd:1423:33  */
  assign n4443 = n4440 | n4442;
  /* src/T80/T80_MCode.vhd:1423:44  */
  assign n4445 = ir == 8'b11100001;
  /* src/T80/T80_MCode.vhd:1423:44  */
  assign n4446 = n4443 | n4445;
  /* src/T80/T80_MCode.vhd:1423:55  */
  assign n4448 = ir == 8'b11100010;
  /* src/T80/T80_MCode.vhd:1423:55  */
  assign n4449 = n4446 | n4448;
  /* src/T80/T80_MCode.vhd:1423:66  */
  assign n4451 = ir == 8'b11100011;
  /* src/T80/T80_MCode.vhd:1423:66  */
  assign n4452 = n4449 | n4451;
  /* src/T80/T80_MCode.vhd:1423:77  */
  assign n4454 = ir == 8'b11100100;
  /* src/T80/T80_MCode.vhd:1423:77  */
  assign n4455 = n4452 | n4454;
  /* src/T80/T80_MCode.vhd:1423:88  */
  assign n4457 = ir == 8'b11100101;
  /* src/T80/T80_MCode.vhd:1423:88  */
  assign n4458 = n4455 | n4457;
  /* src/T80/T80_MCode.vhd:1423:99  */
  assign n4460 = ir == 8'b11100111;
  /* src/T80/T80_MCode.vhd:1423:99  */
  assign n4461 = n4458 | n4460;
  /* src/T80/T80_MCode.vhd:1424:33  */
  assign n4463 = ir == 8'b11101000;
  /* src/T80/T80_MCode.vhd:1424:33  */
  assign n4464 = n4461 | n4463;
  /* src/T80/T80_MCode.vhd:1424:44  */
  assign n4466 = ir == 8'b11101001;
  /* src/T80/T80_MCode.vhd:1424:44  */
  assign n4467 = n4464 | n4466;
  /* src/T80/T80_MCode.vhd:1424:55  */
  assign n4469 = ir == 8'b11101010;
  /* src/T80/T80_MCode.vhd:1424:55  */
  assign n4470 = n4467 | n4469;
  /* src/T80/T80_MCode.vhd:1424:66  */
  assign n4472 = ir == 8'b11101011;
  /* src/T80/T80_MCode.vhd:1424:66  */
  assign n4473 = n4470 | n4472;
  /* src/T80/T80_MCode.vhd:1424:77  */
  assign n4475 = ir == 8'b11101100;
  /* src/T80/T80_MCode.vhd:1424:77  */
  assign n4476 = n4473 | n4475;
  /* src/T80/T80_MCode.vhd:1424:88  */
  assign n4478 = ir == 8'b11101101;
  /* src/T80/T80_MCode.vhd:1424:88  */
  assign n4479 = n4476 | n4478;
  /* src/T80/T80_MCode.vhd:1424:99  */
  assign n4481 = ir == 8'b11101111;
  /* src/T80/T80_MCode.vhd:1424:99  */
  assign n4482 = n4479 | n4481;
  /* src/T80/T80_MCode.vhd:1425:33  */
  assign n4484 = ir == 8'b11110000;
  /* src/T80/T80_MCode.vhd:1425:33  */
  assign n4485 = n4482 | n4484;
  /* src/T80/T80_MCode.vhd:1425:44  */
  assign n4487 = ir == 8'b11110001;
  /* src/T80/T80_MCode.vhd:1425:44  */
  assign n4488 = n4485 | n4487;
  /* src/T80/T80_MCode.vhd:1425:55  */
  assign n4490 = ir == 8'b11110010;
  /* src/T80/T80_MCode.vhd:1425:55  */
  assign n4491 = n4488 | n4490;
  /* src/T80/T80_MCode.vhd:1425:66  */
  assign n4493 = ir == 8'b11110011;
  /* src/T80/T80_MCode.vhd:1425:66  */
  assign n4494 = n4491 | n4493;
  /* src/T80/T80_MCode.vhd:1425:77  */
  assign n4496 = ir == 8'b11110100;
  /* src/T80/T80_MCode.vhd:1425:77  */
  assign n4497 = n4494 | n4496;
  /* src/T80/T80_MCode.vhd:1425:88  */
  assign n4499 = ir == 8'b11110101;
  /* src/T80/T80_MCode.vhd:1425:88  */
  assign n4500 = n4497 | n4499;
  /* src/T80/T80_MCode.vhd:1425:99  */
  assign n4502 = ir == 8'b11110111;
  /* src/T80/T80_MCode.vhd:1425:99  */
  assign n4503 = n4500 | n4502;
  /* src/T80/T80_MCode.vhd:1426:33  */
  assign n4505 = ir == 8'b11111000;
  /* src/T80/T80_MCode.vhd:1426:33  */
  assign n4506 = n4503 | n4505;
  /* src/T80/T80_MCode.vhd:1426:44  */
  assign n4508 = ir == 8'b11111001;
  /* src/T80/T80_MCode.vhd:1426:44  */
  assign n4509 = n4506 | n4508;
  /* src/T80/T80_MCode.vhd:1426:55  */
  assign n4511 = ir == 8'b11111010;
  /* src/T80/T80_MCode.vhd:1426:55  */
  assign n4512 = n4509 | n4511;
  /* src/T80/T80_MCode.vhd:1426:66  */
  assign n4514 = ir == 8'b11111011;
  /* src/T80/T80_MCode.vhd:1426:66  */
  assign n4515 = n4512 | n4514;
  /* src/T80/T80_MCode.vhd:1426:77  */
  assign n4517 = ir == 8'b11111100;
  /* src/T80/T80_MCode.vhd:1426:77  */
  assign n4518 = n4515 | n4517;
  /* src/T80/T80_MCode.vhd:1426:88  */
  assign n4520 = ir == 8'b11111101;
  /* src/T80/T80_MCode.vhd:1426:88  */
  assign n4521 = n4518 | n4520;
  /* src/T80/T80_MCode.vhd:1426:99  */
  assign n4523 = ir == 8'b11111111;
  /* src/T80/T80_MCode.vhd:1426:99  */
  assign n4524 = n4521 | n4523;
  /* src/T80/T80_MCode.vhd:1436:38  */
  assign n4525 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:1437:33  */
  assign n4527 = n4525 == 31'b0000000000000000000000000000001;
  /* src/T80/T80_MCode.vhd:1437:40  */
  assign n4529 = n4525 == 31'b0000000000000000000000000000111;
  /* src/T80/T80_MCode.vhd:1437:40  */
  assign n4530 = n4527 | n4529;
  /* src/T80/T80_MCode.vhd:1439:33  */
  assign n4532 = n4525 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:1445:33  */
  assign n4534 = n4525 == 31'b0000000000000000000000000000011;
  /* src/T80/T80_MCode.vhd:1436:33  */
  assign n4535 = {n4534, n4532, n4530};
  /* src/T80/T80_MCode.vhd:1436:33  */
  always @*
    case (n4535)
      3'b100: n4537 = n1732;
      3'b010: n4537 = 3'b100;
      3'b001: n4537 = n1732;
      default: n4537 = n1732;
    endcase
  /* src/T80/T80_MCode.vhd:1436:33  */
  always @*
    case (n4535)
      3'b100: n4540 = 1'b0;
      3'b010: n4540 = 1'b1;
      3'b001: n4540 = 1'b0;
      default: n4540 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1436:33  */
  always @*
    case (n4535)
      3'b100: n4542 = n1735;
      3'b010: n4542 = 4'b1010;
      3'b001: n4542 = n1735;
      default: n4542 = n1735;
    endcase
  /* src/T80/T80_MCode.vhd:1436:33  */
  always @*
    case (n4535)
      3'b100: n4545 = 1'b0;
      3'b010: n4545 = 1'b1;
      3'b001: n4545 = 1'b0;
      default: n4545 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1436:33  */
  always @*
    case (n4535)
      3'b100: n4549 = 3'b111;
      3'b010: n4549 = 3'b010;
      3'b001: n4549 = 3'b010;
      default: n4549 = 3'b111;
    endcase
  /* src/T80/T80_MCode.vhd:1436:33  */
  always @*
    case (n4535)
      3'b100: n4552 = 1'b1;
      3'b010: n4552 = 1'b0;
      3'b001: n4552 = 1'b0;
      default: n4552 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1433:25  */
  assign n4554 = ir == 8'b11000110;
  /* src/T80/T80_MCode.vhd:1433:40  */
  assign n4556 = ir == 8'b11001110;
  /* src/T80/T80_MCode.vhd:1433:40  */
  assign n4557 = n4554 | n4556;
  /* src/T80/T80_MCode.vhd:1433:51  */
  assign n4559 = ir == 8'b11010110;
  /* src/T80/T80_MCode.vhd:1433:51  */
  assign n4560 = n4557 | n4559;
  /* src/T80/T80_MCode.vhd:1433:62  */
  assign n4562 = ir == 8'b11011110;
  /* src/T80/T80_MCode.vhd:1433:62  */
  assign n4563 = n4560 | n4562;
  /* src/T80/T80_MCode.vhd:1433:73  */
  assign n4565 = ir == 8'b11100110;
  /* src/T80/T80_MCode.vhd:1433:73  */
  assign n4566 = n4563 | n4565;
  /* src/T80/T80_MCode.vhd:1433:84  */
  assign n4568 = ir == 8'b11101110;
  /* src/T80/T80_MCode.vhd:1433:84  */
  assign n4569 = n4566 | n4568;
  /* src/T80/T80_MCode.vhd:1433:95  */
  assign n4571 = ir == 8'b11110110;
  /* src/T80/T80_MCode.vhd:1433:95  */
  assign n4572 = n4569 | n4571;
  /* src/T80/T80_MCode.vhd:1433:106  */
  assign n4574 = ir == 8'b11111110;
  /* src/T80/T80_MCode.vhd:1433:106  */
  assign n4575 = n4572 | n4574;
  /* src/T80/T80_MCode.vhd:1458:43  */
  assign n4577 = mcycle == 3'b001;
  /* src/T80/T80_MCode.vhd:1458:33  */
  assign n4580 = n4577 ? 1'b1 : 1'b0;
  /* src/T80/T80_MCode.vhd:1458:33  */
  assign n4582 = n4577 ? 4'b1011 : n1735;
  /* src/T80/T80_MCode.vhd:1458:33  */
  assign n4585 = n4577 ? 1'b1 : 1'b0;
  /* src/T80/T80_MCode.vhd:1449:25  */
  assign n4587 = ir == 8'b10000000;
  /* src/T80/T80_MCode.vhd:1449:40  */
  assign n4589 = ir == 8'b10000001;
  /* src/T80/T80_MCode.vhd:1449:40  */
  assign n4590 = n4587 | n4589;
  /* src/T80/T80_MCode.vhd:1449:51  */
  assign n4592 = ir == 8'b10000010;
  /* src/T80/T80_MCode.vhd:1449:51  */
  assign n4593 = n4590 | n4592;
  /* src/T80/T80_MCode.vhd:1449:62  */
  assign n4595 = ir == 8'b10000011;
  /* src/T80/T80_MCode.vhd:1449:62  */
  assign n4596 = n4593 | n4595;
  /* src/T80/T80_MCode.vhd:1449:73  */
  assign n4598 = ir == 8'b10000100;
  /* src/T80/T80_MCode.vhd:1449:73  */
  assign n4599 = n4596 | n4598;
  /* src/T80/T80_MCode.vhd:1449:84  */
  assign n4601 = ir == 8'b10000101;
  /* src/T80/T80_MCode.vhd:1449:84  */
  assign n4602 = n4599 | n4601;
  /* src/T80/T80_MCode.vhd:1449:95  */
  assign n4604 = ir == 8'b10000111;
  /* src/T80/T80_MCode.vhd:1449:95  */
  assign n4605 = n4602 | n4604;
  /* src/T80/T80_MCode.vhd:1450:33  */
  assign n4607 = ir == 8'b10001000;
  /* src/T80/T80_MCode.vhd:1450:33  */
  assign n4608 = n4605 | n4607;
  /* src/T80/T80_MCode.vhd:1450:44  */
  assign n4610 = ir == 8'b10001001;
  /* src/T80/T80_MCode.vhd:1450:44  */
  assign n4611 = n4608 | n4610;
  /* src/T80/T80_MCode.vhd:1450:55  */
  assign n4613 = ir == 8'b10001010;
  /* src/T80/T80_MCode.vhd:1450:55  */
  assign n4614 = n4611 | n4613;
  /* src/T80/T80_MCode.vhd:1450:66  */
  assign n4616 = ir == 8'b10001011;
  /* src/T80/T80_MCode.vhd:1450:66  */
  assign n4617 = n4614 | n4616;
  /* src/T80/T80_MCode.vhd:1450:77  */
  assign n4619 = ir == 8'b10001100;
  /* src/T80/T80_MCode.vhd:1450:77  */
  assign n4620 = n4617 | n4619;
  /* src/T80/T80_MCode.vhd:1450:88  */
  assign n4622 = ir == 8'b10001101;
  /* src/T80/T80_MCode.vhd:1450:88  */
  assign n4623 = n4620 | n4622;
  /* src/T80/T80_MCode.vhd:1450:99  */
  assign n4625 = ir == 8'b10001111;
  /* src/T80/T80_MCode.vhd:1450:99  */
  assign n4626 = n4623 | n4625;
  /* src/T80/T80_MCode.vhd:1451:33  */
  assign n4628 = ir == 8'b10010000;
  /* src/T80/T80_MCode.vhd:1451:33  */
  assign n4629 = n4626 | n4628;
  /* src/T80/T80_MCode.vhd:1451:44  */
  assign n4631 = ir == 8'b10010001;
  /* src/T80/T80_MCode.vhd:1451:44  */
  assign n4632 = n4629 | n4631;
  /* src/T80/T80_MCode.vhd:1451:55  */
  assign n4634 = ir == 8'b10010010;
  /* src/T80/T80_MCode.vhd:1451:55  */
  assign n4635 = n4632 | n4634;
  /* src/T80/T80_MCode.vhd:1451:66  */
  assign n4637 = ir == 8'b10010011;
  /* src/T80/T80_MCode.vhd:1451:66  */
  assign n4638 = n4635 | n4637;
  /* src/T80/T80_MCode.vhd:1451:77  */
  assign n4640 = ir == 8'b10010100;
  /* src/T80/T80_MCode.vhd:1451:77  */
  assign n4641 = n4638 | n4640;
  /* src/T80/T80_MCode.vhd:1451:88  */
  assign n4643 = ir == 8'b10010101;
  /* src/T80/T80_MCode.vhd:1451:88  */
  assign n4644 = n4641 | n4643;
  /* src/T80/T80_MCode.vhd:1451:99  */
  assign n4646 = ir == 8'b10010111;
  /* src/T80/T80_MCode.vhd:1451:99  */
  assign n4647 = n4644 | n4646;
  /* src/T80/T80_MCode.vhd:1452:33  */
  assign n4649 = ir == 8'b10011000;
  /* src/T80/T80_MCode.vhd:1452:33  */
  assign n4650 = n4647 | n4649;
  /* src/T80/T80_MCode.vhd:1452:44  */
  assign n4652 = ir == 8'b10011001;
  /* src/T80/T80_MCode.vhd:1452:44  */
  assign n4653 = n4650 | n4652;
  /* src/T80/T80_MCode.vhd:1452:55  */
  assign n4655 = ir == 8'b10011010;
  /* src/T80/T80_MCode.vhd:1452:55  */
  assign n4656 = n4653 | n4655;
  /* src/T80/T80_MCode.vhd:1452:66  */
  assign n4658 = ir == 8'b10011011;
  /* src/T80/T80_MCode.vhd:1452:66  */
  assign n4659 = n4656 | n4658;
  /* src/T80/T80_MCode.vhd:1452:77  */
  assign n4661 = ir == 8'b10011100;
  /* src/T80/T80_MCode.vhd:1452:77  */
  assign n4662 = n4659 | n4661;
  /* src/T80/T80_MCode.vhd:1452:88  */
  assign n4664 = ir == 8'b10011101;
  /* src/T80/T80_MCode.vhd:1452:88  */
  assign n4665 = n4662 | n4664;
  /* src/T80/T80_MCode.vhd:1452:99  */
  assign n4667 = ir == 8'b10011111;
  /* src/T80/T80_MCode.vhd:1452:99  */
  assign n4668 = n4665 | n4667;
  /* src/T80/T80_MCode.vhd:1453:33  */
  assign n4670 = ir == 8'b10100000;
  /* src/T80/T80_MCode.vhd:1453:33  */
  assign n4671 = n4668 | n4670;
  /* src/T80/T80_MCode.vhd:1453:44  */
  assign n4673 = ir == 8'b10100001;
  /* src/T80/T80_MCode.vhd:1453:44  */
  assign n4674 = n4671 | n4673;
  /* src/T80/T80_MCode.vhd:1453:55  */
  assign n4676 = ir == 8'b10100010;
  /* src/T80/T80_MCode.vhd:1453:55  */
  assign n4677 = n4674 | n4676;
  /* src/T80/T80_MCode.vhd:1453:66  */
  assign n4679 = ir == 8'b10100011;
  /* src/T80/T80_MCode.vhd:1453:66  */
  assign n4680 = n4677 | n4679;
  /* src/T80/T80_MCode.vhd:1453:77  */
  assign n4682 = ir == 8'b10100100;
  /* src/T80/T80_MCode.vhd:1453:77  */
  assign n4683 = n4680 | n4682;
  /* src/T80/T80_MCode.vhd:1453:88  */
  assign n4685 = ir == 8'b10100101;
  /* src/T80/T80_MCode.vhd:1453:88  */
  assign n4686 = n4683 | n4685;
  /* src/T80/T80_MCode.vhd:1453:99  */
  assign n4688 = ir == 8'b10100111;
  /* src/T80/T80_MCode.vhd:1453:99  */
  assign n4689 = n4686 | n4688;
  /* src/T80/T80_MCode.vhd:1454:33  */
  assign n4691 = ir == 8'b10101000;
  /* src/T80/T80_MCode.vhd:1454:33  */
  assign n4692 = n4689 | n4691;
  /* src/T80/T80_MCode.vhd:1454:44  */
  assign n4694 = ir == 8'b10101001;
  /* src/T80/T80_MCode.vhd:1454:44  */
  assign n4695 = n4692 | n4694;
  /* src/T80/T80_MCode.vhd:1454:55  */
  assign n4697 = ir == 8'b10101010;
  /* src/T80/T80_MCode.vhd:1454:55  */
  assign n4698 = n4695 | n4697;
  /* src/T80/T80_MCode.vhd:1454:66  */
  assign n4700 = ir == 8'b10101011;
  /* src/T80/T80_MCode.vhd:1454:66  */
  assign n4701 = n4698 | n4700;
  /* src/T80/T80_MCode.vhd:1454:77  */
  assign n4703 = ir == 8'b10101100;
  /* src/T80/T80_MCode.vhd:1454:77  */
  assign n4704 = n4701 | n4703;
  /* src/T80/T80_MCode.vhd:1454:88  */
  assign n4706 = ir == 8'b10101101;
  /* src/T80/T80_MCode.vhd:1454:88  */
  assign n4707 = n4704 | n4706;
  /* src/T80/T80_MCode.vhd:1454:99  */
  assign n4709 = ir == 8'b10101111;
  /* src/T80/T80_MCode.vhd:1454:99  */
  assign n4710 = n4707 | n4709;
  /* src/T80/T80_MCode.vhd:1455:33  */
  assign n4712 = ir == 8'b10110000;
  /* src/T80/T80_MCode.vhd:1455:33  */
  assign n4713 = n4710 | n4712;
  /* src/T80/T80_MCode.vhd:1455:44  */
  assign n4715 = ir == 8'b10110001;
  /* src/T80/T80_MCode.vhd:1455:44  */
  assign n4716 = n4713 | n4715;
  /* src/T80/T80_MCode.vhd:1455:55  */
  assign n4718 = ir == 8'b10110010;
  /* src/T80/T80_MCode.vhd:1455:55  */
  assign n4719 = n4716 | n4718;
  /* src/T80/T80_MCode.vhd:1455:66  */
  assign n4721 = ir == 8'b10110011;
  /* src/T80/T80_MCode.vhd:1455:66  */
  assign n4722 = n4719 | n4721;
  /* src/T80/T80_MCode.vhd:1455:77  */
  assign n4724 = ir == 8'b10110100;
  /* src/T80/T80_MCode.vhd:1455:77  */
  assign n4725 = n4722 | n4724;
  /* src/T80/T80_MCode.vhd:1455:88  */
  assign n4727 = ir == 8'b10110101;
  /* src/T80/T80_MCode.vhd:1455:88  */
  assign n4728 = n4725 | n4727;
  /* src/T80/T80_MCode.vhd:1455:99  */
  assign n4730 = ir == 8'b10110111;
  /* src/T80/T80_MCode.vhd:1455:99  */
  assign n4731 = n4728 | n4730;
  /* src/T80/T80_MCode.vhd:1456:33  */
  assign n4733 = ir == 8'b10111000;
  /* src/T80/T80_MCode.vhd:1456:33  */
  assign n4734 = n4731 | n4733;
  /* src/T80/T80_MCode.vhd:1456:44  */
  assign n4736 = ir == 8'b10111001;
  /* src/T80/T80_MCode.vhd:1456:44  */
  assign n4737 = n4734 | n4736;
  /* src/T80/T80_MCode.vhd:1456:55  */
  assign n4739 = ir == 8'b10111010;
  /* src/T80/T80_MCode.vhd:1456:55  */
  assign n4740 = n4737 | n4739;
  /* src/T80/T80_MCode.vhd:1456:66  */
  assign n4742 = ir == 8'b10111011;
  /* src/T80/T80_MCode.vhd:1456:66  */
  assign n4743 = n4740 | n4742;
  /* src/T80/T80_MCode.vhd:1456:77  */
  assign n4745 = ir == 8'b10111100;
  /* src/T80/T80_MCode.vhd:1456:77  */
  assign n4746 = n4743 | n4745;
  /* src/T80/T80_MCode.vhd:1456:88  */
  assign n4748 = ir == 8'b10111101;
  /* src/T80/T80_MCode.vhd:1456:88  */
  assign n4749 = n4746 | n4748;
  /* src/T80/T80_MCode.vhd:1456:99  */
  assign n4751 = ir == 8'b10111111;
  /* src/T80/T80_MCode.vhd:1456:99  */
  assign n4752 = n4749 | n4751;
  /* src/T80/T80_MCode.vhd:1466:38  */
  assign n4753 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:1467:33  */
  assign n4755 = n4753 == 31'b0000000000000000000000000000001;
  /* src/T80/T80_MCode.vhd:1467:40  */
  assign n4757 = n4753 == 31'b0000000000000000000000000000111;
  /* src/T80/T80_MCode.vhd:1467:40  */
  assign n4758 = n4755 | n4757;
  /* src/T80/T80_MCode.vhd:1469:33  */
  assign n4760 = n4753 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:1475:33  */
  assign n4762 = n4753 == 31'b0000000000000000000000000000011;
  /* src/T80/T80_MCode.vhd:1466:33  */
  assign n4763 = {n4762, n4760, n4758};
  /* src/T80/T80_MCode.vhd:1466:33  */
  always @*
    case (n4763)
      3'b100: n4765 = n1732;
      3'b010: n4765 = 3'b100;
      3'b001: n4765 = n1732;
      default: n4765 = n1732;
    endcase
  /* src/T80/T80_MCode.vhd:1466:33  */
  always @*
    case (n4763)
      3'b100: n4768 = 1'b0;
      3'b010: n4768 = 1'b1;
      3'b001: n4768 = 1'b0;
      default: n4768 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1466:33  */
  always @*
    case (n4763)
      3'b100: n4770 = n1735;
      3'b010: n4770 = 4'b1011;
      3'b001: n4770 = n1735;
      default: n4770 = n1735;
    endcase
  /* src/T80/T80_MCode.vhd:1466:33  */
  always @*
    case (n4763)
      3'b100: n4773 = 1'b0;
      3'b010: n4773 = 1'b1;
      3'b001: n4773 = 1'b0;
      default: n4773 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1466:33  */
  always @*
    case (n4763)
      3'b100: n4777 = 3'b111;
      3'b010: n4777 = 3'b010;
      3'b001: n4777 = 3'b010;
      default: n4777 = 3'b111;
    endcase
  /* src/T80/T80_MCode.vhd:1466:33  */
  always @*
    case (n4763)
      3'b100: n4780 = 1'b1;
      3'b010: n4780 = 1'b0;
      3'b001: n4780 = 1'b0;
      default: n4780 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1463:25  */
  assign n4782 = ir == 8'b10000110;
  /* src/T80/T80_MCode.vhd:1463:40  */
  assign n4784 = ir == 8'b10001110;
  /* src/T80/T80_MCode.vhd:1463:40  */
  assign n4785 = n4782 | n4784;
  /* src/T80/T80_MCode.vhd:1463:51  */
  assign n4787 = ir == 8'b10010110;
  /* src/T80/T80_MCode.vhd:1463:51  */
  assign n4788 = n4785 | n4787;
  /* src/T80/T80_MCode.vhd:1463:62  */
  assign n4790 = ir == 8'b10011110;
  /* src/T80/T80_MCode.vhd:1463:62  */
  assign n4791 = n4788 | n4790;
  /* src/T80/T80_MCode.vhd:1463:73  */
  assign n4793 = ir == 8'b10100110;
  /* src/T80/T80_MCode.vhd:1463:73  */
  assign n4794 = n4791 | n4793;
  /* src/T80/T80_MCode.vhd:1463:84  */
  assign n4796 = ir == 8'b10101110;
  /* src/T80/T80_MCode.vhd:1463:84  */
  assign n4797 = n4794 | n4796;
  /* src/T80/T80_MCode.vhd:1463:95  */
  assign n4799 = ir == 8'b10110110;
  /* src/T80/T80_MCode.vhd:1463:95  */
  assign n4800 = n4797 | n4799;
  /* src/T80/T80_MCode.vhd:1463:106  */
  assign n4802 = ir == 8'b10111110;
  /* src/T80/T80_MCode.vhd:1463:106  */
  assign n4803 = n4800 | n4802;
  /* src/T80/T80_MCode.vhd:1350:25  */
  assign n4804 = {n4803, n4752, n4575, n4524, n4347, n4308, n4135, n4084};
  /* src/T80/T80_MCode.vhd:1350:25  */
  always @*
    case (n4804)
      8'b10000000: n4811 = 3'b011;
      8'b01000000: n4811 = 3'b001;
      8'b00100000: n4811 = 3'b011;
      8'b00010000: n4811 = 3'b001;
      8'b00001000: n4811 = 3'b010;
      8'b00000100: n4811 = 3'b001;
      8'b00000010: n4811 = 3'b011;
      8'b00000001: n4811 = 3'b001;
      default: n4811 = 3'bX;
    endcase
  /* src/T80/T80_MCode.vhd:1350:25  */
  always @*
    case (n4804)
      8'b10000000: n4813 = n4765;
      8'b01000000: n4813 = n1732;
      8'b00100000: n4813 = n4537;
      8'b00010000: n4813 = n1732;
      8'b00001000: n4813 = n4319;
      8'b00000100: n4813 = n1732;
      8'b00000010: n4813 = n4097;
      8'b00000001: n4813 = n1732;
      default: n4813 = 3'bX;
    endcase
  /* src/T80/T80_MCode.vhd:1350:25  */
  always @*
    case (n4804)
      8'b10000000: n4816 = n4768;
      8'b01000000: n4816 = n4580;
      8'b00100000: n4816 = n4540;
      8'b00010000: n4816 = n4352;
      8'b00001000: n4816 = 1'b0;
      8'b00000100: n4816 = 1'b0;
      8'b00000010: n4816 = n4100;
      8'b00000001: n4816 = n3912;
      default: n4816 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:1350:25  */
  always @*
    case (n4804)
      8'b10000000: n4818 = n3907;
      8'b01000000: n4818 = n3907;
      8'b00100000: n4818 = n3907;
      8'b00010000: n4818 = n3907;
      8'b00001000: n4818 = n3907;
      8'b00000100: n4818 = n4139;
      8'b00000010: n4818 = n3907;
      8'b00000001: n4818 = n3907;
      default: n4818 = 3'bX;
    endcase
  /* src/T80/T80_MCode.vhd:1350:25  */
  always @*
    case (n4804)
      8'b10000000: n4820 = n4770;
      8'b01000000: n4820 = n4582;
      8'b00100000: n4820 = n4542;
      8'b00010000: n4820 = n4354;
      8'b00001000: n4820 = n4321;
      8'b00000100: n4820 = n4141;
      8'b00000010: n4820 = n4102;
      8'b00000001: n4820 = n3914;
      default: n4820 = 4'bX;
    endcase
  /* src/T80/T80_MCode.vhd:1350:25  */
  always @*
    case (n4804)
      8'b10000000: n4823 = n4773;
      8'b01000000: n4823 = n4585;
      8'b00100000: n4823 = n4545;
      8'b00010000: n4823 = n4357;
      8'b00001000: n4823 = 1'b0;
      8'b00000100: n4823 = 1'b0;
      8'b00000010: n4823 = n4105;
      8'b00000001: n4823 = n3917;
      default: n4823 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:1350:25  */
  always @*
    case (n4804)
      8'b10000000: n4826 = n4777;
      8'b01000000: n4826 = 3'b111;
      8'b00100000: n4826 = n4549;
      8'b00010000: n4826 = 3'b111;
      8'b00001000: n4826 = n4324;
      8'b00000100: n4826 = 3'b111;
      8'b00000010: n4826 = n4109;
      8'b00000001: n4826 = 3'b111;
      default: n4826 = 3'bX;
    endcase
  /* src/T80/T80_MCode.vhd:1350:25  */
  always @*
    case (n4804)
      8'b10000000: n4829 = n4780;
      8'b01000000: n4829 = 1'b0;
      8'b00100000: n4829 = n4552;
      8'b00010000: n4829 = 1'b0;
      8'b00001000: n4829 = 1'b0;
      8'b00000100: n4829 = 1'b0;
      8'b00000010: n4829 = n4112;
      8'b00000001: n4829 = 1'b0;
      default: n4829 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:1339:17  */
  assign n4831 = iset == 2'b01;
  /* src/T80/T80_MCode.vhd:1490:25  */
  assign n4833 = ir == 8'b00000000;
  /* src/T80/T80_MCode.vhd:1490:40  */
  assign n4835 = ir == 8'b00000001;
  /* src/T80/T80_MCode.vhd:1490:40  */
  assign n4836 = n4833 | n4835;
  /* src/T80/T80_MCode.vhd:1490:51  */
  assign n4838 = ir == 8'b00000010;
  /* src/T80/T80_MCode.vhd:1490:51  */
  assign n4839 = n4836 | n4838;
  /* src/T80/T80_MCode.vhd:1490:62  */
  assign n4841 = ir == 8'b00000011;
  /* src/T80/T80_MCode.vhd:1490:62  */
  assign n4842 = n4839 | n4841;
  /* src/T80/T80_MCode.vhd:1490:73  */
  assign n4844 = ir == 8'b00000100;
  /* src/T80/T80_MCode.vhd:1490:73  */
  assign n4845 = n4842 | n4844;
  /* src/T80/T80_MCode.vhd:1490:84  */
  assign n4847 = ir == 8'b00000101;
  /* src/T80/T80_MCode.vhd:1490:84  */
  assign n4848 = n4845 | n4847;
  /* src/T80/T80_MCode.vhd:1490:95  */
  assign n4850 = ir == 8'b00000110;
  /* src/T80/T80_MCode.vhd:1490:95  */
  assign n4851 = n4848 | n4850;
  /* src/T80/T80_MCode.vhd:1490:106  */
  assign n4853 = ir == 8'b00000111;
  /* src/T80/T80_MCode.vhd:1490:106  */
  assign n4854 = n4851 | n4853;
  /* src/T80/T80_MCode.vhd:1491:33  */
  assign n4856 = ir == 8'b00001000;
  /* src/T80/T80_MCode.vhd:1491:33  */
  assign n4857 = n4854 | n4856;
  /* src/T80/T80_MCode.vhd:1491:44  */
  assign n4859 = ir == 8'b00001001;
  /* src/T80/T80_MCode.vhd:1491:44  */
  assign n4860 = n4857 | n4859;
  /* src/T80/T80_MCode.vhd:1491:55  */
  assign n4862 = ir == 8'b00001010;
  /* src/T80/T80_MCode.vhd:1491:55  */
  assign n4863 = n4860 | n4862;
  /* src/T80/T80_MCode.vhd:1491:66  */
  assign n4865 = ir == 8'b00001011;
  /* src/T80/T80_MCode.vhd:1491:66  */
  assign n4866 = n4863 | n4865;
  /* src/T80/T80_MCode.vhd:1491:77  */
  assign n4868 = ir == 8'b00001100;
  /* src/T80/T80_MCode.vhd:1491:77  */
  assign n4869 = n4866 | n4868;
  /* src/T80/T80_MCode.vhd:1491:88  */
  assign n4871 = ir == 8'b00001101;
  /* src/T80/T80_MCode.vhd:1491:88  */
  assign n4872 = n4869 | n4871;
  /* src/T80/T80_MCode.vhd:1491:99  */
  assign n4874 = ir == 8'b00001110;
  /* src/T80/T80_MCode.vhd:1491:99  */
  assign n4875 = n4872 | n4874;
  /* src/T80/T80_MCode.vhd:1491:110  */
  assign n4877 = ir == 8'b00001111;
  /* src/T80/T80_MCode.vhd:1491:110  */
  assign n4878 = n4875 | n4877;
  /* src/T80/T80_MCode.vhd:1492:33  */
  assign n4880 = ir == 8'b00010000;
  /* src/T80/T80_MCode.vhd:1492:33  */
  assign n4881 = n4878 | n4880;
  /* src/T80/T80_MCode.vhd:1492:44  */
  assign n4883 = ir == 8'b00010001;
  /* src/T80/T80_MCode.vhd:1492:44  */
  assign n4884 = n4881 | n4883;
  /* src/T80/T80_MCode.vhd:1492:55  */
  assign n4886 = ir == 8'b00010010;
  /* src/T80/T80_MCode.vhd:1492:55  */
  assign n4887 = n4884 | n4886;
  /* src/T80/T80_MCode.vhd:1492:66  */
  assign n4889 = ir == 8'b00010011;
  /* src/T80/T80_MCode.vhd:1492:66  */
  assign n4890 = n4887 | n4889;
  /* src/T80/T80_MCode.vhd:1492:77  */
  assign n4892 = ir == 8'b00010100;
  /* src/T80/T80_MCode.vhd:1492:77  */
  assign n4893 = n4890 | n4892;
  /* src/T80/T80_MCode.vhd:1492:88  */
  assign n4895 = ir == 8'b00010101;
  /* src/T80/T80_MCode.vhd:1492:88  */
  assign n4896 = n4893 | n4895;
  /* src/T80/T80_MCode.vhd:1492:99  */
  assign n4898 = ir == 8'b00010110;
  /* src/T80/T80_MCode.vhd:1492:99  */
  assign n4899 = n4896 | n4898;
  /* src/T80/T80_MCode.vhd:1492:110  */
  assign n4901 = ir == 8'b00010111;
  /* src/T80/T80_MCode.vhd:1492:110  */
  assign n4902 = n4899 | n4901;
  /* src/T80/T80_MCode.vhd:1493:33  */
  assign n4904 = ir == 8'b00011000;
  /* src/T80/T80_MCode.vhd:1493:33  */
  assign n4905 = n4902 | n4904;
  /* src/T80/T80_MCode.vhd:1493:44  */
  assign n4907 = ir == 8'b00011001;
  /* src/T80/T80_MCode.vhd:1493:44  */
  assign n4908 = n4905 | n4907;
  /* src/T80/T80_MCode.vhd:1493:55  */
  assign n4910 = ir == 8'b00011010;
  /* src/T80/T80_MCode.vhd:1493:55  */
  assign n4911 = n4908 | n4910;
  /* src/T80/T80_MCode.vhd:1493:66  */
  assign n4913 = ir == 8'b00011011;
  /* src/T80/T80_MCode.vhd:1493:66  */
  assign n4914 = n4911 | n4913;
  /* src/T80/T80_MCode.vhd:1493:77  */
  assign n4916 = ir == 8'b00011100;
  /* src/T80/T80_MCode.vhd:1493:77  */
  assign n4917 = n4914 | n4916;
  /* src/T80/T80_MCode.vhd:1493:88  */
  assign n4919 = ir == 8'b00011101;
  /* src/T80/T80_MCode.vhd:1493:88  */
  assign n4920 = n4917 | n4919;
  /* src/T80/T80_MCode.vhd:1493:99  */
  assign n4922 = ir == 8'b00011110;
  /* src/T80/T80_MCode.vhd:1493:99  */
  assign n4923 = n4920 | n4922;
  /* src/T80/T80_MCode.vhd:1493:110  */
  assign n4925 = ir == 8'b00011111;
  /* src/T80/T80_MCode.vhd:1493:110  */
  assign n4926 = n4923 | n4925;
  /* src/T80/T80_MCode.vhd:1494:33  */
  assign n4928 = ir == 8'b00100000;
  /* src/T80/T80_MCode.vhd:1494:33  */
  assign n4929 = n4926 | n4928;
  /* src/T80/T80_MCode.vhd:1494:44  */
  assign n4931 = ir == 8'b00100001;
  /* src/T80/T80_MCode.vhd:1494:44  */
  assign n4932 = n4929 | n4931;
  /* src/T80/T80_MCode.vhd:1494:55  */
  assign n4934 = ir == 8'b00100010;
  /* src/T80/T80_MCode.vhd:1494:55  */
  assign n4935 = n4932 | n4934;
  /* src/T80/T80_MCode.vhd:1494:66  */
  assign n4937 = ir == 8'b00100011;
  /* src/T80/T80_MCode.vhd:1494:66  */
  assign n4938 = n4935 | n4937;
  /* src/T80/T80_MCode.vhd:1494:77  */
  assign n4940 = ir == 8'b00100100;
  /* src/T80/T80_MCode.vhd:1494:77  */
  assign n4941 = n4938 | n4940;
  /* src/T80/T80_MCode.vhd:1494:88  */
  assign n4943 = ir == 8'b00100101;
  /* src/T80/T80_MCode.vhd:1494:88  */
  assign n4944 = n4941 | n4943;
  /* src/T80/T80_MCode.vhd:1494:99  */
  assign n4946 = ir == 8'b00100110;
  /* src/T80/T80_MCode.vhd:1494:99  */
  assign n4947 = n4944 | n4946;
  /* src/T80/T80_MCode.vhd:1494:110  */
  assign n4949 = ir == 8'b00100111;
  /* src/T80/T80_MCode.vhd:1494:110  */
  assign n4950 = n4947 | n4949;
  /* src/T80/T80_MCode.vhd:1495:33  */
  assign n4952 = ir == 8'b00101000;
  /* src/T80/T80_MCode.vhd:1495:33  */
  assign n4953 = n4950 | n4952;
  /* src/T80/T80_MCode.vhd:1495:44  */
  assign n4955 = ir == 8'b00101001;
  /* src/T80/T80_MCode.vhd:1495:44  */
  assign n4956 = n4953 | n4955;
  /* src/T80/T80_MCode.vhd:1495:55  */
  assign n4958 = ir == 8'b00101010;
  /* src/T80/T80_MCode.vhd:1495:55  */
  assign n4959 = n4956 | n4958;
  /* src/T80/T80_MCode.vhd:1495:66  */
  assign n4961 = ir == 8'b00101011;
  /* src/T80/T80_MCode.vhd:1495:66  */
  assign n4962 = n4959 | n4961;
  /* src/T80/T80_MCode.vhd:1495:77  */
  assign n4964 = ir == 8'b00101100;
  /* src/T80/T80_MCode.vhd:1495:77  */
  assign n4965 = n4962 | n4964;
  /* src/T80/T80_MCode.vhd:1495:88  */
  assign n4967 = ir == 8'b00101101;
  /* src/T80/T80_MCode.vhd:1495:88  */
  assign n4968 = n4965 | n4967;
  /* src/T80/T80_MCode.vhd:1495:99  */
  assign n4970 = ir == 8'b00101110;
  /* src/T80/T80_MCode.vhd:1495:99  */
  assign n4971 = n4968 | n4970;
  /* src/T80/T80_MCode.vhd:1495:110  */
  assign n4973 = ir == 8'b00101111;
  /* src/T80/T80_MCode.vhd:1495:110  */
  assign n4974 = n4971 | n4973;
  /* src/T80/T80_MCode.vhd:1496:33  */
  assign n4976 = ir == 8'b00110000;
  /* src/T80/T80_MCode.vhd:1496:33  */
  assign n4977 = n4974 | n4976;
  /* src/T80/T80_MCode.vhd:1496:44  */
  assign n4979 = ir == 8'b00110001;
  /* src/T80/T80_MCode.vhd:1496:44  */
  assign n4980 = n4977 | n4979;
  /* src/T80/T80_MCode.vhd:1496:55  */
  assign n4982 = ir == 8'b00110010;
  /* src/T80/T80_MCode.vhd:1496:55  */
  assign n4983 = n4980 | n4982;
  /* src/T80/T80_MCode.vhd:1496:66  */
  assign n4985 = ir == 8'b00110011;
  /* src/T80/T80_MCode.vhd:1496:66  */
  assign n4986 = n4983 | n4985;
  /* src/T80/T80_MCode.vhd:1496:77  */
  assign n4988 = ir == 8'b00110100;
  /* src/T80/T80_MCode.vhd:1496:77  */
  assign n4989 = n4986 | n4988;
  /* src/T80/T80_MCode.vhd:1496:88  */
  assign n4991 = ir == 8'b00110101;
  /* src/T80/T80_MCode.vhd:1496:88  */
  assign n4992 = n4989 | n4991;
  /* src/T80/T80_MCode.vhd:1496:99  */
  assign n4994 = ir == 8'b00110110;
  /* src/T80/T80_MCode.vhd:1496:99  */
  assign n4995 = n4992 | n4994;
  /* src/T80/T80_MCode.vhd:1496:110  */
  assign n4997 = ir == 8'b00110111;
  /* src/T80/T80_MCode.vhd:1496:110  */
  assign n4998 = n4995 | n4997;
  /* src/T80/T80_MCode.vhd:1497:33  */
  assign n5000 = ir == 8'b00111000;
  /* src/T80/T80_MCode.vhd:1497:33  */
  assign n5001 = n4998 | n5000;
  /* src/T80/T80_MCode.vhd:1497:44  */
  assign n5003 = ir == 8'b00111001;
  /* src/T80/T80_MCode.vhd:1497:44  */
  assign n5004 = n5001 | n5003;
  /* src/T80/T80_MCode.vhd:1497:55  */
  assign n5006 = ir == 8'b00111010;
  /* src/T80/T80_MCode.vhd:1497:55  */
  assign n5007 = n5004 | n5006;
  /* src/T80/T80_MCode.vhd:1497:66  */
  assign n5009 = ir == 8'b00111011;
  /* src/T80/T80_MCode.vhd:1497:66  */
  assign n5010 = n5007 | n5009;
  /* src/T80/T80_MCode.vhd:1497:77  */
  assign n5012 = ir == 8'b00111100;
  /* src/T80/T80_MCode.vhd:1497:77  */
  assign n5013 = n5010 | n5012;
  /* src/T80/T80_MCode.vhd:1497:88  */
  assign n5015 = ir == 8'b00111101;
  /* src/T80/T80_MCode.vhd:1497:88  */
  assign n5016 = n5013 | n5015;
  /* src/T80/T80_MCode.vhd:1497:99  */
  assign n5018 = ir == 8'b00111110;
  /* src/T80/T80_MCode.vhd:1497:99  */
  assign n5019 = n5016 | n5018;
  /* src/T80/T80_MCode.vhd:1497:110  */
  assign n5021 = ir == 8'b00111111;
  /* src/T80/T80_MCode.vhd:1497:110  */
  assign n5022 = n5019 | n5021;
  /* src/T80/T80_MCode.vhd:1500:33  */
  assign n5024 = ir == 8'b10000000;
  /* src/T80/T80_MCode.vhd:1500:33  */
  assign n5025 = n5022 | n5024;
  /* src/T80/T80_MCode.vhd:1500:44  */
  assign n5027 = ir == 8'b10000001;
  /* src/T80/T80_MCode.vhd:1500:44  */
  assign n5028 = n5025 | n5027;
  /* src/T80/T80_MCode.vhd:1500:55  */
  assign n5030 = ir == 8'b10000010;
  /* src/T80/T80_MCode.vhd:1500:55  */
  assign n5031 = n5028 | n5030;
  /* src/T80/T80_MCode.vhd:1500:66  */
  assign n5033 = ir == 8'b10000011;
  /* src/T80/T80_MCode.vhd:1500:66  */
  assign n5034 = n5031 | n5033;
  /* src/T80/T80_MCode.vhd:1500:77  */
  assign n5036 = ir == 8'b10000100;
  /* src/T80/T80_MCode.vhd:1500:77  */
  assign n5037 = n5034 | n5036;
  /* src/T80/T80_MCode.vhd:1500:88  */
  assign n5039 = ir == 8'b10000101;
  /* src/T80/T80_MCode.vhd:1500:88  */
  assign n5040 = n5037 | n5039;
  /* src/T80/T80_MCode.vhd:1500:99  */
  assign n5042 = ir == 8'b10000110;
  /* src/T80/T80_MCode.vhd:1500:99  */
  assign n5043 = n5040 | n5042;
  /* src/T80/T80_MCode.vhd:1500:110  */
  assign n5045 = ir == 8'b10000111;
  /* src/T80/T80_MCode.vhd:1500:110  */
  assign n5046 = n5043 | n5045;
  /* src/T80/T80_MCode.vhd:1501:33  */
  assign n5048 = ir == 8'b10001000;
  /* src/T80/T80_MCode.vhd:1501:33  */
  assign n5049 = n5046 | n5048;
  /* src/T80/T80_MCode.vhd:1501:44  */
  assign n5051 = ir == 8'b10001001;
  /* src/T80/T80_MCode.vhd:1501:44  */
  assign n5052 = n5049 | n5051;
  /* src/T80/T80_MCode.vhd:1501:55  */
  assign n5054 = ir == 8'b10001010;
  /* src/T80/T80_MCode.vhd:1501:55  */
  assign n5055 = n5052 | n5054;
  /* src/T80/T80_MCode.vhd:1501:66  */
  assign n5057 = ir == 8'b10001011;
  /* src/T80/T80_MCode.vhd:1501:66  */
  assign n5058 = n5055 | n5057;
  /* src/T80/T80_MCode.vhd:1501:77  */
  assign n5060 = ir == 8'b10001100;
  /* src/T80/T80_MCode.vhd:1501:77  */
  assign n5061 = n5058 | n5060;
  /* src/T80/T80_MCode.vhd:1501:88  */
  assign n5063 = ir == 8'b10001101;
  /* src/T80/T80_MCode.vhd:1501:88  */
  assign n5064 = n5061 | n5063;
  /* src/T80/T80_MCode.vhd:1501:99  */
  assign n5066 = ir == 8'b10001110;
  /* src/T80/T80_MCode.vhd:1501:99  */
  assign n5067 = n5064 | n5066;
  /* src/T80/T80_MCode.vhd:1501:110  */
  assign n5069 = ir == 8'b10001111;
  /* src/T80/T80_MCode.vhd:1501:110  */
  assign n5070 = n5067 | n5069;
  /* src/T80/T80_MCode.vhd:1502:33  */
  assign n5072 = ir == 8'b10010000;
  /* src/T80/T80_MCode.vhd:1502:33  */
  assign n5073 = n5070 | n5072;
  /* src/T80/T80_MCode.vhd:1502:44  */
  assign n5075 = ir == 8'b10010001;
  /* src/T80/T80_MCode.vhd:1502:44  */
  assign n5076 = n5073 | n5075;
  /* src/T80/T80_MCode.vhd:1502:55  */
  assign n5078 = ir == 8'b10010010;
  /* src/T80/T80_MCode.vhd:1502:55  */
  assign n5079 = n5076 | n5078;
  /* src/T80/T80_MCode.vhd:1502:66  */
  assign n5081 = ir == 8'b10010011;
  /* src/T80/T80_MCode.vhd:1502:66  */
  assign n5082 = n5079 | n5081;
  /* src/T80/T80_MCode.vhd:1502:77  */
  assign n5084 = ir == 8'b10010100;
  /* src/T80/T80_MCode.vhd:1502:77  */
  assign n5085 = n5082 | n5084;
  /* src/T80/T80_MCode.vhd:1502:88  */
  assign n5087 = ir == 8'b10010101;
  /* src/T80/T80_MCode.vhd:1502:88  */
  assign n5088 = n5085 | n5087;
  /* src/T80/T80_MCode.vhd:1502:99  */
  assign n5090 = ir == 8'b10010110;
  /* src/T80/T80_MCode.vhd:1502:99  */
  assign n5091 = n5088 | n5090;
  /* src/T80/T80_MCode.vhd:1502:110  */
  assign n5093 = ir == 8'b10010111;
  /* src/T80/T80_MCode.vhd:1502:110  */
  assign n5094 = n5091 | n5093;
  /* src/T80/T80_MCode.vhd:1503:33  */
  assign n5096 = ir == 8'b10011000;
  /* src/T80/T80_MCode.vhd:1503:33  */
  assign n5097 = n5094 | n5096;
  /* src/T80/T80_MCode.vhd:1503:44  */
  assign n5099 = ir == 8'b10011001;
  /* src/T80/T80_MCode.vhd:1503:44  */
  assign n5100 = n5097 | n5099;
  /* src/T80/T80_MCode.vhd:1503:55  */
  assign n5102 = ir == 8'b10011010;
  /* src/T80/T80_MCode.vhd:1503:55  */
  assign n5103 = n5100 | n5102;
  /* src/T80/T80_MCode.vhd:1503:66  */
  assign n5105 = ir == 8'b10011011;
  /* src/T80/T80_MCode.vhd:1503:66  */
  assign n5106 = n5103 | n5105;
  /* src/T80/T80_MCode.vhd:1503:77  */
  assign n5108 = ir == 8'b10011100;
  /* src/T80/T80_MCode.vhd:1503:77  */
  assign n5109 = n5106 | n5108;
  /* src/T80/T80_MCode.vhd:1503:88  */
  assign n5111 = ir == 8'b10011101;
  /* src/T80/T80_MCode.vhd:1503:88  */
  assign n5112 = n5109 | n5111;
  /* src/T80/T80_MCode.vhd:1503:99  */
  assign n5114 = ir == 8'b10011110;
  /* src/T80/T80_MCode.vhd:1503:99  */
  assign n5115 = n5112 | n5114;
  /* src/T80/T80_MCode.vhd:1503:110  */
  assign n5117 = ir == 8'b10011111;
  /* src/T80/T80_MCode.vhd:1503:110  */
  assign n5118 = n5115 | n5117;
  /* src/T80/T80_MCode.vhd:1504:33  */
  assign n5120 = ir == 8'b10100100;
  /* src/T80/T80_MCode.vhd:1504:33  */
  assign n5121 = n5118 | n5120;
  /* src/T80/T80_MCode.vhd:1504:88  */
  assign n5123 = ir == 8'b10100101;
  /* src/T80/T80_MCode.vhd:1504:88  */
  assign n5124 = n5121 | n5123;
  /* src/T80/T80_MCode.vhd:1504:99  */
  assign n5126 = ir == 8'b10100110;
  /* src/T80/T80_MCode.vhd:1504:99  */
  assign n5127 = n5124 | n5126;
  /* src/T80/T80_MCode.vhd:1504:110  */
  assign n5129 = ir == 8'b10100111;
  /* src/T80/T80_MCode.vhd:1504:110  */
  assign n5130 = n5127 | n5129;
  /* src/T80/T80_MCode.vhd:1505:33  */
  assign n5132 = ir == 8'b10101100;
  /* src/T80/T80_MCode.vhd:1505:33  */
  assign n5133 = n5130 | n5132;
  /* src/T80/T80_MCode.vhd:1505:88  */
  assign n5135 = ir == 8'b10101101;
  /* src/T80/T80_MCode.vhd:1505:88  */
  assign n5136 = n5133 | n5135;
  /* src/T80/T80_MCode.vhd:1505:99  */
  assign n5138 = ir == 8'b10101110;
  /* src/T80/T80_MCode.vhd:1505:99  */
  assign n5139 = n5136 | n5138;
  /* src/T80/T80_MCode.vhd:1505:110  */
  assign n5141 = ir == 8'b10101111;
  /* src/T80/T80_MCode.vhd:1505:110  */
  assign n5142 = n5139 | n5141;
  /* src/T80/T80_MCode.vhd:1506:33  */
  assign n5144 = ir == 8'b10110100;
  /* src/T80/T80_MCode.vhd:1506:33  */
  assign n5145 = n5142 | n5144;
  /* src/T80/T80_MCode.vhd:1506:88  */
  assign n5147 = ir == 8'b10110101;
  /* src/T80/T80_MCode.vhd:1506:88  */
  assign n5148 = n5145 | n5147;
  /* src/T80/T80_MCode.vhd:1506:99  */
  assign n5150 = ir == 8'b10110110;
  /* src/T80/T80_MCode.vhd:1506:99  */
  assign n5151 = n5148 | n5150;
  /* src/T80/T80_MCode.vhd:1506:110  */
  assign n5153 = ir == 8'b10110111;
  /* src/T80/T80_MCode.vhd:1506:110  */
  assign n5154 = n5151 | n5153;
  /* src/T80/T80_MCode.vhd:1507:33  */
  assign n5156 = ir == 8'b10111100;
  /* src/T80/T80_MCode.vhd:1507:33  */
  assign n5157 = n5154 | n5156;
  /* src/T80/T80_MCode.vhd:1507:88  */
  assign n5159 = ir == 8'b10111101;
  /* src/T80/T80_MCode.vhd:1507:88  */
  assign n5160 = n5157 | n5159;
  /* src/T80/T80_MCode.vhd:1507:99  */
  assign n5162 = ir == 8'b10111110;
  /* src/T80/T80_MCode.vhd:1507:99  */
  assign n5163 = n5160 | n5162;
  /* src/T80/T80_MCode.vhd:1507:110  */
  assign n5165 = ir == 8'b10111111;
  /* src/T80/T80_MCode.vhd:1507:110  */
  assign n5166 = n5163 | n5165;
  /* src/T80/T80_MCode.vhd:1508:33  */
  assign n5168 = ir == 8'b11000000;
  /* src/T80/T80_MCode.vhd:1508:33  */
  assign n5169 = n5166 | n5168;
  /* src/T80/T80_MCode.vhd:1508:44  */
  assign n5171 = ir == 8'b11000001;
  /* src/T80/T80_MCode.vhd:1508:44  */
  assign n5172 = n5169 | n5171;
  /* src/T80/T80_MCode.vhd:1508:55  */
  assign n5174 = ir == 8'b11000010;
  /* src/T80/T80_MCode.vhd:1508:55  */
  assign n5175 = n5172 | n5174;
  /* src/T80/T80_MCode.vhd:1508:66  */
  assign n5177 = ir == 8'b11000011;
  /* src/T80/T80_MCode.vhd:1508:66  */
  assign n5178 = n5175 | n5177;
  /* src/T80/T80_MCode.vhd:1508:77  */
  assign n5180 = ir == 8'b11000100;
  /* src/T80/T80_MCode.vhd:1508:77  */
  assign n5181 = n5178 | n5180;
  /* src/T80/T80_MCode.vhd:1508:88  */
  assign n5183 = ir == 8'b11000101;
  /* src/T80/T80_MCode.vhd:1508:88  */
  assign n5184 = n5181 | n5183;
  /* src/T80/T80_MCode.vhd:1508:99  */
  assign n5186 = ir == 8'b11000110;
  /* src/T80/T80_MCode.vhd:1508:99  */
  assign n5187 = n5184 | n5186;
  /* src/T80/T80_MCode.vhd:1508:110  */
  assign n5189 = ir == 8'b11000111;
  /* src/T80/T80_MCode.vhd:1508:110  */
  assign n5190 = n5187 | n5189;
  /* src/T80/T80_MCode.vhd:1509:33  */
  assign n5192 = ir == 8'b11001000;
  /* src/T80/T80_MCode.vhd:1509:33  */
  assign n5193 = n5190 | n5192;
  /* src/T80/T80_MCode.vhd:1509:44  */
  assign n5195 = ir == 8'b11001001;
  /* src/T80/T80_MCode.vhd:1509:44  */
  assign n5196 = n5193 | n5195;
  /* src/T80/T80_MCode.vhd:1509:55  */
  assign n5198 = ir == 8'b11001010;
  /* src/T80/T80_MCode.vhd:1509:55  */
  assign n5199 = n5196 | n5198;
  /* src/T80/T80_MCode.vhd:1509:66  */
  assign n5201 = ir == 8'b11001011;
  /* src/T80/T80_MCode.vhd:1509:66  */
  assign n5202 = n5199 | n5201;
  /* src/T80/T80_MCode.vhd:1509:77  */
  assign n5204 = ir == 8'b11001100;
  /* src/T80/T80_MCode.vhd:1509:77  */
  assign n5205 = n5202 | n5204;
  /* src/T80/T80_MCode.vhd:1509:88  */
  assign n5207 = ir == 8'b11001101;
  /* src/T80/T80_MCode.vhd:1509:88  */
  assign n5208 = n5205 | n5207;
  /* src/T80/T80_MCode.vhd:1509:99  */
  assign n5210 = ir == 8'b11001110;
  /* src/T80/T80_MCode.vhd:1509:99  */
  assign n5211 = n5208 | n5210;
  /* src/T80/T80_MCode.vhd:1509:110  */
  assign n5213 = ir == 8'b11001111;
  /* src/T80/T80_MCode.vhd:1509:110  */
  assign n5214 = n5211 | n5213;
  /* src/T80/T80_MCode.vhd:1510:33  */
  assign n5216 = ir == 8'b11010000;
  /* src/T80/T80_MCode.vhd:1510:33  */
  assign n5217 = n5214 | n5216;
  /* src/T80/T80_MCode.vhd:1510:44  */
  assign n5219 = ir == 8'b11010001;
  /* src/T80/T80_MCode.vhd:1510:44  */
  assign n5220 = n5217 | n5219;
  /* src/T80/T80_MCode.vhd:1510:55  */
  assign n5222 = ir == 8'b11010010;
  /* src/T80/T80_MCode.vhd:1510:55  */
  assign n5223 = n5220 | n5222;
  /* src/T80/T80_MCode.vhd:1510:66  */
  assign n5225 = ir == 8'b11010011;
  /* src/T80/T80_MCode.vhd:1510:66  */
  assign n5226 = n5223 | n5225;
  /* src/T80/T80_MCode.vhd:1510:77  */
  assign n5228 = ir == 8'b11010100;
  /* src/T80/T80_MCode.vhd:1510:77  */
  assign n5229 = n5226 | n5228;
  /* src/T80/T80_MCode.vhd:1510:88  */
  assign n5231 = ir == 8'b11010101;
  /* src/T80/T80_MCode.vhd:1510:88  */
  assign n5232 = n5229 | n5231;
  /* src/T80/T80_MCode.vhd:1510:99  */
  assign n5234 = ir == 8'b11010110;
  /* src/T80/T80_MCode.vhd:1510:99  */
  assign n5235 = n5232 | n5234;
  /* src/T80/T80_MCode.vhd:1510:110  */
  assign n5237 = ir == 8'b11010111;
  /* src/T80/T80_MCode.vhd:1510:110  */
  assign n5238 = n5235 | n5237;
  /* src/T80/T80_MCode.vhd:1511:33  */
  assign n5240 = ir == 8'b11011000;
  /* src/T80/T80_MCode.vhd:1511:33  */
  assign n5241 = n5238 | n5240;
  /* src/T80/T80_MCode.vhd:1511:44  */
  assign n5243 = ir == 8'b11011001;
  /* src/T80/T80_MCode.vhd:1511:44  */
  assign n5244 = n5241 | n5243;
  /* src/T80/T80_MCode.vhd:1511:55  */
  assign n5246 = ir == 8'b11011010;
  /* src/T80/T80_MCode.vhd:1511:55  */
  assign n5247 = n5244 | n5246;
  /* src/T80/T80_MCode.vhd:1511:66  */
  assign n5249 = ir == 8'b11011011;
  /* src/T80/T80_MCode.vhd:1511:66  */
  assign n5250 = n5247 | n5249;
  /* src/T80/T80_MCode.vhd:1511:77  */
  assign n5252 = ir == 8'b11011100;
  /* src/T80/T80_MCode.vhd:1511:77  */
  assign n5253 = n5250 | n5252;
  /* src/T80/T80_MCode.vhd:1511:88  */
  assign n5255 = ir == 8'b11011101;
  /* src/T80/T80_MCode.vhd:1511:88  */
  assign n5256 = n5253 | n5255;
  /* src/T80/T80_MCode.vhd:1511:99  */
  assign n5258 = ir == 8'b11011110;
  /* src/T80/T80_MCode.vhd:1511:99  */
  assign n5259 = n5256 | n5258;
  /* src/T80/T80_MCode.vhd:1511:110  */
  assign n5261 = ir == 8'b11011111;
  /* src/T80/T80_MCode.vhd:1511:110  */
  assign n5262 = n5259 | n5261;
  /* src/T80/T80_MCode.vhd:1512:33  */
  assign n5264 = ir == 8'b11100000;
  /* src/T80/T80_MCode.vhd:1512:33  */
  assign n5265 = n5262 | n5264;
  /* src/T80/T80_MCode.vhd:1512:44  */
  assign n5267 = ir == 8'b11100001;
  /* src/T80/T80_MCode.vhd:1512:44  */
  assign n5268 = n5265 | n5267;
  /* src/T80/T80_MCode.vhd:1512:55  */
  assign n5270 = ir == 8'b11100010;
  /* src/T80/T80_MCode.vhd:1512:55  */
  assign n5271 = n5268 | n5270;
  /* src/T80/T80_MCode.vhd:1512:66  */
  assign n5273 = ir == 8'b11100011;
  /* src/T80/T80_MCode.vhd:1512:66  */
  assign n5274 = n5271 | n5273;
  /* src/T80/T80_MCode.vhd:1512:77  */
  assign n5276 = ir == 8'b11100100;
  /* src/T80/T80_MCode.vhd:1512:77  */
  assign n5277 = n5274 | n5276;
  /* src/T80/T80_MCode.vhd:1512:88  */
  assign n5279 = ir == 8'b11100101;
  /* src/T80/T80_MCode.vhd:1512:88  */
  assign n5280 = n5277 | n5279;
  /* src/T80/T80_MCode.vhd:1512:99  */
  assign n5282 = ir == 8'b11100110;
  /* src/T80/T80_MCode.vhd:1512:99  */
  assign n5283 = n5280 | n5282;
  /* src/T80/T80_MCode.vhd:1512:110  */
  assign n5285 = ir == 8'b11100111;
  /* src/T80/T80_MCode.vhd:1512:110  */
  assign n5286 = n5283 | n5285;
  /* src/T80/T80_MCode.vhd:1513:33  */
  assign n5288 = ir == 8'b11101000;
  /* src/T80/T80_MCode.vhd:1513:33  */
  assign n5289 = n5286 | n5288;
  /* src/T80/T80_MCode.vhd:1513:44  */
  assign n5291 = ir == 8'b11101001;
  /* src/T80/T80_MCode.vhd:1513:44  */
  assign n5292 = n5289 | n5291;
  /* src/T80/T80_MCode.vhd:1513:55  */
  assign n5294 = ir == 8'b11101010;
  /* src/T80/T80_MCode.vhd:1513:55  */
  assign n5295 = n5292 | n5294;
  /* src/T80/T80_MCode.vhd:1513:66  */
  assign n5297 = ir == 8'b11101011;
  /* src/T80/T80_MCode.vhd:1513:66  */
  assign n5298 = n5295 | n5297;
  /* src/T80/T80_MCode.vhd:1513:77  */
  assign n5300 = ir == 8'b11101100;
  /* src/T80/T80_MCode.vhd:1513:77  */
  assign n5301 = n5298 | n5300;
  /* src/T80/T80_MCode.vhd:1513:88  */
  assign n5303 = ir == 8'b11101101;
  /* src/T80/T80_MCode.vhd:1513:88  */
  assign n5304 = n5301 | n5303;
  /* src/T80/T80_MCode.vhd:1513:99  */
  assign n5306 = ir == 8'b11101110;
  /* src/T80/T80_MCode.vhd:1513:99  */
  assign n5307 = n5304 | n5306;
  /* src/T80/T80_MCode.vhd:1513:110  */
  assign n5309 = ir == 8'b11101111;
  /* src/T80/T80_MCode.vhd:1513:110  */
  assign n5310 = n5307 | n5309;
  /* src/T80/T80_MCode.vhd:1514:33  */
  assign n5312 = ir == 8'b11110000;
  /* src/T80/T80_MCode.vhd:1514:33  */
  assign n5313 = n5310 | n5312;
  /* src/T80/T80_MCode.vhd:1514:44  */
  assign n5315 = ir == 8'b11110001;
  /* src/T80/T80_MCode.vhd:1514:44  */
  assign n5316 = n5313 | n5315;
  /* src/T80/T80_MCode.vhd:1514:55  */
  assign n5318 = ir == 8'b11110010;
  /* src/T80/T80_MCode.vhd:1514:55  */
  assign n5319 = n5316 | n5318;
  /* src/T80/T80_MCode.vhd:1514:66  */
  assign n5321 = ir == 8'b11110011;
  /* src/T80/T80_MCode.vhd:1514:66  */
  assign n5322 = n5319 | n5321;
  /* src/T80/T80_MCode.vhd:1514:77  */
  assign n5324 = ir == 8'b11110100;
  /* src/T80/T80_MCode.vhd:1514:77  */
  assign n5325 = n5322 | n5324;
  /* src/T80/T80_MCode.vhd:1514:88  */
  assign n5327 = ir == 8'b11110101;
  /* src/T80/T80_MCode.vhd:1514:88  */
  assign n5328 = n5325 | n5327;
  /* src/T80/T80_MCode.vhd:1514:99  */
  assign n5330 = ir == 8'b11110110;
  /* src/T80/T80_MCode.vhd:1514:99  */
  assign n5331 = n5328 | n5330;
  /* src/T80/T80_MCode.vhd:1514:110  */
  assign n5333 = ir == 8'b11110111;
  /* src/T80/T80_MCode.vhd:1514:110  */
  assign n5334 = n5331 | n5333;
  /* src/T80/T80_MCode.vhd:1515:33  */
  assign n5336 = ir == 8'b11111000;
  /* src/T80/T80_MCode.vhd:1515:33  */
  assign n5337 = n5334 | n5336;
  /* src/T80/T80_MCode.vhd:1515:44  */
  assign n5339 = ir == 8'b11111001;
  /* src/T80/T80_MCode.vhd:1515:44  */
  assign n5340 = n5337 | n5339;
  /* src/T80/T80_MCode.vhd:1515:55  */
  assign n5342 = ir == 8'b11111010;
  /* src/T80/T80_MCode.vhd:1515:55  */
  assign n5343 = n5340 | n5342;
  /* src/T80/T80_MCode.vhd:1515:66  */
  assign n5345 = ir == 8'b11111011;
  /* src/T80/T80_MCode.vhd:1515:66  */
  assign n5346 = n5343 | n5345;
  /* src/T80/T80_MCode.vhd:1515:77  */
  assign n5348 = ir == 8'b11111100;
  /* src/T80/T80_MCode.vhd:1515:77  */
  assign n5349 = n5346 | n5348;
  /* src/T80/T80_MCode.vhd:1515:88  */
  assign n5351 = ir == 8'b11111101;
  /* src/T80/T80_MCode.vhd:1515:88  */
  assign n5352 = n5349 | n5351;
  /* src/T80/T80_MCode.vhd:1515:99  */
  assign n5354 = ir == 8'b11111110;
  /* src/T80/T80_MCode.vhd:1515:99  */
  assign n5355 = n5352 | n5354;
  /* src/T80/T80_MCode.vhd:1515:110  */
  assign n5357 = ir == 8'b11111111;
  /* src/T80/T80_MCode.vhd:1515:110  */
  assign n5358 = n5355 | n5357;
  /* src/T80/T80_MCode.vhd:1517:25  */
  assign n5360 = ir == 8'b01111110;
  /* src/T80/T80_MCode.vhd:1517:40  */
  assign n5362 = ir == 8'b01111111;
  /* src/T80/T80_MCode.vhd:1517:40  */
  assign n5363 = n5360 | n5362;
  /* src/T80/T80_MCode.vhd:1521:25  */
  assign n5365 = ir == 8'b01010111;
  /* src/T80/T80_MCode.vhd:1525:25  */
  assign n5367 = ir == 8'b01011111;
  /* src/T80/T80_MCode.vhd:1529:25  */
  assign n5369 = ir == 8'b01000111;
  /* src/T80/T80_MCode.vhd:1533:25  */
  assign n5371 = ir == 8'b01001111;
  /* src/T80/T80_MCode.vhd:1541:38  */
  assign n5372 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:1542:33  */
  assign n5374 = n5372 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:1545:33  */
  assign n5376 = n5372 == 31'b0000000000000000000000000000011;
  /* src/T80/T80_MCode.vhd:1551:46  */
  assign n5377 = ir[5:4]; // extract
  /* src/T80/T80_MCode.vhd:1551:59  */
  assign n5379 = n5377 == 2'b11;
  /* src/T80/T80_MCode.vhd:1554:78  */
  assign n5380 = ir[5:4]; // extract
  /* src/T80/T80_MCode.vhd:1551:41  */
  assign n5382 = {n5380, 1'b1};
  /* src/T80/T80_MCode.vhd:1551:41  */
  assign n5384 = n5379 ? 3'b000 : n5382;
  /* src/T80/T80_MCode.vhd:1551:41  */
  assign n5387 = n5379 ? 1'b1 : 1'b0;
  /* src/T80/T80_MCode.vhd:1549:33  */
  assign n5389 = n5372 == 31'b0000000000000000000000000000100;
  /* src/T80/T80_MCode.vhd:1561:46  */
  assign n5390 = ir[5:4]; // extract
  /* src/T80/T80_MCode.vhd:1561:59  */
  assign n5392 = n5390 == 2'b11;
  /* src/T80/T80_MCode.vhd:1564:78  */
  assign n5393 = ir[5:4]; // extract
  /* src/T80/T80_MCode.vhd:1561:41  */
  assign n5395 = {n5393, 1'b0};
  /* src/T80/T80_MCode.vhd:1561:41  */
  assign n5397 = n5392 ? 3'b001 : n5395;
  /* src/T80/T80_MCode.vhd:1561:41  */
  assign n5400 = n5392 ? 1'b1 : 1'b0;
  /* src/T80/T80_MCode.vhd:1559:33  */
  assign n5402 = n5372 == 31'b0000000000000000000000000000101;
  /* src/T80/T80_MCode.vhd:1541:33  */
  assign n5403 = {n5402, n5389, n5376, n5374};
  /* src/T80/T80_MCode.vhd:1541:33  */
  always @*
    case (n5403)
      4'b1000: n5407 = 1'b0;
      4'b0100: n5407 = 1'b0;
      4'b0010: n5407 = 1'b1;
      4'b0001: n5407 = 1'b1;
      default: n5407 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1541:33  */
  always @*
    case (n5403)
      4'b1000: n5410 = 1'b0;
      4'b0100: n5410 = 1'b1;
      4'b0010: n5410 = 1'b0;
      4'b0001: n5410 = 1'b0;
      default: n5410 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1541:33  */
  always @*
    case (n5403)
      4'b1000: n5414 = 1'b1;
      4'b0100: n5414 = 1'b1;
      4'b0010: n5414 = 1'b0;
      4'b0001: n5414 = 1'b0;
      default: n5414 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1541:33  */
  always @*
    case (n5403)
      4'b1000: n5416 = n5397;
      4'b0100: n5416 = n5384;
      4'b0010: n5416 = 3'b000;
      4'b0001: n5416 = 3'b000;
      default: n5416 = 3'b000;
    endcase
  /* src/T80/T80_MCode.vhd:1541:33  */
  always @*
    case (n5403)
      4'b1000: n5418 = n5400;
      4'b0100: n5418 = n5387;
      4'b0010: n5418 = 1'b0;
      4'b0001: n5418 = 1'b0;
      default: n5418 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1541:33  */
  always @*
    case (n5403)
      4'b1000: n5422 = 3'b111;
      4'b0100: n5422 = 3'b110;
      4'b0010: n5422 = 3'b110;
      4'b0001: n5422 = 3'b111;
      default: n5422 = 3'b111;
    endcase
  /* src/T80/T80_MCode.vhd:1541:33  */
  always @*
    case (n5403)
      4'b1000: n5425 = 1'b0;
      4'b0100: n5425 = 1'b0;
      4'b0010: n5425 = 1'b0;
      4'b0001: n5425 = 1'b1;
      default: n5425 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1541:33  */
  always @*
    case (n5403)
      4'b1000: n5428 = 1'b0;
      4'b0100: n5428 = 1'b0;
      4'b0010: n5428 = 1'b1;
      4'b0001: n5428 = 1'b0;
      default: n5428 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1538:25  */
  assign n5430 = ir == 8'b01001011;
  /* src/T80/T80_MCode.vhd:1538:40  */
  assign n5432 = ir == 8'b01011011;
  /* src/T80/T80_MCode.vhd:1538:40  */
  assign n5433 = n5430 | n5432;
  /* src/T80/T80_MCode.vhd:1538:51  */
  assign n5435 = ir == 8'b01101011;
  /* src/T80/T80_MCode.vhd:1538:51  */
  assign n5436 = n5433 | n5435;
  /* src/T80/T80_MCode.vhd:1538:62  */
  assign n5438 = ir == 8'b01111011;
  /* src/T80/T80_MCode.vhd:1538:62  */
  assign n5439 = n5436 | n5438;
  /* src/T80/T80_MCode.vhd:1572:38  */
  assign n5440 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:1573:33  */
  assign n5442 = n5440 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:1580:46  */
  assign n5443 = ir[5:4]; // extract
  /* src/T80/T80_MCode.vhd:1580:59  */
  assign n5445 = n5443 == 2'b11;
  /* src/T80/T80_MCode.vhd:1583:78  */
  assign n5446 = ir[5:4]; // extract
  /* src/T80/T80_MCode.vhd:1580:41  */
  assign n5449 = {1'b0, n5446, 1'b1};
  /* src/T80/T80_MCode.vhd:1580:41  */
  assign n5451 = n5445 ? 4'b1000 : n5449;
  /* src/T80/T80_MCode.vhd:1576:33  */
  assign n5453 = n5440 == 31'b0000000000000000000000000000011;
  /* src/T80/T80_MCode.vhd:1591:46  */
  assign n5454 = ir[5:4]; // extract
  /* src/T80/T80_MCode.vhd:1591:59  */
  assign n5456 = n5454 == 2'b11;
  /* src/T80/T80_MCode.vhd:1594:78  */
  assign n5457 = ir[5:4]; // extract
  /* src/T80/T80_MCode.vhd:1591:41  */
  assign n5460 = {1'b0, n5457, 1'b0};
  /* src/T80/T80_MCode.vhd:1591:41  */
  assign n5462 = n5456 ? 4'b1001 : n5460;
  /* src/T80/T80_MCode.vhd:1587:33  */
  assign n5464 = n5440 == 31'b0000000000000000000000000000100;
  /* src/T80/T80_MCode.vhd:1598:33  */
  assign n5466 = n5440 == 31'b0000000000000000000000000000101;
  /* src/T80/T80_MCode.vhd:1572:33  */
  assign n5467 = {n5466, n5464, n5453, n5442};
  /* src/T80/T80_MCode.vhd:1572:33  */
  always @*
    case (n5467)
      4'b1000: n5471 = 1'b0;
      4'b0100: n5471 = 1'b0;
      4'b0010: n5471 = 1'b1;
      4'b0001: n5471 = 1'b1;
      default: n5471 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1572:33  */
  always @*
    case (n5467)
      4'b1000: n5474 = 1'b0;
      4'b0100: n5474 = 1'b1;
      4'b0010: n5474 = 1'b0;
      4'b0001: n5474 = 1'b0;
      default: n5474 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1572:33  */
  always @*
    case (n5467)
      4'b1000: n5476 = 4'b0000;
      4'b0100: n5476 = n5462;
      4'b0010: n5476 = n5451;
      4'b0001: n5476 = 4'b0000;
      default: n5476 = 4'b0000;
    endcase
  /* src/T80/T80_MCode.vhd:1572:33  */
  always @*
    case (n5467)
      4'b1000: n5480 = 3'b111;
      4'b0100: n5480 = 3'b110;
      4'b0010: n5480 = 3'b110;
      4'b0001: n5480 = 3'b111;
      default: n5480 = 3'b111;
    endcase
  /* src/T80/T80_MCode.vhd:1572:33  */
  always @*
    case (n5467)
      4'b1000: n5483 = 1'b0;
      4'b0100: n5483 = 1'b0;
      4'b0010: n5483 = 1'b0;
      4'b0001: n5483 = 1'b1;
      default: n5483 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1572:33  */
  always @*
    case (n5467)
      4'b1000: n5486 = 1'b0;
      4'b0100: n5486 = 1'b0;
      4'b0010: n5486 = 1'b1;
      4'b0001: n5486 = 1'b0;
      default: n5486 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1572:33  */
  always @*
    case (n5467)
      4'b1000: n5490 = 1'b1;
      4'b0100: n5490 = 1'b1;
      4'b0010: n5490 = 1'b0;
      4'b0001: n5490 = 1'b0;
      default: n5490 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1569:25  */
  assign n5492 = ir == 8'b01000011;
  /* src/T80/T80_MCode.vhd:1569:40  */
  assign n5494 = ir == 8'b01010011;
  /* src/T80/T80_MCode.vhd:1569:40  */
  assign n5495 = n5492 | n5494;
  /* src/T80/T80_MCode.vhd:1569:51  */
  assign n5497 = ir == 8'b01100011;
  /* src/T80/T80_MCode.vhd:1569:51  */
  assign n5498 = n5495 | n5497;
  /* src/T80/T80_MCode.vhd:1569:62  */
  assign n5500 = ir == 8'b01110011;
  /* src/T80/T80_MCode.vhd:1569:62  */
  assign n5501 = n5498 | n5500;
  /* src/T80/T80_MCode.vhd:1605:38  */
  assign n5502 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:1606:33  */
  assign n5504 = n5502 == 31'b0000000000000000000000000000001;
  /* src/T80/T80_MCode.vhd:1614:46  */
  assign n5506 = ir[3]; // extract
  /* src/T80/T80_MCode.vhd:1614:50  */
  assign n5507 = ~n5506;
  /* src/T80/T80_MCode.vhd:1614:41  */
  assign n5510 = n5507 ? 4'b0110 : 4'b1110;
  /* src/T80/T80_MCode.vhd:1609:33  */
  assign n5512 = n5502 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:1623:46  */
  assign n5513 = ir[3]; // extract
  /* src/T80/T80_MCode.vhd:1623:50  */
  assign n5514 = ~n5513;
  /* src/T80/T80_MCode.vhd:1623:41  */
  assign n5517 = n5514 ? 4'b0101 : 4'b1101;
  /* src/T80/T80_MCode.vhd:1619:33  */
  assign n5519 = n5502 == 31'b0000000000000000000000000000011;
  /* src/T80/T80_MCode.vhd:1628:33  */
  assign n5521 = n5502 == 31'b0000000000000000000000000000100;
  /* src/T80/T80_MCode.vhd:1605:33  */
  assign n5522 = {n5521, n5519, n5512, n5504};
  /* src/T80/T80_MCode.vhd:1605:33  */
  always @*
    case (n5522)
      4'b1000: n5525 = 3'b101;
      4'b0100: n5525 = 3'b101;
      4'b0010: n5525 = n1732;
      4'b0001: n5525 = n1732;
      default: n5525 = n1732;
    endcase
  /* src/T80/T80_MCode.vhd:1605:33  */
  always @*
    case (n5522)
      4'b1000: n5528 = 4'b0000;
      4'b0100: n5528 = n5517;
      4'b0010: n5528 = n5510;
      4'b0001: n5528 = 4'b1100;
      default: n5528 = 4'b0000;
    endcase
  /* src/T80/T80_MCode.vhd:1605:33  */
  always @*
    case (n5522)
      4'b1000: n5530 = 3'b000;
      4'b0100: n5530 = 3'b000;
      4'b0010: n5530 = 3'b111;
      4'b0001: n5530 = 3'b000;
      default: n5530 = 3'b000;
    endcase
  /* src/T80/T80_MCode.vhd:1605:33  */
  always @*
    case (n5522)
      4'b1000: n5533 = 4'b0000;
      4'b0100: n5533 = 4'b0000;
      4'b0010: n5533 = 4'b0110;
      4'b0001: n5533 = 4'b0000;
      default: n5533 = 4'b0000;
    endcase
  /* src/T80/T80_MCode.vhd:1605:33  */
  always @*
    case (n5522)
      4'b1000: n5535 = n1735;
      4'b0100: n5535 = n1735;
      4'b0010: n5535 = 4'b0000;
      4'b0001: n5535 = n1735;
      default: n5535 = n1735;
    endcase
  /* src/T80/T80_MCode.vhd:1605:33  */
  always @*
    case (n5522)
      4'b1000: n5539 = 3'b111;
      4'b0100: n5539 = 3'b111;
      4'b0010: n5539 = 3'b001;
      4'b0001: n5539 = 3'b010;
      default: n5539 = 3'b111;
    endcase
  /* src/T80/T80_MCode.vhd:1605:33  */
  always @*
    case (n5522)
      4'b1000: n5542 = 1'b0;
      4'b0100: n5542 = 1'b1;
      4'b0010: n5542 = 1'b0;
      4'b0001: n5542 = 1'b0;
      default: n5542 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1605:33  */
  always @*
    case (n5522)
      4'b1000: n5545 = 1'b1;
      4'b0100: n5545 = 1'b0;
      4'b0010: n5545 = 1'b0;
      4'b0001: n5545 = 1'b0;
      default: n5545 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1605:33  */
  always @*
    case (n5522)
      4'b1000: n5548 = 1'b0;
      4'b0100: n5548 = 1'b1;
      4'b0010: n5548 = 1'b0;
      4'b0001: n5548 = 1'b0;
      default: n5548 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1602:25  */
  assign n5550 = ir == 8'b10100000;
  /* src/T80/T80_MCode.vhd:1602:41  */
  assign n5552 = ir == 8'b10101000;
  /* src/T80/T80_MCode.vhd:1602:41  */
  assign n5553 = n5550 | n5552;
  /* src/T80/T80_MCode.vhd:1602:54  */
  assign n5555 = ir == 8'b10110000;
  /* src/T80/T80_MCode.vhd:1602:54  */
  assign n5556 = n5553 | n5555;
  /* src/T80/T80_MCode.vhd:1602:67  */
  assign n5558 = ir == 8'b10111000;
  /* src/T80/T80_MCode.vhd:1602:67  */
  assign n5559 = n5556 | n5558;
  /* src/T80/T80_MCode.vhd:1636:38  */
  assign n5560 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:1637:33  */
  assign n5562 = n5560 == 31'b0000000000000000000000000000001;
  /* src/T80/T80_MCode.vhd:1646:46  */
  assign n5564 = ir[3]; // extract
  /* src/T80/T80_MCode.vhd:1646:50  */
  assign n5565 = ~n5564;
  /* src/T80/T80_MCode.vhd:1646:41  */
  assign n5568 = n5565 ? 4'b0110 : 4'b1110;
  /* src/T80/T80_MCode.vhd:1640:33  */
  assign n5570 = n5560 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:1651:33  */
  assign n5572 = n5560 == 31'b0000000000000000000000000000011;
  /* src/T80/T80_MCode.vhd:1655:33  */
  assign n5574 = n5560 == 31'b0000000000000000000000000000100;
  /* src/T80/T80_MCode.vhd:1636:33  */
  assign n5575 = {n5574, n5572, n5570, n5562};
  /* src/T80/T80_MCode.vhd:1636:33  */
  always @*
    case (n5575)
      4'b1000: n5578 = 3'b101;
      4'b0100: n5578 = 3'b101;
      4'b0010: n5578 = n1732;
      4'b0001: n5578 = n1732;
      default: n5578 = n1732;
    endcase
  /* src/T80/T80_MCode.vhd:1636:33  */
  always @*
    case (n5575)
      4'b1000: n5581 = 4'b0000;
      4'b0100: n5581 = 4'b0000;
      4'b0010: n5581 = n5568;
      4'b0001: n5581 = 4'b1100;
      default: n5581 = 4'b0000;
    endcase
  /* src/T80/T80_MCode.vhd:1636:33  */
  always @*
    case (n5575)
      4'b1000: n5583 = 3'b000;
      4'b0100: n5583 = 3'b000;
      4'b0010: n5583 = 3'b111;
      4'b0001: n5583 = 3'b000;
      default: n5583 = 3'b000;
    endcase
  /* src/T80/T80_MCode.vhd:1636:33  */
  always @*
    case (n5575)
      4'b1000: n5586 = 4'b0000;
      4'b0100: n5586 = 4'b0000;
      4'b0010: n5586 = 4'b0110;
      4'b0001: n5586 = 4'b0000;
      default: n5586 = 4'b0000;
    endcase
  /* src/T80/T80_MCode.vhd:1636:33  */
  always @*
    case (n5575)
      4'b1000: n5588 = n1735;
      4'b0100: n5588 = n1735;
      4'b0010: n5588 = 4'b0111;
      4'b0001: n5588 = n1735;
      default: n5588 = n1735;
    endcase
  /* src/T80/T80_MCode.vhd:1636:33  */
  always @*
    case (n5575)
      4'b1000: n5591 = 1'b0;
      4'b0100: n5591 = 1'b0;
      4'b0010: n5591 = 1'b1;
      4'b0001: n5591 = 1'b0;
      default: n5591 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1636:33  */
  always @*
    case (n5575)
      4'b1000: n5594 = 1'b0;
      4'b0100: n5594 = 1'b0;
      4'b0010: n5594 = 1'b1;
      4'b0001: n5594 = 1'b0;
      default: n5594 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1636:33  */
  always @*
    case (n5575)
      4'b1000: n5597 = 3'b111;
      4'b0100: n5597 = 3'b111;
      4'b0010: n5597 = 3'b111;
      4'b0001: n5597 = 3'b010;
      default: n5597 = 3'b111;
    endcase
  /* src/T80/T80_MCode.vhd:1636:33  */
  always @*
    case (n5575)
      4'b1000: n5600 = 1'b0;
      4'b0100: n5600 = 1'b1;
      4'b0010: n5600 = 1'b0;
      4'b0001: n5600 = 1'b0;
      default: n5600 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1636:33  */
  always @*
    case (n5575)
      4'b1000: n5604 = 1'b1;
      4'b0100: n5604 = 1'b1;
      4'b0010: n5604 = 1'b0;
      4'b0001: n5604 = 1'b0;
      default: n5604 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1633:25  */
  assign n5606 = ir == 8'b10100001;
  /* src/T80/T80_MCode.vhd:1633:41  */
  assign n5608 = ir == 8'b10101001;
  /* src/T80/T80_MCode.vhd:1633:41  */
  assign n5609 = n5606 | n5608;
  /* src/T80/T80_MCode.vhd:1633:54  */
  assign n5611 = ir == 8'b10110001;
  /* src/T80/T80_MCode.vhd:1633:54  */
  assign n5612 = n5609 | n5611;
  /* src/T80/T80_MCode.vhd:1633:67  */
  assign n5614 = ir == 8'b10111001;
  /* src/T80/T80_MCode.vhd:1633:67  */
  assign n5615 = n5612 | n5614;
  /* src/T80/T80_MCode.vhd:1660:25  */
  assign n5617 = ir == 8'b01000100;
  /* src/T80/T80_MCode.vhd:1660:40  */
  assign n5619 = ir == 8'b01001100;
  /* src/T80/T80_MCode.vhd:1660:40  */
  assign n5620 = n5617 | n5619;
  /* src/T80/T80_MCode.vhd:1660:51  */
  assign n5622 = ir == 8'b01010100;
  /* src/T80/T80_MCode.vhd:1660:51  */
  assign n5623 = n5620 | n5622;
  /* src/T80/T80_MCode.vhd:1660:62  */
  assign n5625 = ir == 8'b01011100;
  /* src/T80/T80_MCode.vhd:1660:62  */
  assign n5626 = n5623 | n5625;
  /* src/T80/T80_MCode.vhd:1660:73  */
  assign n5628 = ir == 8'b01100100;
  /* src/T80/T80_MCode.vhd:1660:73  */
  assign n5629 = n5626 | n5628;
  /* src/T80/T80_MCode.vhd:1660:84  */
  assign n5631 = ir == 8'b01101100;
  /* src/T80/T80_MCode.vhd:1660:84  */
  assign n5632 = n5629 | n5631;
  /* src/T80/T80_MCode.vhd:1660:95  */
  assign n5634 = ir == 8'b01110100;
  /* src/T80/T80_MCode.vhd:1660:95  */
  assign n5635 = n5632 | n5634;
  /* src/T80/T80_MCode.vhd:1660:106  */
  assign n5637 = ir == 8'b01111100;
  /* src/T80/T80_MCode.vhd:1660:106  */
  assign n5638 = n5635 | n5637;
  /* src/T80/T80_MCode.vhd:1667:25  */
  assign n5640 = ir == 8'b01000110;
  /* src/T80/T80_MCode.vhd:1667:40  */
  assign n5642 = ir == 8'b01001110;
  /* src/T80/T80_MCode.vhd:1667:40  */
  assign n5643 = n5640 | n5642;
  /* src/T80/T80_MCode.vhd:1667:51  */
  assign n5645 = ir == 8'b01100110;
  /* src/T80/T80_MCode.vhd:1667:51  */
  assign n5646 = n5643 | n5645;
  /* src/T80/T80_MCode.vhd:1667:62  */
  assign n5648 = ir == 8'b01101110;
  /* src/T80/T80_MCode.vhd:1667:62  */
  assign n5649 = n5646 | n5648;
  /* src/T80/T80_MCode.vhd:1670:25  */
  assign n5651 = ir == 8'b01010110;
  /* src/T80/T80_MCode.vhd:1670:40  */
  assign n5653 = ir == 8'b01110110;
  /* src/T80/T80_MCode.vhd:1670:40  */
  assign n5654 = n5651 | n5653;
  /* src/T80/T80_MCode.vhd:1673:25  */
  assign n5656 = ir == 8'b01011110;
  /* src/T80/T80_MCode.vhd:1673:40  */
  assign n5658 = ir == 8'b01110111;
  /* src/T80/T80_MCode.vhd:1673:40  */
  assign n5659 = n5656 | n5658;
  /* src/T80/T80_MCode.vhd:1680:38  */
  assign n5660 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:1687:68  */
  assign n5662 = ir[5:4]; // extract
  /* src/T80/T80_MCode.vhd:1687:46  */
  assign n5663 = {29'b0, n5662};  //  uext
  /* src/T80/T80_MCode.vhd:1689:78  */
  assign n5664 = ir[5:4]; // extract
  /* src/T80/T80_MCode.vhd:1688:41  */
  assign n5667 = n5663 == 31'b0000000000000000000000000000000;
  /* src/T80/T80_MCode.vhd:1688:47  */
  assign n5669 = n5663 == 31'b0000000000000000000000000000001;
  /* src/T80/T80_MCode.vhd:1688:47  */
  assign n5670 = n5667 | n5669;
  /* src/T80/T80_MCode.vhd:1688:49  */
  assign n5672 = n5663 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:1688:49  */
  assign n5673 = n5670 | n5672;
  /* src/T80/T80_MCode.vhd:1687:41  */
  always @*
    case (n5673)
      1'b1: n5675 = 1'b1;
      default: n5675 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1687:41  */
  always @*
    case (n5673)
      1'b1: n5677 = n5664;
      default: n5677 = 2'b00;
    endcase
  /* src/T80/T80_MCode.vhd:1687:41  */
  always @*
    case (n5673)
      1'b1: n5680 = 1'b0;
      default: n5680 = 1'b1;
    endcase
  /* src/T80/T80_MCode.vhd:1681:33  */
  assign n5682 = n5660 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:1701:68  */
  assign n5684 = ir[5:4]; // extract
  /* src/T80/T80_MCode.vhd:1701:46  */
  assign n5685 = {29'b0, n5684};  //  uext
  /* src/T80/T80_MCode.vhd:1703:78  */
  assign n5686 = ir[5:4]; // extract
  /* src/T80/T80_MCode.vhd:1702:41  */
  assign n5689 = n5685 == 31'b0000000000000000000000000000000;
  /* src/T80/T80_MCode.vhd:1702:47  */
  assign n5691 = n5685 == 31'b0000000000000000000000000000001;
  /* src/T80/T80_MCode.vhd:1702:47  */
  assign n5692 = n5689 | n5691;
  /* src/T80/T80_MCode.vhd:1702:49  */
  assign n5694 = n5685 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:1702:49  */
  assign n5695 = n5692 | n5694;
  /* src/T80/T80_MCode.vhd:1701:41  */
  always @*
    case (n5695)
      1'b1: n5697 = 1'b0;
      default: n5697 = 1'b1;
    endcase
  /* src/T80/T80_MCode.vhd:1701:41  */
  always @*
    case (n5695)
      1'b1: n5699 = n5686;
      default: n5699 = 2'b00;
    endcase
  /* src/T80/T80_MCode.vhd:1701:41  */
  always @*
    case (n5695)
      1'b1: n5702 = 1'b0;
      default: n5702 = 1'b1;
    endcase
  /* src/T80/T80_MCode.vhd:1695:33  */
  assign n5704 = n5660 == 31'b0000000000000000000000000000011;
  /* src/T80/T80_MCode.vhd:1680:33  */
  assign n5705 = {n5704, n5682};
  /* src/T80/T80_MCode.vhd:1680:33  */
  always @*
    case (n5705)
      2'b10: n5707 = n1732;
      2'b01: n5707 = 3'b100;
      default: n5707 = n1732;
    endcase
  /* src/T80/T80_MCode.vhd:1680:33  */
  always @*
    case (n5705)
      2'b10: n5711 = 1'b1;
      2'b01: n5711 = 1'b1;
      default: n5711 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1680:33  */
  always @*
    case (n5705)
      2'b10: n5713 = 3'b100;
      2'b01: n5713 = 3'b101;
      default: n5713 = 3'b000;
    endcase
  /* src/T80/T80_MCode.vhd:1680:33  */
  always @*
    case (n5705)
      2'b10: n5715 = n5697;
      2'b01: n5715 = n5675;
      default: n5715 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1680:33  */
  always @*
    case (n5705)
      2'b10: n5717 = n5699;
      2'b01: n5717 = n5677;
      default: n5717 = 2'b00;
    endcase
  /* src/T80/T80_MCode.vhd:1680:33  */
  always @*
    case (n5705)
      2'b10: n5719 = n5702;
      2'b01: n5719 = n5680;
      default: n5719 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1680:33  */
  always @*
    case (n5705)
      2'b10: n5722 = 4'b0001;
      2'b01: n5722 = 4'b0001;
      default: n5722 = n1735;
    endcase
  /* src/T80/T80_MCode.vhd:1680:33  */
  always @*
    case (n5705)
      2'b10: n5726 = 1'b1;
      2'b01: n5726 = 1'b1;
      default: n5726 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1680:33  */
  always @*
    case (n5705)
      2'b10: n5730 = 1'b1;
      2'b01: n5730 = 1'b1;
      default: n5730 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1677:25  */
  assign n5732 = ir == 8'b01001010;
  /* src/T80/T80_MCode.vhd:1677:40  */
  assign n5734 = ir == 8'b01011010;
  /* src/T80/T80_MCode.vhd:1677:40  */
  assign n5735 = n5732 | n5734;
  /* src/T80/T80_MCode.vhd:1677:51  */
  assign n5737 = ir == 8'b01101010;
  /* src/T80/T80_MCode.vhd:1677:51  */
  assign n5738 = n5735 | n5737;
  /* src/T80/T80_MCode.vhd:1677:62  */
  assign n5740 = ir == 8'b01111010;
  /* src/T80/T80_MCode.vhd:1677:62  */
  assign n5741 = n5738 | n5740;
  /* src/T80/T80_MCode.vhd:1713:38  */
  assign n5742 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:1720:68  */
  assign n5744 = ir[5:4]; // extract
  /* src/T80/T80_MCode.vhd:1720:46  */
  assign n5745 = {29'b0, n5744};  //  uext
  /* src/T80/T80_MCode.vhd:1722:78  */
  assign n5746 = ir[5:4]; // extract
  /* src/T80/T80_MCode.vhd:1721:41  */
  assign n5749 = n5745 == 31'b0000000000000000000000000000000;
  /* src/T80/T80_MCode.vhd:1721:47  */
  assign n5751 = n5745 == 31'b0000000000000000000000000000001;
  /* src/T80/T80_MCode.vhd:1721:47  */
  assign n5752 = n5749 | n5751;
  /* src/T80/T80_MCode.vhd:1721:49  */
  assign n5754 = n5745 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:1721:49  */
  assign n5755 = n5752 | n5754;
  /* src/T80/T80_MCode.vhd:1720:41  */
  always @*
    case (n5755)
      1'b1: n5757 = 1'b1;
      default: n5757 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1720:41  */
  always @*
    case (n5755)
      1'b1: n5759 = n5746;
      default: n5759 = 2'b00;
    endcase
  /* src/T80/T80_MCode.vhd:1720:41  */
  always @*
    case (n5755)
      1'b1: n5762 = 1'b0;
      default: n5762 = 1'b1;
    endcase
  /* src/T80/T80_MCode.vhd:1714:33  */
  assign n5764 = n5742 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:1734:68  */
  assign n5766 = ir[5:4]; // extract
  /* src/T80/T80_MCode.vhd:1734:46  */
  assign n5767 = {29'b0, n5766};  //  uext
  /* src/T80/T80_MCode.vhd:1736:78  */
  assign n5768 = ir[5:4]; // extract
  /* src/T80/T80_MCode.vhd:1735:41  */
  assign n5770 = n5767 == 31'b0000000000000000000000000000000;
  /* src/T80/T80_MCode.vhd:1735:47  */
  assign n5772 = n5767 == 31'b0000000000000000000000000000001;
  /* src/T80/T80_MCode.vhd:1735:47  */
  assign n5773 = n5770 | n5772;
  /* src/T80/T80_MCode.vhd:1735:49  */
  assign n5775 = n5767 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:1735:49  */
  assign n5776 = n5773 | n5775;
  /* src/T80/T80_MCode.vhd:1734:41  */
  always @*
    case (n5776)
      1'b1: n5779 = 1'b0;
      default: n5779 = 1'b1;
    endcase
  /* src/T80/T80_MCode.vhd:1734:41  */
  always @*
    case (n5776)
      1'b1: n5781 = n5768;
      default: n5781 = 2'b00;
    endcase
  /* src/T80/T80_MCode.vhd:1734:41  */
  always @*
    case (n5776)
      1'b1: n5784 = 1'b0;
      default: n5784 = 1'b1;
    endcase
  /* src/T80/T80_MCode.vhd:1728:33  */
  assign n5786 = n5742 == 31'b0000000000000000000000000000011;
  /* src/T80/T80_MCode.vhd:1713:33  */
  assign n5787 = {n5786, n5764};
  /* src/T80/T80_MCode.vhd:1713:33  */
  always @*
    case (n5787)
      2'b10: n5789 = n1732;
      2'b01: n5789 = 3'b100;
      default: n5789 = n1732;
    endcase
  /* src/T80/T80_MCode.vhd:1713:33  */
  always @*
    case (n5787)
      2'b10: n5793 = 1'b1;
      2'b01: n5793 = 1'b1;
      default: n5793 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1713:33  */
  always @*
    case (n5787)
      2'b10: n5795 = 3'b100;
      2'b01: n5795 = 3'b101;
      default: n5795 = 3'b000;
    endcase
  /* src/T80/T80_MCode.vhd:1713:33  */
  always @*
    case (n5787)
      2'b10: n5797 = n5779;
      2'b01: n5797 = n5757;
      default: n5797 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1713:33  */
  always @*
    case (n5787)
      2'b10: n5799 = n5781;
      2'b01: n5799 = n5759;
      default: n5799 = 2'b00;
    endcase
  /* src/T80/T80_MCode.vhd:1713:33  */
  always @*
    case (n5787)
      2'b10: n5801 = n5784;
      2'b01: n5801 = n5762;
      default: n5801 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1713:33  */
  always @*
    case (n5787)
      2'b10: n5804 = 4'b0011;
      2'b01: n5804 = 4'b0011;
      default: n5804 = n1735;
    endcase
  /* src/T80/T80_MCode.vhd:1713:33  */
  always @*
    case (n5787)
      2'b10: n5808 = 1'b1;
      2'b01: n5808 = 1'b1;
      default: n5808 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1713:33  */
  always @*
    case (n5787)
      2'b10: n5812 = 1'b1;
      2'b01: n5812 = 1'b1;
      default: n5812 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1710:25  */
  assign n5814 = ir == 8'b01000010;
  /* src/T80/T80_MCode.vhd:1710:40  */
  assign n5816 = ir == 8'b01010010;
  /* src/T80/T80_MCode.vhd:1710:40  */
  assign n5817 = n5814 | n5816;
  /* src/T80/T80_MCode.vhd:1710:51  */
  assign n5819 = ir == 8'b01100010;
  /* src/T80/T80_MCode.vhd:1710:51  */
  assign n5820 = n5817 | n5819;
  /* src/T80/T80_MCode.vhd:1710:62  */
  assign n5822 = ir == 8'b01110010;
  /* src/T80/T80_MCode.vhd:1710:62  */
  assign n5823 = n5820 | n5822;
  /* src/T80/T80_MCode.vhd:1745:38  */
  assign n5824 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:1746:33  */
  assign n5826 = n5824 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:1749:33  */
  assign n5830 = n5824 == 31'b0000000000000000000000000000011;
  /* src/T80/T80_MCode.vhd:1757:33  */
  assign n5832 = n5824 == 31'b0000000000000000000000000000100;
  /* src/T80/T80_MCode.vhd:1745:33  */
  assign n5833 = {n5832, n5830, n5826};
  /* src/T80/T80_MCode.vhd:1745:33  */
  always @*
    case (n5833)
      3'b100: n5835 = n1732;
      3'b010: n5835 = 3'b100;
      3'b001: n5835 = n1732;
      default: n5835 = n1732;
    endcase
  /* src/T80/T80_MCode.vhd:1745:33  */
  always @*
    case (n5833)
      3'b100: n5838 = 1'b0;
      3'b010: n5838 = 1'b1;
      3'b001: n5838 = 1'b0;
      default: n5838 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1745:33  */
  always @*
    case (n5833)
      3'b100: n5840 = 3'b000;
      3'b010: n5840 = 3'b111;
      3'b001: n5840 = 3'b000;
      default: n5840 = 3'b000;
    endcase
  /* src/T80/T80_MCode.vhd:1745:33  */
  always @*
    case (n5833)
      3'b100: n5842 = 3'b000;
      3'b010: n5842 = 3'b110;
      3'b001: n5842 = 3'b000;
      default: n5842 = 3'b000;
    endcase
  /* src/T80/T80_MCode.vhd:1745:33  */
  always @*
    case (n5833)
      3'b100: n5844 = n1735;
      3'b010: n5844 = 4'b1101;
      3'b001: n5844 = n1735;
      default: n5844 = n1735;
    endcase
  /* src/T80/T80_MCode.vhd:1745:33  */
  always @*
    case (n5833)
      3'b100: n5847 = 1'b0;
      3'b010: n5847 = 1'b1;
      3'b001: n5847 = 1'b0;
      default: n5847 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1745:33  */
  always @*
    case (n5833)
      3'b100: n5851 = 3'b111;
      3'b010: n5851 = 3'b010;
      3'b001: n5851 = 3'b010;
      default: n5851 = 3'b111;
    endcase
  /* src/T80/T80_MCode.vhd:1745:33  */
  always @*
    case (n5833)
      3'b100: n5854 = 1'b1;
      3'b010: n5854 = 1'b0;
      3'b001: n5854 = 1'b0;
      default: n5854 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1745:33  */
  always @*
    case (n5833)
      3'b100: n5857 = 1'b0;
      3'b010: n5857 = 1'b0;
      3'b001: n5857 = 1'b1;
      default: n5857 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1745:33  */
  always @*
    case (n5833)
      3'b100: n5860 = 1'b1;
      3'b010: n5860 = 1'b0;
      3'b001: n5860 = 1'b0;
      default: n5860 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1742:25  */
  assign n5862 = ir == 8'b01101111;
  /* src/T80/T80_MCode.vhd:1765:38  */
  assign n5863 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:1766:33  */
  assign n5865 = n5863 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:1768:33  */
  assign n5869 = n5863 == 31'b0000000000000000000000000000011;
  /* src/T80/T80_MCode.vhd:1776:33  */
  assign n5871 = n5863 == 31'b0000000000000000000000000000100;
  /* src/T80/T80_MCode.vhd:1765:33  */
  assign n5872 = {n5871, n5869, n5865};
  /* src/T80/T80_MCode.vhd:1765:33  */
  always @*
    case (n5872)
      3'b100: n5874 = n1732;
      3'b010: n5874 = 3'b100;
      3'b001: n5874 = n1732;
      default: n5874 = n1732;
    endcase
  /* src/T80/T80_MCode.vhd:1765:33  */
  always @*
    case (n5872)
      3'b100: n5877 = 1'b0;
      3'b010: n5877 = 1'b1;
      3'b001: n5877 = 1'b0;
      default: n5877 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1765:33  */
  always @*
    case (n5872)
      3'b100: n5879 = 3'b000;
      3'b010: n5879 = 3'b111;
      3'b001: n5879 = 3'b000;
      default: n5879 = 3'b000;
    endcase
  /* src/T80/T80_MCode.vhd:1765:33  */
  always @*
    case (n5872)
      3'b100: n5881 = 3'b000;
      3'b010: n5881 = 3'b110;
      3'b001: n5881 = 3'b000;
      default: n5881 = 3'b000;
    endcase
  /* src/T80/T80_MCode.vhd:1765:33  */
  always @*
    case (n5872)
      3'b100: n5883 = n1735;
      3'b010: n5883 = 4'b1110;
      3'b001: n5883 = n1735;
      default: n5883 = n1735;
    endcase
  /* src/T80/T80_MCode.vhd:1765:33  */
  always @*
    case (n5872)
      3'b100: n5886 = 1'b0;
      3'b010: n5886 = 1'b1;
      3'b001: n5886 = 1'b0;
      default: n5886 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1765:33  */
  always @*
    case (n5872)
      3'b100: n5890 = 3'b111;
      3'b010: n5890 = 3'b010;
      3'b001: n5890 = 3'b010;
      default: n5890 = 3'b111;
    endcase
  /* src/T80/T80_MCode.vhd:1765:33  */
  always @*
    case (n5872)
      3'b100: n5893 = 1'b1;
      3'b010: n5893 = 1'b0;
      3'b001: n5893 = 1'b0;
      default: n5893 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1765:33  */
  always @*
    case (n5872)
      3'b100: n5896 = 1'b1;
      3'b010: n5896 = 1'b0;
      3'b001: n5896 = 1'b0;
      default: n5896 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1762:25  */
  assign n5898 = ir == 8'b01100111;
  /* src/T80/T80_MCode.vhd:1784:38  */
  assign n5899 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:1785:33  */
  assign n5901 = n5899 == 31'b0000000000000000000000000000001;
  /* src/T80/T80_MCode.vhd:1787:33  */
  assign n5903 = n5899 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:1791:33  */
  assign n5905 = n5899 == 31'b0000000000000000000000000000011;
  /* src/T80/T80_MCode.vhd:1784:33  */
  assign n5906 = {n5905, n5903, n5901};
  /* src/T80/T80_MCode.vhd:1784:33  */
  always @*
    case (n5906)
      3'b100: n5910 = 4'b0111;
      3'b010: n5910 = 4'b0111;
      3'b001: n5910 = 4'b0000;
      default: n5910 = 4'b0000;
    endcase
  /* src/T80/T80_MCode.vhd:1784:33  */
  always @*
    case (n5906)
      3'b100: n5914 = 3'b111;
      3'b010: n5914 = 3'b101;
      3'b001: n5914 = 3'b101;
      default: n5914 = 3'b111;
    endcase
  /* src/T80/T80_MCode.vhd:1784:33  */
  always @*
    case (n5906)
      3'b100: n5917 = 1'b1;
      3'b010: n5917 = 1'b0;
      3'b001: n5917 = 1'b0;
      default: n5917 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1784:33  */
  always @*
    case (n5906)
      3'b100: n5920 = 1'b0;
      3'b010: n5920 = 1'b1;
      3'b001: n5920 = 1'b0;
      default: n5920 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1784:33  */
  always @*
    case (n5906)
      3'b100: n5923 = 1'b1;
      3'b010: n5923 = 1'b0;
      3'b001: n5923 = 1'b0;
      default: n5923 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1781:25  */
  assign n5925 = ir == 8'b01000101;
  /* src/T80/T80_MCode.vhd:1781:40  */
  assign n5927 = ir == 8'b01001101;
  /* src/T80/T80_MCode.vhd:1781:40  */
  assign n5928 = n5925 | n5927;
  /* src/T80/T80_MCode.vhd:1781:51  */
  assign n5930 = ir == 8'b01010101;
  /* src/T80/T80_MCode.vhd:1781:51  */
  assign n5931 = n5928 | n5930;
  /* src/T80/T80_MCode.vhd:1781:62  */
  assign n5933 = ir == 8'b01011101;
  /* src/T80/T80_MCode.vhd:1781:62  */
  assign n5934 = n5931 | n5933;
  /* src/T80/T80_MCode.vhd:1781:73  */
  assign n5936 = ir == 8'b01100101;
  /* src/T80/T80_MCode.vhd:1781:73  */
  assign n5937 = n5934 | n5936;
  /* src/T80/T80_MCode.vhd:1781:84  */
  assign n5939 = ir == 8'b01101101;
  /* src/T80/T80_MCode.vhd:1781:84  */
  assign n5940 = n5937 | n5939;
  /* src/T80/T80_MCode.vhd:1781:95  */
  assign n5942 = ir == 8'b01110101;
  /* src/T80/T80_MCode.vhd:1781:95  */
  assign n5943 = n5940 | n5942;
  /* src/T80/T80_MCode.vhd:1781:106  */
  assign n5945 = ir == 8'b01111101;
  /* src/T80/T80_MCode.vhd:1781:106  */
  assign n5946 = n5943 | n5945;
  /* src/T80/T80_MCode.vhd:1800:38  */
  assign n5947 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:1801:33  */
  assign n5949 = n5947 == 31'b0000000000000000000000000000001;
  /* src/T80/T80_MCode.vhd:1805:46  */
  assign n5950 = ir[5:3]; // extract
  /* src/T80/T80_MCode.vhd:1805:59  */
  assign n5952 = n5950 != 3'b110;
  /* src/T80/T80_MCode.vhd:1807:78  */
  assign n5953 = ir[5:3]; // extract
  /* src/T80/T80_MCode.vhd:1805:41  */
  assign n5956 = n5952 ? 1'b1 : 1'b0;
  /* src/T80/T80_MCode.vhd:1805:41  */
  assign n5958 = n5952 ? n5953 : 3'b000;
  /* src/T80/T80_MCode.vhd:1803:33  */
  assign n5960 = n5947 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:1800:33  */
  assign n5961 = {n5960, n5949};
  /* src/T80/T80_MCode.vhd:1800:33  */
  always @*
    case (n5961)
      2'b10: n5963 = n5956;
      2'b01: n5963 = 1'b0;
      default: n5963 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1800:33  */
  always @*
    case (n5961)
      2'b10: n5965 = n5958;
      2'b01: n5965 = 3'b000;
      default: n5965 = 3'b000;
    endcase
  /* src/T80/T80_MCode.vhd:1800:33  */
  always @*
    case (n5961)
      2'b10: n5968 = 3'b111;
      2'b01: n5968 = 3'b000;
      default: n5968 = 3'b111;
    endcase
  /* src/T80/T80_MCode.vhd:1800:33  */
  always @*
    case (n5961)
      2'b10: n5971 = 1'b1;
      2'b01: n5971 = 1'b0;
      default: n5971 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1800:33  */
  always @*
    case (n5961)
      2'b10: n5974 = 1'b1;
      2'b01: n5974 = 1'b0;
      default: n5974 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1797:25  */
  assign n5976 = ir == 8'b01000000;
  /* src/T80/T80_MCode.vhd:1797:40  */
  assign n5978 = ir == 8'b01001000;
  /* src/T80/T80_MCode.vhd:1797:40  */
  assign n5979 = n5976 | n5978;
  /* src/T80/T80_MCode.vhd:1797:51  */
  assign n5981 = ir == 8'b01010000;
  /* src/T80/T80_MCode.vhd:1797:51  */
  assign n5982 = n5979 | n5981;
  /* src/T80/T80_MCode.vhd:1797:62  */
  assign n5984 = ir == 8'b01011000;
  /* src/T80/T80_MCode.vhd:1797:62  */
  assign n5985 = n5982 | n5984;
  /* src/T80/T80_MCode.vhd:1797:73  */
  assign n5987 = ir == 8'b01100000;
  /* src/T80/T80_MCode.vhd:1797:73  */
  assign n5988 = n5985 | n5987;
  /* src/T80/T80_MCode.vhd:1797:84  */
  assign n5990 = ir == 8'b01101000;
  /* src/T80/T80_MCode.vhd:1797:84  */
  assign n5991 = n5988 | n5990;
  /* src/T80/T80_MCode.vhd:1797:95  */
  assign n5993 = ir == 8'b01110000;
  /* src/T80/T80_MCode.vhd:1797:95  */
  assign n5994 = n5991 | n5993;
  /* src/T80/T80_MCode.vhd:1797:106  */
  assign n5996 = ir == 8'b01111000;
  /* src/T80/T80_MCode.vhd:1797:106  */
  assign n5997 = n5994 | n5996;
  /* src/T80/T80_MCode.vhd:1816:38  */
  assign n5998 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:1819:74  */
  assign n5999 = ir[5:3]; // extract
  /* src/T80/T80_MCode.vhd:1820:46  */
  assign n6000 = ir[5:3]; // extract
  /* src/T80/T80_MCode.vhd:1820:59  */
  assign n6002 = n6000 == 3'b110;
  /* src/T80/T80_MCode.vhd:1820:41  */
  assign n6005 = n6002 ? 1'b1 : 1'b0;
  /* src/T80/T80_MCode.vhd:1817:33  */
  assign n6007 = n5998 == 31'b0000000000000000000000000000001;
  /* src/T80/T80_MCode.vhd:1823:33  */
  assign n6009 = n5998 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:1816:33  */
  assign n6010 = {n6009, n6007};
  /* src/T80/T80_MCode.vhd:1816:33  */
  always @*
    case (n6010)
      2'b10: n6012 = 3'b000;
      2'b01: n6012 = n5999;
      default: n6012 = 3'b000;
    endcase
  /* src/T80/T80_MCode.vhd:1816:33  */
  always @*
    case (n6010)
      2'b10: n6014 = 1'b0;
      2'b01: n6014 = n6005;
      default: n6014 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1816:33  */
  always @*
    case (n6010)
      2'b10: n6017 = 3'b111;
      2'b01: n6017 = 3'b000;
      default: n6017 = 3'b111;
    endcase
  /* src/T80/T80_MCode.vhd:1816:33  */
  always @*
    case (n6010)
      2'b10: n6020 = 1'b1;
      2'b01: n6020 = 1'b0;
      default: n6020 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1816:33  */
  always @*
    case (n6010)
      2'b10: n6023 = 1'b1;
      2'b01: n6023 = 1'b0;
      default: n6023 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1812:25  */
  assign n6025 = ir == 8'b01000001;
  /* src/T80/T80_MCode.vhd:1812:40  */
  assign n6027 = ir == 8'b01001001;
  /* src/T80/T80_MCode.vhd:1812:40  */
  assign n6028 = n6025 | n6027;
  /* src/T80/T80_MCode.vhd:1812:51  */
  assign n6030 = ir == 8'b01010001;
  /* src/T80/T80_MCode.vhd:1812:51  */
  assign n6031 = n6028 | n6030;
  /* src/T80/T80_MCode.vhd:1812:62  */
  assign n6033 = ir == 8'b01011001;
  /* src/T80/T80_MCode.vhd:1812:62  */
  assign n6034 = n6031 | n6033;
  /* src/T80/T80_MCode.vhd:1812:73  */
  assign n6036 = ir == 8'b01100001;
  /* src/T80/T80_MCode.vhd:1812:73  */
  assign n6037 = n6034 | n6036;
  /* src/T80/T80_MCode.vhd:1812:84  */
  assign n6039 = ir == 8'b01101001;
  /* src/T80/T80_MCode.vhd:1812:84  */
  assign n6040 = n6037 | n6039;
  /* src/T80/T80_MCode.vhd:1812:95  */
  assign n6042 = ir == 8'b01110001;
  /* src/T80/T80_MCode.vhd:1812:95  */
  assign n6043 = n6040 | n6042;
  /* src/T80/T80_MCode.vhd:1812:106  */
  assign n6045 = ir == 8'b01111001;
  /* src/T80/T80_MCode.vhd:1812:106  */
  assign n6046 = n6043 | n6045;
  /* src/T80/T80_MCode.vhd:1832:38  */
  assign n6047 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:1833:33  */
  assign n6049 = n6047 == 31'b0000000000000000000000000000001;
  /* src/T80/T80_MCode.vhd:1840:33  */
  assign n6051 = n6047 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:1845:46  */
  assign n6052 = ir[3]; // extract
  /* src/T80/T80_MCode.vhd:1845:50  */
  assign n6053 = ~n6052;
  /* src/T80/T80_MCode.vhd:1845:41  */
  assign n6056 = n6053 ? 4'b0110 : 4'b1110;
  /* src/T80/T80_MCode.vhd:1844:33  */
  assign n6058 = n6047 == 31'b0000000000000000000000000000011;
  /* src/T80/T80_MCode.vhd:1855:33  */
  assign n6060 = n6047 == 31'b0000000000000000000000000000100;
  /* src/T80/T80_MCode.vhd:1832:33  */
  assign n6061 = {n6060, n6058, n6051, n6049};
  /* src/T80/T80_MCode.vhd:1832:33  */
  always @*
    case (n6061)
      4'b1000: n6064 = 3'b101;
      4'b0100: n6064 = 3'b100;
      4'b0010: n6064 = n1732;
      4'b0001: n6064 = n1732;
      default: n6064 = n1732;
    endcase
  /* src/T80/T80_MCode.vhd:1832:33  */
  always @*
    case (n6061)
      4'b1000: n6066 = 4'b0000;
      4'b0100: n6066 = n6056;
      4'b0010: n6066 = 4'b0000;
      4'b0001: n6066 = 4'b0000;
      default: n6066 = 4'b0000;
    endcase
  /* src/T80/T80_MCode.vhd:1832:33  */
  always @*
    case (n6061)
      4'b1000: n6069 = 1'b0;
      4'b0100: n6069 = 1'b0;
      4'b0010: n6069 = 1'b0;
      4'b0001: n6069 = 1'b1;
      default: n6069 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1832:33  */
  always @*
    case (n6061)
      4'b1000: n6072 = 4'b0000;
      4'b0100: n6072 = 4'b0000;
      4'b0010: n6072 = 4'b0000;
      4'b0001: n6072 = 4'b0000;
      default: n6072 = 4'b0000;
    endcase
  /* src/T80/T80_MCode.vhd:1832:33  */
  always @*
    case (n6061)
      4'b1000: n6076 = 4'b0000;
      4'b0100: n6076 = 4'b0000;
      4'b0010: n6076 = 4'b0110;
      4'b0001: n6076 = 4'b1010;
      default: n6076 = 4'b0000;
    endcase
  /* src/T80/T80_MCode.vhd:1832:33  */
  always @*
    case (n6061)
      4'b1000: n6078 = n1735;
      4'b0100: n6078 = n1735;
      4'b0010: n6078 = n1735;
      4'b0001: n6078 = 4'b0010;
      default: n6078 = n1735;
    endcase
  /* src/T80/T80_MCode.vhd:1832:33  */
  always @*
    case (n6061)
      4'b1000: n6081 = 1'b0;
      4'b0100: n6081 = 1'b0;
      4'b0010: n6081 = 1'b0;
      4'b0001: n6081 = 1'b1;
      default: n6081 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1832:33  */
  always @*
    case (n6061)
      4'b1000: n6085 = 3'b111;
      4'b0100: n6085 = 3'b111;
      4'b0010: n6085 = 3'b010;
      4'b0001: n6085 = 3'b000;
      default: n6085 = 3'b111;
    endcase
  /* src/T80/T80_MCode.vhd:1832:33  */
  always @*
    case (n6061)
      4'b1000: n6088 = 1'b0;
      4'b0100: n6088 = 1'b0;
      4'b0010: n6088 = 1'b1;
      4'b0001: n6088 = 1'b0;
      default: n6088 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1832:33  */
  always @*
    case (n6061)
      4'b1000: n6091 = 1'b0;
      4'b0100: n6091 = 1'b1;
      4'b0010: n6091 = 1'b0;
      4'b0001: n6091 = 1'b0;
      default: n6091 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1832:33  */
  always @*
    case (n6061)
      4'b1000: n6094 = 1'b1;
      4'b0100: n6094 = 1'b0;
      4'b0010: n6094 = 1'b0;
      4'b0001: n6094 = 1'b0;
      default: n6094 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1832:33  */
  always @*
    case (n6061)
      4'b1000: n6097 = 1'b0;
      4'b0100: n6097 = 1'b1;
      4'b0010: n6097 = 1'b0;
      4'b0001: n6097 = 1'b0;
      default: n6097 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1828:25  */
  assign n6099 = ir == 8'b10100010;
  /* src/T80/T80_MCode.vhd:1828:41  */
  assign n6101 = ir == 8'b10101010;
  /* src/T80/T80_MCode.vhd:1828:41  */
  assign n6102 = n6099 | n6101;
  /* src/T80/T80_MCode.vhd:1828:54  */
  assign n6104 = ir == 8'b10110010;
  /* src/T80/T80_MCode.vhd:1828:54  */
  assign n6105 = n6102 | n6104;
  /* src/T80/T80_MCode.vhd:1828:67  */
  assign n6107 = ir == 8'b10111010;
  /* src/T80/T80_MCode.vhd:1828:67  */
  assign n6108 = n6105 | n6107;
  /* src/T80/T80_MCode.vhd:1865:38  */
  assign n6109 = {28'b0, mcycle};  //  uext
  /* src/T80/T80_MCode.vhd:1866:33  */
  assign n6111 = n6109 == 31'b0000000000000000000000000000001;
  /* src/T80/T80_MCode.vhd:1874:33  */
  assign n6113 = n6109 == 31'b0000000000000000000000000000010;
  /* src/T80/T80_MCode.vhd:1878:46  */
  assign n6114 = ir[3]; // extract
  /* src/T80/T80_MCode.vhd:1878:50  */
  assign n6115 = ~n6114;
  /* src/T80/T80_MCode.vhd:1878:41  */
  assign n6118 = n6115 ? 4'b0110 : 4'b1110;
  /* src/T80/T80_MCode.vhd:1877:33  */
  assign n6120 = n6109 == 31'b0000000000000000000000000000011;
  /* src/T80/T80_MCode.vhd:1886:33  */
  assign n6122 = n6109 == 31'b0000000000000000000000000000100;
  /* src/T80/T80_MCode.vhd:1865:33  */
  assign n6123 = {n6122, n6120, n6113, n6111};
  /* src/T80/T80_MCode.vhd:1865:33  */
  always @*
    case (n6123)
      4'b1000: n6126 = 3'b101;
      4'b0100: n6126 = n1732;
      4'b0010: n6126 = n1732;
      4'b0001: n6126 = 3'b101;
      default: n6126 = n1732;
    endcase
  /* src/T80/T80_MCode.vhd:1865:33  */
  always @*
    case (n6123)
      4'b1000: n6128 = 4'b0000;
      4'b0100: n6128 = n6118;
      4'b0010: n6128 = 4'b0000;
      4'b0001: n6128 = 4'b0000;
      default: n6128 = 4'b0000;
    endcase
  /* src/T80/T80_MCode.vhd:1865:33  */
  always @*
    case (n6123)
      4'b1000: n6131 = 1'b0;
      4'b0100: n6131 = 1'b0;
      4'b0010: n6131 = 1'b0;
      4'b0001: n6131 = 1'b1;
      default: n6131 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1865:33  */
  always @*
    case (n6123)
      4'b1000: n6134 = 4'b0000;
      4'b0100: n6134 = 4'b0000;
      4'b0010: n6134 = 4'b0000;
      4'b0001: n6134 = 4'b0000;
      default: n6134 = 4'b0000;
    endcase
  /* src/T80/T80_MCode.vhd:1865:33  */
  always @*
    case (n6123)
      4'b1000: n6138 = 4'b0000;
      4'b0100: n6138 = 4'b0000;
      4'b0010: n6138 = 4'b0110;
      4'b0001: n6138 = 4'b1010;
      default: n6138 = 4'b0000;
    endcase
  /* src/T80/T80_MCode.vhd:1865:33  */
  always @*
    case (n6123)
      4'b1000: n6140 = n1735;
      4'b0100: n6140 = n1735;
      4'b0010: n6140 = n1735;
      4'b0001: n6140 = 4'b0010;
      default: n6140 = n1735;
    endcase
  /* src/T80/T80_MCode.vhd:1865:33  */
  always @*
    case (n6123)
      4'b1000: n6143 = 1'b0;
      4'b0100: n6143 = 1'b0;
      4'b0010: n6143 = 1'b0;
      4'b0001: n6143 = 1'b1;
      default: n6143 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1865:33  */
  always @*
    case (n6123)
      4'b1000: n6147 = 3'b111;
      4'b0100: n6147 = 3'b111;
      4'b0010: n6147 = 3'b000;
      4'b0001: n6147 = 3'b010;
      default: n6147 = 3'b111;
    endcase
  /* src/T80/T80_MCode.vhd:1865:33  */
  always @*
    case (n6123)
      4'b1000: n6150 = 1'b0;
      4'b0100: n6150 = 1'b1;
      4'b0010: n6150 = 1'b0;
      4'b0001: n6150 = 1'b0;
      default: n6150 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1865:33  */
  always @*
    case (n6123)
      4'b1000: n6153 = 1'b0;
      4'b0100: n6153 = 1'b1;
      4'b0010: n6153 = 1'b0;
      4'b0001: n6153 = 1'b0;
      default: n6153 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1865:33  */
  always @*
    case (n6123)
      4'b1000: n6156 = 1'b1;
      4'b0100: n6156 = 1'b0;
      4'b0010: n6156 = 1'b0;
      4'b0001: n6156 = 1'b0;
      default: n6156 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1865:33  */
  always @*
    case (n6123)
      4'b1000: n6159 = 1'b0;
      4'b0100: n6159 = 1'b1;
      4'b0010: n6159 = 1'b0;
      4'b0001: n6159 = 1'b0;
      default: n6159 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:1860:25  */
  assign n6161 = ir == 8'b10100011;
  /* src/T80/T80_MCode.vhd:1860:41  */
  assign n6163 = ir == 8'b10101011;
  /* src/T80/T80_MCode.vhd:1860:41  */
  assign n6164 = n6161 | n6163;
  /* src/T80/T80_MCode.vhd:1860:54  */
  assign n6166 = ir == 8'b10110011;
  /* src/T80/T80_MCode.vhd:1860:54  */
  assign n6167 = n6164 | n6166;
  /* src/T80/T80_MCode.vhd:1860:67  */
  assign n6169 = ir == 8'b10111011;
  /* src/T80/T80_MCode.vhd:1860:67  */
  assign n6170 = n6167 | n6169;
  /* src/T80/T80_MCode.vhd:1489:25  */
  assign n6171 = {n6170, n6108, n6046, n5997, n5946, n5898, n5862, n5823, n5741, n5659, n5654, n5649, n5638, n5615, n5559, n5501, n5439, n5371, n5369, n5367, n5365, n5363, n5358};
  /* src/T80/T80_MCode.vhd:1489:25  */
  always @*
    case (n6171)
      23'b10000000000000000000000: n6187 = 3'b100;
      23'b01000000000000000000000: n6187 = 3'b100;
      23'b00100000000000000000000: n6187 = 3'b010;
      23'b00010000000000000000000: n6187 = 3'b010;
      23'b00001000000000000000000: n6187 = 3'b011;
      23'b00000100000000000000000: n6187 = 3'b100;
      23'b00000010000000000000000: n6187 = 3'b100;
      23'b00000001000000000000000: n6187 = 3'b011;
      23'b00000000100000000000000: n6187 = 3'b011;
      23'b00000000010000000000000: n6187 = 3'b001;
      23'b00000000001000000000000: n6187 = 3'b001;
      23'b00000000000100000000000: n6187 = 3'b001;
      23'b00000000000010000000000: n6187 = 3'b001;
      23'b00000000000001000000000: n6187 = 3'b100;
      23'b00000000000000100000000: n6187 = 3'b100;
      23'b00000000000000010000000: n6187 = 3'b101;
      23'b00000000000000001000000: n6187 = 3'b101;
      23'b00000000000000000100000: n6187 = 3'b001;
      23'b00000000000000000010000: n6187 = 3'b001;
      23'b00000000000000000001000: n6187 = 3'b001;
      23'b00000000000000000000100: n6187 = 3'b001;
      23'b00000000000000000000010: n6187 = 3'b001;
      23'b00000000000000000000001: n6187 = 3'b001;
      default: n6187 = 3'bX;
    endcase
  /* src/T80/T80_MCode.vhd:1489:25  */
  always @*
    case (n6171)
      23'b10000000000000000000000: n6193 = n6126;
      23'b01000000000000000000000: n6193 = n6064;
      23'b00100000000000000000000: n6193 = n1732;
      23'b00010000000000000000000: n6193 = n1732;
      23'b00001000000000000000000: n6193 = n1732;
      23'b00000100000000000000000: n6193 = n5874;
      23'b00000010000000000000000: n6193 = n5835;
      23'b00000001000000000000000: n6193 = n5789;
      23'b00000000100000000000000: n6193 = n5707;
      23'b00000000010000000000000: n6193 = n1732;
      23'b00000000001000000000000: n6193 = n1732;
      23'b00000000000100000000000: n6193 = n1732;
      23'b00000000000010000000000: n6193 = n1732;
      23'b00000000000001000000000: n6193 = n5578;
      23'b00000000000000100000000: n6193 = n5525;
      23'b00000000000000010000000: n6193 = n1732;
      23'b00000000000000001000000: n6193 = n1732;
      23'b00000000000000000100000: n6193 = 3'b101;
      23'b00000000000000000010000: n6193 = 3'b101;
      23'b00000000000000000001000: n6193 = 3'b101;
      23'b00000000000000000000100: n6193 = 3'b101;
      23'b00000000000000000000010: n6193 = n1732;
      23'b00000000000000000000001: n6193 = n1732;
      default: n6193 = 3'bX;
    endcase
  /* src/T80/T80_MCode.vhd:1489:25  */
  always @*
    case (n6171)
      23'b10000000000000000000000: n6196 = 1'b0;
      23'b01000000000000000000000: n6196 = 1'b0;
      23'b00100000000000000000000: n6196 = 1'b0;
      23'b00010000000000000000000: n6196 = 1'b0;
      23'b00001000000000000000000: n6196 = 1'b0;
      23'b00000100000000000000000: n6196 = 1'b0;
      23'b00000010000000000000000: n6196 = 1'b0;
      23'b00000001000000000000000: n6196 = 1'b0;
      23'b00000000100000000000000: n6196 = 1'b0;
      23'b00000000010000000000000: n6196 = 1'b0;
      23'b00000000001000000000000: n6196 = 1'b0;
      23'b00000000000100000000000: n6196 = 1'b0;
      23'b00000000000010000000000: n6196 = 1'b0;
      23'b00000000000001000000000: n6196 = 1'b0;
      23'b00000000000000100000000: n6196 = 1'b0;
      23'b00000000000000010000000: n6196 = n5471;
      23'b00000000000000001000000: n6196 = n5407;
      23'b00000000000000000100000: n6196 = 1'b0;
      23'b00000000000000000010000: n6196 = 1'b0;
      23'b00000000000000000001000: n6196 = 1'b0;
      23'b00000000000000000000100: n6196 = 1'b0;
      23'b00000000000000000000010: n6196 = 1'b0;
      23'b00000000000000000000001: n6196 = 1'b0;
      default: n6196 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:1489:25  */
  always @*
    case (n6171)
      23'b10000000000000000000000: n6199 = 1'b0;
      23'b01000000000000000000000: n6199 = 1'b0;
      23'b00100000000000000000000: n6199 = 1'b0;
      23'b00010000000000000000000: n6199 = 1'b0;
      23'b00001000000000000000000: n6199 = 1'b0;
      23'b00000100000000000000000: n6199 = 1'b0;
      23'b00000010000000000000000: n6199 = 1'b0;
      23'b00000001000000000000000: n6199 = 1'b0;
      23'b00000000100000000000000: n6199 = 1'b0;
      23'b00000000010000000000000: n6199 = 1'b0;
      23'b00000000001000000000000: n6199 = 1'b0;
      23'b00000000000100000000000: n6199 = 1'b0;
      23'b00000000000010000000000: n6199 = 1'b0;
      23'b00000000000001000000000: n6199 = 1'b0;
      23'b00000000000000100000000: n6199 = 1'b0;
      23'b00000000000000010000000: n6199 = n5474;
      23'b00000000000000001000000: n6199 = n5410;
      23'b00000000000000000100000: n6199 = 1'b0;
      23'b00000000000000000010000: n6199 = 1'b0;
      23'b00000000000000000001000: n6199 = 1'b0;
      23'b00000000000000000000100: n6199 = 1'b0;
      23'b00000000000000000000010: n6199 = 1'b0;
      23'b00000000000000000000001: n6199 = 1'b0;
      default: n6199 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:1489:25  */
  always @*
    case (n6171)
      23'b10000000000000000000000: n6202 = n6128;
      23'b01000000000000000000000: n6202 = n6066;
      23'b00100000000000000000000: n6202 = 4'b0000;
      23'b00010000000000000000000: n6202 = 4'b0000;
      23'b00001000000000000000000: n6202 = n5910;
      23'b00000100000000000000000: n6202 = 4'b0000;
      23'b00000010000000000000000: n6202 = 4'b0000;
      23'b00000001000000000000000: n6202 = 4'b0000;
      23'b00000000100000000000000: n6202 = 4'b0000;
      23'b00000000010000000000000: n6202 = 4'b0000;
      23'b00000000001000000000000: n6202 = 4'b0000;
      23'b00000000000100000000000: n6202 = 4'b0000;
      23'b00000000000010000000000: n6202 = 4'b0000;
      23'b00000000000001000000000: n6202 = n5581;
      23'b00000000000000100000000: n6202 = n5528;
      23'b00000000000000010000000: n6202 = 4'b0000;
      23'b00000000000000001000000: n6202 = 4'b0000;
      23'b00000000000000000100000: n6202 = 4'b0000;
      23'b00000000000000000010000: n6202 = 4'b0000;
      23'b00000000000000000001000: n6202 = 4'b0000;
      23'b00000000000000000000100: n6202 = 4'b0000;
      23'b00000000000000000000010: n6202 = 4'b0000;
      23'b00000000000000000000001: n6202 = 4'b0000;
      default: n6202 = 4'bX;
    endcase
  /* src/T80/T80_MCode.vhd:1489:25  */
  always @*
    case (n6171)
      23'b10000000000000000000000: n6205 = n6131;
      23'b01000000000000000000000: n6205 = n6069;
      23'b00100000000000000000000: n6205 = 1'b0;
      23'b00010000000000000000000: n6205 = n5963;
      23'b00001000000000000000000: n6205 = 1'b0;
      23'b00000100000000000000000: n6205 = n5877;
      23'b00000010000000000000000: n6205 = n5838;
      23'b00000001000000000000000: n6205 = n5793;
      23'b00000000100000000000000: n6205 = n5711;
      23'b00000000010000000000000: n6205 = 1'b0;
      23'b00000000001000000000000: n6205 = 1'b0;
      23'b00000000000100000000000: n6205 = 1'b0;
      23'b00000000000010000000000: n6205 = 1'b0;
      23'b00000000000001000000000: n6205 = 1'b0;
      23'b00000000000000100000000: n6205 = 1'b0;
      23'b00000000000000010000000: n6205 = 1'b0;
      23'b00000000000000001000000: n6205 = n5414;
      23'b00000000000000000100000: n6205 = 1'b0;
      23'b00000000000000000010000: n6205 = 1'b0;
      23'b00000000000000000001000: n6205 = 1'b0;
      23'b00000000000000000000100: n6205 = 1'b0;
      23'b00000000000000000000010: n6205 = 1'b0;
      23'b00000000000000000000001: n6205 = 1'b0;
      default: n6205 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:1489:25  */
  always @*
    case (n6171)
      23'b10000000000000000000000: n6209 = 1'b0;
      23'b01000000000000000000000: n6209 = 1'b0;
      23'b00100000000000000000000: n6209 = 1'b0;
      23'b00010000000000000000000: n6209 = 1'b0;
      23'b00001000000000000000000: n6209 = 1'b0;
      23'b00000100000000000000000: n6209 = 1'b0;
      23'b00000010000000000000000: n6209 = 1'b0;
      23'b00000001000000000000000: n6209 = 1'b0;
      23'b00000000100000000000000: n6209 = 1'b0;
      23'b00000000010000000000000: n6209 = 1'b0;
      23'b00000000001000000000000: n6209 = 1'b0;
      23'b00000000000100000000000: n6209 = 1'b0;
      23'b00000000000010000000000: n6209 = 1'b1;
      23'b00000000000001000000000: n6209 = 1'b0;
      23'b00000000000000100000000: n6209 = 1'b0;
      23'b00000000000000010000000: n6209 = 1'b0;
      23'b00000000000000001000000: n6209 = 1'b0;
      23'b00000000000000000100000: n6209 = 1'b0;
      23'b00000000000000000010000: n6209 = 1'b0;
      23'b00000000000000000001000: n6209 = 1'b0;
      23'b00000000000000000000100: n6209 = 1'b0;
      23'b00000000000000000000010: n6209 = 1'b0;
      23'b00000000000000000000001: n6209 = 1'b0;
      default: n6209 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:1832:33  */
  assign n6211 = n6072[2:0]; // extract
  /* src/T80/T80_MCode.vhd:1865:33  */
  assign n6212 = n6134[2:0]; // extract
  /* src/T80/T80_MCode.vhd:1489:25  */
  always @*
    case (n6171)
      23'b10000000000000000000000: n6215 = n6212;
      23'b01000000000000000000000: n6215 = n6211;
      23'b00100000000000000000000: n6215 = 3'b000;
      23'b00010000000000000000000: n6215 = n5965;
      23'b00001000000000000000000: n6215 = 3'b000;
      23'b00000100000000000000000: n6215 = n5879;
      23'b00000010000000000000000: n6215 = n5840;
      23'b00000001000000000000000: n6215 = n5795;
      23'b00000000100000000000000: n6215 = n5713;
      23'b00000000010000000000000: n6215 = 3'b000;
      23'b00000000001000000000000: n6215 = 3'b000;
      23'b00000000000100000000000: n6215 = 3'b000;
      23'b00000000000010000000000: n6215 = 3'b010;
      23'b00000000000001000000000: n6215 = n5583;
      23'b00000000000000100000000: n6215 = n5530;
      23'b00000000000000010000000: n6215 = 3'b000;
      23'b00000000000000001000000: n6215 = n5416;
      23'b00000000000000000100000: n6215 = 3'b000;
      23'b00000000000000000010000: n6215 = 3'b000;
      23'b00000000000000000001000: n6215 = 3'b000;
      23'b00000000000000000000100: n6215 = 3'b000;
      23'b00000000000000000000010: n6215 = 3'b000;
      23'b00000000000000000000001: n6215 = 3'b000;
      default: n6215 = 3'bX;
    endcase
  /* src/T80/T80_MCode.vhd:1832:33  */
  assign n6217 = n6072[3]; // extract
  /* src/T80/T80_MCode.vhd:1865:33  */
  assign n6218 = n6134[3]; // extract
  /* src/T80/T80_MCode.vhd:1489:25  */
  always @*
    case (n6171)
      23'b10000000000000000000000: n6221 = n6218;
      23'b01000000000000000000000: n6221 = n6217;
      23'b00100000000000000000000: n6221 = 1'b0;
      23'b00010000000000000000000: n6221 = 1'b0;
      23'b00001000000000000000000: n6221 = 1'b0;
      23'b00000100000000000000000: n6221 = 1'b0;
      23'b00000010000000000000000: n6221 = 1'b0;
      23'b00000001000000000000000: n6221 = 1'b0;
      23'b00000000100000000000000: n6221 = 1'b0;
      23'b00000000010000000000000: n6221 = 1'b0;
      23'b00000000001000000000000: n6221 = 1'b0;
      23'b00000000000100000000000: n6221 = 1'b0;
      23'b00000000000010000000000: n6221 = 1'b1;
      23'b00000000000001000000000: n6221 = 1'b0;
      23'b00000000000000100000000: n6221 = 1'b0;
      23'b00000000000000010000000: n6221 = 1'b0;
      23'b00000000000000001000000: n6221 = n5418;
      23'b00000000000000000100000: n6221 = 1'b0;
      23'b00000000000000000010000: n6221 = 1'b0;
      23'b00000000000000000001000: n6221 = 1'b0;
      23'b00000000000000000000100: n6221 = 1'b0;
      23'b00000000000000000000010: n6221 = 1'b0;
      23'b00000000000000000000001: n6221 = 1'b0;
      default: n6221 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:1572:33  */
  assign n6222 = n5476[0]; // extract
  /* src/T80/T80_MCode.vhd:1605:33  */
  assign n6223 = n5533[0]; // extract
  /* src/T80/T80_MCode.vhd:1636:33  */
  assign n6224 = n5586[0]; // extract
  /* src/T80/T80_MCode.vhd:1745:33  */
  assign n6226 = n5842[0]; // extract
  /* src/T80/T80_MCode.vhd:1765:33  */
  assign n6227 = n5881[0]; // extract
  /* src/T80/T80_MCode.vhd:1816:33  */
  assign n6228 = n6012[0]; // extract
  /* src/T80/T80_MCode.vhd:1832:33  */
  assign n6229 = n6076[0]; // extract
  /* src/T80/T80_MCode.vhd:1865:33  */
  assign n6230 = n6138[0]; // extract
  /* src/T80/T80_MCode.vhd:1489:25  */
  always @*
    case (n6171)
      23'b10000000000000000000000: n6233 = n6230;
      23'b01000000000000000000000: n6233 = n6229;
      23'b00100000000000000000000: n6233 = n6228;
      23'b00010000000000000000000: n6233 = 1'b0;
      23'b00001000000000000000000: n6233 = 1'b0;
      23'b00000100000000000000000: n6233 = n6227;
      23'b00000010000000000000000: n6233 = n6226;
      23'b00000001000000000000000: n6233 = n5797;
      23'b00000000100000000000000: n6233 = n5715;
      23'b00000000010000000000000: n6233 = 1'b0;
      23'b00000000001000000000000: n6233 = 1'b0;
      23'b00000000000100000000000: n6233 = 1'b0;
      23'b00000000000010000000000: n6233 = 1'b1;
      23'b00000000000001000000000: n6233 = n6224;
      23'b00000000000000100000000: n6233 = n6223;
      23'b00000000000000010000000: n6233 = n6222;
      23'b00000000000000001000000: n6233 = 1'b0;
      23'b00000000000000000100000: n6233 = 1'b0;
      23'b00000000000000000010000: n6233 = 1'b0;
      23'b00000000000000000001000: n6233 = 1'b0;
      23'b00000000000000000000100: n6233 = 1'b0;
      23'b00000000000000000000010: n6233 = 1'b0;
      23'b00000000000000000000001: n6233 = 1'b0;
      default: n6233 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:1572:33  */
  assign n6234 = n5476[2:1]; // extract
  /* src/T80/T80_MCode.vhd:1605:33  */
  assign n6235 = n5533[2:1]; // extract
  /* src/T80/T80_MCode.vhd:1636:33  */
  assign n6236 = n5586[2:1]; // extract
  /* src/T80/T80_MCode.vhd:1745:33  */
  assign n6238 = n5842[2:1]; // extract
  /* src/T80/T80_MCode.vhd:1765:33  */
  assign n6239 = n5881[2:1]; // extract
  /* src/T80/T80_MCode.vhd:1816:33  */
  assign n6240 = n6012[2:1]; // extract
  /* src/T80/T80_MCode.vhd:1832:33  */
  assign n6241 = n6076[2:1]; // extract
  /* src/T80/T80_MCode.vhd:1865:33  */
  assign n6242 = n6138[2:1]; // extract
  /* src/T80/T80_MCode.vhd:1489:25  */
  always @*
    case (n6171)
      23'b10000000000000000000000: n6245 = n6242;
      23'b01000000000000000000000: n6245 = n6241;
      23'b00100000000000000000000: n6245 = n6240;
      23'b00010000000000000000000: n6245 = 2'b00;
      23'b00001000000000000000000: n6245 = 2'b00;
      23'b00000100000000000000000: n6245 = n6239;
      23'b00000010000000000000000: n6245 = n6238;
      23'b00000001000000000000000: n6245 = n5799;
      23'b00000000100000000000000: n6245 = n5717;
      23'b00000000010000000000000: n6245 = 2'b00;
      23'b00000000001000000000000: n6245 = 2'b00;
      23'b00000000000100000000000: n6245 = 2'b00;
      23'b00000000000010000000000: n6245 = 2'b11;
      23'b00000000000001000000000: n6245 = n6236;
      23'b00000000000000100000000: n6245 = n6235;
      23'b00000000000000010000000: n6245 = n6234;
      23'b00000000000000001000000: n6245 = 2'b00;
      23'b00000000000000000100000: n6245 = 2'b00;
      23'b00000000000000000010000: n6245 = 2'b00;
      23'b00000000000000000001000: n6245 = 2'b00;
      23'b00000000000000000000100: n6245 = 2'b00;
      23'b00000000000000000000010: n6245 = 2'b00;
      23'b00000000000000000000001: n6245 = 2'b00;
      default: n6245 = 2'bX;
    endcase
  /* src/T80/T80_MCode.vhd:1572:33  */
  assign n6246 = n5476[3]; // extract
  /* src/T80/T80_MCode.vhd:1605:33  */
  assign n6247 = n5533[3]; // extract
  /* src/T80/T80_MCode.vhd:1636:33  */
  assign n6248 = n5586[3]; // extract
  /* src/T80/T80_MCode.vhd:1832:33  */
  assign n6250 = n6076[3]; // extract
  /* src/T80/T80_MCode.vhd:1865:33  */
  assign n6251 = n6138[3]; // extract
  /* src/T80/T80_MCode.vhd:1489:25  */
  always @*
    case (n6171)
      23'b10000000000000000000000: n6254 = n6251;
      23'b01000000000000000000000: n6254 = n6250;
      23'b00100000000000000000000: n6254 = n6014;
      23'b00010000000000000000000: n6254 = 1'b0;
      23'b00001000000000000000000: n6254 = 1'b0;
      23'b00000100000000000000000: n6254 = 1'b0;
      23'b00000010000000000000000: n6254 = 1'b0;
      23'b00000001000000000000000: n6254 = n5801;
      23'b00000000100000000000000: n6254 = n5719;
      23'b00000000010000000000000: n6254 = 1'b0;
      23'b00000000001000000000000: n6254 = 1'b0;
      23'b00000000000100000000000: n6254 = 1'b0;
      23'b00000000000010000000000: n6254 = 1'b0;
      23'b00000000000001000000000: n6254 = n6248;
      23'b00000000000000100000000: n6254 = n6247;
      23'b00000000000000010000000: n6254 = n6246;
      23'b00000000000000001000000: n6254 = 1'b0;
      23'b00000000000000000100000: n6254 = 1'b0;
      23'b00000000000000000010000: n6254 = 1'b0;
      23'b00000000000000000001000: n6254 = 1'b0;
      23'b00000000000000000000100: n6254 = 1'b0;
      23'b00000000000000000000010: n6254 = 1'b0;
      23'b00000000000000000000001: n6254 = 1'b0;
      default: n6254 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:1489:25  */
  always @*
    case (n6171)
      23'b10000000000000000000000: n6257 = n6140;
      23'b01000000000000000000000: n6257 = n6078;
      23'b00100000000000000000000: n6257 = n1735;
      23'b00010000000000000000000: n6257 = n1735;
      23'b00001000000000000000000: n6257 = n1735;
      23'b00000100000000000000000: n6257 = n5883;
      23'b00000010000000000000000: n6257 = n5844;
      23'b00000001000000000000000: n6257 = n5804;
      23'b00000000100000000000000: n6257 = n5722;
      23'b00000000010000000000000: n6257 = n1735;
      23'b00000000001000000000000: n6257 = n1735;
      23'b00000000000100000000000: n6257 = n1735;
      23'b00000000000010000000000: n6257 = 4'b0010;
      23'b00000000000001000000000: n6257 = n5588;
      23'b00000000000000100000000: n6257 = n5535;
      23'b00000000000000010000000: n6257 = n1735;
      23'b00000000000000001000000: n6257 = n1735;
      23'b00000000000000000100000: n6257 = n1735;
      23'b00000000000000000010000: n6257 = n1735;
      23'b00000000000000000001000: n6257 = n1735;
      23'b00000000000000000000100: n6257 = n1735;
      23'b00000000000000000000010: n6257 = n1735;
      23'b00000000000000000000001: n6257 = n1735;
      default: n6257 = 4'bX;
    endcase
  /* src/T80/T80_MCode.vhd:1489:25  */
  always @*
    case (n6171)
      23'b10000000000000000000000: n6261 = n6143;
      23'b01000000000000000000000: n6261 = n6081;
      23'b00100000000000000000000: n6261 = 1'b0;
      23'b00010000000000000000000: n6261 = 1'b0;
      23'b00001000000000000000000: n6261 = 1'b0;
      23'b00000100000000000000000: n6261 = n5886;
      23'b00000010000000000000000: n6261 = n5847;
      23'b00000001000000000000000: n6261 = n5808;
      23'b00000000100000000000000: n6261 = n5726;
      23'b00000000010000000000000: n6261 = 1'b0;
      23'b00000000001000000000000: n6261 = 1'b0;
      23'b00000000000100000000000: n6261 = 1'b0;
      23'b00000000000010000000000: n6261 = 1'b1;
      23'b00000000000001000000000: n6261 = n5591;
      23'b00000000000000100000000: n6261 = 1'b0;
      23'b00000000000000010000000: n6261 = 1'b0;
      23'b00000000000000001000000: n6261 = 1'b0;
      23'b00000000000000000100000: n6261 = 1'b0;
      23'b00000000000000000010000: n6261 = 1'b0;
      23'b00000000000000000001000: n6261 = 1'b0;
      23'b00000000000000000000100: n6261 = 1'b0;
      23'b00000000000000000000010: n6261 = 1'b0;
      23'b00000000000000000000001: n6261 = 1'b0;
      default: n6261 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:1489:25  */
  always @*
    case (n6171)
      23'b10000000000000000000000: n6264 = 1'b0;
      23'b01000000000000000000000: n6264 = 1'b0;
      23'b00100000000000000000000: n6264 = 1'b0;
      23'b00010000000000000000000: n6264 = 1'b0;
      23'b00001000000000000000000: n6264 = 1'b0;
      23'b00000100000000000000000: n6264 = 1'b0;
      23'b00000010000000000000000: n6264 = 1'b0;
      23'b00000001000000000000000: n6264 = 1'b0;
      23'b00000000100000000000000: n6264 = 1'b0;
      23'b00000000010000000000000: n6264 = 1'b0;
      23'b00000000001000000000000: n6264 = 1'b0;
      23'b00000000000100000000000: n6264 = 1'b0;
      23'b00000000000010000000000: n6264 = 1'b0;
      23'b00000000000001000000000: n6264 = n5594;
      23'b00000000000000100000000: n6264 = 1'b0;
      23'b00000000000000010000000: n6264 = 1'b0;
      23'b00000000000000001000000: n6264 = 1'b0;
      23'b00000000000000000100000: n6264 = 1'b0;
      23'b00000000000000000010000: n6264 = 1'b0;
      23'b00000000000000000001000: n6264 = 1'b0;
      23'b00000000000000000000100: n6264 = 1'b0;
      23'b00000000000000000000010: n6264 = 1'b0;
      23'b00000000000000000000001: n6264 = 1'b0;
      default: n6264 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:1489:25  */
  always @*
    case (n6171)
      23'b10000000000000000000000: n6267 = n6147;
      23'b01000000000000000000000: n6267 = n6085;
      23'b00100000000000000000000: n6267 = n6017;
      23'b00010000000000000000000: n6267 = n5968;
      23'b00001000000000000000000: n6267 = n5914;
      23'b00000100000000000000000: n6267 = n5890;
      23'b00000010000000000000000: n6267 = n5851;
      23'b00000001000000000000000: n6267 = 3'b111;
      23'b00000000100000000000000: n6267 = 3'b111;
      23'b00000000010000000000000: n6267 = 3'b111;
      23'b00000000001000000000000: n6267 = 3'b111;
      23'b00000000000100000000000: n6267 = 3'b111;
      23'b00000000000010000000000: n6267 = 3'b111;
      23'b00000000000001000000000: n6267 = n5597;
      23'b00000000000000100000000: n6267 = n5539;
      23'b00000000000000010000000: n6267 = n5480;
      23'b00000000000000001000000: n6267 = n5422;
      23'b00000000000000000100000: n6267 = 3'b111;
      23'b00000000000000000010000: n6267 = 3'b111;
      23'b00000000000000000001000: n6267 = 3'b111;
      23'b00000000000000000000100: n6267 = 3'b111;
      23'b00000000000000000000010: n6267 = 3'b111;
      23'b00000000000000000000001: n6267 = 3'b111;
      default: n6267 = 3'bX;
    endcase
  /* src/T80/T80_MCode.vhd:1489:25  */
  always @*
    case (n6171)
      23'b10000000000000000000000: n6270 = n6150;
      23'b01000000000000000000000: n6270 = n6088;
      23'b00100000000000000000000: n6270 = n6020;
      23'b00010000000000000000000: n6270 = n5971;
      23'b00001000000000000000000: n6270 = 1'b0;
      23'b00000100000000000000000: n6270 = 1'b0;
      23'b00000010000000000000000: n6270 = 1'b0;
      23'b00000001000000000000000: n6270 = 1'b0;
      23'b00000000100000000000000: n6270 = 1'b0;
      23'b00000000010000000000000: n6270 = 1'b0;
      23'b00000000001000000000000: n6270 = 1'b0;
      23'b00000000000100000000000: n6270 = 1'b0;
      23'b00000000000010000000000: n6270 = 1'b0;
      23'b00000000000001000000000: n6270 = 1'b0;
      23'b00000000000000100000000: n6270 = 1'b0;
      23'b00000000000000010000000: n6270 = 1'b0;
      23'b00000000000000001000000: n6270 = 1'b0;
      23'b00000000000000000100000: n6270 = 1'b0;
      23'b00000000000000000010000: n6270 = 1'b0;
      23'b00000000000000000001000: n6270 = 1'b0;
      23'b00000000000000000000100: n6270 = 1'b0;
      23'b00000000000000000000010: n6270 = 1'b0;
      23'b00000000000000000000001: n6270 = 1'b0;
      default: n6270 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:1489:25  */
  always @*
    case (n6171)
      23'b10000000000000000000000: n6273 = 1'b0;
      23'b01000000000000000000000: n6273 = 1'b0;
      23'b00100000000000000000000: n6273 = 1'b0;
      23'b00010000000000000000000: n6273 = 1'b0;
      23'b00001000000000000000000: n6273 = n5917;
      23'b00000100000000000000000: n6273 = 1'b0;
      23'b00000010000000000000000: n6273 = 1'b0;
      23'b00000001000000000000000: n6273 = 1'b0;
      23'b00000000100000000000000: n6273 = 1'b0;
      23'b00000000010000000000000: n6273 = 1'b0;
      23'b00000000001000000000000: n6273 = 1'b0;
      23'b00000000000100000000000: n6273 = 1'b0;
      23'b00000000000010000000000: n6273 = 1'b0;
      23'b00000000000001000000000: n6273 = 1'b0;
      23'b00000000000000100000000: n6273 = 1'b0;
      23'b00000000000000010000000: n6273 = 1'b0;
      23'b00000000000000001000000: n6273 = 1'b0;
      23'b00000000000000000100000: n6273 = 1'b0;
      23'b00000000000000000010000: n6273 = 1'b0;
      23'b00000000000000000001000: n6273 = 1'b0;
      23'b00000000000000000000100: n6273 = 1'b0;
      23'b00000000000000000000010: n6273 = 1'b0;
      23'b00000000000000000000001: n6273 = 1'b0;
      default: n6273 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:1489:25  */
  always @*
    case (n6171)
      23'b10000000000000000000000: n6276 = 1'b0;
      23'b01000000000000000000000: n6276 = 1'b0;
      23'b00100000000000000000000: n6276 = 1'b0;
      23'b00010000000000000000000: n6276 = 1'b0;
      23'b00001000000000000000000: n6276 = n5920;
      23'b00000100000000000000000: n6276 = 1'b0;
      23'b00000010000000000000000: n6276 = 1'b0;
      23'b00000001000000000000000: n6276 = 1'b0;
      23'b00000000100000000000000: n6276 = 1'b0;
      23'b00000000010000000000000: n6276 = 1'b0;
      23'b00000000001000000000000: n6276 = 1'b0;
      23'b00000000000100000000000: n6276 = 1'b0;
      23'b00000000000010000000000: n6276 = 1'b0;
      23'b00000000000001000000000: n6276 = 1'b0;
      23'b00000000000000100000000: n6276 = 1'b0;
      23'b00000000000000010000000: n6276 = n5483;
      23'b00000000000000001000000: n6276 = n5425;
      23'b00000000000000000100000: n6276 = 1'b0;
      23'b00000000000000000010000: n6276 = 1'b0;
      23'b00000000000000000001000: n6276 = 1'b0;
      23'b00000000000000000000100: n6276 = 1'b0;
      23'b00000000000000000000010: n6276 = 1'b0;
      23'b00000000000000000000001: n6276 = 1'b0;
      default: n6276 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:1489:25  */
  always @*
    case (n6171)
      23'b10000000000000000000000: n6279 = 1'b0;
      23'b01000000000000000000000: n6279 = 1'b0;
      23'b00100000000000000000000: n6279 = 1'b0;
      23'b00010000000000000000000: n6279 = 1'b0;
      23'b00001000000000000000000: n6279 = 1'b0;
      23'b00000100000000000000000: n6279 = 1'b0;
      23'b00000010000000000000000: n6279 = 1'b0;
      23'b00000001000000000000000: n6279 = 1'b0;
      23'b00000000100000000000000: n6279 = 1'b0;
      23'b00000000010000000000000: n6279 = 1'b0;
      23'b00000000001000000000000: n6279 = 1'b0;
      23'b00000000000100000000000: n6279 = 1'b0;
      23'b00000000000010000000000: n6279 = 1'b0;
      23'b00000000000001000000000: n6279 = 1'b0;
      23'b00000000000000100000000: n6279 = 1'b0;
      23'b00000000000000010000000: n6279 = n5486;
      23'b00000000000000001000000: n6279 = n5428;
      23'b00000000000000000100000: n6279 = 1'b0;
      23'b00000000000000000010000: n6279 = 1'b0;
      23'b00000000000000000001000: n6279 = 1'b0;
      23'b00000000000000000000100: n6279 = 1'b0;
      23'b00000000000000000000010: n6279 = 1'b0;
      23'b00000000000000000000001: n6279 = 1'b0;
      default: n6279 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:1489:25  */
  always @*
    case (n6171)
      23'b10000000000000000000000: n6286 = 3'b000;
      23'b01000000000000000000000: n6286 = 3'b000;
      23'b00100000000000000000000: n6286 = 3'b000;
      23'b00010000000000000000000: n6286 = 3'b000;
      23'b00001000000000000000000: n6286 = 3'b000;
      23'b00000100000000000000000: n6286 = 3'b000;
      23'b00000010000000000000000: n6286 = 3'b000;
      23'b00000001000000000000000: n6286 = 3'b000;
      23'b00000000100000000000000: n6286 = 3'b000;
      23'b00000000010000000000000: n6286 = 3'b000;
      23'b00000000001000000000000: n6286 = 3'b000;
      23'b00000000000100000000000: n6286 = 3'b000;
      23'b00000000000010000000000: n6286 = 3'b000;
      23'b00000000000001000000000: n6286 = 3'b000;
      23'b00000000000000100000000: n6286 = 3'b000;
      23'b00000000000000010000000: n6286 = 3'b000;
      23'b00000000000000001000000: n6286 = 3'b000;
      23'b00000000000000000100000: n6286 = 3'b111;
      23'b00000000000000000010000: n6286 = 3'b110;
      23'b00000000000000000001000: n6286 = 3'b101;
      23'b00000000000000000000100: n6286 = 3'b100;
      23'b00000000000000000000010: n6286 = 3'b000;
      23'b00000000000000000000001: n6286 = 3'b000;
      default: n6286 = 3'bX;
    endcase
  /* src/T80/T80_MCode.vhd:1489:25  */
  always @*
    case (n6171)
      23'b10000000000000000000000: n6289 = 1'b0;
      23'b01000000000000000000000: n6289 = 1'b0;
      23'b00100000000000000000000: n6289 = 1'b0;
      23'b00010000000000000000000: n6289 = 1'b0;
      23'b00001000000000000000000: n6289 = n5923;
      23'b00000100000000000000000: n6289 = 1'b0;
      23'b00000010000000000000000: n6289 = 1'b0;
      23'b00000001000000000000000: n6289 = 1'b0;
      23'b00000000100000000000000: n6289 = 1'b0;
      23'b00000000010000000000000: n6289 = 1'b0;
      23'b00000000001000000000000: n6289 = 1'b0;
      23'b00000000000100000000000: n6289 = 1'b0;
      23'b00000000000010000000000: n6289 = 1'b0;
      23'b00000000000001000000000: n6289 = 1'b0;
      23'b00000000000000100000000: n6289 = 1'b0;
      23'b00000000000000010000000: n6289 = 1'b0;
      23'b00000000000000001000000: n6289 = 1'b0;
      23'b00000000000000000100000: n6289 = 1'b0;
      23'b00000000000000000010000: n6289 = 1'b0;
      23'b00000000000000000001000: n6289 = 1'b0;
      23'b00000000000000000000100: n6289 = 1'b0;
      23'b00000000000000000000010: n6289 = 1'b0;
      23'b00000000000000000000001: n6289 = 1'b0;
      default: n6289 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:1489:25  */
  always @*
    case (n6171)
      23'b10000000000000000000000: n6292 = 1'b0;
      23'b01000000000000000000000: n6292 = 1'b0;
      23'b00100000000000000000000: n6292 = 1'b0;
      23'b00010000000000000000000: n6292 = 1'b0;
      23'b00001000000000000000000: n6292 = 1'b0;
      23'b00000100000000000000000: n6292 = 1'b0;
      23'b00000010000000000000000: n6292 = 1'b0;
      23'b00000001000000000000000: n6292 = 1'b0;
      23'b00000000100000000000000: n6292 = 1'b0;
      23'b00000000010000000000000: n6292 = 1'b0;
      23'b00000000001000000000000: n6292 = 1'b0;
      23'b00000000000100000000000: n6292 = 1'b0;
      23'b00000000000010000000000: n6292 = 1'b0;
      23'b00000000000001000000000: n6292 = 1'b0;
      23'b00000000000000100000000: n6292 = n5542;
      23'b00000000000000010000000: n6292 = 1'b0;
      23'b00000000000000001000000: n6292 = 1'b0;
      23'b00000000000000000100000: n6292 = 1'b0;
      23'b00000000000000000010000: n6292 = 1'b0;
      23'b00000000000000000001000: n6292 = 1'b0;
      23'b00000000000000000000100: n6292 = 1'b0;
      23'b00000000000000000000010: n6292 = 1'b0;
      23'b00000000000000000000001: n6292 = 1'b0;
      default: n6292 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:1489:25  */
  always @*
    case (n6171)
      23'b10000000000000000000000: n6295 = 1'b0;
      23'b01000000000000000000000: n6295 = 1'b0;
      23'b00100000000000000000000: n6295 = 1'b0;
      23'b00010000000000000000000: n6295 = 1'b0;
      23'b00001000000000000000000: n6295 = 1'b0;
      23'b00000100000000000000000: n6295 = 1'b0;
      23'b00000010000000000000000: n6295 = 1'b0;
      23'b00000001000000000000000: n6295 = 1'b0;
      23'b00000000100000000000000: n6295 = 1'b0;
      23'b00000000010000000000000: n6295 = 1'b0;
      23'b00000000001000000000000: n6295 = 1'b0;
      23'b00000000000100000000000: n6295 = 1'b0;
      23'b00000000000010000000000: n6295 = 1'b0;
      23'b00000000000001000000000: n6295 = n5600;
      23'b00000000000000100000000: n6295 = 1'b0;
      23'b00000000000000010000000: n6295 = 1'b0;
      23'b00000000000000001000000: n6295 = 1'b0;
      23'b00000000000000000100000: n6295 = 1'b0;
      23'b00000000000000000010000: n6295 = 1'b0;
      23'b00000000000000000001000: n6295 = 1'b0;
      23'b00000000000000000000100: n6295 = 1'b0;
      23'b00000000000000000000010: n6295 = 1'b0;
      23'b00000000000000000000001: n6295 = 1'b0;
      default: n6295 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:1489:25  */
  always @*
    case (n6171)
      23'b10000000000000000000000: n6298 = n6153;
      23'b01000000000000000000000: n6298 = n6091;
      23'b00100000000000000000000: n6298 = 1'b0;
      23'b00010000000000000000000: n6298 = 1'b0;
      23'b00001000000000000000000: n6298 = 1'b0;
      23'b00000100000000000000000: n6298 = 1'b0;
      23'b00000010000000000000000: n6298 = 1'b0;
      23'b00000001000000000000000: n6298 = 1'b0;
      23'b00000000100000000000000: n6298 = 1'b0;
      23'b00000000010000000000000: n6298 = 1'b0;
      23'b00000000001000000000000: n6298 = 1'b0;
      23'b00000000000100000000000: n6298 = 1'b0;
      23'b00000000000010000000000: n6298 = 1'b0;
      23'b00000000000001000000000: n6298 = 1'b0;
      23'b00000000000000100000000: n6298 = 1'b0;
      23'b00000000000000010000000: n6298 = 1'b0;
      23'b00000000000000001000000: n6298 = 1'b0;
      23'b00000000000000000100000: n6298 = 1'b0;
      23'b00000000000000000010000: n6298 = 1'b0;
      23'b00000000000000000001000: n6298 = 1'b0;
      23'b00000000000000000000100: n6298 = 1'b0;
      23'b00000000000000000000010: n6298 = 1'b0;
      23'b00000000000000000000001: n6298 = 1'b0;
      default: n6298 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:1489:25  */
  always @*
    case (n6171)
      23'b10000000000000000000000: n6301 = 1'b0;
      23'b01000000000000000000000: n6301 = 1'b0;
      23'b00100000000000000000000: n6301 = 1'b0;
      23'b00010000000000000000000: n6301 = 1'b0;
      23'b00001000000000000000000: n6301 = 1'b0;
      23'b00000100000000000000000: n6301 = 1'b0;
      23'b00000010000000000000000: n6301 = n5854;
      23'b00000001000000000000000: n6301 = 1'b0;
      23'b00000000100000000000000: n6301 = 1'b0;
      23'b00000000010000000000000: n6301 = 1'b0;
      23'b00000000001000000000000: n6301 = 1'b0;
      23'b00000000000100000000000: n6301 = 1'b0;
      23'b00000000000010000000000: n6301 = 1'b0;
      23'b00000000000001000000000: n6301 = 1'b0;
      23'b00000000000000100000000: n6301 = 1'b0;
      23'b00000000000000010000000: n6301 = 1'b0;
      23'b00000000000000001000000: n6301 = 1'b0;
      23'b00000000000000000100000: n6301 = 1'b0;
      23'b00000000000000000010000: n6301 = 1'b0;
      23'b00000000000000000001000: n6301 = 1'b0;
      23'b00000000000000000000100: n6301 = 1'b0;
      23'b00000000000000000000010: n6301 = 1'b0;
      23'b00000000000000000000001: n6301 = 1'b0;
      default: n6301 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:1489:25  */
  always @*
    case (n6171)
      23'b10000000000000000000000: n6304 = 1'b0;
      23'b01000000000000000000000: n6304 = 1'b0;
      23'b00100000000000000000000: n6304 = 1'b0;
      23'b00010000000000000000000: n6304 = 1'b0;
      23'b00001000000000000000000: n6304 = 1'b0;
      23'b00000100000000000000000: n6304 = n5893;
      23'b00000010000000000000000: n6304 = 1'b0;
      23'b00000001000000000000000: n6304 = 1'b0;
      23'b00000000100000000000000: n6304 = 1'b0;
      23'b00000000010000000000000: n6304 = 1'b0;
      23'b00000000001000000000000: n6304 = 1'b0;
      23'b00000000000100000000000: n6304 = 1'b0;
      23'b00000000000010000000000: n6304 = 1'b0;
      23'b00000000000001000000000: n6304 = 1'b0;
      23'b00000000000000100000000: n6304 = 1'b0;
      23'b00000000000000010000000: n6304 = 1'b0;
      23'b00000000000000001000000: n6304 = 1'b0;
      23'b00000000000000000100000: n6304 = 1'b0;
      23'b00000000000000000010000: n6304 = 1'b0;
      23'b00000000000000000001000: n6304 = 1'b0;
      23'b00000000000000000000100: n6304 = 1'b0;
      23'b00000000000000000000010: n6304 = 1'b0;
      23'b00000000000000000000001: n6304 = 1'b0;
      default: n6304 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:1489:25  */
  always @*
    case (n6171)
      23'b10000000000000000000000: n6307 = 1'b0;
      23'b01000000000000000000000: n6307 = 1'b0;
      23'b00100000000000000000000: n6307 = 1'b0;
      23'b00010000000000000000000: n6307 = n5974;
      23'b00001000000000000000000: n6307 = 1'b0;
      23'b00000100000000000000000: n6307 = 1'b0;
      23'b00000010000000000000000: n6307 = 1'b0;
      23'b00000001000000000000000: n6307 = 1'b0;
      23'b00000000100000000000000: n6307 = 1'b0;
      23'b00000000010000000000000: n6307 = 1'b0;
      23'b00000000001000000000000: n6307 = 1'b0;
      23'b00000000000100000000000: n6307 = 1'b0;
      23'b00000000000010000000000: n6307 = 1'b0;
      23'b00000000000001000000000: n6307 = 1'b0;
      23'b00000000000000100000000: n6307 = 1'b0;
      23'b00000000000000010000000: n6307 = 1'b0;
      23'b00000000000000001000000: n6307 = 1'b0;
      23'b00000000000000000100000: n6307 = 1'b0;
      23'b00000000000000000010000: n6307 = 1'b0;
      23'b00000000000000000001000: n6307 = 1'b0;
      23'b00000000000000000000100: n6307 = 1'b0;
      23'b00000000000000000000010: n6307 = 1'b0;
      23'b00000000000000000000001: n6307 = 1'b0;
      default: n6307 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:1489:25  */
  always @*
    case (n6171)
      23'b10000000000000000000000: n6313 = 2'b11;
      23'b01000000000000000000000: n6313 = 2'b11;
      23'b00100000000000000000000: n6313 = 2'b11;
      23'b00010000000000000000000: n6313 = 2'b11;
      23'b00001000000000000000000: n6313 = 2'b11;
      23'b00000100000000000000000: n6313 = 2'b11;
      23'b00000010000000000000000: n6313 = 2'b11;
      23'b00000001000000000000000: n6313 = 2'b11;
      23'b00000000100000000000000: n6313 = 2'b11;
      23'b00000000010000000000000: n6313 = 2'b10;
      23'b00000000001000000000000: n6313 = 2'b01;
      23'b00000000000100000000000: n6313 = 2'b00;
      23'b00000000000010000000000: n6313 = 2'b11;
      23'b00000000000001000000000: n6313 = 2'b11;
      23'b00000000000000100000000: n6313 = 2'b11;
      23'b00000000000000010000000: n6313 = 2'b11;
      23'b00000000000000001000000: n6313 = 2'b11;
      23'b00000000000000000100000: n6313 = 2'b11;
      23'b00000000000000000010000: n6313 = 2'b11;
      23'b00000000000000000001000: n6313 = 2'b11;
      23'b00000000000000000000100: n6313 = 2'b11;
      23'b00000000000000000000010: n6313 = 2'b11;
      23'b00000000000000000000001: n6313 = 2'b11;
      default: n6313 = 2'bX;
    endcase
  /* src/T80/T80_MCode.vhd:1489:25  */
  always @*
    case (n6171)
      23'b10000000000000000000000: n6316 = n6156;
      23'b01000000000000000000000: n6316 = n6094;
      23'b00100000000000000000000: n6316 = 1'b0;
      23'b00010000000000000000000: n6316 = 1'b0;
      23'b00001000000000000000000: n6316 = 1'b0;
      23'b00000100000000000000000: n6316 = 1'b0;
      23'b00000010000000000000000: n6316 = n5857;
      23'b00000001000000000000000: n6316 = n5812;
      23'b00000000100000000000000: n6316 = n5730;
      23'b00000000010000000000000: n6316 = 1'b0;
      23'b00000000001000000000000: n6316 = 1'b0;
      23'b00000000000100000000000: n6316 = 1'b0;
      23'b00000000000010000000000: n6316 = 1'b0;
      23'b00000000000001000000000: n6316 = n5604;
      23'b00000000000000100000000: n6316 = n5545;
      23'b00000000000000010000000: n6316 = 1'b0;
      23'b00000000000000001000000: n6316 = 1'b0;
      23'b00000000000000000100000: n6316 = 1'b0;
      23'b00000000000000000010000: n6316 = 1'b0;
      23'b00000000000000000001000: n6316 = 1'b0;
      23'b00000000000000000000100: n6316 = 1'b0;
      23'b00000000000000000000010: n6316 = 1'b0;
      23'b00000000000000000000001: n6316 = 1'b0;
      default: n6316 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:1489:25  */
  always @*
    case (n6171)
      23'b10000000000000000000000: n6319 = n6159;
      23'b01000000000000000000000: n6319 = n6097;
      23'b00100000000000000000000: n6319 = n6023;
      23'b00010000000000000000000: n6319 = 1'b0;
      23'b00001000000000000000000: n6319 = 1'b0;
      23'b00000100000000000000000: n6319 = n5896;
      23'b00000010000000000000000: n6319 = n5860;
      23'b00000001000000000000000: n6319 = 1'b0;
      23'b00000000100000000000000: n6319 = 1'b0;
      23'b00000000010000000000000: n6319 = 1'b0;
      23'b00000000001000000000000: n6319 = 1'b0;
      23'b00000000000100000000000: n6319 = 1'b0;
      23'b00000000000010000000000: n6319 = 1'b0;
      23'b00000000000001000000000: n6319 = 1'b0;
      23'b00000000000000100000000: n6319 = n5548;
      23'b00000000000000010000000: n6319 = n5490;
      23'b00000000000000001000000: n6319 = 1'b0;
      23'b00000000000000000100000: n6319 = 1'b0;
      23'b00000000000000000010000: n6319 = 1'b0;
      23'b00000000000000000001000: n6319 = 1'b0;
      23'b00000000000000000000100: n6319 = 1'b0;
      23'b00000000000000000000010: n6319 = 1'b0;
      23'b00000000000000000000001: n6319 = 1'b0;
      default: n6319 = 1'bX;
    endcase
  /* src/T80/T80_MCode.vhd:253:17  */
  assign n6320 = {n4831, n3905};
  /* src/T80/T80_MCode.vhd:253:17  */
  always @*
    case (n6320)
      2'b10: n6321 = n4811;
      2'b01: n6321 = n3670;
      default: n6321 = n6187;
    endcase
  /* src/T80/T80_MCode.vhd:253:17  */
  always @*
    case (n6320)
      2'b10: n6323 = n4813;
      2'b01: n6323 = n3675;
      default: n6323 = n6193;
    endcase
  /* src/T80/T80_MCode.vhd:253:17  */
  always @*
    case (n6320)
      2'b10: n6325 = 2'b00;
      2'b01: n6325 = n3681;
      default: n6325 = 2'b00;
    endcase
  /* src/T80/T80_MCode.vhd:253:17  */
  always @*
    case (n6320)
      2'b10: n6328 = 1'b0;
      2'b01: n6328 = n3684;
      default: n6328 = n6196;
    endcase
  /* src/T80/T80_MCode.vhd:253:17  */
  always @*
    case (n6320)
      2'b10: n6331 = 1'b0;
      2'b01: n6331 = n3687;
      default: n6331 = n6199;
    endcase
  /* src/T80/T80_MCode.vhd:1489:25  */
  assign n6333 = n6202[1:0]; // extract
  /* src/T80/T80_MCode.vhd:253:17  */
  always @*
    case (n6320)
      2'b10: n6335 = 2'b00;
      2'b01: n6335 = n3699;
      default: n6335 = n6333;
    endcase
  /* src/T80/T80_MCode.vhd:1489:25  */
  assign n6336 = n6202[3:2]; // extract
  /* src/T80/T80_MCode.vhd:253:17  */
  always @*
    case (n6320)
      2'b10: n6338 = 2'b00;
      2'b01: n6338 = n3711;
      default: n6338 = n6336;
    endcase
  /* src/T80/T80_MCode.vhd:253:17  */
  always @*
    case (n6320)
      2'b10: n6341 = n4816;
      2'b01: n6341 = n3720;
      default: n6341 = n6205;
    endcase
  /* src/T80/T80_MCode.vhd:253:17  */
  always @*
    case (n6320)
      2'b10: n6344 = 1'b0;
      2'b01: n6344 = n3723;
      default: n6344 = n6209;
    endcase
  /* src/T80/T80_MCode.vhd:253:17  */
  always @*
    case (n6320)
      2'b10: n6346 = n3906;
      2'b01: n6346 = n3727;
      default: n6346 = n6215;
    endcase
  /* src/T80/T80_MCode.vhd:253:17  */
  always @*
    case (n6320)
      2'b10: n6348 = 1'b0;
      2'b01: n6348 = n3731;
      default: n6348 = n6221;
    endcase
  /* src/T80/T80_MCode.vhd:1350:25  */
  assign n6351 = n4818[0]; // extract
  /* src/T80/T80_MCode.vhd:253:17  */
  always @*
    case (n6320)
      2'b10: n6352 = n6351;
      2'b01: n6352 = n3756;
      default: n6352 = n6233;
    endcase
  /* src/T80/T80_MCode.vhd:1350:25  */
  assign n6353 = n4818[2:1]; // extract
  /* src/T80/T80_MCode.vhd:253:17  */
  always @*
    case (n6320)
      2'b10: n6354 = n6353;
      2'b01: n6354 = n3781;
      default: n6354 = n6245;
    endcase
  /* src/T80/T80_MCode.vhd:253:17  */
  always @*
    case (n6320)
      2'b10: n6356 = 1'b0;
      2'b01: n6356 = n3800;
      default: n6356 = n6254;
    endcase
  /* src/T80/T80_MCode.vhd:253:17  */
  always @*
    case (n6320)
      2'b10: n6360 = n4820;
      2'b01: n6360 = n3806;
      default: n6360 = n6257;
    endcase
  /* src/T80/T80_MCode.vhd:253:17  */
  always @*
    case (n6320)
      2'b10: n6361 = n4823;
      2'b01: n6361 = n3814;
      default: n6361 = n6261;
    endcase
  /* src/T80/T80_MCode.vhd:253:17  */
  always @*
    case (n6320)
      2'b10: n6364 = 1'b0;
      2'b01: n6364 = n3819;
      default: n6364 = n6264;
    endcase
  /* src/T80/T80_MCode.vhd:253:17  */
  always @*
    case (n6320)
      2'b10: n6367 = 1'b0;
      2'b01: n6367 = n3822;
      default: n6367 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:253:17  */
  always @*
    case (n6320)
      2'b10: n6369 = n4826;
      2'b01: n6369 = n3825;
      default: n6369 = n6267;
    endcase
  /* src/T80/T80_MCode.vhd:253:17  */
  always @*
    case (n6320)
      2'b10: n6372 = 1'b0;
      2'b01: n6372 = n3828;
      default: n6372 = n6270;
    endcase
  /* src/T80/T80_MCode.vhd:253:17  */
  always @*
    case (n6320)
      2'b10: n6375 = 1'b0;
      2'b01: n6375 = n3831;
      default: n6375 = n6273;
    endcase
  /* src/T80/T80_MCode.vhd:253:17  */
  always @*
    case (n6320)
      2'b10: n6378 = 1'b0;
      2'b01: n6378 = n3834;
      default: n6378 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:253:17  */
  always @*
    case (n6320)
      2'b10: n6381 = 1'b0;
      2'b01: n6381 = n3838;
      default: n6381 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:253:17  */
  always @*
    case (n6320)
      2'b10: n6384 = 1'b0;
      2'b01: n6384 = n3841;
      default: n6384 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:253:17  */
  always @*
    case (n6320)
      2'b10: n6387 = 1'b0;
      2'b01: n6387 = n3844;
      default: n6387 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:253:17  */
  always @*
    case (n6320)
      2'b10: n6390 = 1'b0;
      2'b01: n6390 = n3847;
      default: n6390 = n6276;
    endcase
  /* src/T80/T80_MCode.vhd:253:17  */
  always @*
    case (n6320)
      2'b10: n6393 = 1'b0;
      2'b01: n6393 = n3850;
      default: n6393 = n6279;
    endcase
  /* src/T80/T80_MCode.vhd:253:17  */
  always @*
    case (n6320)
      2'b10: n6396 = 1'b0;
      2'b01: n6396 = n3854;
      default: n6396 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:253:17  */
  always @*
    case (n6320)
      2'b10: n6399 = 3'b000;
      2'b01: n6399 = 3'b000;
      default: n6399 = n6286;
    endcase
  /* src/T80/T80_MCode.vhd:253:17  */
  always @*
    case (n6320)
      2'b10: n6402 = 1'b0;
      2'b01: n6402 = n3858;
      default: n6402 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:253:17  */
  always @*
    case (n6320)
      2'b10: n6405 = 1'b0;
      2'b01: n6405 = n3862;
      default: n6405 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:253:17  */
  always @*
    case (n6320)
      2'b10: n6408 = 1'b0;
      2'b01: n6408 = n3866;
      default: n6408 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:253:17  */
  always @*
    case (n6320)
      2'b10: n6411 = 1'b0;
      2'b01: n6411 = n3870;
      default: n6411 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:253:17  */
  always @*
    case (n6320)
      2'b10: n6414 = 1'b0;
      2'b01: n6414 = n3873;
      default: n6414 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:253:17  */
  always @*
    case (n6320)
      2'b10: n6417 = 1'b0;
      2'b01: n6417 = n3877;
      default: n6417 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:253:17  */
  always @*
    case (n6320)
      2'b10: n6420 = 1'b0;
      2'b01: n6420 = n3881;
      default: n6420 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:253:17  */
  always @*
    case (n6320)
      2'b10: n6423 = 1'b0;
      2'b01: n6423 = n3885;
      default: n6423 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:253:17  */
  always @*
    case (n6320)
      2'b10: n6426 = 1'b0;
      2'b01: n6426 = 1'b0;
      default: n6426 = n6289;
    endcase
  /* src/T80/T80_MCode.vhd:253:17  */
  always @*
    case (n6320)
      2'b10: n6429 = 1'b0;
      2'b01: n6429 = 1'b0;
      default: n6429 = n6292;
    endcase
  /* src/T80/T80_MCode.vhd:253:17  */
  always @*
    case (n6320)
      2'b10: n6432 = 1'b0;
      2'b01: n6432 = 1'b0;
      default: n6432 = n6295;
    endcase
  /* src/T80/T80_MCode.vhd:253:17  */
  always @*
    case (n6320)
      2'b10: n6435 = 1'b0;
      2'b01: n6435 = 1'b0;
      default: n6435 = n6298;
    endcase
  /* src/T80/T80_MCode.vhd:253:17  */
  always @*
    case (n6320)
      2'b10: n6438 = 1'b0;
      2'b01: n6438 = 1'b0;
      default: n6438 = n6301;
    endcase
  /* src/T80/T80_MCode.vhd:253:17  */
  always @*
    case (n6320)
      2'b10: n6441 = 1'b0;
      2'b01: n6441 = 1'b0;
      default: n6441 = n6304;
    endcase
  /* src/T80/T80_MCode.vhd:253:17  */
  always @*
    case (n6320)
      2'b10: n6444 = 1'b0;
      2'b01: n6444 = 1'b0;
      default: n6444 = n6307;
    endcase
  /* src/T80/T80_MCode.vhd:253:17  */
  always @*
    case (n6320)
      2'b10: n6447 = 1'b0;
      2'b01: n6447 = n3889;
      default: n6447 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:253:17  */
  always @*
    case (n6320)
      2'b10: n6450 = 1'b0;
      2'b01: n6450 = n3893;
      default: n6450 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:253:17  */
  always @*
    case (n6320)
      2'b10: n6453 = 2'b11;
      2'b01: n6453 = 2'b11;
      default: n6453 = n6313;
    endcase
  /* src/T80/T80_MCode.vhd:253:17  */
  always @*
    case (n6320)
      2'b10: n6456 = 1'b0;
      2'b01: n6456 = n3897;
      default: n6456 = 1'b0;
    endcase
  /* src/T80/T80_MCode.vhd:253:17  */
  always @*
    case (n6320)
      2'b10: n6459 = 1'b0;
      2'b01: n6459 = n3900;
      default: n6459 = n6316;
    endcase
  /* src/T80/T80_MCode.vhd:253:17  */
  always @*
    case (n6320)
      2'b10: n6461 = n4829;
      2'b01: n6461 = n3903;
      default: n6461 = n6319;
    endcase
  /* src/T80/T80_MCode.vhd:1912:35  */
  assign n6464 = mcycle == 3'b110;
  /* src/T80/T80_MCode.vhd:1920:40  */
  assign n6466 = ir == 8'b00110110;
  /* src/T80/T80_MCode.vhd:1920:60  */
  assign n6468 = ir == 8'b11001011;
  /* src/T80/T80_MCode.vhd:1920:53  */
  assign n6469 = n6466 | n6468;
  /* src/T80/T80_MCode.vhd:1912:25  */
  assign n6471 = n6474 ? 3'b111 : n6369;
  /* src/T80/T80_MCode.vhd:1912:25  */
  assign n6473 = n6464 ? 1'b1 : n6328;
  /* src/T80/T80_MCode.vhd:1912:25  */
  assign n6474 = n6469 & n6464;
  /* src/T80/T80_MCode.vhd:1924:35  */
  assign n6476 = mcycle == 3'b111;
  /* src/T80/T80_MCode.vhd:1928:41  */
  assign n6478 = iset != 2'b01;
  /* src/T80/T80_MCode.vhd:1924:25  */
  assign n6480 = n6497 ? 3'b010 : n6471;
  /* src/T80/T80_MCode.vhd:1933:40  */
  assign n6483 = ir == 8'b00110110;
  /* src/T80/T80_MCode.vhd:1933:61  */
  assign n6485 = iset == 2'b01;
  /* src/T80/T80_MCode.vhd:1933:53  */
  assign n6486 = n6483 | n6485;
  /* src/T80/T80_MCode.vhd:1924:25  */
  assign n6488 = n6493 ? 1'b1 : n6473;
  /* src/T80/T80_MCode.vhd:1933:33  */
  assign n6490 = n6486 ? n6459 : 1'b1;
  /* src/T80/T80_MCode.vhd:1924:25  */
  assign n6492 = n6476 ? 3'b101 : n6323;
  /* src/T80/T80_MCode.vhd:1924:25  */
  assign n6493 = n6486 & n6476;
  /* src/T80/T80_MCode.vhd:1924:25  */
  assign n6494 = {1'b0, n1726};
  /* src/T80/T80_MCode.vhd:108:17  */
  assign n6495 = {n6356, n6354, n6352};
  /* src/T80/T80_MCode.vhd:1924:25  */
  assign n6496 = n6476 ? n6494 : n6495;
  /* src/T80/T80_MCode.vhd:1924:25  */
  assign n6497 = n6478 & n6476;
  /* src/T80/T80_MCode.vhd:1924:25  */
  assign n6498 = n6476 ? n6490 : n6459;
  /* src/T80/T80_MCode.vhd:104:17  */
  assign n6500 = {n6338, n6335};
  /* src/T80/T80_MCode.vhd:107:17  */
  assign n6501 = {n6348, n6346};
endmodule

module t80_Brtl_0_1_0_1_2_3_4_5_6_7
  (input  reset_n,
   input  clk_n,
   input  cen,
   input  wait_n,
   input  int_n,
   input  nmi_n,
   input  busrq_n,
   output m1_n,
   output iorq,
   output noread,
   output write,
   output rfsh_n,
   output halt_n,
   output busak_n,
   output [15:0] a,
   input  [7:0] dinst,
   input  [7:0] di,
   output [7:0] \do ,
   output [2:0] mc,
   output [2:0] ts,
   output intcycle_n,
   output inte,
   output stop);
  wire [7:0] acc;
  wire [7:0] f;
  wire [7:0] ap;
  wire [7:0] fp;
  wire [7:0] i;
  wire [7:0] r;
  wire [15:0] sp;
  wire [15:0] pc;
  wire [7:0] regdih;
  wire [7:0] regdil;
  wire [15:0] regbusa;
  wire [15:0] regbusb;
  wire [15:0] regbusc;
  wire [2:0] regaddra_r;
  wire [2:0] regaddra;
  wire [2:0] regaddrb_r;
  wire [2:0] regaddrb;
  wire [2:0] regaddrc;
  wire regweh;
  wire regwel;
  wire alternate;
  wire [15:0] tmpaddr;
  wire [7:0] ir;
  wire [1:0] iset;
  wire [15:0] regbusa_r;
  wire [15:0] id16;
  wire [7:0] save_mux;
  wire [2:0] tstate;
  wire [2:0] mcycle;
  wire inte_ff1;
  wire inte_ff2;
  wire halt_ff;
  wire busreq_s;
  wire busack;
  wire clken;
  wire nmi_s;
  wire int_s;
  wire [1:0] istatus;
  wire [7:0] di_reg;
  wire t_res;
  wire [1:0] xy_state;
  wire [2:0] pre_xy_f_m;
  wire nextis_xy_fetch;
  wire xy_ind;
  wire no_btr;
  wire btr_r;
  wire auto_wait;
  wire auto_wait_t1;
  wire auto_wait_t2;
  wire incdecz;
  wire [7:0] busb;
  wire [7:0] busa;
  wire [7:0] alu_q;
  wire [7:0] f_out;
  wire [4:0] read_to_reg_r;
  wire arith16_r;
  wire z16_r;
  wire [3:0] alu_op_r;
  wire save_alu_r;
  wire preservec_r;
  wire [2:0] mcycles;
  wire [2:0] mcycles_d;
  wire [2:0] tstates;
  wire intcycle;
  wire nmicycle;
  wire inc_pc;
  wire inc_wz;
  wire [3:0] incdec_16;
  wire [1:0] prefix;
  wire read_to_acc;
  wire read_to_reg;
  wire [3:0] set_busb_to;
  wire [3:0] set_busa_to;
  wire [3:0] alu_op;
  wire save_alu;
  wire preservec;
  wire arith16;
  wire [2:0] set_addr_to;
  wire jump;
  wire jumpe;
  wire jumpxy;
  wire call;
  wire rstp;
  wire ldz;
  wire ldw;
  wire ldsphl;
  wire iorq_i;
  wire [2:0] special_ld;
  wire exchangedh;
  wire exchangerp;
  wire exchangeaf;
  wire exchangers;
  wire i_djnz;
  wire i_cpl;
  wire i_ccf;
  wire i_scf;
  wire i_retn;
  wire i_bt;
  wire i_bc;
  wire i_btr;
  wire i_rld;
  wire i_rrd;
  wire i_inrc;
  wire setdi;
  wire setei;
  wire [1:0] imode;
  wire halt;
  wire [2:0] mcode_n162;
  wire [2:0] mcode_n163;
  wire [1:0] mcode_n164;
  wire mcode_n165;
  wire mcode_n166;
  wire [3:0] mcode_n167;
  wire mcode_n168;
  wire mcode_n169;
  wire [3:0] mcode_n170;
  wire [3:0] mcode_n171;
  wire [3:0] mcode_n172;
  wire mcode_n173;
  wire mcode_n174;
  wire mcode_n175;
  wire [2:0] mcode_n176;
  wire mcode_n177;
  wire mcode_n178;
  wire mcode_n179;
  wire mcode_n180;
  wire mcode_n181;
  wire mcode_n182;
  wire mcode_n183;
  wire mcode_n184;
  wire mcode_n185;
  wire [2:0] mcode_n186;
  wire mcode_n187;
  wire mcode_n188;
  wire mcode_n189;
  wire mcode_n190;
  wire mcode_n191;
  wire mcode_n192;
  wire mcode_n193;
  wire mcode_n194;
  wire mcode_n195;
  wire mcode_n196;
  wire mcode_n197;
  wire mcode_n198;
  wire mcode_n199;
  wire mcode_n200;
  wire mcode_n201;
  wire mcode_n202;
  wire mcode_n203;
  wire [1:0] mcode_n204;
  wire mcode_n205;
  wire mcode_n206;
  wire mcode_n207;
  wire [5:0] n300;
  wire [7:0] alu_n301;
  wire [7:0] alu_n302;
  wire n307;
  wire n308;
  wire n310;
  wire n311;
  wire n315;
  wire n316;
  wire n317;
  wire n319;
  wire n321;
  wire n323;
  wire n324;
  wire n325;
  wire n327;
  wire n329;
  wire n330;
  wire n331;
  wire n332;
  wire n333;
  wire [7:0] n335;
  wire n336;
  wire [7:0] n337;
  wire n340;
  wire n343;
  wire n346;
  wire n347;
  wire n348;
  wire n349;
  wire n350;
  wire n351;
  wire n353;
  wire n354;
  wire n357;
  wire n359;
  wire n360;
  wire n361;
  wire n362;
  wire n364;
  wire n365;
  wire [6:0] n366;
  wire [6:0] n368;
  wire n369;
  wire n370;
  wire n371;
  wire n372;
  wire n373;
  wire n374;
  wire n375;
  wire n376;
  wire n377;
  wire n378;
  wire [15:0] n380;
  wire [15:0] n381;
  wire n383;
  wire n384;
  wire n386;
  wire n387;
  wire n388;
  wire n389;
  wire [7:0] n391;
  wire [7:0] n393;
  wire n395;
  wire n397;
  wire n398;
  wire [1:0] n401;
  wire n403;
  wire [1:0] n405;
  wire n407;
  wire [1:0] n409;
  wire [1:0] n410;
  wire n411;
  wire [1:0] n413;
  wire [1:0] n416;
  wire n418;
  wire [15:0] n419;
  wire [15:0] n420;
  wire [6:0] n421;
  wire [6:0] n422;
  wire n423;
  wire [7:0] n424;
  wire [1:0] n425;
  wire n427;
  wire n429;
  wire n431;
  wire [1:0] n433;
  wire n434;
  wire n436;
  wire n437;
  wire n438;
  wire n439;
  wire n440;
  wire [7:0] n441;
  wire [7:0] n442;
  wire n443;
  wire n444;
  wire n445;
  wire n447;
  wire n448;
  wire n450;
  wire n451;
  wire [7:0] n452;
  wire [7:0] n453;
  wire n455;
  wire [15:0] n456;
  wire [15:0] n457;
  wire n459;
  wire n461;
  wire n463;
  wire n465;
  wire n467;
  wire [15:0] n469;
  wire [7:0] n470;
  wire [15:0] n471;
  wire [15:0] n472;
  wire n474;
  wire [5:0] n475;
  wire [7:0] n476;
  wire [7:0] n477;
  wire [7:0] n478;
  wire [7:0] n479;
  wire [7:0] n480;
  wire [7:0] n481;
  reg [7:0] n482;
  wire [7:0] n483;
  wire [7:0] n484;
  wire [7:0] n485;
  wire [7:0] n486;
  wire [7:0] n487;
  wire [7:0] n488;
  reg [7:0] n489;
  wire [15:0] n490;
  wire [15:0] n491;
  wire [15:0] n492;
  wire [15:0] n493;
  wire [15:0] n494;
  wire [15:0] n496;
  wire [15:0] n498;
  wire [15:0] n499;
  wire [15:0] n500;
  wire [15:0] n501;
  wire [15:0] n502;
  wire [15:0] n503;
  wire [15:0] n504;
  wire [15:0] n505;
  wire [15:0] n506;
  wire [7:0] n507;
  wire n508;
  wire n509;
  wire n511;
  wire n512;
  wire [7:0] n514;
  wire [2:0] n515;
  wire n516;
  wire n517;
  wire [2:0] n518;
  wire [2:0] n519;
  wire n520;
  wire n521;
  wire n522;
  wire n523;
  wire n524;
  wire [1:0] n526;
  wire [2:0] n527;
  wire n528;
  wire [1:0] n529;
  wire [1:0] n530;
  wire [2:0] n531;
  wire n533;
  wire n535;
  wire [1:0] n537;
  wire [2:0] n538;
  wire [1:0] n539;
  wire [2:0] n540;
  wire [15:0] n541;
  wire n542;
  wire [1:0] n543;
  wire [1:0] n544;
  wire [2:0] n545;
  wire [2:0] n546;
  wire [15:0] n547;
  wire n548;
  wire [3:0] n550;
  wire n552;
  wire n554;
  wire n555;
  wire n557;
  wire n559;
  wire n560;
  wire [7:0] n561;
  wire [15:0] n562;
  wire [15:0] n563;
  wire [15:0] n565;
  wire [15:0] n566;
  wire [15:0] n567;
  wire [15:0] n569;
  wire [15:0] n570;
  wire [2:0] n571;
  localparam [15:0] n572 = 16'b0000000000000000;
  wire [9:0] n573;
  wire [2:0] n574;
  wire [15:0] n575;
  wire [15:0] n576;
  wire [15:0] n577;
  wire n578;
  wire n579;
  wire n581;
  wire n583;
  wire n584;
  wire [15:0] n585;
  wire [15:0] n586;
  wire [15:0] n587;
  wire n589;
  wire n590;
  wire n592;
  wire n594;
  wire n595;
  wire n596;
  wire [2:0] n597;
  wire n599;
  wire n600;
  wire [15:0] n602;
  wire [15:0] n604;
  wire [15:0] n605;
  wire [15:0] n606;
  wire n607;
  wire [15:0] n608;
  wire [7:0] n609;
  wire n610;
  wire [1:0] n611;
  wire [7:0] n612;
  wire [7:0] n613;
  wire [7:0] n614;
  wire [7:0] n615;
  wire n616;
  wire n617;
  wire [15:0] n618;
  wire [7:0] n619;
  wire [7:0] n620;
  wire [7:0] n621;
  wire [7:0] n622;
  wire n624;
  wire [15:0] n625;
  wire [15:0] n626;
  wire n627;
  wire [15:0] n628;
  wire [7:0] n629;
  wire [1:0] n630;
  wire n631;
  wire n632;
  wire n633;
  wire [3:0] n635;
  wire n638;
  wire n641;
  wire [7:0] n642;
  wire [7:0] n643;
  wire [7:0] n644;
  wire [7:0] n645;
  wire n646;
  wire [1:0] n647;
  wire n649;
  wire n651;
  wire n653;
  wire [2:0] n654;
  reg [7:0] n655;
  wire n656;
  reg n657;
  reg [7:0] n658;
  wire n659;
  wire [7:0] n660;
  reg [7:0] n661;
  wire [7:0] n662;
  wire n663;
  wire n664;
  wire n666;
  wire [7:0] n667;
  wire [7:0] n668;
  wire n669;
  wire n671;
  wire [4:0] n672;
  wire [1:0] n673;
  wire n674;
  wire n675;
  wire [7:0] n676;
  wire [7:0] n677;
  wire [15:0] n678;
  wire [15:0] n679;
  wire n680;
  wire n681;
  wire n683;
  wire n684;
  wire [6:0] n685;
  wire n686;
  wire n687;
  wire n688;
  wire n689;
  wire [7:0] n690;
  wire [7:0] n691;
  wire [7:0] n692;
  wire n693;
  wire n697;
  wire n700;
  wire n701;
  wire n702;
  wire n703;
  wire n704;
  wire n705;
  wire n706;
  wire n707;
  wire n708;
  wire n709;
  wire n710;
  wire n711;
  wire n712;
  wire n713;
  wire n714;
  wire n715;
  wire n716;
  wire n717;
  wire [1:0] n718;
  wire [1:0] n719;
  wire [1:0] n720;
  wire [1:0] n721;
  wire n722;
  wire n723;
  wire [1:0] n724;
  wire [1:0] n725;
  wire n727;
  wire n729;
  wire n730;
  wire n732;
  wire [3:0] n733;
  wire [3:0] n734;
  wire [7:0] n735;
  wire [7:0] n736;
  wire [3:0] n737;
  wire [3:0] n738;
  wire [7:0] n739;
  wire [7:0] n740;
  wire [7:0] n741;
  wire [4:0] n744;
  wire [4:0] n745;
  wire [4:0] n746;
  wire [4:0] n748;
  wire n751;
  wire n752;
  wire n753;
  wire n754;
  wire [2:0] n757;
  wire n758;
  wire n759;
  wire [2:0] n760;
  wire [2:0] n761;
  wire n762;
  wire n763;
  wire n764;
  wire n766;
  wire n767;
  wire n768;
  wire n770;
  wire n771;
  wire n772;
  wire n774;
  wire n776;
  wire n778;
  wire n780;
  wire n782;
  wire [4:0] n783;
  reg [7:0] n784;
  reg [7:0] n785;
  wire [7:0] n786;
  reg [7:0] n787;
  wire [7:0] n788;
  reg [7:0] n789;
  wire [7:0] n790;
  reg [7:0] n791;
  wire [7:0] n792;
  wire [7:0] n793;
  wire [7:0] n794;
  wire [7:0] n795;
  wire [15:0] n796;
  wire [15:0] n797;
  wire n804;
  wire n812;
  wire n813;
  wire [1:0] n902;
  wire [2:0] n903;
  wire n904;
  wire n906;
  wire n907;
  wire [1:0] n908;
  wire n910;
  wire n911;
  wire n912;
  wire [2:0] n914;
  wire [2:0] n915;
  wire [1:0] n916;
  wire [2:0] n917;
  wire n918;
  wire n920;
  wire n921;
  wire [1:0] n922;
  wire n924;
  wire n925;
  wire n926;
  wire [2:0] n928;
  wire [2:0] n929;
  wire [1:0] n930;
  wire [2:0] n931;
  wire n932;
  wire [2:0] n934;
  wire [2:0] n935;
  wire n936;
  wire n938;
  wire n939;
  wire n941;
  wire n942;
  wire n943;
  wire [2:0] n945;
  wire [2:0] n946;
  wire n947;
  wire n949;
  wire n950;
  wire n951;
  wire n953;
  wire n955;
  wire n957;
  wire n958;
  wire n959;
  wire [2:0] n960;
  wire n962;
  wire n963;
  wire n965;
  wire n968;
  wire n969;
  wire [1:0] n981;
  wire [2:0] n982;
  wire n984;
  wire n986;
  wire n988;
  wire n989;
  wire n990;
  wire n991;
  wire n992;
  wire n994;
  wire n995;
  wire [2:0] n996;
  wire n997;
  wire [2:0] n999;
  wire n1001;
  wire n1003;
  wire n1005;
  wire n1006;
  wire n1007;
  wire n1008;
  wire n1009;
  wire [1:0] n1010;
  wire n1012;
  wire n1013;
  wire [2:0] n1014;
  wire [2:0] n1016;
  wire n1018;
  wire n1019;
  wire [2:0] n1020;
  wire [2:0] n1022;
  wire n1024;
  wire n1025;
  wire [2:0] n1026;
  wire [2:0] n1028;
  wire n1030;
  wire n1031;
  wire [2:0] n1032;
  wire [15:0] n1034;
  wire n1035;
  wire [15:0] n1036;
  wire [15:0] n1038;
  wire n1042;
  wire n1043;
  wire n1044;
  wire n1046;
  wire n1047;
  wire n1048;
  wire n1049;
  wire n1050;
  wire n1051;
  wire n1053;
  wire n1055;
  wire n1056;
  wire n1058;
  wire n1059;
  wire n1061;
  wire n1062;
  wire n1064;
  wire n1065;
  wire n1067;
  wire n1068;
  reg n1070;
  reg n1072;
  wire n1074;
  wire n1077;
  wire n1080;
  wire n1082;
  wire n1083;
  wire n1084;
  wire n1086;
  wire n1088;
  wire n1089;
  wire n1091;
  wire n1092;
  wire n1094;
  wire n1095;
  wire n1097;
  wire n1099;
  wire n1100;
  wire n1101;
  wire n1102;
  wire [1:0] n1103;
  wire n1105;
  wire n1107;
  wire n1108;
  wire n1110;
  wire n1111;
  reg n1113;
  reg n1115;
  wire n1116;
  wire n1117;
  wire n1122;
  wire n1123;
  wire [7:0] n1124;
  wire [7:0] n1125;
  wire [7:0] n1126;
  wire [7:0] n1127;
  wire n1129;
  wire n1130;
  wire [7:0] n1131;
  wire [7:0] n1132;
  wire [7:0] n1133;
  wire [7:0] n1134;
  wire n1135;
  wire n1137;
  wire n1139;
  wire n1140;
  wire n1142;
  wire n1144;
  wire n1145;
  wire n1146;
  wire n1147;
  wire [7:0] n1148;
  wire [7:0] n1149;
  wire [7:0] n1150;
  wire [7:0] n1151;
  wire [7:0] regs_n1153;
  wire [7:0] regs_n1154;
  wire [7:0] regs_n1155;
  wire [7:0] regs_n1156;
  wire [7:0] regs_n1157;
  wire [7:0] regs_n1158;
  wire n1175;
  wire n1176;
  wire [7:0] n1177;
  wire [7:0] n1178;
  wire [7:0] n1179;
  wire n1181;
  wire n1183;
  wire n1184;
  wire n1186;
  wire n1187;
  wire n1189;
  wire n1190;
  wire n1192;
  wire n1193;
  wire n1195;
  wire n1196;
  wire n1198;
  wire [7:0] n1199;
  wire n1201;
  wire [7:0] n1202;
  wire n1204;
  wire n1206;
  wire n1208;
  wire [7:0] n1209;
  wire n1211;
  wire [7:0] n1212;
  wire n1214;
  wire n1216;
  wire [9:0] n1217;
  reg [7:0] n1221;
  wire n1223;
  wire n1224;
  wire [7:0] n1225;
  wire [7:0] n1226;
  wire [7:0] n1227;
  wire n1229;
  wire n1231;
  wire n1232;
  wire n1234;
  wire n1235;
  wire n1237;
  wire n1238;
  wire n1240;
  wire n1241;
  wire n1243;
  wire n1244;
  wire n1246;
  wire [7:0] n1247;
  wire n1249;
  wire [7:0] n1250;
  wire n1252;
  wire n1254;
  wire [5:0] n1255;
  reg [7:0] n1257;
  reg [7:0] n1259;
  wire n1267;
  wire n1270;
  wire n1272;
  wire n1273;
  wire n1275;
  wire n1276;
  wire n1277;
  wire n1280;
  wire n1286;
  wire n1287;
  wire n1288;
  reg n1289_oldnmi_n;
  wire n1292;
  wire n1294;
  wire n1295;
  wire n1296;
  wire n1297;
  wire n1299;
  wire n1301;
  wire n1321;
  wire n1323;
  wire n1324;
  wire n1325;
  wire n1326;
  wire n1327;
  wire n1328;
  wire n1329;
  wire n1330;
  wire n1331;
  wire n1332;
  wire n1333;
  wire n1334;
  wire n1335;
  wire n1336;
  wire n1337;
  wire n1338;
  wire n1339;
  wire n1340;
  wire n1341;
  wire n1342;
  wire n1343;
  wire n1345;
  wire n1347;
  wire n1349;
  wire n1350;
  wire n1351;
  wire n1352;
  wire n1354;
  wire n1356;
  wire n1358;
  wire n1359;
  wire n1360;
  wire n1361;
  wire n1363;
  wire n1365;
  wire n1367;
  wire n1368;
  wire n1369;
  wire n1371;
  wire n1372;
  wire n1374;
  wire n1375;
  wire n1376;
  wire n1378;
  wire n1380;
  wire n1382;
  wire [2:0] n1384;
  wire n1386;
  wire n1390;
  wire [2:0] n1392;
  wire n1393;
  wire n1394;
  wire n1396;
  wire n1397;
  wire n1398;
  wire n1399;
  wire n1401;
  wire n1402;
  wire n1403;
  wire n1405;
  wire n1406;
  wire n1407;
  wire n1408;
  wire n1410;
  wire n1412;
  wire n1415;
  wire n1417;
  wire n1418;
  wire n1420;
  wire n1424;
  wire [2:0] n1427;
  wire n1429;
  wire [2:0] n1431;
  wire n1432;
  wire n1433;
  wire n1434;
  wire n1435;
  wire n1436;
  wire [2:0] n1437;
  wire n1438;
  wire n1439;
  wire n1440;
  wire n1441;
  wire n1442;
  wire [2:0] n1444;
  wire n1445;
  wire n1446;
  wire [2:0] n1447;
  wire n1448;
  wire n1449;
  wire n1450;
  wire [2:0] n1452;
  wire [2:0] n1453;
  wire n1454;
  wire n1455;
  wire n1458;
  wire [2:0] n1459;
  wire n1460;
  wire n1461;
  wire n1462;
  wire n1463;
  wire n1464;
  wire [2:0] n1466;
  wire [2:0] n1467;
  wire n1468;
  wire [2:0] n1469;
  wire [2:0] n1470;
  wire n1471;
  wire n1472;
  wire n1473;
  wire n1475;
  wire [2:0] n1476;
  wire n1477;
  wire n1478;
  wire n1479;
  wire [2:0] n1480;
  wire [2:0] n1481;
  wire n1482;
  wire n1483;
  wire n1484;
  wire n1486;
  wire [2:0] n1488;
  wire n1489;
  wire n1490;
  wire n1491;
  wire [2:0] n1492;
  wire [2:0] n1493;
  wire n1494;
  wire n1495;
  wire n1496;
  wire n1497;
  wire [2:0] n1498;
  wire n1499;
  wire n1500;
  wire n1502;
  wire n1504;
  wire n1560;
  wire n1562;
  wire n1565;
  wire n1567;
  wire [15:0] n1570;
  wire [15:0] n1571;
  wire [15:0] n1572;
  wire n1573;
  reg n1574;
  wire n1575;
  reg n1576;
  wire [15:0] n1577;
  reg [15:0] n1578;
  wire [7:0] n1579;
  reg [7:0] n1580;
  wire [7:0] n1581;
  reg [7:0] n1582;
  wire [7:0] n1583;
  reg [7:0] n1584;
  wire [7:0] n1585;
  reg [7:0] n1586;
  wire [7:0] n1587;
  reg [7:0] n1588;
  wire [7:0] n1589;
  reg [7:0] n1590;
  wire [7:0] n1591;
  reg [7:0] n1592;
  wire [15:0] n1593;
  reg [15:0] n1594;
  wire [15:0] n1595;
  reg [15:0] n1596;
  wire [2:0] n1597;
  reg [2:0] n1598;
  wire [2:0] n1599;
  reg [2:0] n1600;
  wire [2:0] n1601;
  reg [2:0] n1602;
  wire n1603;
  reg n1604;
  wire [15:0] n1605;
  reg [15:0] n1606;
  wire [7:0] n1607;
  reg [7:0] n1608;
  wire [1:0] n1609;
  reg [1:0] n1610;
  wire [15:0] n1611;
  reg [15:0] n1612;
  wire [2:0] n1613;
  reg [2:0] n1614;
  wire [2:0] n1615;
  reg [2:0] n1616;
  wire n1617;
  reg n1618;
  wire n1619;
  reg n1620;
  wire n1621;
  reg n1622;
  wire n1623;
  reg n1624;
  wire n1625;
  reg n1626;
  wire n1627;
  reg n1628;
  wire n1629;
  reg n1630;
  wire [1:0] n1631;
  reg [1:0] n1632;
  wire [1:0] n1633;
  reg [1:0] n1634;
  wire [2:0] n1635;
  reg [2:0] n1636;
  wire n1637;
  reg n1638;
  wire n1639;
  reg n1640;
  wire n1641;
  reg n1642;
  wire n1643;
  reg n1644;
  wire n1645;
  reg n1646;
  wire n1647;
  reg n1648;
  wire [7:0] n1649;
  reg [7:0] n1650;
  wire [7:0] n1651;
  reg [7:0] n1652;
  wire [4:0] n1653;
  reg [4:0] n1654;
  wire n1655;
  reg n1656;
  wire n1657;
  reg n1658;
  wire [3:0] n1659;
  reg [3:0] n1660;
  wire n1661;
  reg n1662;
  wire n1663;
  reg n1664;
  wire [2:0] n1665;
  reg [2:0] n1666;
  wire n1667;
  reg n1668;
  wire n1669;
  reg n1670;
  wire n1671;
  reg n1672;
  assign m1_n = n1574; //(module output)
  assign iorq = iorq_i; //(module output)
  assign noread = mcode_n206; //(module output)
  assign write = mcode_n207; //(module output)
  assign rfsh_n = n1576; //(module output)
  assign halt_n = n1286; //(module output)
  assign busak_n = n1287; //(module output)
  assign a = n1578; //(module output)
  assign \do  = n1580; //(module output)
  assign mc = mcycle; //(module output)
  assign ts = tstate; //(module output)
  assign intcycle_n = n1288; //(module output)
  assign inte = inte_ff1; //(module output)
  assign stop = i_djnz; //(module output)
  /* src/T80/T80.vhd:136:16  */
  assign acc = n1582; // (signal)
  /* src/T80/T80.vhd:136:21  */
  assign f = n1584; // (signal)
  /* src/T80/T80.vhd:137:16  */
  assign ap = n1586; // (signal)
  /* src/T80/T80.vhd:137:20  */
  assign fp = n1588; // (signal)
  /* src/T80/T80.vhd:138:16  */
  assign i = n1590; // (signal)
  /* src/T80/T80.vhd:139:16  */
  assign r = n1592; // (signal)
  /* src/T80/T80.vhd:140:16  */
  assign sp = n1594; // (signal)
  /* src/T80/T80.vhd:140:20  */
  assign pc = n1596; // (signal)
  /* src/T80/T80.vhd:142:16  */
  assign regdih = n1150; // (signal)
  /* src/T80/T80.vhd:143:16  */
  assign regdil = n1151; // (signal)
  /* src/T80/T80.vhd:144:16  */
  assign regbusa = n1570; // (signal)
  /* src/T80/T80.vhd:145:16  */
  assign regbusb = n1571; // (signal)
  /* src/T80/T80.vhd:146:16  */
  assign regbusc = n1572; // (signal)
  /* src/T80/T80.vhd:147:16  */
  assign regaddra_r = n1598; // (signal)
  /* src/T80/T80.vhd:148:16  */
  assign regaddra = n996; // (signal)
  /* src/T80/T80.vhd:149:16  */
  assign regaddrb_r = n1600; // (signal)
  /* src/T80/T80.vhd:150:16  */
  assign regaddrb = n1032; // (signal)
  /* src/T80/T80.vhd:151:16  */
  assign regaddrc = n1602; // (signal)
  /* src/T80/T80.vhd:152:16  */
  assign regweh = n1116; // (signal)
  /* src/T80/T80.vhd:153:16  */
  assign regwel = n1117; // (signal)
  /* src/T80/T80.vhd:154:16  */
  assign alternate = n1604; // (signal)
  /* src/T80/T80.vhd:157:16  */
  assign tmpaddr = n1606; // (signal)
  /* src/T80/T80.vhd:158:16  */
  assign ir = n1608; // (signal)
  /* src/T80/T80.vhd:159:16  */
  assign iset = n1610; // (signal)
  /* src/T80/T80.vhd:160:16  */
  assign regbusa_r = n1612; // (signal)
  /* src/T80/T80.vhd:162:16  */
  assign id16 = n1036; // (signal)
  /* src/T80/T80.vhd:163:16  */
  assign save_mux = n335; // (signal)
  /* src/T80/T80.vhd:165:16  */
  assign tstate = n1614; // (signal)
  /* src/T80/T80.vhd:166:16  */
  assign mcycle = n1616; // (signal)
  /* src/T80/T80.vhd:167:16  */
  assign inte_ff1 = n1618; // (signal)
  /* src/T80/T80.vhd:168:16  */
  assign inte_ff2 = n1620; // (signal)
  /* src/T80/T80.vhd:169:16  */
  assign halt_ff = n1622; // (signal)
  /* src/T80/T80.vhd:170:16  */
  assign busreq_s = n1624; // (signal)
  /* src/T80/T80.vhd:171:16  */
  assign busack = n1626; // (signal)
  /* src/T80/T80.vhd:172:16  */
  assign clken = n308; // (signal)
  /* src/T80/T80.vhd:173:16  */
  assign nmi_s = n1628; // (signal)
  /* src/T80/T80.vhd:174:16  */
  assign int_s = n1630; // (signal)
  /* src/T80/T80.vhd:175:16  */
  assign istatus = n1632; // (signal)
  /* src/T80/T80.vhd:177:16  */
  assign di_reg = di; // (signal)
  /* src/T80/T80.vhd:178:16  */
  assign t_res = n311; // (signal)
  /* src/T80/T80.vhd:179:16  */
  assign xy_state = n1634; // (signal)
  /* src/T80/T80.vhd:180:16  */
  assign pre_xy_f_m = n1636; // (signal)
  /* src/T80/T80.vhd:181:16  */
  assign nextis_xy_fetch = n333; // (signal)
  /* src/T80/T80.vhd:182:16  */
  assign xy_ind = n1638; // (signal)
  /* src/T80/T80.vhd:183:16  */
  assign no_btr = n1640; // (signal)
  /* src/T80/T80.vhd:184:16  */
  assign btr_r = n1642; // (signal)
  /* src/T80/T80.vhd:185:16  */
  assign auto_wait = n1567; // (signal)
  /* src/T80/T80.vhd:186:16  */
  assign auto_wait_t1 = n1644; // (signal)
  /* src/T80/T80.vhd:187:16  */
  assign auto_wait_t2 = n1646; // (signal)
  /* src/T80/T80.vhd:188:16  */
  assign incdecz = n1648; // (signal)
  /* src/T80/T80.vhd:191:16  */
  assign busb = n1650; // (signal)
  /* src/T80/T80.vhd:192:16  */
  assign busa = n1652; // (signal)
  /* src/T80/T80.vhd:193:16  */
  assign alu_q = alu_n301; // (signal)
  /* src/T80/T80.vhd:194:16  */
  assign f_out = alu_n302; // (signal)
  /* src/T80/T80.vhd:197:16  */
  assign read_to_reg_r = n1654; // (signal)
  /* src/T80/T80.vhd:198:16  */
  assign arith16_r = n1656; // (signal)
  /* src/T80/T80.vhd:199:16  */
  assign z16_r = n1658; // (signal)
  /* src/T80/T80.vhd:200:16  */
  assign alu_op_r = n1660; // (signal)
  /* src/T80/T80.vhd:201:16  */
  assign save_alu_r = n1662; // (signal)
  /* src/T80/T80.vhd:202:16  */
  assign preservec_r = n1664; // (signal)
  /* src/T80/T80.vhd:203:16  */
  assign mcycles = n1666; // (signal)
  /* src/T80/T80.vhd:206:16  */
  assign mcycles_d = mcode_n162; // (signal)
  /* src/T80/T80.vhd:207:16  */
  assign tstates = mcode_n163; // (signal)
  /* src/T80/T80.vhd:208:16  */
  assign intcycle = n1668; // (signal)
  /* src/T80/T80.vhd:209:16  */
  assign nmicycle = n1670; // (signal)
  /* src/T80/T80.vhd:210:16  */
  assign inc_pc = mcode_n165; // (signal)
  /* src/T80/T80.vhd:211:16  */
  assign inc_wz = mcode_n166; // (signal)
  /* src/T80/T80.vhd:212:16  */
  assign incdec_16 = mcode_n167; // (signal)
  /* src/T80/T80.vhd:213:16  */
  assign prefix = mcode_n164; // (signal)
  /* src/T80/T80.vhd:214:16  */
  assign read_to_acc = mcode_n169; // (signal)
  /* src/T80/T80.vhd:215:16  */
  assign read_to_reg = mcode_n168; // (signal)
  /* src/T80/T80.vhd:216:16  */
  assign set_busb_to = mcode_n171; // (signal)
  /* src/T80/T80.vhd:217:16  */
  assign set_busa_to = mcode_n170; // (signal)
  /* src/T80/T80.vhd:218:16  */
  assign alu_op = mcode_n172; // (signal)
  /* src/T80/T80.vhd:219:16  */
  assign save_alu = mcode_n173; // (signal)
  /* src/T80/T80.vhd:220:16  */
  assign preservec = mcode_n174; // (signal)
  /* src/T80/T80.vhd:221:16  */
  assign arith16 = mcode_n175; // (signal)
  /* src/T80/T80.vhd:222:16  */
  assign set_addr_to = mcode_n176; // (signal)
  /* src/T80/T80.vhd:223:16  */
  assign jump = mcode_n178; // (signal)
  /* src/T80/T80.vhd:224:16  */
  assign jumpe = mcode_n179; // (signal)
  /* src/T80/T80.vhd:225:16  */
  assign jumpxy = mcode_n180; // (signal)
  /* src/T80/T80.vhd:226:16  */
  assign call = mcode_n181; // (signal)
  /* src/T80/T80.vhd:227:16  */
  assign rstp = mcode_n182; // (signal)
  /* src/T80/T80.vhd:228:16  */
  assign ldz = mcode_n183; // (signal)
  /* src/T80/T80.vhd:229:16  */
  assign ldw = mcode_n184; // (signal)
  /* src/T80/T80.vhd:230:16  */
  assign ldsphl = mcode_n185; // (signal)
  /* src/T80/T80.vhd:231:16  */
  assign iorq_i = mcode_n177; // (signal)
  /* src/T80/T80.vhd:232:16  */
  assign special_ld = mcode_n186; // (signal)
  /* src/T80/T80.vhd:233:16  */
  assign exchangedh = mcode_n187; // (signal)
  /* src/T80/T80.vhd:234:16  */
  assign exchangerp = mcode_n188; // (signal)
  /* src/T80/T80.vhd:235:16  */
  assign exchangeaf = mcode_n189; // (signal)
  /* src/T80/T80.vhd:236:16  */
  assign exchangers = mcode_n190; // (signal)
  /* src/T80/T80.vhd:237:16  */
  assign i_djnz = mcode_n191; // (signal)
  /* src/T80/T80.vhd:238:16  */
  assign i_cpl = mcode_n192; // (signal)
  /* src/T80/T80.vhd:239:16  */
  assign i_ccf = mcode_n193; // (signal)
  /* src/T80/T80.vhd:240:16  */
  assign i_scf = mcode_n194; // (signal)
  /* src/T80/T80.vhd:241:16  */
  assign i_retn = mcode_n195; // (signal)
  /* src/T80/T80.vhd:242:16  */
  assign i_bt = mcode_n196; // (signal)
  /* src/T80/T80.vhd:243:16  */
  assign i_bc = mcode_n197; // (signal)
  /* src/T80/T80.vhd:244:16  */
  assign i_btr = mcode_n198; // (signal)
  /* src/T80/T80.vhd:245:16  */
  assign i_rld = mcode_n199; // (signal)
  /* src/T80/T80.vhd:246:16  */
  assign i_rrd = mcode_n200; // (signal)
  /* src/T80/T80.vhd:247:16  */
  assign i_inrc = mcode_n201; // (signal)
  /* src/T80/T80.vhd:248:16  */
  assign setdi = mcode_n202; // (signal)
  /* src/T80/T80.vhd:249:16  */
  assign setei = mcode_n203; // (signal)
  /* src/T80/T80.vhd:250:16  */
  assign imode = mcode_n204; // (signal)
  /* src/T80/T80.vhd:251:16  */
  assign halt = mcode_n205; // (signal)
  /* src/T80/T80.vhd:255:9  */
  t80_mcode_Brtl_0_0_1_2_3_4_5_6_7 mcode (
    .ir(ir),
    .iset(iset),
    .mcycle(mcycle),
    .f(f),
    .nmicycle(nmicycle),
    .intcycle(intcycle),
    .mcycles(mcode_n162),
    .tstates(mcode_n163),
    .prefix(mcode_n164),
    .inc_pc(mcode_n165),
    .inc_wz(mcode_n166),
    .incdec_16(mcode_n167),
    .read_to_reg(mcode_n168),
    .read_to_acc(mcode_n169),
    .set_busa_to(mcode_n170),
    .set_busb_to(mcode_n171),
    .alu_op(mcode_n172),
    .save_alu(mcode_n173),
    .preservec(mcode_n174),
    .arith16(mcode_n175),
    .set_addr_to(mcode_n176),
    .iorq(mcode_n177),
    .jump(mcode_n178),
    .jumpe(mcode_n179),
    .jumpxy(mcode_n180),
    .call(mcode_n181),
    .rstp(mcode_n182),
    .ldz(mcode_n183),
    .ldw(mcode_n184),
    .ldsphl(mcode_n185),
    .special_ld(mcode_n186),
    .exchangedh(mcode_n187),
    .exchangerp(mcode_n188),
    .exchangeaf(mcode_n189),
    .exchangers(mcode_n190),
    .i_djnz(mcode_n191),
    .i_cpl(mcode_n192),
    .i_ccf(mcode_n193),
    .i_scf(mcode_n194),
    .i_retn(mcode_n195),
    .i_bt(mcode_n196),
    .i_bc(mcode_n197),
    .i_btr(mcode_n198),
    .i_rld(mcode_n199),
    .i_rrd(mcode_n200),
    .i_inrc(mcode_n201),
    .setdi(mcode_n202),
    .setei(mcode_n203),
    .imode(mcode_n204),
    .halt(mcode_n205),
    .noread(mcode_n206),
    .write(mcode_n207));
  /* src/T80/T80.vhd:335:38  */
  assign n300 = ir[5:0]; // extract
  /* src/T80/T80.vhd:320:9  */
  t80_alu_Brtl_0_0_1_2_3_4_5_6_7 alu (
    .arith16(arith16_r),
    .z16(z16_r),
    .alu_op(alu_op_r),
    .ir(n300),
    .iset(iset),
    .busa(busa),
    .busb(busb),
    .f_in(f),
    .q(alu_n301),
    .f_out(alu_n302));
  /* src/T80/T80.vhd:343:26  */
  assign n307 = ~busack;
  /* src/T80/T80.vhd:343:22  */
  assign n308 = cen & n307;
  /* src/T80/T80.vhd:345:34  */
  assign n310 = tstate == tstates;
  /* src/T80/T80.vhd:345:22  */
  assign n311 = n310 ? 1'b1 : 1'b0;
  /* src/T80/T80.vhd:347:46  */
  assign n315 = xy_state != 2'b00;
  /* src/T80/T80.vhd:347:65  */
  assign n316 = ~xy_ind;
  /* src/T80/T80.vhd:347:54  */
  assign n317 = n316 & n315;
  /* src/T80/T80.vhd:348:71  */
  assign n319 = set_addr_to == 3'b010;
  /* src/T80/T80.vhd:349:65  */
  assign n321 = mcycle == 3'b001;
  /* src/T80/T80.vhd:349:80  */
  assign n323 = ir == 8'b11001011;
  /* src/T80/T80.vhd:349:73  */
  assign n324 = n323 & n321;
  /* src/T80/T80.vhd:348:78  */
  assign n325 = n319 | n324;
  /* src/T80/T80.vhd:350:65  */
  assign n327 = mcycle == 3'b001;
  /* src/T80/T80.vhd:350:80  */
  assign n329 = ir == 8'b00110110;
  /* src/T80/T80.vhd:350:73  */
  assign n330 = n329 & n327;
  /* src/T80/T80.vhd:349:94  */
  assign n331 = n325 | n330;
  /* src/T80/T80.vhd:347:71  */
  assign n332 = n331 & n317;
  /* src/T80/T80.vhd:347:32  */
  assign n333 = n332 ? 1'b1 : 1'b0;
  /* src/T80/T80.vhd:352:26  */
  assign n335 = exchangerp ? busb : n337;
  /* src/T80/T80.vhd:353:40  */
  assign n336 = ~save_alu_r;
  /* src/T80/T80.vhd:352:48  */
  assign n337 = n336 ? di_reg : alu_q;
  /* src/T80/T80.vhd:358:28  */
  assign n340 = ~reset_n;
  /* src/T80/T80.vhd:398:34  */
  assign n343 = imode != 2'b11;
  /* src/T80/T80.vhd:404:33  */
  assign n346 = iset == 2'b10;
  /* src/T80/T80.vhd:404:50  */
  assign n347 = alu_op[2]; // extract
  /* src/T80/T80.vhd:404:54  */
  assign n348 = ~n347;
  /* src/T80/T80.vhd:404:40  */
  assign n349 = n348 & n346;
  /* src/T80/T80.vhd:404:70  */
  assign n350 = alu_op[0]; // extract
  /* src/T80/T80.vhd:404:60  */
  assign n351 = n350 & n349;
  /* src/T80/T80.vhd:404:91  */
  assign n353 = mcycle == 3'b011;
  /* src/T80/T80.vhd:404:80  */
  assign n354 = n353 & n351;
  /* src/T80/T80.vhd:404:25  */
  assign n357 = n354 ? 1'b1 : 1'b0;
  /* src/T80/T80.vhd:410:36  */
  assign n359 = mcycle == 3'b001;
  /* src/T80/T80.vhd:410:54  */
  assign n360 = tstate[2]; // extract
  /* src/T80/T80.vhd:410:58  */
  assign n361 = ~n360;
  /* src/T80/T80.vhd:410:44  */
  assign n362 = n361 & n359;
  /* src/T80/T80.vhd:413:43  */
  assign n364 = tstate == 3'b010;
  /* src/T80/T80.vhd:413:47  */
  assign n365 = wait_n & n364;
  /* src/T80/T80.vhd:417:67  */
  assign n366 = r[6:0]; // extract
  /* src/T80/T80.vhd:417:80  */
  assign n368 = n366 + 7'b0000001;
  /* src/T80/T80.vhd:420:49  */
  assign n369 = ~jump;
  /* src/T80/T80.vhd:420:64  */
  assign n370 = ~call;
  /* src/T80/T80.vhd:420:55  */
  assign n371 = n370 & n369;
  /* src/T80/T80.vhd:420:83  */
  assign n372 = ~nmicycle;
  /* src/T80/T80.vhd:420:70  */
  assign n373 = n372 & n371;
  /* src/T80/T80.vhd:420:102  */
  assign n374 = ~intcycle;
  /* src/T80/T80.vhd:420:89  */
  assign n375 = n374 & n373;
  /* src/T80/T80.vhd:420:131  */
  assign n376 = halt_ff | halt;
  /* src/T80/T80.vhd:420:112  */
  assign n377 = ~n376;
  /* src/T80/T80.vhd:420:108  */
  assign n378 = n377 & n375;
  /* src/T80/T80.vhd:421:58  */
  assign n380 = pc + 16'b0000000000000001;
  /* src/T80/T80.vhd:413:33  */
  assign n381 = n423 ? n380 : pc;
  /* src/T80/T80.vhd:424:71  */
  assign n383 = istatus == 2'b01;
  /* src/T80/T80.vhd:424:59  */
  assign n384 = n383 & intcycle;
  /* src/T80/T80.vhd:426:92  */
  assign n386 = istatus == 2'b10;
  /* src/T80/T80.vhd:426:80  */
  assign n387 = n386 & intcycle;
  /* src/T80/T80.vhd:426:61  */
  assign n388 = halt_ff | n387;
  /* src/T80/T80.vhd:426:100  */
  assign n389 = n388 | nmicycle;
  /* src/T80/T80.vhd:426:41  */
  assign n391 = n389 ? 8'b00000000 : dinst;
  /* src/T80/T80.vhd:424:41  */
  assign n393 = n384 ? 8'b11111111 : n391;
  /* src/T80/T80.vhd:433:51  */
  assign n395 = prefix != 2'b00;
  /* src/T80/T80.vhd:434:59  */
  assign n397 = prefix == 2'b11;
  /* src/T80/T80.vhd:435:62  */
  assign n398 = ir[5]; // extract
  /* src/T80/T80.vhd:435:57  */
  assign n401 = n398 ? 2'b10 : 2'b01;
  /* src/T80/T80.vhd:441:67  */
  assign n403 = prefix == 2'b10;
  /* src/T80/T80.vhd:441:57  */
  assign n405 = n403 ? 2'b00 : xy_state;
  /* src/T80/T80.vhd:441:57  */
  assign n407 = n403 ? 1'b0 : xy_ind;
  /* src/T80/T80.vhd:434:49  */
  assign n409 = n397 ? 2'b00 : prefix;
  /* src/T80/T80.vhd:434:49  */
  assign n410 = n397 ? n401 : n405;
  /* src/T80/T80.vhd:434:49  */
  assign n411 = n397 ? xy_ind : n407;
  /* src/T80/T80.vhd:433:41  */
  assign n413 = n395 ? n409 : 2'b00;
  /* src/T80/T80.vhd:433:41  */
  assign n416 = n395 ? n410 : 2'b00;
  /* src/T80/T80.vhd:433:41  */
  assign n418 = n395 ? n411 : 1'b0;
  /* src/T80/T80.vhd:413:33  */
  assign n419 = {i, r};
  /* src/T80/T80.vhd:413:33  */
  assign n420 = n365 ? n419 : n1578;
  /* src/T80/T80.vhd:139:16  */
  assign n421 = r[6:0]; // extract
  /* src/T80/T80.vhd:410:25  */
  assign n422 = n624 ? n368 : n421;
  /* src/T80/T80.vhd:413:33  */
  assign n423 = n378 & n365;
  /* src/T80/T80.vhd:413:33  */
  assign n424 = n365 ? n393 : ir;
  /* src/T80/T80.vhd:413:33  */
  assign n425 = n365 ? n413 : iset;
  /* src/T80/T80.vhd:413:33  */
  assign n427 = n365 ? n418 : xy_ind;
  /* src/T80/T80.vhd:456:43  */
  assign n429 = mcycle == 3'b110;
  /* src/T80/T80.vhd:458:51  */
  assign n431 = prefix == 2'b01;
  /* src/T80/T80.vhd:456:33  */
  assign n433 = n434 ? 2'b01 : iset;
  /* src/T80/T80.vhd:456:33  */
  assign n434 = n431 & n429;
  /* src/T80/T80.vhd:456:33  */
  assign n436 = n429 ? 1'b1 : xy_ind;
  /* src/T80/T80.vhd:464:56  */
  assign n437 = i_bt | i_bc;
  /* src/T80/T80.vhd:464:64  */
  assign n438 = n437 | i_btr;
  /* src/T80/T80.vhd:464:78  */
  assign n439 = ~no_btr;
  /* src/T80/T80.vhd:464:74  */
  assign n440 = n438 & n439;
  /* src/T80/T80.vhd:467:73  */
  assign n441 = tmpaddr[7:0]; // extract
  /* src/T80/T80.vhd:469:83  */
  assign n442 = tmpaddr[7:0]; // extract
  /* src/T80/T80.vhd:473:58  */
  assign n443 = call | rstp;
  /* src/T80/T80.vhd:476:54  */
  assign n444 = mcycle == mcycles;
  /* src/T80/T80.vhd:476:64  */
  assign n445 = nmicycle & n444;
  /* src/T80/T80.vhd:479:54  */
  assign n447 = mcycle == 3'b011;
  /* src/T80/T80.vhd:479:62  */
  assign n448 = intcycle & n447;
  /* src/T80/T80.vhd:479:93  */
  assign n450 = istatus == 2'b10;
  /* src/T80/T80.vhd:479:81  */
  assign n451 = n450 & n448;
  /* src/T80/T80.vhd:481:73  */
  assign n452 = tmpaddr[7:0]; // extract
  /* src/T80/T80.vhd:483:83  */
  assign n453 = tmpaddr[7:0]; // extract
  /* src/T80/T80.vhd:487:69  */
  assign n455 = xy_state == 2'b00;
  /* src/T80/T80.vhd:490:65  */
  assign n456 = nextis_xy_fetch ? pc : tmpaddr;
  /* src/T80/T80.vhd:487:57  */
  assign n457 = n455 ? regbusc : n456;
  /* src/T80/T80.vhd:486:49  */
  assign n459 = set_addr_to == 3'b010;
  /* src/T80/T80.vhd:496:49  */
  assign n461 = set_addr_to == 3'b100;
  /* src/T80/T80.vhd:507:49  */
  assign n463 = set_addr_to == 3'b101;
  /* src/T80/T80.vhd:509:49  */
  assign n465 = set_addr_to == 3'b000;
  /* src/T80/T80.vhd:517:49  */
  assign n467 = set_addr_to == 3'b001;
  /* src/T80/T80.vhd:521:105  */
  assign n469 = tmpaddr + 16'b0000000000000001;
  /* src/T80/T80.vhd:524:89  */
  assign n470 = tmpaddr[7:0]; // extract
  /* src/T80/T80.vhd:520:57  */
  assign n471 = {di_reg, n470};
  /* src/T80/T80.vhd:520:57  */
  assign n472 = inc_wz ? n469 : n471;
  /* src/T80/T80.vhd:519:49  */
  assign n474 = set_addr_to == 3'b110;
  /* src/T80/T80.vhd:485:49  */
  assign n475 = {n474, n467, n465, n463, n461, n459};
  /* src/T80/T80.vhd:487:57  */
  assign n476 = n457[7:0]; // extract
  /* src/T80/T80.vhd:140:16  */
  assign n477 = sp[7:0]; // extract
  /* src/T80/T80.vhd:146:16  */
  assign n478 = regbusc[7:0]; // extract
  /* src/T80/T80.vhd:146:16  */
  assign n479 = regbusc[7:0]; // extract
  /* src/T80/T80.vhd:520:57  */
  assign n480 = n472[7:0]; // extract
  /* src/T80/T80.vhd:140:20  */
  assign n481 = pc[7:0]; // extract
  /* src/T80/T80.vhd:485:49  */
  always @*
    case (n475)
      6'b100000: n482 = n480;
      6'b010000: n482 = n479;
      6'b001000: n482 = n478;
      6'b000100: n482 = n477;
      6'b000010: n482 = di_reg;
      6'b000001: n482 = n476;
      default: n482 = n481;
    endcase
  /* src/T80/T80.vhd:487:57  */
  assign n483 = n457[15:8]; // extract
  /* src/T80/T80.vhd:140:16  */
  assign n484 = sp[15:8]; // extract
  /* src/T80/T80.vhd:146:16  */
  assign n485 = regbusc[15:8]; // extract
  /* src/T80/T80.vhd:146:16  */
  assign n486 = regbusc[15:8]; // extract
  /* src/T80/T80.vhd:520:57  */
  assign n487 = n472[15:8]; // extract
  /* src/T80/T80.vhd:140:20  */
  assign n488 = pc[15:8]; // extract
  /* src/T80/T80.vhd:485:49  */
  always @*
    case (n475)
      6'b100000: n489 = n487;
      6'b010000: n489 = n486;
      6'b001000: n489 = n485;
      6'b000100: n489 = n484;
      6'b000010: n489 = acc;
      6'b000001: n489 = n483;
      default: n489 = n488;
    endcase
  /* src/T80/T80.vhd:479:41  */
  assign n490 = {n489, n482};
  /* src/T80/T80.vhd:479:41  */
  assign n491 = {i, n452};
  /* src/T80/T80.vhd:479:41  */
  assign n492 = n451 ? n491 : n490;
  /* src/T80/T80.vhd:479:41  */
  assign n493 = {i, n453};
  /* src/T80/T80.vhd:479:41  */
  assign n494 = n451 ? n493 : pc;
  /* src/T80/T80.vhd:476:41  */
  assign n496 = n445 ? 16'b0000000001100110 : n492;
  /* src/T80/T80.vhd:476:41  */
  assign n498 = n445 ? 16'b0000000001100110 : n494;
  /* src/T80/T80.vhd:473:41  */
  assign n499 = n443 ? tmpaddr : n496;
  /* src/T80/T80.vhd:473:41  */
  assign n500 = n443 ? tmpaddr : n498;
  /* src/T80/T80.vhd:470:41  */
  assign n501 = jumpxy ? regbusc : n499;
  /* src/T80/T80.vhd:470:41  */
  assign n502 = jumpxy ? regbusc : n500;
  /* src/T80/T80.vhd:465:41  */
  assign n503 = {di_reg, n441};
  /* src/T80/T80.vhd:465:41  */
  assign n504 = jump ? n503 : n501;
  /* src/T80/T80.vhd:465:41  */
  assign n505 = {di_reg, n442};
  /* src/T80/T80.vhd:465:41  */
  assign n506 = jump ? n505 : n502;
  /* src/T80/T80.vhd:536:56  */
  assign n507 = ~acc;
  /* src/T80/T80.vhd:537:69  */
  assign n508 = acc[5]; // extract
  /* src/T80/T80.vhd:537:62  */
  assign n509 = ~n508;
  /* src/T80/T80.vhd:539:69  */
  assign n511 = acc[3]; // extract
  /* src/T80/T80.vhd:539:62  */
  assign n512 = ~n511;
  /* src/T80/T80.vhd:463:33  */
  assign n514 = n542 ? n507 : acc;
  /* src/T80/T80.vhd:534:41  */
  assign n515 = {n509, 1'b1, n512};
  /* src/T80/T80.vhd:136:21  */
  assign n516 = f[1]; // extract
  /* src/T80/T80.vhd:534:41  */
  assign n517 = i_cpl ? 1'b1 : n516;
  /* src/T80/T80.vhd:136:21  */
  assign n518 = f[5:3]; // extract
  /* src/T80/T80.vhd:534:41  */
  assign n519 = i_cpl ? n515 : n518;
  /* src/T80/T80.vhd:544:67  */
  assign n520 = f[0]; // extract
  /* src/T80/T80.vhd:544:62  */
  assign n521 = ~n520;
  /* src/T80/T80.vhd:545:65  */
  assign n522 = acc[5]; // extract
  /* src/T80/T80.vhd:546:63  */
  assign n523 = f[0]; // extract
  /* src/T80/T80.vhd:547:65  */
  assign n524 = acc[3]; // extract
  /* src/T80/T80.vhd:542:41  */
  assign n526 = {1'b0, n521};
  /* src/T80/T80.vhd:542:41  */
  assign n527 = {n522, n523, n524};
  /* src/T80/T80.vhd:136:21  */
  assign n528 = f[0]; // extract
  /* src/T80/T80.vhd:136:21  */
  assign n529 = {n517, n528};
  /* src/T80/T80.vhd:542:41  */
  assign n530 = i_ccf ? n526 : n529;
  /* src/T80/T80.vhd:542:41  */
  assign n531 = i_ccf ? n527 : n519;
  /* src/T80/T80.vhd:553:65  */
  assign n533 = acc[5]; // extract
  /* src/T80/T80.vhd:555:65  */
  assign n535 = acc[3]; // extract
  /* src/T80/T80.vhd:550:41  */
  assign n537 = {1'b0, 1'b1};
  /* src/T80/T80.vhd:550:41  */
  assign n538 = {n533, 1'b0, n535};
  /* src/T80/T80.vhd:550:41  */
  assign n539 = i_scf ? n537 : n530;
  /* src/T80/T80.vhd:550:41  */
  assign n540 = i_scf ? n538 : n531;
  /* src/T80/T80.vhd:463:33  */
  assign n541 = t_res ? n504 : n1578;
  /* src/T80/T80.vhd:463:33  */
  assign n542 = i_cpl & t_res;
  /* src/T80/T80.vhd:136:21  */
  assign n543 = f[1:0]; // extract
  /* src/T80/T80.vhd:463:33  */
  assign n544 = t_res ? n539 : n543;
  /* src/T80/T80.vhd:136:21  */
  assign n545 = f[5:3]; // extract
  /* src/T80/T80.vhd:463:33  */
  assign n546 = t_res ? n540 : n545;
  /* src/T80/T80.vhd:463:33  */
  assign n547 = t_res ? n506 : pc;
  /* src/T80/T80.vhd:463:33  */
  assign n548 = t_res ? n440 : btr_r;
  /* src/T80/T80.vhd:463:33  */
  assign n550 = t_res ? alu_op : 4'b0000;
  /* src/T80/T80.vhd:463:33  */
  assign n552 = t_res ? save_alu : 1'b0;
  /* src/T80/T80.vhd:560:43  */
  assign n554 = tstate == 3'b010;
  /* src/T80/T80.vhd:560:47  */
  assign n555 = wait_n & n554;
  /* src/T80/T80.vhd:561:49  */
  assign n557 = iset == 2'b01;
  /* src/T80/T80.vhd:561:67  */
  assign n559 = mcycle == 3'b111;
  /* src/T80/T80.vhd:561:56  */
  assign n560 = n559 & n557;
  /* src/T80/T80.vhd:560:33  */
  assign n561 = n579 ? dinst : ir;
  /* src/T80/T80.vhd:565:75  */
  assign n562 = {{8{di_reg[7]}}, di_reg}; // sext
  /* src/T80/T80.vhd:565:75  */
  assign n563 = pc + n562;
  /* src/T80/T80.vhd:567:58  */
  assign n565 = pc + 16'b0000000000000001;
  /* src/T80/T80.vhd:566:41  */
  assign n566 = inc_pc ? n565 : n547;
  /* src/T80/T80.vhd:564:41  */
  assign n567 = jumpe ? n563 : n566;
  /* src/T80/T80.vhd:570:58  */
  assign n569 = pc - 16'b0000000000000010;
  /* src/T80/T80.vhd:569:41  */
  assign n570 = btr_r ? n569 : n567;
  /* src/T80/T80.vhd:574:74  */
  assign n571 = ir[5:3]; // extract
  /* src/T80/T80.vhd:157:16  */
  assign n573 = n572[15:6]; // extract
  /* src/T80/T80.vhd:157:16  */
  assign n574 = n572[2:0]; // extract
  /* src/T80/T80.vhd:572:41  */
  assign n575 = {n573, n571, n574};
  /* src/T80/T80.vhd:560:33  */
  assign n576 = n578 ? n575 : tmpaddr;
  /* src/T80/T80.vhd:560:33  */
  assign n577 = n555 ? n570 : n547;
  /* src/T80/T80.vhd:560:33  */
  assign n578 = rstp & n555;
  /* src/T80/T80.vhd:560:33  */
  assign n579 = n560 & n555;
  /* src/T80/T80.vhd:577:43  */
  assign n581 = tstate == 3'b011;
  /* src/T80/T80.vhd:577:58  */
  assign n583 = mcycle == 3'b110;
  /* src/T80/T80.vhd:577:47  */
  assign n584 = n583 & n581;
  /* src/T80/T80.vhd:578:85  */
  assign n585 = {{8{di_reg[7]}}, di_reg}; // sext
  /* src/T80/T80.vhd:578:85  */
  assign n586 = regbusc + n585;
  /* src/T80/T80.vhd:577:33  */
  assign n587 = n584 ? n586 : n576;
  /* src/T80/T80.vhd:581:44  */
  assign n589 = tstate == 3'b010;
  /* src/T80/T80.vhd:581:48  */
  assign n590 = wait_n & n589;
  /* src/T80/T80.vhd:581:77  */
  assign n592 = tstate == 3'b100;
  /* src/T80/T80.vhd:581:92  */
  assign n594 = mcycle == 3'b001;
  /* src/T80/T80.vhd:581:81  */
  assign n595 = n594 & n592;
  /* src/T80/T80.vhd:581:66  */
  assign n596 = n590 | n595;
  /* src/T80/T80.vhd:582:53  */
  assign n597 = incdec_16[2:0]; // extract
  /* src/T80/T80.vhd:582:66  */
  assign n599 = n597 == 3'b111;
  /* src/T80/T80.vhd:583:61  */
  assign n600 = incdec_16[3]; // extract
  /* src/T80/T80.vhd:584:66  */
  assign n602 = sp - 16'b0000000000000001;
  /* src/T80/T80.vhd:586:66  */
  assign n604 = sp + 16'b0000000000000001;
  /* src/T80/T80.vhd:583:49  */
  assign n605 = n600 ? n602 : n604;
  /* src/T80/T80.vhd:581:33  */
  assign n606 = n607 ? n605 : sp;
  /* src/T80/T80.vhd:581:33  */
  assign n607 = n599 & n596;
  /* src/T80/T80.vhd:591:33  */
  assign n608 = ldsphl ? regbusc : n606;
  /* src/T80/T80.vhd:594:33  */
  assign n609 = exchangeaf ? ap : n514;
  /* src/T80/T80.vhd:136:21  */
  assign n610 = f[2]; // extract
  /* src/T80/T80.vhd:136:21  */
  assign n611 = f[7:6]; // extract
  /* src/T80/T80.vhd:136:21  */
  assign n612 = {n611, n546, n610, n544};
  /* src/T80/T80.vhd:594:33  */
  assign n613 = exchangeaf ? fp : n612;
  /* src/T80/T80.vhd:594:33  */
  assign n614 = exchangeaf ? acc : ap;
  /* src/T80/T80.vhd:594:33  */
  assign n615 = exchangeaf ? f : fp;
  /* src/T80/T80.vhd:601:54  */
  assign n616 = ~alternate;
  /* src/T80/T80.vhd:600:33  */
  assign n617 = exchangers ? n616 : alternate;
  /* src/T80/T80.vhd:410:25  */
  assign n618 = n362 ? n420 : n541;
  /* src/T80/T80.vhd:410:25  */
  assign n619 = n362 ? acc : n609;
  /* src/T80/T80.vhd:410:25  */
  assign n620 = n362 ? f : n613;
  /* src/T80/T80.vhd:410:25  */
  assign n621 = n362 ? ap : n614;
  /* src/T80/T80.vhd:410:25  */
  assign n622 = n362 ? fp : n615;
  /* src/T80/T80.vhd:410:25  */
  assign n624 = n365 & n362;
  /* src/T80/T80.vhd:410:25  */
  assign n625 = n362 ? sp : n608;
  /* src/T80/T80.vhd:410:25  */
  assign n626 = n362 ? n381 : n577;
  /* src/T80/T80.vhd:410:25  */
  assign n627 = n362 ? alternate : n617;
  /* src/T80/T80.vhd:410:25  */
  assign n628 = n362 ? tmpaddr : n587;
  /* src/T80/T80.vhd:410:25  */
  assign n629 = n362 ? n424 : n561;
  /* src/T80/T80.vhd:410:25  */
  assign n630 = n362 ? n425 : n433;
  /* src/T80/T80.vhd:410:25  */
  assign n631 = n365 & n362;
  /* src/T80/T80.vhd:410:25  */
  assign n632 = n362 ? n427 : n436;
  /* src/T80/T80.vhd:410:25  */
  assign n633 = n362 ? btr_r : n548;
  /* src/T80/T80.vhd:410:25  */
  assign n635 = n362 ? 4'b0000 : n550;
  /* src/T80/T80.vhd:410:25  */
  assign n638 = n362 ? 1'b0 : n552;
  /* src/T80/T80.vhd:605:35  */
  assign n641 = tstate == 3'b011;
  /* src/T80/T80.vhd:157:16  */
  assign n642 = n628[7:0]; // extract
  /* src/T80/T80.vhd:606:33  */
  assign n643 = ldz ? di_reg : n642;
  /* src/T80/T80.vhd:157:16  */
  assign n644 = n628[15:8]; // extract
  /* src/T80/T80.vhd:609:33  */
  assign n645 = ldw ? di_reg : n644;
  /* src/T80/T80.vhd:613:46  */
  assign n646 = special_ld[2]; // extract
  /* src/T80/T80.vhd:614:56  */
  assign n647 = special_ld[1:0]; // extract
  /* src/T80/T80.vhd:615:41  */
  assign n649 = n647 == 2'b00;
  /* src/T80/T80.vhd:618:41  */
  assign n651 = n647 == 2'b01;
  /* src/T80/T80.vhd:621:41  */
  assign n653 = n647 == 2'b10;
  /* src/T80/T80.vhd:614:41  */
  assign n654 = {n653, n651, n649};
  /* src/T80/T80.vhd:614:41  */
  always @*
    case (n654)
      3'b100: n655 = n619;
      3'b010: n655 = r;
      3'b001: n655 = i;
      default: n655 = n619;
    endcase
  /* src/T80/T80.vhd:136:21  */
  assign n656 = n620[2]; // extract
  /* src/T80/T80.vhd:614:41  */
  always @*
    case (n654)
      3'b100: n657 = n656;
      3'b010: n657 = inte_ff2;
      3'b001: n657 = inte_ff2;
      default: n657 = n656;
    endcase
  /* src/T80/T80.vhd:614:41  */
  always @*
    case (n654)
      3'b100: n658 = acc;
      3'b010: n658 = i;
      3'b001: n658 = i;
      default: n658 = i;
    endcase
  /* src/T80/T80.vhd:139:16  */
  assign n659 = r[7]; // extract
  /* src/T80/T80.vhd:139:16  */
  assign n660 = {n659, n422};
  /* src/T80/T80.vhd:614:41  */
  always @*
    case (n654)
      3'b100: n661 = n660;
      3'b010: n661 = n660;
      3'b001: n661 = n660;
      default: n661 = acc;
    endcase
  /* src/T80/T80.vhd:605:25  */
  assign n662 = n669 ? n655 : n619;
  /* src/T80/T80.vhd:136:21  */
  assign n663 = n620[2]; // extract
  /* src/T80/T80.vhd:605:25  */
  assign n664 = n671 ? n657 : n663;
  /* src/T80/T80.vhd:139:16  */
  assign n666 = r[7]; // extract
  /* src/T80/T80.vhd:139:16  */
  assign n667 = {n666, n422};
  /* src/T80/T80.vhd:613:33  */
  assign n668 = n646 ? n661 : n667;
  /* src/T80/T80.vhd:605:25  */
  assign n669 = n646 & n641;
  /* src/T80/T80.vhd:605:25  */
  assign n671 = n646 & n641;
  /* src/T80/T80.vhd:136:21  */
  assign n672 = n620[7:3]; // extract
  /* src/T80/T80.vhd:136:21  */
  assign n673 = n620[1:0]; // extract
  /* src/T80/T80.vhd:605:25  */
  assign n674 = n646 & n641;
  /* src/T80/T80.vhd:139:16  */
  assign n675 = r[7]; // extract
  /* src/T80/T80.vhd:139:16  */
  assign n676 = {n675, n422};
  /* src/T80/T80.vhd:605:25  */
  assign n677 = n641 ? n668 : n676;
  /* src/T80/T80.vhd:605:25  */
  assign n678 = {n645, n643};
  /* src/T80/T80.vhd:605:25  */
  assign n679 = n641 ? n678 : n628;
  /* src/T80/T80.vhd:629:36  */
  assign n680 = ~i_djnz;
  /* src/T80/T80.vhd:629:42  */
  assign n681 = save_alu_r & n680;
  /* src/T80/T80.vhd:629:76  */
  assign n683 = alu_op_r == 4'b1001;
  /* src/T80/T80.vhd:629:64  */
  assign n684 = n681 | n683;
  /* src/T80/T80.vhd:638:63  */
  assign n685 = f_out[7:1]; // extract
  /* src/T80/T80.vhd:639:56  */
  assign n686 = ~preservec_r;
  /* src/T80/T80.vhd:640:67  */
  assign n687 = f_out[0]; // extract
  /* src/T80/T80.vhd:136:21  */
  assign n688 = n620[0]; // extract
  /* src/T80/T80.vhd:639:41  */
  assign n689 = n686 ? n687 : n688;
  /* src/T80/T80.vhd:629:25  */
  assign n690 = {n685, n689};
  /* src/T80/T80.vhd:136:21  */
  assign n691 = {n672, n664, n673};
  /* src/T80/T80.vhd:629:25  */
  assign n692 = n684 ? n690 : n691;
  /* src/T80/T80.vhd:644:40  */
  assign n693 = i_inrc & t_res;
  /* src/T80/T80.vhd:647:55  */
  assign n697 = di_reg == 8'b00000000;
  /* src/T80/T80.vhd:647:33  */
  assign n700 = n697 ? 1'b1 : 1'b0;
  /* src/T80/T80.vhd:652:52  */
  assign n701 = di_reg[7]; // extract
  /* src/T80/T80.vhd:653:57  */
  assign n702 = di_reg[0]; // extract
  /* src/T80/T80.vhd:653:71  */
  assign n703 = di_reg[1]; // extract
  /* src/T80/T80.vhd:653:61  */
  assign n704 = n702 ^ n703;
  /* src/T80/T80.vhd:653:85  */
  assign n705 = di_reg[2]; // extract
  /* src/T80/T80.vhd:653:75  */
  assign n706 = n704 ^ n705;
  /* src/T80/T80.vhd:653:99  */
  assign n707 = di_reg[3]; // extract
  /* src/T80/T80.vhd:653:89  */
  assign n708 = n706 ^ n707;
  /* src/T80/T80.vhd:654:47  */
  assign n709 = di_reg[4]; // extract
  /* src/T80/T80.vhd:653:103  */
  assign n710 = n708 ^ n709;
  /* src/T80/T80.vhd:654:61  */
  assign n711 = di_reg[5]; // extract
  /* src/T80/T80.vhd:654:51  */
  assign n712 = n710 ^ n711;
  /* src/T80/T80.vhd:654:75  */
  assign n713 = di_reg[6]; // extract
  /* src/T80/T80.vhd:654:65  */
  assign n714 = n712 ^ n713;
  /* src/T80/T80.vhd:654:89  */
  assign n715 = di_reg[7]; // extract
  /* src/T80/T80.vhd:654:79  */
  assign n716 = n714 ^ n715;
  /* src/T80/T80.vhd:653:46  */
  assign n717 = ~n716;
  /* src/T80/T80.vhd:644:25  */
  assign n718 = {n717, 1'b0};
  /* src/T80/T80.vhd:644:25  */
  assign n719 = {n701, n700};
  /* src/T80/T80.vhd:136:21  */
  assign n720 = n692[2:1]; // extract
  /* src/T80/T80.vhd:644:25  */
  assign n721 = n693 ? n718 : n720;
  /* src/T80/T80.vhd:136:21  */
  assign n722 = n692[4]; // extract
  /* src/T80/T80.vhd:644:25  */
  assign n723 = n693 ? 1'b0 : n722;
  /* src/T80/T80.vhd:136:21  */
  assign n724 = n692[7:6]; // extract
  /* src/T80/T80.vhd:644:25  */
  assign n725 = n693 ? n719 : n724;
  /* src/T80/T80.vhd:136:21  */
  assign n727 = n692[0]; // extract
  /* src/T80/T80.vhd:136:21  */
  assign n729 = n692[3]; // extract
  /* src/T80/T80.vhd:136:21  */
  assign n730 = n692[5]; // extract
  /* src/T80/T80.vhd:657:35  */
  assign n732 = tstate == 3'b001;
  /* src/T80/T80.vhd:660:63  */
  assign n733 = busa[3:0]; // extract
  /* src/T80/T80.vhd:661:63  */
  assign n734 = busb[3:0]; // extract
  /* src/T80/T80.vhd:659:33  */
  assign n735 = {n734, n733};
  /* src/T80/T80.vhd:659:33  */
  assign n736 = i_rld ? n735 : busb;
  /* src/T80/T80.vhd:664:63  */
  assign n737 = busb[7:4]; // extract
  /* src/T80/T80.vhd:665:63  */
  assign n738 = busa[3:0]; // extract
  /* src/T80/T80.vhd:663:33  */
  assign n739 = {n738, n737};
  /* src/T80/T80.vhd:663:33  */
  assign n740 = i_rrd ? n739 : n736;
  /* src/T80/T80.vhd:657:25  */
  assign n741 = n732 ? n740 : n1580;
  /* src/T80/T80.vhd:672:33  */
  assign n744 = {1'b1, 4'b0111};
  /* src/T80/T80.vhd:197:16  */
  assign n745 = {read_to_reg, set_busa_to};
  /* src/T80/T80.vhd:672:33  */
  assign n746 = read_to_acc ? n744 : n745;
  /* src/T80/T80.vhd:669:25  */
  assign n748 = t_res ? n746 : 5'b00000;
  /* src/T80/T80.vhd:678:35  */
  assign n751 = tstate == 3'b001;
  /* src/T80/T80.vhd:678:39  */
  assign n752 = i_bt & n751;
  /* src/T80/T80.vhd:679:51  */
  assign n753 = alu_q[3]; // extract
  /* src/T80/T80.vhd:680:51  */
  assign n754 = alu_q[1]; // extract
  /* src/T80/T80.vhd:678:25  */
  assign n757 = {n754, 1'b0, n753};
  /* src/T80/T80.vhd:136:21  */
  assign n758 = n721[0]; // extract
  /* src/T80/T80.vhd:678:25  */
  assign n759 = n752 ? 1'b0 : n758;
  /* src/T80/T80.vhd:136:21  */
  assign n760 = {n730, n723, n729};
  /* src/T80/T80.vhd:678:25  */
  assign n761 = n752 ? n757 : n760;
  /* src/T80/T80.vhd:136:21  */
  assign n762 = n721[1]; // extract
  /* src/T80/T80.vhd:684:39  */
  assign n763 = i_bc | i_bt;
  /* src/T80/T80.vhd:684:25  */
  assign n764 = n763 ? incdecz : n762;
  /* src/T80/T80.vhd:688:36  */
  assign n766 = tstate == 3'b001;
  /* src/T80/T80.vhd:688:55  */
  assign n767 = ~save_alu_r;
  /* src/T80/T80.vhd:688:40  */
  assign n768 = n767 & n766;
  /* src/T80/T80.vhd:689:64  */
  assign n770 = alu_op_r != 4'b0111;
  /* src/T80/T80.vhd:689:51  */
  assign n771 = n770 & save_alu_r;
  /* src/T80/T80.vhd:688:62  */
  assign n772 = n768 | n771;
  /* src/T80/T80.vhd:691:33  */
  assign n774 = read_to_reg_r == 5'b10111;
  /* src/T80/T80.vhd:693:33  */
  assign n776 = read_to_reg_r == 5'b10110;
  /* src/T80/T80.vhd:695:33  */
  assign n778 = read_to_reg_r == 5'b11000;
  /* src/T80/T80.vhd:697:33  */
  assign n780 = read_to_reg_r == 5'b11001;
  /* src/T80/T80.vhd:699:33  */
  assign n782 = read_to_reg_r == 5'b11011;
  /* src/T80/T80.vhd:690:33  */
  assign n783 = {n782, n780, n778, n776, n774};
  /* src/T80/T80.vhd:690:33  */
  always @*
    case (n783)
      5'b10000: n784 = n741;
      5'b01000: n784 = n741;
      5'b00100: n784 = n741;
      5'b00010: n784 = save_mux;
      5'b00001: n784 = n741;
      default: n784 = n741;
    endcase
  /* src/T80/T80.vhd:690:33  */
  always @*
    case (n783)
      5'b10000: n785 = n662;
      5'b01000: n785 = n662;
      5'b00100: n785 = n662;
      5'b00010: n785 = n662;
      5'b00001: n785 = save_mux;
      default: n785 = n662;
    endcase
  /* src/T80/T80.vhd:136:21  */
  assign n786 = {n725, n761, n764, n759, n727};
  /* src/T80/T80.vhd:690:33  */
  always @*
    case (n783)
      5'b10000: n787 = save_mux;
      5'b01000: n787 = n786;
      5'b00100: n787 = n786;
      5'b00010: n787 = n786;
      5'b00001: n787 = n786;
      default: n787 = n786;
    endcase
  /* src/T80/T80.vhd:140:16  */
  assign n788 = n625[7:0]; // extract
  /* src/T80/T80.vhd:690:33  */
  always @*
    case (n783)
      5'b10000: n789 = n788;
      5'b01000: n789 = n788;
      5'b00100: n789 = save_mux;
      5'b00010: n789 = n788;
      5'b00001: n789 = n788;
      default: n789 = n788;
    endcase
  /* src/T80/T80.vhd:140:16  */
  assign n790 = n625[15:8]; // extract
  /* src/T80/T80.vhd:690:33  */
  always @*
    case (n783)
      5'b10000: n791 = n790;
      5'b01000: n791 = save_mux;
      5'b00100: n791 = n790;
      5'b00010: n791 = n790;
      5'b00001: n791 = n790;
      default: n791 = n790;
    endcase
  /* src/T80/T80.vhd:688:25  */
  assign n792 = n772 ? n784 : n741;
  /* src/T80/T80.vhd:688:25  */
  assign n793 = n772 ? n785 : n662;
  /* src/T80/T80.vhd:136:21  */
  assign n794 = {n725, n761, n764, n759, n727};
  /* src/T80/T80.vhd:688:25  */
  assign n795 = n772 ? n787 : n794;
  /* src/T80/T80.vhd:688:25  */
  assign n796 = {n791, n789};
  /* src/T80/T80.vhd:688:25  */
  assign n797 = n772 ? n796 : n625;
  /* src/T80/T80.vhd:390:25  */
  assign n804 = n674 & clken;
  /* src/T80/T80.vhd:390:25  */
  assign n812 = n343 & clken;
  /* src/T80/T80.vhd:390:25  */
  assign n813 = n631 & clken;
  /* src/T80/T80.vhd:721:70  */
  assign n902 = set_busa_to[2:1]; // extract
  /* src/T80/T80.vhd:721:57  */
  assign n903 = {alternate, n902};
  /* src/T80/T80.vhd:722:43  */
  assign n904 = ~xy_ind;
  /* src/T80/T80.vhd:722:62  */
  assign n906 = xy_state != 2'b00;
  /* src/T80/T80.vhd:722:49  */
  assign n907 = n906 & n904;
  /* src/T80/T80.vhd:722:85  */
  assign n908 = set_busa_to[2:1]; // extract
  /* src/T80/T80.vhd:722:98  */
  assign n910 = n908 == 2'b10;
  /* src/T80/T80.vhd:722:70  */
  assign n911 = n910 & n907;
  /* src/T80/T80.vhd:723:63  */
  assign n912 = xy_state[1]; // extract
  /* src/T80/T80.vhd:723:67  */
  assign n914 = {n912, 2'b11};
  /* src/T80/T80.vhd:722:33  */
  assign n915 = n911 ? n914 : n903;
  /* src/T80/T80.vhd:727:70  */
  assign n916 = set_busb_to[2:1]; // extract
  /* src/T80/T80.vhd:727:57  */
  assign n917 = {alternate, n916};
  /* src/T80/T80.vhd:728:43  */
  assign n918 = ~xy_ind;
  /* src/T80/T80.vhd:728:62  */
  assign n920 = xy_state != 2'b00;
  /* src/T80/T80.vhd:728:49  */
  assign n921 = n920 & n918;
  /* src/T80/T80.vhd:728:85  */
  assign n922 = set_busb_to[2:1]; // extract
  /* src/T80/T80.vhd:728:98  */
  assign n924 = n922 == 2'b10;
  /* src/T80/T80.vhd:728:70  */
  assign n925 = n924 & n921;
  /* src/T80/T80.vhd:729:63  */
  assign n926 = xy_state[1]; // extract
  /* src/T80/T80.vhd:729:67  */
  assign n928 = {n926, 2'b11};
  /* src/T80/T80.vhd:728:33  */
  assign n929 = n925 ? n928 : n917;
  /* src/T80/T80.vhd:733:68  */
  assign n930 = set_addr_to[1:0]; // extract
  /* src/T80/T80.vhd:733:55  */
  assign n931 = {alternate, n930};
  /* src/T80/T80.vhd:735:50  */
  assign n932 = jumpxy | ldsphl;
  /* src/T80/T80.vhd:736:63  */
  assign n934 = {alternate, 2'b10};
  /* src/T80/T80.vhd:735:33  */
  assign n935 = n932 ? n934 : n931;
  /* src/T80/T80.vhd:738:51  */
  assign n936 = jumpxy | ldsphl;
  /* src/T80/T80.vhd:738:81  */
  assign n938 = xy_state != 2'b00;
  /* src/T80/T80.vhd:738:68  */
  assign n939 = n938 & n936;
  /* src/T80/T80.vhd:738:101  */
  assign n941 = mcycle == 3'b110;
  /* src/T80/T80.vhd:738:90  */
  assign n942 = n939 | n941;
  /* src/T80/T80.vhd:739:61  */
  assign n943 = xy_state[1]; // extract
  /* src/T80/T80.vhd:739:65  */
  assign n945 = {n943, 2'b11};
  /* src/T80/T80.vhd:738:33  */
  assign n946 = n942 ? n945 : n935;
  /* src/T80/T80.vhd:742:49  */
  assign n947 = save_alu_r & i_djnz;
  /* src/T80/T80.vhd:742:70  */
  assign n949 = 1'b1 & n947;
  /* src/T80/T80.vhd:743:57  */
  assign n950 = f_out[6]; // extract
  /* src/T80/T80.vhd:742:33  */
  assign n951 = n949 ? n950 : incdecz;
  /* src/T80/T80.vhd:745:44  */
  assign n953 = tstate == 3'b010;
  /* src/T80/T80.vhd:745:59  */
  assign n955 = tstate == 3'b011;
  /* src/T80/T80.vhd:745:74  */
  assign n957 = mcycle == 3'b001;
  /* src/T80/T80.vhd:745:63  */
  assign n958 = n957 & n955;
  /* src/T80/T80.vhd:745:48  */
  assign n959 = n953 | n958;
  /* src/T80/T80.vhd:745:97  */
  assign n960 = incdec_16[2:0]; // extract
  /* src/T80/T80.vhd:745:110  */
  assign n962 = n960 == 3'b100;
  /* src/T80/T80.vhd:745:84  */
  assign n963 = n962 & n959;
  /* src/T80/T80.vhd:746:49  */
  assign n965 = id16 == 16'b0000000000000000;
  /* src/T80/T80.vhd:746:41  */
  assign n968 = n965 ? 1'b0 : 1'b1;
  /* src/T80/T80.vhd:745:33  */
  assign n969 = n963 ? n968 : n951;
  /* src/T80/T80.vhd:760:46  */
  assign n981 = incdec_16[1:0]; // extract
  /* src/T80/T80.vhd:760:35  */
  assign n982 = {alternate, n981};
  /* src/T80/T80.vhd:760:72  */
  assign n984 = tstate == 3'b010;
  /* src/T80/T80.vhd:761:41  */
  assign n986 = tstate == 3'b011;
  /* src/T80/T80.vhd:761:56  */
  assign n988 = mcycle == 3'b001;
  /* src/T80/T80.vhd:761:45  */
  assign n989 = n988 & n986;
  /* src/T80/T80.vhd:761:77  */
  assign n990 = incdec_16[2]; // extract
  /* src/T80/T80.vhd:761:64  */
  assign n991 = n990 & n989;
  /* src/T80/T80.vhd:760:76  */
  assign n992 = n984 | n991;
  /* src/T80/T80.vhd:761:102  */
  assign n994 = xy_state == 2'b00;
  /* src/T80/T80.vhd:761:89  */
  assign n995 = n994 & n992;
  /* src/T80/T80.vhd:760:59  */
  assign n996 = n995 ? n982 : n1014;
  /* src/T80/T80.vhd:762:33  */
  assign n997 = xy_state[1]; // extract
  /* src/T80/T80.vhd:762:37  */
  assign n999 = {n997, 2'b11};
  /* src/T80/T80.vhd:762:57  */
  assign n1001 = tstate == 3'b010;
  /* src/T80/T80.vhd:763:41  */
  assign n1003 = tstate == 3'b011;
  /* src/T80/T80.vhd:763:56  */
  assign n1005 = mcycle == 3'b001;
  /* src/T80/T80.vhd:763:45  */
  assign n1006 = n1005 & n1003;
  /* src/T80/T80.vhd:763:77  */
  assign n1007 = incdec_16[2]; // extract
  /* src/T80/T80.vhd:763:64  */
  assign n1008 = n1007 & n1006;
  /* src/T80/T80.vhd:762:61  */
  assign n1009 = n1001 | n1008;
  /* src/T80/T80.vhd:763:102  */
  assign n1010 = incdec_16[1:0]; // extract
  /* src/T80/T80.vhd:763:115  */
  assign n1012 = n1010 == 2'b10;
  /* src/T80/T80.vhd:763:89  */
  assign n1013 = n1012 & n1009;
  /* src/T80/T80.vhd:761:109  */
  assign n1014 = n1013 ? n999 : n1020;
  /* src/T80/T80.vhd:765:35  */
  assign n1016 = {alternate, 2'b10};
  /* src/T80/T80.vhd:765:75  */
  assign n1018 = tstate == 3'b011;
  /* src/T80/T80.vhd:765:64  */
  assign n1019 = n1018 & exchangedh;
  /* src/T80/T80.vhd:763:122  */
  assign n1020 = n1019 ? n1016 : n1026;
  /* src/T80/T80.vhd:766:35  */
  assign n1022 = {alternate, 2'b01};
  /* src/T80/T80.vhd:766:75  */
  assign n1024 = tstate == 3'b100;
  /* src/T80/T80.vhd:766:64  */
  assign n1025 = n1024 & exchangedh;
  /* src/T80/T80.vhd:765:79  */
  assign n1026 = n1025 ? n1022 : regaddra_r;
  /* src/T80/T80.vhd:772:35  */
  assign n1028 = {alternate, 2'b01};
  /* src/T80/T80.vhd:772:75  */
  assign n1030 = tstate == 3'b011;
  /* src/T80/T80.vhd:772:64  */
  assign n1031 = n1030 & exchangedh;
  /* src/T80/T80.vhd:772:42  */
  assign n1032 = n1031 ? n1028 : regaddrb_r;
  /* src/T80/T80.vhd:776:33  */
  assign n1034 = regbusa - 16'b0000000000000001;
  /* src/T80/T80.vhd:776:51  */
  assign n1035 = incdec_16[3]; // extract
  /* src/T80/T80.vhd:776:37  */
  assign n1036 = n1035 ? n1034 : n1038;
  /* src/T80/T80.vhd:777:41  */
  assign n1038 = regbusa + 16'b0000000000000001;
  /* src/T80/T80.vhd:784:28  */
  assign n1042 = tstate == 3'b001;
  /* src/T80/T80.vhd:784:47  */
  assign n1043 = ~save_alu_r;
  /* src/T80/T80.vhd:784:32  */
  assign n1044 = n1043 & n1042;
  /* src/T80/T80.vhd:785:56  */
  assign n1046 = alu_op_r != 4'b0111;
  /* src/T80/T80.vhd:785:43  */
  assign n1047 = n1046 & save_alu_r;
  /* src/T80/T80.vhd:784:54  */
  assign n1048 = n1044 | n1047;
  /* src/T80/T80.vhd:788:60  */
  assign n1049 = read_to_reg_r[0]; // extract
  /* src/T80/T80.vhd:788:43  */
  assign n1050 = ~n1049;
  /* src/T80/T80.vhd:789:56  */
  assign n1051 = read_to_reg_r[0]; // extract
  /* src/T80/T80.vhd:787:25  */
  assign n1053 = read_to_reg_r == 5'b10000;
  /* src/T80/T80.vhd:787:38  */
  assign n1055 = read_to_reg_r == 5'b10001;
  /* src/T80/T80.vhd:787:38  */
  assign n1056 = n1053 | n1055;
  /* src/T80/T80.vhd:787:48  */
  assign n1058 = read_to_reg_r == 5'b10010;
  /* src/T80/T80.vhd:787:48  */
  assign n1059 = n1056 | n1058;
  /* src/T80/T80.vhd:787:58  */
  assign n1061 = read_to_reg_r == 5'b10011;
  /* src/T80/T80.vhd:787:58  */
  assign n1062 = n1059 | n1061;
  /* src/T80/T80.vhd:787:68  */
  assign n1064 = read_to_reg_r == 5'b10100;
  /* src/T80/T80.vhd:787:68  */
  assign n1065 = n1062 | n1064;
  /* src/T80/T80.vhd:787:78  */
  assign n1067 = read_to_reg_r == 5'b10101;
  /* src/T80/T80.vhd:787:78  */
  assign n1068 = n1065 | n1067;
  /* src/T80/T80.vhd:786:25  */
  always @*
    case (n1068)
      1'b1: n1070 = n1050;
      default: n1070 = 1'b0;
    endcase
  /* src/T80/T80.vhd:786:25  */
  always @*
    case (n1068)
      1'b1: n1072 = n1051;
      default: n1072 = 1'b0;
    endcase
  /* src/T80/T80.vhd:784:17  */
  assign n1074 = n1048 ? n1070 : 1'b0;
  /* src/T80/T80.vhd:784:17  */
  assign n1077 = n1048 ? n1072 : 1'b0;
  /* src/T80/T80.vhd:794:49  */
  assign n1080 = tstate == 3'b011;
  /* src/T80/T80.vhd:794:63  */
  assign n1082 = tstate == 3'b100;
  /* src/T80/T80.vhd:794:53  */
  assign n1083 = n1080 | n1082;
  /* src/T80/T80.vhd:794:37  */
  assign n1084 = n1083 & exchangedh;
  /* src/T80/T80.vhd:794:17  */
  assign n1086 = n1084 ? 1'b1 : n1074;
  /* src/T80/T80.vhd:794:17  */
  assign n1088 = n1084 ? 1'b1 : n1077;
  /* src/T80/T80.vhd:799:29  */
  assign n1089 = incdec_16[2]; // extract
  /* src/T80/T80.vhd:799:52  */
  assign n1091 = tstate == 3'b010;
  /* src/T80/T80.vhd:799:56  */
  assign n1092 = wait_n & n1091;
  /* src/T80/T80.vhd:799:84  */
  assign n1094 = mcycle != 3'b001;
  /* src/T80/T80.vhd:799:73  */
  assign n1095 = n1094 & n1092;
  /* src/T80/T80.vhd:799:105  */
  assign n1097 = tstate == 3'b011;
  /* src/T80/T80.vhd:799:120  */
  assign n1099 = mcycle == 3'b001;
  /* src/T80/T80.vhd:799:109  */
  assign n1100 = n1099 & n1097;
  /* src/T80/T80.vhd:799:94  */
  assign n1101 = n1095 | n1100;
  /* src/T80/T80.vhd:799:39  */
  assign n1102 = n1101 & n1089;
  /* src/T80/T80.vhd:800:39  */
  assign n1103 = incdec_16[1:0]; // extract
  /* src/T80/T80.vhd:801:25  */
  assign n1105 = n1103 == 2'b00;
  /* src/T80/T80.vhd:801:35  */
  assign n1107 = n1103 == 2'b01;
  /* src/T80/T80.vhd:801:35  */
  assign n1108 = n1105 | n1107;
  /* src/T80/T80.vhd:801:42  */
  assign n1110 = n1103 == 2'b10;
  /* src/T80/T80.vhd:801:42  */
  assign n1111 = n1108 | n1110;
  /* src/T80/T80.vhd:800:25  */
  always @*
    case (n1111)
      1'b1: n1113 = 1'b1;
      default: n1113 = n1086;
    endcase
  /* src/T80/T80.vhd:800:25  */
  always @*
    case (n1111)
      1'b1: n1115 = 1'b1;
      default: n1115 = n1088;
    endcase
  /* src/T80/T80.vhd:799:17  */
  assign n1116 = n1102 ? n1113 : n1086;
  /* src/T80/T80.vhd:799:17  */
  assign n1117 = n1102 ? n1115 : n1088;
  /* src/T80/T80.vhd:815:48  */
  assign n1122 = tstate == 3'b011;
  /* src/T80/T80.vhd:815:37  */
  assign n1123 = n1122 & exchangedh;
  /* src/T80/T80.vhd:816:42  */
  assign n1124 = regbusb[15:8]; // extract
  /* src/T80/T80.vhd:817:42  */
  assign n1125 = regbusb[7:0]; // extract
  /* src/T80/T80.vhd:815:17  */
  assign n1126 = n1123 ? n1124 : save_mux;
  /* src/T80/T80.vhd:815:17  */
  assign n1127 = n1123 ? n1125 : save_mux;
  /* src/T80/T80.vhd:819:48  */
  assign n1129 = tstate == 3'b100;
  /* src/T80/T80.vhd:819:37  */
  assign n1130 = n1129 & exchangedh;
  /* src/T80/T80.vhd:820:44  */
  assign n1131 = regbusa_r[15:8]; // extract
  /* src/T80/T80.vhd:821:44  */
  assign n1132 = regbusa_r[7:0]; // extract
  /* src/T80/T80.vhd:819:17  */
  assign n1133 = n1130 ? n1131 : n1126;
  /* src/T80/T80.vhd:819:17  */
  assign n1134 = n1130 ? n1132 : n1127;
  /* src/T80/T80.vhd:824:29  */
  assign n1135 = incdec_16[2]; // extract
  /* src/T80/T80.vhd:824:52  */
  assign n1137 = tstate == 3'b010;
  /* src/T80/T80.vhd:824:67  */
  assign n1139 = mcycle != 3'b001;
  /* src/T80/T80.vhd:824:56  */
  assign n1140 = n1139 & n1137;
  /* src/T80/T80.vhd:824:88  */
  assign n1142 = tstate == 3'b011;
  /* src/T80/T80.vhd:824:103  */
  assign n1144 = mcycle == 3'b001;
  /* src/T80/T80.vhd:824:92  */
  assign n1145 = n1144 & n1142;
  /* src/T80/T80.vhd:824:77  */
  assign n1146 = n1140 | n1145;
  /* src/T80/T80.vhd:824:39  */
  assign n1147 = n1146 & n1135;
  /* src/T80/T80.vhd:825:56  */
  assign n1148 = id16[15:8]; // extract
  /* src/T80/T80.vhd:826:56  */
  assign n1149 = id16[7:0]; // extract
  /* src/T80/T80.vhd:824:17  */
  assign n1150 = n1147 ? n1148 : n1133;
  /* src/T80/T80.vhd:824:17  */
  assign n1151 = n1147 ? n1149 : n1134;
  /* src/T80/T80.vhd:830:9  */
  t80_reg_Brtl regs (
    .clk(clk_n),
    .cen(clken),
    .weh(regweh),
    .wel(regwel),
    .addra(regaddra),
    .addrb(regaddrb),
    .addrc(regaddrc),
    .dih(regdih),
    .dil(regdil),
    .doah(regs_n1153),
    .doal(regs_n1154),
    .dobh(regs_n1155),
    .dobl(regs_n1156),
    .doch(regs_n1157),
    .docl(regs_n1158));
  /* src/T80/T80.vhd:858:25  */
  assign n1175 = set_busb_to == 4'b0111;
  /* src/T80/T80.vhd:861:47  */
  assign n1176 = set_busb_to[0]; // extract
  /* src/T80/T80.vhd:862:56  */
  assign n1177 = regbusb[7:0]; // extract
  /* src/T80/T80.vhd:864:56  */
  assign n1178 = regbusb[15:8]; // extract
  /* src/T80/T80.vhd:861:33  */
  assign n1179 = n1176 ? n1177 : n1178;
  /* src/T80/T80.vhd:860:25  */
  assign n1181 = set_busb_to == 4'b0000;
  /* src/T80/T80.vhd:860:37  */
  assign n1183 = set_busb_to == 4'b0001;
  /* src/T80/T80.vhd:860:37  */
  assign n1184 = n1181 | n1183;
  /* src/T80/T80.vhd:860:46  */
  assign n1186 = set_busb_to == 4'b0010;
  /* src/T80/T80.vhd:860:46  */
  assign n1187 = n1184 | n1186;
  /* src/T80/T80.vhd:860:55  */
  assign n1189 = set_busb_to == 4'b0011;
  /* src/T80/T80.vhd:860:55  */
  assign n1190 = n1187 | n1189;
  /* src/T80/T80.vhd:860:64  */
  assign n1192 = set_busb_to == 4'b0100;
  /* src/T80/T80.vhd:860:64  */
  assign n1193 = n1190 | n1192;
  /* src/T80/T80.vhd:860:73  */
  assign n1195 = set_busb_to == 4'b0101;
  /* src/T80/T80.vhd:860:73  */
  assign n1196 = n1193 | n1195;
  /* src/T80/T80.vhd:866:25  */
  assign n1198 = set_busb_to == 4'b0110;
  /* src/T80/T80.vhd:869:60  */
  assign n1199 = sp[7:0]; // extract
  /* src/T80/T80.vhd:868:25  */
  assign n1201 = set_busb_to == 4'b1000;
  /* src/T80/T80.vhd:871:60  */
  assign n1202 = sp[15:8]; // extract
  /* src/T80/T80.vhd:870:25  */
  assign n1204 = set_busb_to == 4'b1001;
  /* src/T80/T80.vhd:872:25  */
  assign n1206 = set_busb_to == 4'b1010;
  /* src/T80/T80.vhd:874:25  */
  assign n1208 = set_busb_to == 4'b1011;
  /* src/T80/T80.vhd:877:60  */
  assign n1209 = pc[7:0]; // extract
  /* src/T80/T80.vhd:876:25  */
  assign n1211 = set_busb_to == 4'b1100;
  /* src/T80/T80.vhd:879:60  */
  assign n1212 = pc[15:8]; // extract
  /* src/T80/T80.vhd:878:25  */
  assign n1214 = set_busb_to == 4'b1101;
  /* src/T80/T80.vhd:880:25  */
  assign n1216 = set_busb_to == 4'b1110;
  /* src/T80/T80.vhd:857:25  */
  assign n1217 = {n1216, n1214, n1211, n1208, n1206, n1204, n1201, n1198, n1196, n1175};
  /* src/T80/T80.vhd:857:25  */
  always @*
    case (n1217)
      10'b1000000000: n1221 = 8'b00000000;
      10'b0100000000: n1221 = n1212;
      10'b0010000000: n1221 = n1209;
      10'b0001000000: n1221 = f;
      10'b0000100000: n1221 = 8'b00000001;
      10'b0000010000: n1221 = n1202;
      10'b0000001000: n1221 = n1199;
      10'b0000000100: n1221 = di_reg;
      10'b0000000010: n1221 = n1179;
      10'b0000000001: n1221 = acc;
      default: n1221 = 8'bX;
    endcase
  /* src/T80/T80.vhd:887:25  */
  assign n1223 = set_busa_to == 4'b0111;
  /* src/T80/T80.vhd:890:47  */
  assign n1224 = set_busa_to[0]; // extract
  /* src/T80/T80.vhd:891:56  */
  assign n1225 = regbusa[7:0]; // extract
  /* src/T80/T80.vhd:893:56  */
  assign n1226 = regbusa[15:8]; // extract
  /* src/T80/T80.vhd:890:33  */
  assign n1227 = n1224 ? n1225 : n1226;
  /* src/T80/T80.vhd:889:25  */
  assign n1229 = set_busa_to == 4'b0000;
  /* src/T80/T80.vhd:889:37  */
  assign n1231 = set_busa_to == 4'b0001;
  /* src/T80/T80.vhd:889:37  */
  assign n1232 = n1229 | n1231;
  /* src/T80/T80.vhd:889:46  */
  assign n1234 = set_busa_to == 4'b0010;
  /* src/T80/T80.vhd:889:46  */
  assign n1235 = n1232 | n1234;
  /* src/T80/T80.vhd:889:55  */
  assign n1237 = set_busa_to == 4'b0011;
  /* src/T80/T80.vhd:889:55  */
  assign n1238 = n1235 | n1237;
  /* src/T80/T80.vhd:889:64  */
  assign n1240 = set_busa_to == 4'b0100;
  /* src/T80/T80.vhd:889:64  */
  assign n1241 = n1238 | n1240;
  /* src/T80/T80.vhd:889:73  */
  assign n1243 = set_busa_to == 4'b0101;
  /* src/T80/T80.vhd:889:73  */
  assign n1244 = n1241 | n1243;
  /* src/T80/T80.vhd:895:25  */
  assign n1246 = set_busa_to == 4'b0110;
  /* src/T80/T80.vhd:898:60  */
  assign n1247 = sp[7:0]; // extract
  /* src/T80/T80.vhd:897:25  */
  assign n1249 = set_busa_to == 4'b1000;
  /* src/T80/T80.vhd:900:60  */
  assign n1250 = sp[15:8]; // extract
  /* src/T80/T80.vhd:899:25  */
  assign n1252 = set_busa_to == 4'b1001;
  /* src/T80/T80.vhd:901:25  */
  assign n1254 = set_busa_to == 4'b1010;
  /* src/T80/T80.vhd:886:25  */
  assign n1255 = {n1254, n1252, n1249, n1246, n1244, n1223};
  /* src/T80/T80.vhd:886:25  */
  always @*
    case (n1255)
      6'b100000: n1257 = n1221;
      6'b010000: n1257 = n1221;
      6'b001000: n1257 = n1221;
      6'b000100: n1257 = n1221;
      6'b000010: n1257 = n1221;
      6'b000001: n1257 = n1221;
      default: n1257 = 8'bX;
    endcase
  /* src/T80/T80.vhd:886:25  */
  always @*
    case (n1255)
      6'b100000: n1259 = 8'b00000000;
      6'b010000: n1259 = n1250;
      6'b001000: n1259 = n1247;
      6'b000100: n1259 = di_reg;
      6'b000010: n1259 = n1227;
      6'b000001: n1259 = acc;
      default: n1259 = busa;
    endcase
  /* src/T80/T80.vhd:917:28  */
  assign n1267 = ~reset_n;
  /* src/T80/T80.vhd:921:35  */
  assign n1270 = mcycle == 3'b001;
  /* src/T80/T80.vhd:921:56  */
  assign n1272 = tstate == 3'b010;
  /* src/T80/T80.vhd:921:61  */
  assign n1273 = wait_n & n1272;
  /* src/T80/T80.vhd:921:89  */
  assign n1275 = tstate == 3'b011;
  /* src/T80/T80.vhd:921:79  */
  assign n1276 = n1273 | n1275;
  /* src/T80/T80.vhd:921:43  */
  assign n1277 = n1276 & n1270;
  /* src/T80/T80.vhd:921:25  */
  assign n1280 = n1277 ? 1'b0 : 1'b1;
  /* src/T80/T80.vhd:933:19  */
  assign n1286 = ~halt_ff;
  /* src/T80/T80.vhd:934:20  */
  assign n1287 = ~busack;
  /* src/T80/T80.vhd:935:23  */
  assign n1288 = ~intcycle;
  /* src/T80/T80.vhd:946:26  */
  always @*
    n1289_oldnmi_n = n1672; // (isignal)
  initial
    n1289_oldnmi_n = 1'bX;
  /* src/T80/T80.vhd:948:28  */
  assign n1292 = ~reset_n;
  /* src/T80/T80.vhd:955:37  */
  assign n1294 = ~busrq_n;
  /* src/T80/T80.vhd:956:34  */
  assign n1295 = ~int_n;
  /* src/T80/T80.vhd:959:37  */
  assign n1296 = ~nmi_n;
  /* src/T80/T80.vhd:959:43  */
  assign n1297 = n1289_oldnmi_n & n1296;
  /* src/T80/T80.vhd:959:25  */
  assign n1299 = n1297 ? 1'b1 : nmi_s;
  /* src/T80/T80.vhd:957:25  */
  assign n1301 = nmicycle ? 1'b0 : n1299;
  /* src/T80/T80.vhd:974:28  */
  assign n1321 = ~reset_n;
  /* src/T80/T80.vhd:992:52  */
  assign n1323 = ir[4]; // extract
  /* src/T80/T80.vhd:992:46  */
  assign n1324 = ~n1323;
  /* src/T80/T80.vhd:992:64  */
  assign n1325 = f[2]; // extract
  /* src/T80/T80.vhd:992:59  */
  assign n1326 = ~n1325;
  /* src/T80/T80.vhd:992:56  */
  assign n1327 = n1324 | n1326;
  /* src/T80/T80.vhd:992:41  */
  assign n1328 = i_bt & n1327;
  /* src/T80/T80.vhd:993:58  */
  assign n1329 = ir[4]; // extract
  /* src/T80/T80.vhd:993:52  */
  assign n1330 = ~n1329;
  /* src/T80/T80.vhd:993:66  */
  assign n1331 = f[6]; // extract
  /* src/T80/T80.vhd:993:62  */
  assign n1332 = n1330 | n1331;
  /* src/T80/T80.vhd:993:83  */
  assign n1333 = f[2]; // extract
  /* src/T80/T80.vhd:993:78  */
  assign n1334 = ~n1333;
  /* src/T80/T80.vhd:993:75  */
  assign n1335 = n1332 | n1334;
  /* src/T80/T80.vhd:993:47  */
  assign n1336 = i_bc & n1335;
  /* src/T80/T80.vhd:992:75  */
  assign n1337 = n1328 | n1336;
  /* src/T80/T80.vhd:994:59  */
  assign n1338 = ir[4]; // extract
  /* src/T80/T80.vhd:994:53  */
  assign n1339 = ~n1338;
  /* src/T80/T80.vhd:994:67  */
  assign n1340 = f[6]; // extract
  /* src/T80/T80.vhd:994:63  */
  assign n1341 = n1339 | n1340;
  /* src/T80/T80.vhd:994:48  */
  assign n1342 = i_btr & n1341;
  /* src/T80/T80.vhd:993:94  */
  assign n1343 = n1337 | n1342;
  /* src/T80/T80.vhd:995:35  */
  assign n1345 = tstate == 3'b010;
  /* src/T80/T80.vhd:996:33  */
  assign n1347 = setei ? 1'b1 : inte_ff1;
  /* src/T80/T80.vhd:995:25  */
  assign n1349 = n1352 ? 1'b1 : inte_ff2;
  /* src/T80/T80.vhd:1000:33  */
  assign n1350 = i_retn ? inte_ff2 : n1347;
  /* src/T80/T80.vhd:995:25  */
  assign n1351 = n1345 ? n1350 : inte_ff1;
  /* src/T80/T80.vhd:995:25  */
  assign n1352 = setei & n1345;
  /* src/T80/T80.vhd:1004:35  */
  assign n1354 = tstate == 3'b011;
  /* src/T80/T80.vhd:1004:25  */
  assign n1356 = n1359 ? 1'b0 : n1351;
  /* src/T80/T80.vhd:1004:25  */
  assign n1358 = n1360 ? 1'b0 : n1349;
  /* src/T80/T80.vhd:1004:25  */
  assign n1359 = setdi & n1354;
  /* src/T80/T80.vhd:1004:25  */
  assign n1360 = setdi & n1354;
  /* src/T80/T80.vhd:1010:43  */
  assign n1361 = intcycle | nmicycle;
  /* src/T80/T80.vhd:1010:25  */
  assign n1363 = n1361 ? 1'b0 : halt_ff;
  /* src/T80/T80.vhd:1013:35  */
  assign n1365 = mcycle == 3'b001;
  /* src/T80/T80.vhd:1013:54  */
  assign n1367 = tstate == 3'b010;
  /* src/T80/T80.vhd:1013:43  */
  assign n1368 = n1367 & n1365;
  /* src/T80/T80.vhd:1013:58  */
  assign n1369 = wait_n & n1368;
  /* src/T80/T80.vhd:1013:25  */
  assign n1371 = n1369 ? 1'b1 : n1574;
  /* src/T80/T80.vhd:1016:43  */
  assign n1372 = busack & busreq_s;
  /* src/T80/T80.vhd:1019:43  */
  assign n1374 = tstate == 3'b010;
  /* src/T80/T80.vhd:1019:58  */
  assign n1375 = ~wait_n;
  /* src/T80/T80.vhd:1019:47  */
  assign n1376 = n1375 & n1374;
  /* src/T80/T80.vhd:1020:33  */
  assign n1378 = n1473 ? 1'b1 : n1363;
  /* src/T80/T80.vhd:1031:63  */
  assign n1380 = ir == 8'b00110110;
  /* src/T80/T80.vhd:1031:76  */
  assign n1382 = 1'b1 & n1380;
  /* src/T80/T80.vhd:1031:57  */
  assign n1384 = n1382 ? 3'b010 : mcycle;
  /* src/T80/T80.vhd:1034:63  */
  assign n1386 = mcycle == 3'b111;
  /* src/T80/T80.vhd:1034:72  */
  assign n1390 = n1386 | 1'b0;
  /* src/T80/T80.vhd:1036:105  */
  assign n1392 = pre_xy_f_m + 3'b001;
  /* src/T80/T80.vhd:1037:63  */
  assign n1393 = mcycle == mcycles;
  /* src/T80/T80.vhd:1037:74  */
  assign n1394 = n1393 | no_btr;
  /* src/T80/T80.vhd:1039:65  */
  assign n1396 = mcycle == 3'b010;
  /* src/T80/T80.vhd:1039:73  */
  assign n1397 = i_djnz & n1396;
  /* src/T80/T80.vhd:1039:90  */
  assign n1398 = incdecz & n1397;
  /* src/T80/T80.vhd:1038:70  */
  assign n1399 = n1394 | n1398;
  /* src/T80/T80.vhd:1044:83  */
  assign n1401 = prefix == 2'b00;
  /* src/T80/T80.vhd:1044:72  */
  assign n1402 = n1401 & nmi_s;
  /* src/T80/T80.vhd:1047:79  */
  assign n1403 = int_s & inte_ff1;
  /* src/T80/T80.vhd:1047:107  */
  assign n1405 = prefix == 2'b00;
  /* src/T80/T80.vhd:1047:96  */
  assign n1406 = n1405 & n1403;
  /* src/T80/T80.vhd:1047:124  */
  assign n1407 = ~setei;
  /* src/T80/T80.vhd:1047:114  */
  assign n1408 = n1407 & n1406;
  /* src/T80/T80.vhd:1047:57  */
  assign n1410 = n1408 ? 1'b0 : n1356;
  /* src/T80/T80.vhd:1047:57  */
  assign n1412 = n1408 ? 1'b0 : n1358;
  /* src/T80/T80.vhd:1047:57  */
  assign n1415 = n1408 ? 1'b1 : 1'b0;
  /* src/T80/T80.vhd:1044:57  */
  assign n1417 = n1402 ? 1'b0 : n1410;
  /* src/T80/T80.vhd:1044:57  */
  assign n1418 = n1402 ? n1358 : n1412;
  /* src/T80/T80.vhd:1044:57  */
  assign n1420 = n1402 ? 1'b0 : n1415;
  /* src/T80/T80.vhd:1044:57  */
  assign n1424 = n1402 ? 1'b1 : 1'b0;
  /* src/T80/T80.vhd:1053:101  */
  assign n1427 = mcycle + 3'b001;
  /* src/T80/T80.vhd:1037:49  */
  assign n1429 = n1399 ? 1'b0 : n1371;
  /* src/T80/T80.vhd:1037:49  */
  assign n1431 = n1399 ? 3'b001 : n1427;
  /* src/T80/T80.vhd:1037:49  */
  assign n1432 = n1399 ? n1417 : n1356;
  /* src/T80/T80.vhd:1037:49  */
  assign n1433 = n1399 ? n1418 : n1358;
  /* src/T80/T80.vhd:1037:49  */
  assign n1434 = n1399 ? n1420 : intcycle;
  /* src/T80/T80.vhd:1037:49  */
  assign n1435 = n1399 ? n1424 : nmicycle;
  /* src/T80/T80.vhd:1034:49  */
  assign n1436 = n1390 ? n1371 : n1429;
  /* src/T80/T80.vhd:1034:49  */
  assign n1437 = n1390 ? n1392 : n1431;
  /* src/T80/T80.vhd:1034:49  */
  assign n1438 = n1390 ? n1356 : n1432;
  /* src/T80/T80.vhd:1034:49  */
  assign n1439 = n1390 ? n1358 : n1433;
  /* src/T80/T80.vhd:1034:49  */
  assign n1440 = n1390 ? intcycle : n1434;
  /* src/T80/T80.vhd:1034:49  */
  assign n1441 = n1390 ? nmicycle : n1435;
  /* src/T80/T80.vhd:1028:49  */
  assign n1442 = nextis_xy_fetch ? n1371 : n1436;
  /* src/T80/T80.vhd:1028:49  */
  assign n1444 = nextis_xy_fetch ? 3'b110 : n1437;
  /* src/T80/T80.vhd:1028:49  */
  assign n1445 = nextis_xy_fetch ? n1356 : n1438;
  /* src/T80/T80.vhd:1028:49  */
  assign n1446 = nextis_xy_fetch ? n1358 : n1439;
  /* src/T80/T80.vhd:1028:49  */
  assign n1447 = nextis_xy_fetch ? n1384 : pre_xy_f_m;
  /* src/T80/T80.vhd:1028:49  */
  assign n1448 = nextis_xy_fetch ? intcycle : n1440;
  /* src/T80/T80.vhd:1028:49  */
  assign n1449 = nextis_xy_fetch ? nmicycle : n1441;
  /* src/T80/T80.vhd:1024:41  */
  assign n1450 = busreq_s ? n1371 : n1442;
  /* src/T80/T80.vhd:1024:41  */
  assign n1452 = busreq_s ? tstate : 3'b001;
  /* src/T80/T80.vhd:1024:41  */
  assign n1453 = busreq_s ? mcycle : n1444;
  /* src/T80/T80.vhd:1024:41  */
  assign n1454 = busreq_s ? n1356 : n1445;
  /* src/T80/T80.vhd:1024:41  */
  assign n1455 = busreq_s ? n1358 : n1446;
  /* src/T80/T80.vhd:1024:41  */
  assign n1458 = busreq_s ? 1'b1 : 1'b0;
  /* src/T80/T80.vhd:1024:41  */
  assign n1459 = busreq_s ? pre_xy_f_m : n1447;
  /* src/T80/T80.vhd:1024:41  */
  assign n1460 = busreq_s ? intcycle : n1448;
  /* src/T80/T80.vhd:1024:41  */
  assign n1461 = busreq_s ? nmicycle : n1449;
  /* src/T80/T80.vhd:1057:78  */
  assign n1462 = ~auto_wait_t2;
  /* src/T80/T80.vhd:1057:60  */
  assign n1463 = n1462 & auto_wait;
  /* src/T80/T80.vhd:1057:60  */
  assign n1464 = ~n1463;
  /* src/T80/T80.vhd:1059:66  */
  assign n1466 = tstate + 3'b001;
  /* src/T80/T80.vhd:1057:41  */
  assign n1467 = n1464 ? n1466 : tstate;
  /* src/T80/T80.vhd:1020:33  */
  assign n1468 = t_res ? n1450 : n1371;
  /* src/T80/T80.vhd:1020:33  */
  assign n1469 = t_res ? n1452 : n1467;
  /* src/T80/T80.vhd:1020:33  */
  assign n1470 = t_res ? n1453 : mcycle;
  /* src/T80/T80.vhd:1020:33  */
  assign n1471 = t_res ? n1454 : n1356;
  /* src/T80/T80.vhd:1020:33  */
  assign n1472 = t_res ? n1455 : n1358;
  /* src/T80/T80.vhd:1020:33  */
  assign n1473 = halt & t_res;
  /* src/T80/T80.vhd:1020:33  */
  assign n1475 = t_res ? n1458 : 1'b0;
  /* src/T80/T80.vhd:1020:33  */
  assign n1476 = t_res ? n1459 : pre_xy_f_m;
  /* src/T80/T80.vhd:1020:33  */
  assign n1477 = t_res ? n1460 : intcycle;
  /* src/T80/T80.vhd:1020:33  */
  assign n1478 = t_res ? n1461 : nmicycle;
  /* src/T80/T80.vhd:1019:33  */
  assign n1479 = n1376 ? n1371 : n1468;
  /* src/T80/T80.vhd:1019:33  */
  assign n1480 = n1376 ? tstate : n1469;
  /* src/T80/T80.vhd:1019:33  */
  assign n1481 = n1376 ? mcycle : n1470;
  /* src/T80/T80.vhd:1019:33  */
  assign n1482 = n1376 ? n1356 : n1471;
  /* src/T80/T80.vhd:1019:33  */
  assign n1483 = n1376 ? n1358 : n1472;
  /* src/T80/T80.vhd:1019:33  */
  assign n1484 = n1376 ? n1363 : n1378;
  /* src/T80/T80.vhd:1019:33  */
  assign n1486 = n1376 ? 1'b0 : n1475;
  /* src/T80/T80.vhd:1019:33  */
  assign n1488 = n1376 ? pre_xy_f_m : n1476;
  /* src/T80/T80.vhd:1019:33  */
  assign n1489 = n1376 ? intcycle : n1477;
  /* src/T80/T80.vhd:1019:33  */
  assign n1490 = n1376 ? nmicycle : n1478;
  /* src/T80/T80.vhd:1016:25  */
  assign n1491 = n1372 ? n1371 : n1479;
  /* src/T80/T80.vhd:1016:25  */
  assign n1492 = n1372 ? tstate : n1480;
  /* src/T80/T80.vhd:1016:25  */
  assign n1493 = n1372 ? mcycle : n1481;
  /* src/T80/T80.vhd:1016:25  */
  assign n1494 = n1372 ? n1356 : n1482;
  /* src/T80/T80.vhd:1016:25  */
  assign n1495 = n1372 ? n1358 : n1483;
  /* src/T80/T80.vhd:1016:25  */
  assign n1496 = n1372 ? n1363 : n1484;
  /* src/T80/T80.vhd:1016:25  */
  assign n1497 = n1372 ? busack : n1486;
  /* src/T80/T80.vhd:1016:25  */
  assign n1498 = n1372 ? pre_xy_f_m : n1488;
  /* src/T80/T80.vhd:1016:25  */
  assign n1499 = n1372 ? intcycle : n1489;
  /* src/T80/T80.vhd:1016:25  */
  assign n1500 = n1372 ? nmicycle : n1490;
  /* src/T80/T80.vhd:1063:35  */
  assign n1502 = tstate == 3'b000;
  /* src/T80/T80.vhd:1063:25  */
  assign n1504 = n1502 ? 1'b0 : n1491;
  /* src/T80/T80.vhd:1073:35  */
  assign n1560 = intcycle | nmicycle;
  /* src/T80/T80.vhd:1074:35  */
  assign n1562 = mcycle == 3'b001;
  /* src/T80/T80.vhd:1074:25  */
  assign n1565 = n1562 ? 1'b1 : 1'b0;
  /* src/T80/T80.vhd:1073:17  */
  assign n1567 = n1560 ? n1565 : 1'b0;
  /* src/T80/T80.vhd:144:16  */
  assign n1570 = {regs_n1153, regs_n1154};
  /* src/T80/T80.vhd:145:16  */
  assign n1571 = {regs_n1155, regs_n1156};
  /* src/T80/T80.vhd:146:16  */
  assign n1572 = {regs_n1157, regs_n1158};
  /* src/T80/T80.vhd:988:17  */
  assign n1573 = cen ? n1504 : n1574;
  /* src/T80/T80.vhd:988:17  */
  always @(posedge clk_n or posedge n1321)
    if (n1321)
      n1574 <= 1'b1;
    else
      n1574 <= n1573;
  /* src/T80/T80.vhd:919:17  */
  assign n1575 = cen ? n1280 : n1576;
  /* src/T80/T80.vhd:919:17  */
  always @(posedge clk_n or posedge n1267)
    if (n1267)
      n1576 <= 1'b1;
    else
      n1576 <= n1575;
  /* src/T80/T80.vhd:388:17  */
  assign n1577 = clken ? n618 : n1578;
  /* src/T80/T80.vhd:388:17  */
  always @(posedge clk_n or posedge n340)
    if (n340)
      n1578 <= 16'b0000000000000000;
    else
      n1578 <= n1577;
  /* src/T80/T80.vhd:388:17  */
  assign n1579 = clken ? n792 : n1580;
  /* src/T80/T80.vhd:388:17  */
  always @(posedge clk_n or posedge n340)
    if (n340)
      n1580 <= 8'b00000000;
    else
      n1580 <= n1579;
  /* src/T80/T80.vhd:388:17  */
  assign n1581 = clken ? n793 : acc;
  /* src/T80/T80.vhd:388:17  */
  always @(posedge clk_n or posedge n340)
    if (n340)
      n1582 <= 8'b11111111;
    else
      n1582 <= n1581;
  /* src/T80/T80.vhd:388:17  */
  assign n1583 = clken ? n795 : f;
  /* src/T80/T80.vhd:388:17  */
  always @(posedge clk_n or posedge n340)
    if (n340)
      n1584 <= 8'b11111111;
    else
      n1584 <= n1583;
  /* src/T80/T80.vhd:388:17  */
  assign n1585 = clken ? n621 : ap;
  /* src/T80/T80.vhd:388:17  */
  always @(posedge clk_n or posedge n340)
    if (n340)
      n1586 <= 8'b11111111;
    else
      n1586 <= n1585;
  /* src/T80/T80.vhd:388:17  */
  assign n1587 = clken ? n622 : fp;
  /* src/T80/T80.vhd:388:17  */
  always @(posedge clk_n or posedge n340)
    if (n340)
      n1588 <= 8'b11111111;
    else
      n1588 <= n1587;
  /* src/T80/T80.vhd:388:17  */
  assign n1589 = n804 ? n658 : i;
  /* src/T80/T80.vhd:388:17  */
  always @(posedge clk_n or posedge n340)
    if (n340)
      n1590 <= 8'b00000000;
    else
      n1590 <= n1589;
  /* src/T80/T80.vhd:388:17  */
  assign n1591 = clken ? n677 : r;
  /* src/T80/T80.vhd:388:17  */
  always @(posedge clk_n or posedge n340)
    if (n340)
      n1592 <= 8'b00000000;
    else
      n1592 <= n1591;
  /* src/T80/T80.vhd:388:17  */
  assign n1593 = clken ? n797 : sp;
  /* src/T80/T80.vhd:388:17  */
  always @(posedge clk_n or posedge n340)
    if (n340)
      n1594 <= 16'b1111111111111111;
    else
      n1594 <= n1593;
  /* src/T80/T80.vhd:388:17  */
  assign n1595 = clken ? n626 : pc;
  /* src/T80/T80.vhd:388:17  */
  always @(posedge clk_n or posedge n340)
    if (n340)
      n1596 <= 16'b0000000000000000;
    else
      n1596 <= n1595;
  /* src/T80/T80.vhd:718:17  */
  assign n1597 = clken ? n915 : regaddra_r;
  /* src/T80/T80.vhd:718:17  */
  always @(posedge clk_n)
    n1598 <= n1597;
  /* src/T80/T80.vhd:718:17  */
  assign n1599 = clken ? n929 : regaddrb_r;
  /* src/T80/T80.vhd:718:17  */
  always @(posedge clk_n)
    n1600 <= n1599;
  /* src/T80/T80.vhd:718:17  */
  assign n1601 = clken ? n946 : regaddrc;
  /* src/T80/T80.vhd:718:17  */
  always @(posedge clk_n)
    n1602 <= n1601;
  /* src/T80/T80.vhd:388:17  */
  assign n1603 = clken ? n627 : alternate;
  /* src/T80/T80.vhd:388:17  */
  always @(posedge clk_n or posedge n340)
    if (n340)
      n1604 <= 1'b0;
    else
      n1604 <= n1603;
  /* src/T80/T80.vhd:388:17  */
  assign n1605 = clken ? n679 : tmpaddr;
  /* src/T80/T80.vhd:388:17  */
  always @(posedge clk_n or posedge n340)
    if (n340)
      n1606 <= 16'b0000000000000000;
    else
      n1606 <= n1605;
  /* src/T80/T80.vhd:388:17  */
  assign n1607 = clken ? n629 : ir;
  /* src/T80/T80.vhd:388:17  */
  always @(posedge clk_n or posedge n340)
    if (n340)
      n1608 <= 8'b00000000;
    else
      n1608 <= n1607;
  /* src/T80/T80.vhd:388:17  */
  assign n1609 = clken ? n630 : iset;
  /* src/T80/T80.vhd:388:17  */
  always @(posedge clk_n or posedge n340)
    if (n340)
      n1610 <= 2'b00;
    else
      n1610 <= n1609;
  /* src/T80/T80.vhd:718:17  */
  assign n1611 = clken ? regbusa : regbusa_r;
  /* src/T80/T80.vhd:718:17  */
  always @(posedge clk_n)
    n1612 <= n1611;
  /* src/T80/T80.vhd:988:17  */
  assign n1613 = cen ? n1492 : tstate;
  /* src/T80/T80.vhd:988:17  */
  always @(posedge clk_n or posedge n1321)
    if (n1321)
      n1614 <= 3'b000;
    else
      n1614 <= n1613;
  /* src/T80/T80.vhd:988:17  */
  assign n1615 = cen ? n1493 : mcycle;
  /* src/T80/T80.vhd:988:17  */
  always @(posedge clk_n or posedge n1321)
    if (n1321)
      n1616 <= 3'b001;
    else
      n1616 <= n1615;
  /* src/T80/T80.vhd:988:17  */
  assign n1617 = cen ? n1494 : inte_ff1;
  /* src/T80/T80.vhd:988:17  */
  always @(posedge clk_n or posedge n1321)
    if (n1321)
      n1618 <= 1'b0;
    else
      n1618 <= n1617;
  /* src/T80/T80.vhd:988:17  */
  assign n1619 = cen ? n1495 : inte_ff2;
  /* src/T80/T80.vhd:988:17  */
  always @(posedge clk_n or posedge n1321)
    if (n1321)
      n1620 <= 1'b0;
    else
      n1620 <= n1619;
  /* src/T80/T80.vhd:988:17  */
  assign n1621 = cen ? n1496 : halt_ff;
  /* src/T80/T80.vhd:988:17  */
  always @(posedge clk_n or posedge n1321)
    if (n1321)
      n1622 <= 1'b0;
    else
      n1622 <= n1621;
  /* src/T80/T80.vhd:953:17  */
  assign n1623 = cen ? n1294 : busreq_s;
  /* src/T80/T80.vhd:953:17  */
  always @(posedge clk_n or posedge n1292)
    if (n1292)
      n1624 <= 1'b0;
    else
      n1624 <= n1623;
  /* src/T80/T80.vhd:988:17  */
  assign n1625 = cen ? n1497 : busack;
  /* src/T80/T80.vhd:988:17  */
  always @(posedge clk_n or posedge n1321)
    if (n1321)
      n1626 <= 1'b0;
    else
      n1626 <= n1625;
  /* src/T80/T80.vhd:953:17  */
  assign n1627 = cen ? n1301 : nmi_s;
  /* src/T80/T80.vhd:953:17  */
  always @(posedge clk_n or posedge n1292)
    if (n1292)
      n1628 <= 1'b0;
    else
      n1628 <= n1627;
  /* src/T80/T80.vhd:953:17  */
  assign n1629 = cen ? n1295 : int_s;
  /* src/T80/T80.vhd:953:17  */
  always @(posedge clk_n or posedge n1292)
    if (n1292)
      n1630 <= 1'b0;
    else
      n1630 <= n1629;
  /* src/T80/T80.vhd:388:17  */
  assign n1631 = n812 ? imode : istatus;
  /* src/T80/T80.vhd:388:17  */
  always @(posedge clk_n or posedge n340)
    if (n340)
      n1632 <= 2'b00;
    else
      n1632 <= n1631;
  /* src/T80/T80.vhd:388:17  */
  assign n1633 = n813 ? n416 : xy_state;
  /* src/T80/T80.vhd:388:17  */
  always @(posedge clk_n or posedge n340)
    if (n340)
      n1634 <= 2'b00;
    else
      n1634 <= n1633;
  /* src/T80/T80.vhd:988:17  */
  assign n1635 = cen ? n1498 : pre_xy_f_m;
  /* src/T80/T80.vhd:988:17  */
  always @(posedge clk_n or posedge n1321)
    if (n1321)
      n1636 <= 3'b000;
    else
      n1636 <= n1635;
  /* src/T80/T80.vhd:388:17  */
  assign n1637 = clken ? n632 : xy_ind;
  /* src/T80/T80.vhd:388:17  */
  always @(posedge clk_n or posedge n340)
    if (n340)
      n1638 <= 1'b0;
    else
      n1638 <= n1637;
  /* src/T80/T80.vhd:988:17  */
  assign n1639 = cen ? n1343 : no_btr;
  /* src/T80/T80.vhd:988:17  */
  always @(posedge clk_n or posedge n1321)
    if (n1321)
      n1640 <= 1'b0;
    else
      n1640 <= n1639;
  /* src/T80/T80.vhd:388:17  */
  assign n1641 = clken ? n633 : btr_r;
  /* src/T80/T80.vhd:388:17  */
  always @(posedge clk_n or posedge n340)
    if (n340)
      n1642 <= 1'b0;
    else
      n1642 <= n1641;
  /* src/T80/T80.vhd:988:17  */
  assign n1643 = cen ? auto_wait : auto_wait_t1;
  /* src/T80/T80.vhd:988:17  */
  always @(posedge clk_n or posedge n1321)
    if (n1321)
      n1644 <= 1'b0;
    else
      n1644 <= n1643;
  /* src/T80/T80.vhd:988:17  */
  assign n1645 = cen ? auto_wait_t1 : auto_wait_t2;
  /* src/T80/T80.vhd:988:17  */
  always @(posedge clk_n or posedge n1321)
    if (n1321)
      n1646 <= 1'b0;
    else
      n1646 <= n1645;
  /* src/T80/T80.vhd:718:17  */
  assign n1647 = clken ? n969 : incdecz;
  /* src/T80/T80.vhd:718:17  */
  always @(posedge clk_n)
    n1648 <= n1647;
  /* src/T80/T80.vhd:855:17  */
  assign n1649 = clken ? n1257 : busb;
  /* src/T80/T80.vhd:855:17  */
  always @(posedge clk_n)
    n1650 <= n1649;
  /* src/T80/T80.vhd:855:17  */
  assign n1651 = clken ? n1259 : busa;
  /* src/T80/T80.vhd:855:17  */
  always @(posedge clk_n)
    n1652 <= n1651;
  /* src/T80/T80.vhd:388:17  */
  assign n1653 = clken ? n748 : read_to_reg_r;
  /* src/T80/T80.vhd:388:17  */
  always @(posedge clk_n or posedge n340)
    if (n340)
      n1654 <= 5'b00000;
    else
      n1654 <= n1653;
  /* src/T80/T80.vhd:388:17  */
  assign n1655 = clken ? arith16 : arith16_r;
  /* src/T80/T80.vhd:388:17  */
  always @(posedge clk_n or posedge n340)
    if (n340)
      n1656 <= 1'b0;
    else
      n1656 <= n1655;
  /* src/T80/T80.vhd:388:17  */
  assign n1657 = clken ? n357 : z16_r;
  /* src/T80/T80.vhd:388:17  */
  always @(posedge clk_n or posedge n340)
    if (n340)
      n1658 <= 1'b0;
    else
      n1658 <= n1657;
  /* src/T80/T80.vhd:388:17  */
  assign n1659 = clken ? n635 : alu_op_r;
  /* src/T80/T80.vhd:388:17  */
  always @(posedge clk_n or posedge n340)
    if (n340)
      n1660 <= 4'b0000;
    else
      n1660 <= n1659;
  /* src/T80/T80.vhd:388:17  */
  assign n1661 = clken ? n638 : save_alu_r;
  /* src/T80/T80.vhd:388:17  */
  always @(posedge clk_n or posedge n340)
    if (n340)
      n1662 <= 1'b0;
    else
      n1662 <= n1661;
  /* src/T80/T80.vhd:388:17  */
  assign n1663 = clken ? preservec : preservec_r;
  /* src/T80/T80.vhd:388:17  */
  always @(posedge clk_n or posedge n340)
    if (n340)
      n1664 <= 1'b0;
    else
      n1664 <= n1663;
  /* src/T80/T80.vhd:388:17  */
  assign n1665 = clken ? mcycles_d : mcycles;
  /* src/T80/T80.vhd:388:17  */
  always @(posedge clk_n or posedge n340)
    if (n340)
      n1666 <= 3'b000;
    else
      n1666 <= n1665;
  /* src/T80/T80.vhd:988:17  */
  assign n1667 = cen ? n1499 : intcycle;
  /* src/T80/T80.vhd:988:17  */
  always @(posedge clk_n or posedge n1321)
    if (n1321)
      n1668 <= 1'b0;
    else
      n1668 <= n1667;
  /* src/T80/T80.vhd:988:17  */
  assign n1669 = cen ? n1500 : nmicycle;
  /* src/T80/T80.vhd:988:17  */
  always @(posedge clk_n or posedge n1321)
    if (n1321)
      n1670 <= 1'b0;
    else
      n1670 <= n1669;
  /* src/T80/T80.vhd:953:17  */
  assign n1671 = cen ? nmi_n : n1289_oldnmi_n;
  /* src/T80/T80.vhd:953:17  */
  always @(posedge clk_n or posedge n1292)
    if (n1292)
      n1672 <= 1'b0;
    else
      n1672 <= n1671;
endmodule

module T80sed
  (input  RESET_n,
   input  CLK_n,
   input  CLKEN,
   input  WAIT_n,
   input  INT_n,
   input  NMI_n,
   input  BUSRQ_n,
   output M1_n,
   output MREQ_n,
   output IORQ_n,
   output RD_n,
   output WR_n,
   output RFSH_n,
   output HALT_n,
   output BUSAK_n,
   output [15:0] A,
   input  [7:0] DI,
   output [7:0] DO);
  wire intcycle_n;
  wire noread;
  wire write;
  wire iorq;
  wire [7:0] di_reg;
  wire [2:0] mcycle;
  wire [2:0] tstate;
  wire u0_n10;
  wire u0_n11;
  wire u0_n12;
  wire u0_n13;
  wire u0_n14;
  wire u0_n15;
  wire u0_n16;
  wire [15:0] u0_n17;
  wire [7:0] u0_n18;
  wire [2:0] u0_n19;
  wire [2:0] u0_n20;
  wire u0_n21;
  wire \u0.inte ;
  wire \u0.stop ;
  wire n52;
  wire n55;
  wire n57;
  wire n59;
  wire n60;
  wire n61;
  wire n62;
  wire n63;
  wire n64;
  wire n66;
  wire n68;
  wire n70;
  wire n72;
  wire n74;
  wire n76;
  wire n78;
  wire n79;
  wire n80;
  wire n81;
  wire n82;
  wire n83;
  wire n84;
  wire n86;
  wire n88;
  wire n91;
  wire n93;
  wire n95;
  wire n96;
  wire n97;
  wire n98;
  wire n99;
  wire n100;
  wire n103;
  wire n104;
  wire n106;
  wire n108;
  wire n111;
  wire n114;
  wire n115;
  wire n121;
  wire n138;
  reg n139;
  wire n140;
  reg n141;
  wire n142;
  reg n143;
  wire n144;
  reg n145;
  wire [7:0] n146;
  reg [7:0] n147;
  wire [7:0] n7147;
  assign M1_n = u0_n10; //(module output)
  assign MREQ_n = n139; //(module output)
  assign IORQ_n = n141; //(module output)
  assign RD_n = n143; //(module output)
  assign WR_n = n145; //(module output)
  assign RFSH_n = u0_n14; //(module output)
  assign HALT_n = u0_n15; //(module output)
  assign BUSAK_n = u0_n16; //(module output)
  assign A = u0_n17; //(module output)
  assign DO = u0_n18; //(module output)
  /* src/T80/T80sed.vhd:100:16  */
  assign intcycle_n = u0_n21; // (signal)
  /* src/T80/T80sed.vhd:101:16  */
  assign noread = u0_n12; // (signal)
  /* src/T80/T80sed.vhd:102:16  */
  assign write = u0_n13; // (signal)
  /* src/T80/T80sed.vhd:103:16  */
  assign iorq = u0_n11; // (signal)
  /* src/T80/T80sed.vhd:104:16  */
  assign di_reg = n147; // (signal)
  /* src/T80/T80sed.vhd:105:16  */
  assign mcycle = u0_n19; // (signal)
  /* src/T80/T80sed.vhd:106:16  */
  assign tstate = u0_n20; // (signal)
  /* src/T80/T80sed.vhd:132:39  */
  assign u0_n18 = n7147; // (signal)
  /* src/T80/T80sed.vhd:110:9  */
  t80_Brtl_0_1_0_1_2_3_4_5_6_7 u0 (
    .reset_n(RESET_n),
    .clk_n(CLK_n),
    .cen(CLKEN),
    .wait_n(WAIT_n),
    .int_n(INT_n),
    .nmi_n(NMI_n),
    .busrq_n(BUSRQ_n),
    .dinst(DI),
    .di(di_reg),
    .m1_n(u0_n10),
    .iorq(u0_n11),
    .noread(u0_n12),
    .write(u0_n13),
    .rfsh_n(u0_n14),
    .halt_n(u0_n15),
    .busak_n(u0_n16),
    .a(u0_n17),
    .\do (n7147),
    .mc(u0_n19),
    .ts(u0_n20),
    .intcycle_n(u0_n21),
    .inte(),
    .stop());
  /* src/T80/T80sed.vhd:139:28  */
  assign n52 = ~RESET_n;
  /* src/T80/T80sed.vhd:151:43  */
  assign n55 = mcycle == 3'b001;
  /* src/T80/T80sed.vhd:152:51  */
  assign n57 = tstate == 3'b001;
  /* src/T80/T80sed.vhd:152:70  */
  assign n59 = tstate == 3'b010;
  /* src/T80/T80sed.vhd:152:89  */
  assign n60 = ~WAIT_n;
  /* src/T80/T80sed.vhd:152:78  */
  assign n61 = n60 & n59;
  /* src/T80/T80sed.vhd:152:59  */
  assign n62 = n57 | n61;
  /* src/T80/T80sed.vhd:153:57  */
  assign n63 = ~intcycle_n;
  /* src/T80/T80sed.vhd:154:59  */
  assign n64 = ~intcycle_n;
  /* src/T80/T80sed.vhd:152:41  */
  assign n66 = n62 ? n64 : 1'b1;
  /* src/T80/T80sed.vhd:152:41  */
  assign n68 = n62 ? intcycle_n : 1'b1;
  /* src/T80/T80sed.vhd:152:41  */
  assign n70 = n62 ? n63 : 1'b1;
  /* src/T80/T80sed.vhd:157:51  */
  assign n72 = tstate == 3'b011;
  /* src/T80/T80sed.vhd:157:41  */
  assign n74 = n72 ? 1'b0 : n66;
  /* src/T80/T80sed.vhd:161:52  */
  assign n76 = tstate == 3'b001;
  /* src/T80/T80sed.vhd:161:70  */
  assign n78 = tstate == 3'b010;
  /* src/T80/T80sed.vhd:161:60  */
  assign n79 = n76 | n78;
  /* src/T80/T80sed.vhd:161:90  */
  assign n80 = ~noread;
  /* src/T80/T80sed.vhd:161:79  */
  assign n81 = n80 & n79;
  /* src/T80/T80sed.vhd:161:106  */
  assign n82 = ~write;
  /* src/T80/T80sed.vhd:161:96  */
  assign n83 = n82 & n81;
  /* src/T80/T80sed.vhd:163:59  */
  assign n84 = ~iorq;
  /* src/T80/T80sed.vhd:161:41  */
  assign n86 = n83 ? iorq : 1'b1;
  /* src/T80/T80sed.vhd:161:41  */
  assign n88 = n83 ? n84 : 1'b1;
  /* src/T80/T80sed.vhd:161:41  */
  assign n91 = n83 ? 1'b0 : 1'b1;
  /* src/T80/T80sed.vhd:166:61  */
  assign n93 = tstate == 3'b001;
  /* src/T80/T80sed.vhd:166:81  */
  assign n95 = tstate == 3'b010;
  /* src/T80/T80sed.vhd:166:70  */
  assign n96 = n93 | n95;
  /* src/T80/T80sed.vhd:166:91  */
  assign n97 = write & n96;
  /* src/T80/T80sed.vhd:168:67  */
  assign n98 = ~iorq;
  /* src/T80/T80sed.vhd:166:49  */
  assign n99 = n97 ? iorq : n86;
  /* src/T80/T80sed.vhd:166:49  */
  assign n100 = n97 ? n98 : n88;
  /* src/T80/T80sed.vhd:166:49  */
  assign n103 = n97 ? 1'b0 : 1'b1;
  /* src/T80/T80sed.vhd:151:33  */
  assign n104 = n55 ? n74 : n99;
  /* src/T80/T80sed.vhd:151:33  */
  assign n106 = n55 ? n68 : n100;
  /* src/T80/T80sed.vhd:151:33  */
  assign n108 = n55 ? n70 : n91;
  /* src/T80/T80sed.vhd:151:33  */
  assign n111 = n55 ? 1'b1 : n103;
  /* src/T80/T80sed.vhd:172:43  */
  assign n114 = tstate == 3'b010;
  /* src/T80/T80sed.vhd:172:51  */
  assign n115 = WAIT_n & n114;
  /* src/T80/T80sed.vhd:146:25  */
  assign n121 = n115 & CLKEN;
  /* src/T80/T80sed.vhd:145:17  */
  assign n138 = CLKEN ? n104 : n139;
  /* src/T80/T80sed.vhd:145:17  */
  always @(posedge CLK_n or posedge n52)
    if (n52)
      n139 <= 1'b1;
    else
      n139 <= n138;
  /* src/T80/T80sed.vhd:145:17  */
  assign n140 = CLKEN ? n106 : n141;
  /* src/T80/T80sed.vhd:145:17  */
  always @(posedge CLK_n or posedge n52)
    if (n52)
      n141 <= 1'b1;
    else
      n141 <= n140;
  /* src/T80/T80sed.vhd:145:17  */
  assign n142 = CLKEN ? n108 : n143;
  /* src/T80/T80sed.vhd:145:17  */
  always @(posedge CLK_n or posedge n52)
    if (n52)
      n143 <= 1'b1;
    else
      n143 <= n142;
  /* src/T80/T80sed.vhd:145:17  */
  assign n144 = CLKEN ? n111 : n145;
  /* src/T80/T80sed.vhd:145:17  */
  always @(posedge CLK_n or posedge n52)
    if (n52)
      n145 <= 1'b1;
    else
      n145 <= n144;
  /* src/T80/T80sed.vhd:145:17  */
  assign n146 = n121 ? DI : di_reg;
  /* src/T80/T80sed.vhd:145:17  */
  always @(posedge CLK_n or posedge n52)
    if (n52)
      n147 <= 8'b00000000;
    else
      n147 <= n146;
endmodule

