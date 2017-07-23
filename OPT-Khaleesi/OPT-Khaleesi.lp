\ENCODING=ISO-8859-1
\Problem name: ilog.cplex

Minimize
 obj: w698 + w697 + w695 + w694 + w689 + w687 + w683 + w682 + w679 + w678
      + w676 + w667 + w661 + w660 + w659 + w649 + w638 + w628 + w616 + w606
      + w598 + w597 + w595 + w594 + w589 + w587 + w583 + w582 + w579 + w578
      + w576 + w567 + w561 + w560 + w559 + w549 + w538 + w528 + w516 + w506
      + w498 + w497 + w495 + w494 + w489 + w487 + w483 + w482 + w479 + w478
      + w476 + w467 + w461 + w460 + w459 + w449 + w438 + w428 + w416 + w406
      + w398 + w397 + w395 + w394 + w389 + w387 + w383 + w382 + w379 + w378
      + w376 + w367 + w361 + w360 + w359 + w349 + w338 + w328 + w316 + w306
      + w298 + w297 + w295 + w294 + w289 + w287 + w283 + w282 + w279 + w278
      + w276 + w267 + w261 + w260 + w259 + w249 + w238 + w228 + w216 + w206
      + w198 + w197 + w195 + w194 + w189 + w187 + w183 + w182 + w179 + w178
      + w176 + w167 + w161 + w160 + w159 + w149 + w138 + w128 + w116 + w106
      + w098 + w097 + w095 + w094 + w089 + w087 + w083 + w082 + w079 + w078
      + w076 + w067 + w061 + w060 + w059 + w049 + w038 + w028 + w016 + w006
Subject To
 NF_0PlacementConstraint#0:      theta09 + theta08 + theta07 + theta06
                                 + theta05 + theta04 + theta03 + theta02
                                 + theta01 + theta00  = 1
 NF_1PlacementConstraint#1:      theta19 + theta18 + theta17 + theta16
                                 + theta15 + theta14 + theta13 + theta12
                                 + theta11 + theta10  = 1
 NF_2PlacementConstraint#2:      theta29 + theta28 + theta27 + theta26
                                 + theta25 + theta24 + theta23 + theta22
                                 + theta21 + theta20  = 1
 NF_3PlacementConstraint#3:      theta39 + theta38 + theta37 + theta36
                                 + theta35 + theta34 + theta33 + theta32
                                 + theta31 + theta30  = 1
 Source_of_E_0_Placement_Constraint#4: - theta00 + x00 <= 0
 Destination_of_E_0_Placement_Constraint#5: - theta10 + y00 <= 0
 Source_of_E_0_Placement_Constraint#6: - theta01 + x01 <= 0
 Destination_of_E_0_Placement_Constraint#7: - theta11 + y01 <= 0
 Source_of_E_0_Placement_Constraint#8: - theta02 + x02 <= 0
 Destination_of_E_0_Placement_Constraint#9: - theta12 + y02 <= 0
 Source_of_E_0_Placement_Constraint#10: - theta03 + x03 <= 0
 Destination_of_E_0_Placement_Constraint#11: - theta13 + y03 <= 0
 Source_of_E_0_Placement_Constraint#12: - theta04 + x04 <= 0
 Destination_of_E_0_Placement_Constraint#13: - theta14 + y04 <= 0
 Source_of_E_0_Placement_Constraint#14: - theta05 + x05 <= 0
 Destination_of_E_0_Placement_Constraint#15: - theta15 + y05 <= 0
 Source_of_E_0_Placement_Constraint#16: - theta06 + x06 <= 0
 Destination_of_E_0_Placement_Constraint#17: - theta16 + y06 <= 0
 Source_of_E_0_Placement_Constraint#18: - theta07 + x07 <= 0
 Destination_of_E_0_Placement_Constraint#19: - theta17 + y07 <= 0
 Source_of_E_0_Placement_Constraint#20: - theta08 + x08 <= 0
 Destination_of_E_0_Placement_Constraint#21: - theta18 + y08 <= 0
 Source_of_E_0_Placement_Constraint#22: - theta09 + x09 <= 0
 Destination_of_E_0_Placement_Constraint#23: - theta19 + y09 <= 0
 Source_of_E_1_Placement_Constraint#24: - theta10 + x10 <= 0
 Destination_of_E_1_Placement_Constraint#25: - theta20 + y10 <= 0
 Source_of_E_1_Placement_Constraint#26: - theta11 + x11 <= 0
 Destination_of_E_1_Placement_Constraint#27: - theta21 + y11 <= 0
 Source_of_E_1_Placement_Constraint#28: - theta12 + x12 <= 0
 Destination_of_E_1_Placement_Constraint#29: - theta22 + y12 <= 0
 Source_of_E_1_Placement_Constraint#30: - theta13 + x13 <= 0
 Destination_of_E_1_Placement_Constraint#31: - theta23 + y13 <= 0
 Source_of_E_1_Placement_Constraint#32: - theta14 + x14 <= 0
 Destination_of_E_1_Placement_Constraint#33: - theta24 + y14 <= 0
 Source_of_E_1_Placement_Constraint#34: - theta15 + x15 <= 0
 Destination_of_E_1_Placement_Constraint#35: - theta25 + y15 <= 0
 Source_of_E_1_Placement_Constraint#36: - theta16 + x16 <= 0
 Destination_of_E_1_Placement_Constraint#37: - theta26 + y16 <= 0
 Source_of_E_1_Placement_Constraint#38: - theta17 + x17 <= 0
 Destination_of_E_1_Placement_Constraint#39: - theta27 + y17 <= 0
 Source_of_E_1_Placement_Constraint#40: - theta18 + x18 <= 0
 Destination_of_E_1_Placement_Constraint#41: - theta28 + y18 <= 0
 Source_of_E_1_Placement_Constraint#42: - theta19 + x19 <= 0
 Destination_of_E_1_Placement_Constraint#43: - theta29 + y19 <= 0
 Source_of_E_2_Placement_Constraint#44: - theta20 + x20 <= 0
 Destination_of_E_2_Placement_Constraint#45: - theta30 + y20 <= 0
 Source_of_E_2_Placement_Constraint#46: - theta21 + x21 <= 0
 Destination_of_E_2_Placement_Constraint#47: - theta31 + y21 <= 0
 Source_of_E_2_Placement_Constraint#48: - theta22 + x22 <= 0
 Destination_of_E_2_Placement_Constraint#49: - theta32 + y22 <= 0
 Source_of_E_2_Placement_Constraint#50: - theta23 + x23 <= 0
 Destination_of_E_2_Placement_Constraint#51: - theta33 + y23 <= 0
 Source_of_E_2_Placement_Constraint#52: - theta24 + x24 <= 0
 Destination_of_E_2_Placement_Constraint#53: - theta34 + y24 <= 0
 Source_of_E_2_Placement_Constraint#54: - theta25 + x25 <= 0
 Destination_of_E_2_Placement_Constraint#55: - theta35 + y25 <= 0
 Source_of_E_2_Placement_Constraint#56: - theta26 + x26 <= 0
 Destination_of_E_2_Placement_Constraint#57: - theta36 + y26 <= 0
 Source_of_E_2_Placement_Constraint#58: - theta27 + x27 <= 0
 Destination_of_E_2_Placement_Constraint#59: - theta37 + y27 <= 0
 Source_of_E_2_Placement_Constraint#60: - theta28 + x28 <= 0
 Destination_of_E_2_Placement_Constraint#61: - theta38 + y28 <= 0
 Source_of_E_2_Placement_Constraint#62: - theta29 + x29 <= 0
 Destination_of_E_2_Placement_Constraint#63: - theta39 + y29 <= 0
 Source_of_E_3_Placement_Constraint#64: - theta10 + x30 <= 0
 Destination_of_E_3_Placement_Constraint#65: - theta00 + y30 <= 0
 Source_of_E_3_Placement_Constraint#66: - theta11 + x31 <= 0
 Destination_of_E_3_Placement_Constraint#67: - theta01 + y31 <= 0
 Source_of_E_3_Placement_Constraint#68: - theta12 + x32 <= 0
 Destination_of_E_3_Placement_Constraint#69: - theta02 + y32 <= 0
 Source_of_E_3_Placement_Constraint#70: - theta13 + x33 <= 0
 Destination_of_E_3_Placement_Constraint#71: - theta03 + y33 <= 0
 Source_of_E_3_Placement_Constraint#72: - theta14 + x34 <= 0
 Destination_of_E_3_Placement_Constraint#73: - theta04 + y34 <= 0
 Source_of_E_3_Placement_Constraint#74: - theta15 + x35 <= 0
 Destination_of_E_3_Placement_Constraint#75: - theta05 + y35 <= 0
 Source_of_E_3_Placement_Constraint#76: - theta16 + x36 <= 0
 Destination_of_E_3_Placement_Constraint#77: - theta06 + y36 <= 0
 Source_of_E_3_Placement_Constraint#78: - theta17 + x37 <= 0
 Destination_of_E_3_Placement_Constraint#79: - theta07 + y37 <= 0
 Source_of_E_3_Placement_Constraint#80: - theta18 + x38 <= 0
 Destination_of_E_3_Placement_Constraint#81: - theta08 + y38 <= 0
 Source_of_E_3_Placement_Constraint#82: - theta19 + x39 <= 0
 Destination_of_E_3_Placement_Constraint#83: - theta09 + y39 <= 0
 Source_of_E_4_Placement_Constraint#84: - theta00 + x40 <= 0
 Destination_of_E_4_Placement_Constraint#85: - theta20 + y40 <= 0
 Source_of_E_4_Placement_Constraint#86: - theta01 + x41 <= 0
 Destination_of_E_4_Placement_Constraint#87: - theta21 + y41 <= 0
 Source_of_E_4_Placement_Constraint#88: - theta02 + x42 <= 0
 Destination_of_E_4_Placement_Constraint#89: - theta22 + y42 <= 0
 Source_of_E_4_Placement_Constraint#90: - theta03 + x43 <= 0
 Destination_of_E_4_Placement_Constraint#91: - theta23 + y43 <= 0
 Source_of_E_4_Placement_Constraint#92: - theta04 + x44 <= 0
 Destination_of_E_4_Placement_Constraint#93: - theta24 + y44 <= 0
 Source_of_E_4_Placement_Constraint#94: - theta05 + x45 <= 0
 Destination_of_E_4_Placement_Constraint#95: - theta25 + y45 <= 0
 Source_of_E_4_Placement_Constraint#96: - theta06 + x46 <= 0
 Destination_of_E_4_Placement_Constraint#97: - theta26 + y46 <= 0
 Source_of_E_4_Placement_Constraint#98: - theta07 + x47 <= 0
 Destination_of_E_4_Placement_Constraint#99: - theta27 + y47 <= 0
 Source_of_E_4_Placement_Constraint#100: - theta08 + x48 <= 0
 Destination_of_E_4_Placement_Constraint#101: - theta28 + y48 <= 0
 Source_of_E_4_Placement_Constraint#102: - theta09 + x49 <= 0
 Destination_of_E_4_Placement_Constraint#103: - theta29 + y49 <= 0
 CapacityConstraints_Node0#104:  3 theta00 + 2 theta10 + 4 theta20 + 4 theta30
                                 <= 2
 CapacityConstraints_Node1#105:  3 theta01 + 2 theta11 + 4 theta21 + 4 theta31
                                 <= 3
 CapacityConstraints_Node2#106:  3 theta02 + 2 theta12 + 4 theta22 + 4 theta32
                                 <= 4
 CapacityConstraints_Node3#107:  3 theta03 + 2 theta13 + 4 theta23 + 4 theta33
                                 <= 5
 CapacityConstraints_Node4#108:  3 theta04 + 2 theta14 + 4 theta24 + 4 theta34
                                 <= 6
 CapacityConstraints_Node5#109:  3 theta05 + 2 theta15 + 4 theta25 + 4 theta35
                                 <= 7
 CapacityConstraints_Node6#110:  3 theta06 + 2 theta16 + 4 theta26 + 4 theta36
                                 <= 0
 CapacityConstraints_Node7#111:  3 theta07 + 2 theta17 + 4 theta27 + 4 theta37
                                 <= 0
 CapacityConstraints_Node8#112:  3 theta08 + 2 theta18 + 4 theta28 + 4 theta38
                                 <= 0
 CapacityConstraints_Node9#113:  3 theta09 + 2 theta19 + 4 theta29 + 4 theta39
                                 <= 0
 IloC114#114:                    x00 - y00 + x01 - y01 + x02 - y02 + x03 - y03
                                 + x04 - y04 + x05 - y05 + x06 - y06 + x07
                                 - y07 + x08 - y08 + x09 - y09  = 0
 LinkPlacementConstraint0#115:   - 0.5 x00 - 0.5 y00 - 0.5 x01 - 0.5 y01
                                 - 0.5 x02 - 0.5 y02 - 0.5 x03 - 0.5 y03
                                 - 0.5 x04 - 0.5 y04 - 0.5 x05 - 0.5 y05
                                 - 0.5 x06 - 0.5 y06 - 0.5 x07 - 0.5 y07
                                 - 0.5 x08 - 0.5 y08 - 0.5 x09 - 0.5 y09 + z0
                                 <= 0
 IloC116#116:                    x10 - y10 + x11 - y11 + x12 - y12 + x13 - y13
                                 + x14 - y14 + x15 - y15 + x16 - y16 + x17
                                 - y17 + x18 - y18 + x19 - y19  = 0
 LinkPlacementConstraint1#117:   - 0.5 x10 - 0.5 y10 - 0.5 x11 - 0.5 y11
                                 - 0.5 x12 - 0.5 y12 - 0.5 x13 - 0.5 y13
                                 - 0.5 x14 - 0.5 y14 - 0.5 x15 - 0.5 y15
                                 - 0.5 x16 - 0.5 y16 - 0.5 x17 - 0.5 y17
                                 - 0.5 x18 - 0.5 y18 - 0.5 x19 - 0.5 y19 + z1
                                 <= 0
 IloC118#118:                    x20 - y20 + x21 - y21 + x22 - y22 + x23 - y23
                                 + x24 - y24 + x25 - y25 + x26 - y26 + x27
                                 - y27 + x28 - y28 + x29 - y29  = 0
 LinkPlacementConstraint2#119:   - 0.5 x20 - 0.5 y20 - 0.5 x21 - 0.5 y21
                                 - 0.5 x22 - 0.5 y22 - 0.5 x23 - 0.5 y23
                                 - 0.5 x24 - 0.5 y24 - 0.5 x25 - 0.5 y25
                                 - 0.5 x26 - 0.5 y26 - 0.5 x27 - 0.5 y27
                                 - 0.5 x28 - 0.5 y28 - 0.5 x29 - 0.5 y29 + z2
                                 <= 0
 IloC120#120:                    x30 - y30 + x31 - y31 + x32 - y32 + x33 - y33
                                 + x34 - y34 + x35 - y35 + x36 - y36 + x37
                                 - y37 + x38 - y38 + x39 - y39  = 0
 LinkPlacementConstraint3#121:   - 0.5 x30 - 0.5 y30 - 0.5 x31 - 0.5 y31
                                 - 0.5 x32 - 0.5 y32 - 0.5 x33 - 0.5 y33
                                 - 0.5 x34 - 0.5 y34 - 0.5 x35 - 0.5 y35
                                 - 0.5 x36 - 0.5 y36 - 0.5 x37 - 0.5 y37
                                 - 0.5 x38 - 0.5 y38 - 0.5 x39 - 0.5 y39 + z3
                                 <= 0
 IloC122#122:                    x40 - y40 + x41 - y41 + x42 - y42 + x43 - y43
                                 + x44 - y44 + x45 - y45 + x46 - y46 + x47
                                 - y47 + x48 - y48 + x49 - y49  = 0
 LinkPlacementConstraint4#123:   - 0.5 x40 - 0.5 y40 - 0.5 x41 - 0.5 y41
                                 - 0.5 x42 - 0.5 y42 - 0.5 x43 - 0.5 y43
                                 - 0.5 x44 - 0.5 y44 - 0.5 x45 - 0.5 y45
                                 - 0.5 x46 - 0.5 y46 - 0.5 x47 - 0.5 y47
                                 - 0.5 x48 - 0.5 y48 - 0.5 x49 - 0.5 y49 + z4
                                 <= 0
 IloC124#124:                    z0 + z1 + z2 + z3 + z4  = 3
 BreakLoopsVG_03#125:            z0 + z3 <= 1
 BreakLoopsVG_30#126:            z0 + z3 <= 1
 FindFrstNF00#127:               - theta00 + o00 <= 0
 FindLastNF00#128:               - theta00 + t00 <= 0
 FindFrstNF01#129:               - theta01 + o01 <= 0
 FindLastNF01#130:               - theta01 + t01 <= 0
 FindFrstNF02#131:               - theta02 + o02 <= 0
 FindLastNF02#132:               - theta02 + t02 <= 0
 FindFrstNF03#133:               - theta03 + o03 <= 0
 FindLastNF03#134:               - theta03 + t03 <= 0
 FindFrstNF04#135:               - theta04 + o04 <= 0
 FindLastNF04#136:               - theta04 + t04 <= 0
 FindFrstNF05#137:               - theta05 + o05 <= 0
 FindLastNF05#138:               - theta05 + t05 <= 0
 FindFrstNF06#139:               - theta06 + o06 <= 0
 FindLastNF06#140:               - theta06 + t06 <= 0
 FindFrstNF07#141:               - theta07 + o07 <= 0
 FindLastNF07#142:               - theta07 + t07 <= 0
 FindFrstNF08#143:               - theta08 + o08 <= 0
 FindLastNF08#144:               - theta08 + t08 <= 0
 FindFrstNF09#145:               - theta09 + o09 <= 0
 FindLastNF09#146:               - theta09 + t09 <= 0
 IloC147#147:                    z3 + o00 + o01 + o02 + o03 + o04 + o05 + o06
                                 + o07 + o08 + o09  = 1
 IloC148#148:                    z0 + z4 + t00 + t01 + t02 + t03 + t04 + t05
                                 + t06 + t07 + t08 + t09  = 1
 FindFrstNF10#149:               - theta10 + o10 <= 0
 FindLastNF10#150:               - theta10 + t10 <= 0
 FindFrstNF11#151:               - theta11 + o11 <= 0
 FindLastNF11#152:               - theta11 + t11 <= 0
 FindFrstNF12#153:               - theta12 + o12 <= 0
 FindLastNF12#154:               - theta12 + t12 <= 0
 FindFrstNF13#155:               - theta13 + o13 <= 0
 FindLastNF13#156:               - theta13 + t13 <= 0
 FindFrstNF14#157:               - theta14 + o14 <= 0
 FindLastNF14#158:               - theta14 + t14 <= 0
 FindFrstNF15#159:               - theta15 + o15 <= 0
 FindLastNF15#160:               - theta15 + t15 <= 0
 FindFrstNF16#161:               - theta16 + o16 <= 0
 FindLastNF16#162:               - theta16 + t16 <= 0
 FindFrstNF17#163:               - theta17 + o17 <= 0
 FindLastNF17#164:               - theta17 + t17 <= 0
 FindFrstNF18#165:               - theta18 + o18 <= 0
 FindLastNF18#166:               - theta18 + t18 <= 0
 FindFrstNF19#167:               - theta19 + o19 <= 0
 FindLastNF19#168:               - theta19 + t19 <= 0
 IloC169#169:                    z0 + o10 + o11 + o12 + o13 + o14 + o15 + o16
                                 + o17 + o18 + o19  = 1
 IloC170#170:                    z1 + z3 + t10 + t11 + t12 + t13 + t14 + t15
                                 + t16 + t17 + t18 + t19  = 1
 FindFrstNF20#171:               - theta20 + o20 <= 0
 FindLastNF20#172:               - theta20 + t20 <= 0
 FindFrstNF21#173:               - theta21 + o21 <= 0
 FindLastNF21#174:               - theta21 + t21 <= 0
 FindFrstNF22#175:               - theta22 + o22 <= 0
 FindLastNF22#176:               - theta22 + t22 <= 0
 FindFrstNF23#177:               - theta23 + o23 <= 0
 FindLastNF23#178:               - theta23 + t23 <= 0
 FindFrstNF24#179:               - theta24 + o24 <= 0
 FindLastNF24#180:               - theta24 + t24 <= 0
 FindFrstNF25#181:               - theta25 + o25 <= 0
 FindLastNF25#182:               - theta25 + t25 <= 0
 FindFrstNF26#183:               - theta26 + o26 <= 0
 FindLastNF26#184:               - theta26 + t26 <= 0
 FindFrstNF27#185:               - theta27 + o27 <= 0
 FindLastNF27#186:               - theta27 + t27 <= 0
 FindFrstNF28#187:               - theta28 + o28 <= 0
 FindLastNF28#188:               - theta28 + t28 <= 0
 FindFrstNF29#189:               - theta29 + o29 <= 0
 FindLastNF29#190:               - theta29 + t29 <= 0
 IloC191#191:                    z1 + z4 + o20 + o21 + o22 + o23 + o24 + o25
                                 + o26 + o27 + o28 + o29  = 1
 IloC192#192:                    z2 + t20 + t21 + t22 + t23 + t24 + t25 + t26
                                 + t27 + t28 + t29  = 1
 FindFrstNF30#193:               - theta30 + o30 <= 0
 FindLastNF30#194:               - theta30 + t30 <= 0
 FindFrstNF31#195:               - theta31 + o31 <= 0
 FindLastNF31#196:               - theta31 + t31 <= 0
 FindFrstNF32#197:               - theta32 + o32 <= 0
 FindLastNF32#198:               - theta32 + t32 <= 0
 FindFrstNF33#199:               - theta33 + o33 <= 0
 FindLastNF33#200:               - theta33 + t33 <= 0
 FindFrstNF34#201:               - theta34 + o34 <= 0
 FindLastNF34#202:               - theta34 + t34 <= 0
 FindFrstNF35#203:               - theta35 + o35 <= 0
 FindLastNF35#204:               - theta35 + t35 <= 0
 FindFrstNF36#205:               - theta36 + o36 <= 0
 FindLastNF36#206:               - theta36 + t36 <= 0
 FindFrstNF37#207:               - theta37 + o37 <= 0
 FindLastNF37#208:               - theta37 + t37 <= 0
 FindFrstNF38#209:               - theta38 + o38 <= 0
 FindLastNF38#210:               - theta38 + t38 <= 0
 FindFrstNF39#211:               - theta39 + o39 <= 0
 FindLastNF39#212:               - theta39 + t39 <= 0
 IloC213#213:                    z2 + o30 + o31 + o32 + o33 + o34 + o35 + o36
                                 + o37 + o38 + o39  = 1
 IloC214#214:                    t30 + t31 + t32 + t33 + t34 + t35 + t36 + t37
                                 + t38 + t39  = 1
 IloC215#215:                    w060 + w006 <= 1
 Routing_Constraint_0#216:       - w060 + w006 - x00 + y00  = 0
 IloC217#217:                    w061 + w016 <= 1
 Routing_Constraint_0#218:       - w061 + w016 - x01 + y01  = 0
 IloC219#219:                    w082 + w028 <= 1
 Routing_Constraint_0#220:       - w082 + w028 - x02 + y02  = 0
 IloC221#221:                    w083 + w038 <= 1
 Routing_Constraint_0#222:       - w083 + w038 - x03 + y03  = 0
 IloC223#223:                    w094 + w049 <= 1
 Routing_Constraint_0#224:       - w094 + w049 - x04 + y04  = 0
 IloC225#225:                    w095 + w059 <= 1
 Routing_Constraint_0#226:       - w095 + w059 - x05 + y05  = 0
 IloC227#227:                    w060 + w006 <= 1
 IloC228#228:                    w061 + w016 <= 1
 IloC229#229:                    w076 + w067 <= 1
 Routing_Constraint_0#230:       - w076 + w067 + w061 + w060 - w016 - w006
                                 - x06 + y06  = 0
 IloC231#231:                    w076 + w067 <= 1
 IloC232#232:                    w087 + w078 <= 1
 IloC233#233:                    w097 + w079 <= 1
 Routing_Constraint_0#234:       - w097 - w087 + w079 + w078 + w076 - w067
                                 - x07 + y07  = 0
 IloC235#235:                    w082 + w028 <= 1
 IloC236#236:                    w083 + w038 <= 1
 IloC237#237:                    w087 + w078 <= 1
 IloC238#238:                    w098 + w089 <= 1
 Routing_Constraint_0#239:       - w098 + w089 + w087 + w083 + w082 - w078
                                 - w038 - w028 - x08 + y08  = 0
 IloC240#240:                    w094 + w049 <= 1
 IloC241#241:                    w095 + w059 <= 1
 IloC242#242:                    w097 + w079 <= 1
 IloC243#243:                    w098 + w089 <= 1
 Routing_Constraint_0#244:       w098 + w097 + w095 + w094 - w089 - w079 - w059
                                 - w049 - x09 + y09  = 0
 IloC245#245:                    w160 + w106 <= 1
 Routing_Constraint_1#246:       - w160 + w106 - x10 + y10  = 0
 IloC247#247:                    w161 + w116 <= 1
 Routing_Constraint_1#248:       - w161 + w116 - x11 + y11  = 0
 IloC249#249:                    w182 + w128 <= 1
 Routing_Constraint_1#250:       - w182 + w128 - x12 + y12  = 0
 IloC251#251:                    w183 + w138 <= 1
 Routing_Constraint_1#252:       - w183 + w138 - x13 + y13  = 0
 IloC253#253:                    w194 + w149 <= 1
 Routing_Constraint_1#254:       - w194 + w149 - x14 + y14  = 0
 IloC255#255:                    w195 + w159 <= 1
 Routing_Constraint_1#256:       - w195 + w159 - x15 + y15  = 0
 IloC257#257:                    w160 + w106 <= 1
 IloC258#258:                    w161 + w116 <= 1
 IloC259#259:                    w176 + w167 <= 1
 Routing_Constraint_1#260:       - w176 + w167 + w161 + w160 - w116 - w106
                                 - x16 + y16  = 0
 IloC261#261:                    w176 + w167 <= 1
 IloC262#262:                    w187 + w178 <= 1
 IloC263#263:                    w197 + w179 <= 1
 Routing_Constraint_1#264:       - w197 - w187 + w179 + w178 + w176 - w167
                                 - x17 + y17  = 0
 IloC265#265:                    w182 + w128 <= 1
 IloC266#266:                    w183 + w138 <= 1
 IloC267#267:                    w187 + w178 <= 1
 IloC268#268:                    w198 + w189 <= 1
 Routing_Constraint_1#269:       - w198 + w189 + w187 + w183 + w182 - w178
                                 - w138 - w128 - x18 + y18  = 0
 IloC270#270:                    w194 + w149 <= 1
 IloC271#271:                    w195 + w159 <= 1
 IloC272#272:                    w197 + w179 <= 1
 IloC273#273:                    w198 + w189 <= 1
 Routing_Constraint_1#274:       w198 + w197 + w195 + w194 - w189 - w179 - w159
                                 - w149 - x19 + y19  = 0
 IloC275#275:                    w260 + w206 <= 1
 Routing_Constraint_2#276:       - w260 + w206 - x20 + y20  = 0
 IloC277#277:                    w261 + w216 <= 1
 Routing_Constraint_2#278:       - w261 + w216 - x21 + y21  = 0
 IloC279#279:                    w282 + w228 <= 1
 Routing_Constraint_2#280:       - w282 + w228 - x22 + y22  = 0
 IloC281#281:                    w283 + w238 <= 1
 Routing_Constraint_2#282:       - w283 + w238 - x23 + y23  = 0
 IloC283#283:                    w294 + w249 <= 1
 Routing_Constraint_2#284:       - w294 + w249 - x24 + y24  = 0
 IloC285#285:                    w295 + w259 <= 1
 Routing_Constraint_2#286:       - w295 + w259 - x25 + y25  = 0
 IloC287#287:                    w260 + w206 <= 1
 IloC288#288:                    w261 + w216 <= 1
 IloC289#289:                    w276 + w267 <= 1
 Routing_Constraint_2#290:       - w276 + w267 + w261 + w260 - w216 - w206
                                 - x26 + y26  = 0
 IloC291#291:                    w276 + w267 <= 1
 IloC292#292:                    w287 + w278 <= 1
 IloC293#293:                    w297 + w279 <= 1
 Routing_Constraint_2#294:       - w297 - w287 + w279 + w278 + w276 - w267
                                 - x27 + y27  = 0
 IloC295#295:                    w282 + w228 <= 1
 IloC296#296:                    w283 + w238 <= 1
 IloC297#297:                    w287 + w278 <= 1
 IloC298#298:                    w298 + w289 <= 1
 Routing_Constraint_2#299:       - w298 + w289 + w287 + w283 + w282 - w278
                                 - w238 - w228 - x28 + y28  = 0
 IloC300#300:                    w294 + w249 <= 1
 IloC301#301:                    w295 + w259 <= 1
 IloC302#302:                    w297 + w279 <= 1
 IloC303#303:                    w298 + w289 <= 1
 Routing_Constraint_2#304:       w298 + w297 + w295 + w294 - w289 - w279 - w259
                                 - w249 - x29 + y29  = 0
 IloC305#305:                    w360 + w306 <= 1
 Routing_Constraint_3#306:       - w360 + w306 - x30 + y30  = 0
 IloC307#307:                    w361 + w316 <= 1
 Routing_Constraint_3#308:       - w361 + w316 - x31 + y31  = 0
 IloC309#309:                    w382 + w328 <= 1
 Routing_Constraint_3#310:       - w382 + w328 - x32 + y32  = 0
 IloC311#311:                    w383 + w338 <= 1
 Routing_Constraint_3#312:       - w383 + w338 - x33 + y33  = 0
 IloC313#313:                    w394 + w349 <= 1
 Routing_Constraint_3#314:       - w394 + w349 - x34 + y34  = 0
 IloC315#315:                    w395 + w359 <= 1
 Routing_Constraint_3#316:       - w395 + w359 - x35 + y35  = 0
 IloC317#317:                    w360 + w306 <= 1
 IloC318#318:                    w361 + w316 <= 1
 IloC319#319:                    w376 + w367 <= 1
 Routing_Constraint_3#320:       - w376 + w367 + w361 + w360 - w316 - w306
                                 - x36 + y36  = 0
 IloC321#321:                    w376 + w367 <= 1
 IloC322#322:                    w387 + w378 <= 1
 IloC323#323:                    w397 + w379 <= 1
 Routing_Constraint_3#324:       - w397 - w387 + w379 + w378 + w376 - w367
                                 - x37 + y37  = 0
 IloC325#325:                    w382 + w328 <= 1
 IloC326#326:                    w383 + w338 <= 1
 IloC327#327:                    w387 + w378 <= 1
 IloC328#328:                    w398 + w389 <= 1
 Routing_Constraint_3#329:       - w398 + w389 + w387 + w383 + w382 - w378
                                 - w338 - w328 - x38 + y38  = 0
 IloC330#330:                    w394 + w349 <= 1
 IloC331#331:                    w395 + w359 <= 1
 IloC332#332:                    w397 + w379 <= 1
 IloC333#333:                    w398 + w389 <= 1
 Routing_Constraint_3#334:       w398 + w397 + w395 + w394 - w389 - w379 - w359
                                 - w349 - x39 + y39  = 0
 IloC335#335:                    w460 + w406 <= 1
 Routing_Constraint_4#336:       - w460 + w406 - x40 + y40  = 0
 IloC337#337:                    w461 + w416 <= 1
 Routing_Constraint_4#338:       - w461 + w416 - x41 + y41  = 0
 IloC339#339:                    w482 + w428 <= 1
 Routing_Constraint_4#340:       - w482 + w428 - x42 + y42  = 0
 IloC341#341:                    w483 + w438 <= 1
 Routing_Constraint_4#342:       - w483 + w438 - x43 + y43  = 0
 IloC343#343:                    w494 + w449 <= 1
 Routing_Constraint_4#344:       - w494 + w449 - x44 + y44  = 0
 IloC345#345:                    w495 + w459 <= 1
 Routing_Constraint_4#346:       - w495 + w459 - x45 + y45  = 0
 IloC347#347:                    w460 + w406 <= 1
 IloC348#348:                    w461 + w416 <= 1
 IloC349#349:                    w476 + w467 <= 1
 Routing_Constraint_4#350:       - w476 + w467 + w461 + w460 - w416 - w406
                                 - x46 + y46  = 0
 IloC351#351:                    w476 + w467 <= 1
 IloC352#352:                    w487 + w478 <= 1
 IloC353#353:                    w497 + w479 <= 1
 Routing_Constraint_4#354:       - w497 - w487 + w479 + w478 + w476 - w467
                                 - x47 + y47  = 0
 IloC355#355:                    w482 + w428 <= 1
 IloC356#356:                    w483 + w438 <= 1
 IloC357#357:                    w487 + w478 <= 1
 IloC358#358:                    w498 + w489 <= 1
 Routing_Constraint_4#359:       - w498 + w489 + w487 + w483 + w482 - w478
                                 - w438 - w428 - x48 + y48  = 0
 IloC360#360:                    w494 + w449 <= 1
 IloC361#361:                    w495 + w459 <= 1
 IloC362#362:                    w497 + w479 <= 1
 IloC363#363:                    w498 + w489 <= 1
 Routing_Constraint_4#364:       w498 + w497 + w495 + w494 - w489 - w479 - w459
                                 - w449 - x49 + y49  = 0
 IloC365#365:                    w560 + w506 <= 1
 Routing_to_First_NF0#366:       - w560 + w506 + o00 + o10 + o20 + o30  = 0
 IloC367#367:                    w561 + w516 <= 1
 Routing_from_Ingress1#368:      - w561 + w516  = 1
 IloC369#369:                    w582 + w528 <= 1
 Routing_to_First_NF2#370:       - w582 + w528 + o02 + o12 + o22 + o32  = 0
 IloC371#371:                    w583 + w538 <= 1
 Routing_to_First_NF3#372:       - w583 + w538 + o03 + o13 + o23 + o33  = 0
 IloC373#373:                    w594 + w549 <= 1
 Routing_to_First_NF4#374:       - w594 + w549 + o04 + o14 + o24 + o34  = 0
 IloC375#375:                    w595 + w559 <= 1
 Routing_to_First_NF5#376:       - w595 + w559 + o05 + o15 + o25 + o35  = 0
 IloC377#377:                    w560 + w506 <= 1
 IloC378#378:                    w561 + w516 <= 1
 IloC379#379:                    w576 + w567 <= 1
 Routing_to_First_NF6#380:       - w576 + w567 + w561 + w560 - w516 - w506
                                 + o06 + o16 + o26 + o36  = 0
 IloC381#381:                    w576 + w567 <= 1
 IloC382#382:                    w587 + w578 <= 1
 IloC383#383:                    w597 + w579 <= 1
 Routing_to_First_NF7#384:       - w597 - w587 + w579 + w578 + w576 - w567
                                 + o07 + o17 + o27 + o37  = 0
 IloC385#385:                    w582 + w528 <= 1
 IloC386#386:                    w583 + w538 <= 1
 IloC387#387:                    w587 + w578 <= 1
 IloC388#388:                    w598 + w589 <= 1
 Routing_to_First_NF8#389:       - w598 + w589 + w587 + w583 + w582 - w578
                                 - w538 - w528 + o08 + o18 + o28 + o38  = 0
 IloC390#390:                    w594 + w549 <= 1
 IloC391#391:                    w595 + w559 <= 1
 IloC392#392:                    w597 + w579 <= 1
 IloC393#393:                    w598 + w589 <= 1
 Routing_to_First_NF9#394:       w598 + w597 + w595 + w594 - w589 - w579 - w559
                                 - w549 + o09 + o19 + o29 + o39  = 0
 IloC395#395:                    w660 + w606 <= 1
 Routing_from_LastNF0#396:       - w660 + w606 - t00 - t10 - t20 - t30  = 0
 IloC397#397:                    w661 + w616 <= 1
 Routing_from_LastNF1#398:       - w661 + w616 - t01 - t11 - t21 - t31  = 0
 IloC399#399:                    w682 + w628 <= 1
 Routing_from_LastNF2#400:       - w682 + w628 - t02 - t12 - t22 - t32  = 0
 IloC401#401:                    w683 + w638 <= 1
 Routing_to_Egg3#402:            - w683 + w638  = -1
 IloC403#403:                    w694 + w649 <= 1
 Routing_from_LastNF4#404:       - w694 + w649 - t04 - t14 - t24 - t34  = 0
 IloC405#405:                    w695 + w659 <= 1
 Routing_from_LastNF5#406:       - w695 + w659 - t05 - t15 - t25 - t35  = 0
 IloC407#407:                    w660 + w606 <= 1
 IloC408#408:                    w661 + w616 <= 1
 IloC409#409:                    w676 + w667 <= 1
 Routing_from_LastNF6#410:       - w676 + w667 + w661 + w660 - w616 - w606
                                 - t06 - t16 - t26 - t36  = 0
 IloC411#411:                    w676 + w667 <= 1
 IloC412#412:                    w687 + w678 <= 1
 IloC413#413:                    w697 + w679 <= 1
 Routing_from_LastNF7#414:       - w697 - w687 + w679 + w678 + w676 - w667
                                 - t07 - t17 - t27 - t37  = 0
 IloC415#415:                    w682 + w628 <= 1
 IloC416#416:                    w683 + w638 <= 1
 IloC417#417:                    w687 + w678 <= 1
 IloC418#418:                    w698 + w689 <= 1
 Routing_from_LastNF8#419:       - w698 + w689 + w687 + w683 + w682 - w678
                                 - w638 - w628 - t08 - t18 - t28 - t38  = 0
 IloC420#420:                    w694 + w649 <= 1
 IloC421#421:                    w695 + w659 <= 1
 IloC422#422:                    w697 + w679 <= 1
 IloC423#423:                    w698 + w689 <= 1
 Routing_from_LastNF9#424:       w698 + w697 + w695 + w694 - w689 - w679 - w659
                                 - w649 - t09 - t19 - t29 - t39  = 0
 A_single_VLink_originating_from_NF0#425: z0 + z4 <= 1
 A_single_VLink_destined_to_NF0#426: z3 <= 1
 A_single_VLink_originating_from_NF1#427: z1 + z3 <= 1
 A_single_VLink_destined_to_NF1#428: z0 <= 1
 A_single_VLink_originating_from_NF2#429: z2 <= 1
 A_single_VLink_destined_to_NF2#430: z1 + z4 <= 1
 A_single_VLink_originating_from_NF3#431: <= 1
 A_single_VLink_destined_to_NF3#432: z2 <= 1
 IloC433#433:                    - x00 + q00 <= 0
 IloC434#434:                    - y00 + q00 <= 0
 IloC435#435:                    - x00 - y00 + q00 >= -1
 IloC436#436:                    - x10 + q10 <= 0
 IloC437#437:                    - y10 + q10 <= 0
 IloC438#438:                    - x10 - y10 + q10 >= -1
 IloC439#439:                    - x20 + q20 <= 0
 IloC440#440:                    - y20 + q20 <= 0
 IloC441#441:                    - x20 - y20 + q20 >= -1
 IloC442#442:                    - x30 + q30 <= 0
 IloC443#443:                    - y30 + q30 <= 0
 IloC444#444:                    - x30 - y30 + q30 >= -1
 IloC445#445:                    - x40 + q40 <= 0
 IloC446#446:                    - y40 + q40 <= 0
 IloC447#447:                    - x40 - y40 + q40 >= -1
 InternalSwitchingCapacity_0#448: q00 + q10 + q20 + q30 + q40 <= 2
 IloC449#449:                    - x01 + q01 <= 0
 IloC450#450:                    - y01 + q01 <= 0
 IloC451#451:                    - x01 - y01 + q01 >= -1
 IloC452#452:                    - x11 + q11 <= 0
 IloC453#453:                    - y11 + q11 <= 0
 IloC454#454:                    - x11 - y11 + q11 >= -1
 IloC455#455:                    - x21 + q21 <= 0
 IloC456#456:                    - y21 + q21 <= 0
 IloC457#457:                    - x21 - y21 + q21 >= -1
 IloC458#458:                    - x31 + q31 <= 0
 IloC459#459:                    - y31 + q31 <= 0
 IloC460#460:                    - x31 - y31 + q31 >= -1
 IloC461#461:                    - x41 + q41 <= 0
 IloC462#462:                    - y41 + q41 <= 0
 IloC463#463:                    - x41 - y41 + q41 >= -1
 InternalSwitchingCapacity_1#464: q01 + q11 + q21 + q31 + q41 <= 3
 IloC465#465:                    - x02 + q02 <= 0
 IloC466#466:                    - y02 + q02 <= 0
 IloC467#467:                    - x02 - y02 + q02 >= -1
 IloC468#468:                    - x12 + q12 <= 0
 IloC469#469:                    - y12 + q12 <= 0
 IloC470#470:                    - x12 - y12 + q12 >= -1
 IloC471#471:                    - x22 + q22 <= 0
 IloC472#472:                    - y22 + q22 <= 0
 IloC473#473:                    - x22 - y22 + q22 >= -1
 IloC474#474:                    - x32 + q32 <= 0
 IloC475#475:                    - y32 + q32 <= 0
 IloC476#476:                    - x32 - y32 + q32 >= -1
 IloC477#477:                    - x42 + q42 <= 0
 IloC478#478:                    - y42 + q42 <= 0
 IloC479#479:                    - x42 - y42 + q42 >= -1
 InternalSwitchingCapacity_2#480: q02 + q12 + q22 + q32 + q42 <= 4
 IloC481#481:                    - x03 + q03 <= 0
 IloC482#482:                    - y03 + q03 <= 0
 IloC483#483:                    - x03 - y03 + q03 >= -1
 IloC484#484:                    - x13 + q13 <= 0
 IloC485#485:                    - y13 + q13 <= 0
 IloC486#486:                    - x13 - y13 + q13 >= -1
 IloC487#487:                    - x23 + q23 <= 0
 IloC488#488:                    - y23 + q23 <= 0
 IloC489#489:                    - x23 - y23 + q23 >= -1
 IloC490#490:                    - x33 + q33 <= 0
 IloC491#491:                    - y33 + q33 <= 0
 IloC492#492:                    - x33 - y33 + q33 >= -1
 IloC493#493:                    - x43 + q43 <= 0
 IloC494#494:                    - y43 + q43 <= 0
 IloC495#495:                    - x43 - y43 + q43 >= -1
 InternalSwitchingCapacity_3#496: q03 + q13 + q23 + q33 + q43 <= 5
 IloC497#497:                    - x04 + q04 <= 0
 IloC498#498:                    - y04 + q04 <= 0
 IloC499#499:                    - x04 - y04 + q04 >= -1
 IloC500#500:                    - x14 + q14 <= 0
 IloC501#501:                    - y14 + q14 <= 0
 IloC502#502:                    - x14 - y14 + q14 >= -1
 IloC503#503:                    - x24 + q24 <= 0
 IloC504#504:                    - y24 + q24 <= 0
 IloC505#505:                    - x24 - y24 + q24 >= -1
 IloC506#506:                    - x34 + q34 <= 0
 IloC507#507:                    - y34 + q34 <= 0
 IloC508#508:                    - x34 - y34 + q34 >= -1
 IloC509#509:                    - x44 + q44 <= 0
 IloC510#510:                    - y44 + q44 <= 0
 IloC511#511:                    - x44 - y44 + q44 >= -1
 InternalSwitchingCapacity_4#512: q04 + q14 + q24 + q34 + q44 <= 6
 IloC513#513:                    - x05 + q05 <= 0
 IloC514#514:                    - y05 + q05 <= 0
 IloC515#515:                    - x05 - y05 + q05 >= -1
 IloC516#516:                    - x15 + q15 <= 0
 IloC517#517:                    - y15 + q15 <= 0
 IloC518#518:                    - x15 - y15 + q15 >= -1
 IloC519#519:                    - x25 + q25 <= 0
 IloC520#520:                    - y25 + q25 <= 0
 IloC521#521:                    - x25 - y25 + q25 >= -1
 IloC522#522:                    - x35 + q35 <= 0
 IloC523#523:                    - y35 + q35 <= 0
 IloC524#524:                    - x35 - y35 + q35 >= -1
 IloC525#525:                    - x45 + q45 <= 0
 IloC526#526:                    - y45 + q45 <= 0
 IloC527#527:                    - x45 - y45 + q45 >= -1
 InternalSwitchingCapacity_5#528: q05 + q15 + q25 + q35 + q45 <= 7
 IloC529#529:                    - x06 + q06 <= 0
 IloC530#530:                    - y06 + q06 <= 0
 IloC531#531:                    - x06 - y06 + q06 >= -1
 IloC532#532:                    - x16 + q16 <= 0
 IloC533#533:                    - y16 + q16 <= 0
 IloC534#534:                    - x16 - y16 + q16 >= -1
 IloC535#535:                    - x26 + q26 <= 0
 IloC536#536:                    - y26 + q26 <= 0
 IloC537#537:                    - x26 - y26 + q26 >= -1
 IloC538#538:                    - x36 + q36 <= 0
 IloC539#539:                    - y36 + q36 <= 0
 IloC540#540:                    - x36 - y36 + q36 >= -1
 IloC541#541:                    - x46 + q46 <= 0
 IloC542#542:                    - y46 + q46 <= 0
 IloC543#543:                    - x46 - y46 + q46 >= -1
 InternalSwitchingCapacity_6#544: q06 + q16 + q26 + q36 + q46 <= 0
 IloC545#545:                    - x07 + q07 <= 0
 IloC546#546:                    - y07 + q07 <= 0
 IloC547#547:                    - x07 - y07 + q07 >= -1
 IloC548#548:                    - x17 + q17 <= 0
 IloC549#549:                    - y17 + q17 <= 0
 IloC550#550:                    - x17 - y17 + q17 >= -1
 IloC551#551:                    - x27 + q27 <= 0
 IloC552#552:                    - y27 + q27 <= 0
 IloC553#553:                    - x27 - y27 + q27 >= -1
 IloC554#554:                    - x37 + q37 <= 0
 IloC555#555:                    - y37 + q37 <= 0
 IloC556#556:                    - x37 - y37 + q37 >= -1
 IloC557#557:                    - x47 + q47 <= 0
 IloC558#558:                    - y47 + q47 <= 0
 IloC559#559:                    - x47 - y47 + q47 >= -1
 InternalSwitchingCapacity_7#560: q07 + q17 + q27 + q37 + q47 <= 0
 IloC561#561:                    - x08 + q08 <= 0
 IloC562#562:                    - y08 + q08 <= 0
 IloC563#563:                    - x08 - y08 + q08 >= -1
 IloC564#564:                    - x18 + q18 <= 0
 IloC565#565:                    - y18 + q18 <= 0
 IloC566#566:                    - x18 - y18 + q18 >= -1
 IloC567#567:                    - x28 + q28 <= 0
 IloC568#568:                    - y28 + q28 <= 0
 IloC569#569:                    - x28 - y28 + q28 >= -1
 IloC570#570:                    - x38 + q38 <= 0
 IloC571#571:                    - y38 + q38 <= 0
 IloC572#572:                    - x38 - y38 + q38 >= -1
 IloC573#573:                    - x48 + q48 <= 0
 IloC574#574:                    - y48 + q48 <= 0
 IloC575#575:                    - x48 - y48 + q48 >= -1
 InternalSwitchingCapacity_8#576: q08 + q18 + q28 + q38 + q48 <= 0
 IloC577#577:                    - x09 + q09 <= 0
 IloC578#578:                    - y09 + q09 <= 0
 IloC579#579:                    - x09 - y09 + q09 >= -1
 IloC580#580:                    - x19 + q19 <= 0
 IloC581#581:                    - y19 + q19 <= 0
 IloC582#582:                    - x19 - y19 + q19 >= -1
 IloC583#583:                    - x29 + q29 <= 0
 IloC584#584:                    - y29 + q29 <= 0
 IloC585#585:                    - x29 - y29 + q29 >= -1
 IloC586#586:                    - x39 + q39 <= 0
 IloC587#587:                    - y39 + q39 <= 0
 IloC588#588:                    - x39 - y39 + q39 >= -1
 IloC589#589:                    - x49 + q49 <= 0
 IloC590#590:                    - y49 + q49 <= 0
 IloC591#591:                    - x49 - y49 + q49 >= -1
 InternalSwitchingCapacity_9#592: q09 + q19 + q29 + q39 + q49 <= 0
 LinkCapacity06#593:             w660 + w606 + w560 + w506 + w460 + w406 + w360
                                 + w306 + w260 + w206 + w160 + w106 + w060
                                 + w006 <= 10
 LinkCapacity16#594:             w661 + w616 + w561 + w516 + w461 + w416 + w361
                                 + w316 + w261 + w216 + w161 + w116 + w061
                                 + w016 <= 10
 LinkCapacity28#595:             w682 + w628 + w582 + w528 + w482 + w428 + w382
                                 + w328 + w282 + w228 + w182 + w128 + w082
                                 + w028 <= 10
 LinkCapacity38#596:             w683 + w638 + w583 + w538 + w483 + w438 + w383
                                 + w338 + w283 + w238 + w183 + w138 + w083
                                 + w038 <= 10
 LinkCapacity49#597:             w694 + w649 + w594 + w549 + w494 + w449 + w394
                                 + w349 + w294 + w249 + w194 + w149 + w094
                                 + w049 <= 10
 LinkCapacity59#598:             w695 + w659 + w595 + w559 + w495 + w459 + w395
                                 + w359 + w295 + w259 + w195 + w159 + w095
                                 + w059 <= 10
 LinkCapacity67#599:             w676 + w667 + w576 + w567 + w476 + w467 + w376
                                 + w367 + w276 + w267 + w176 + w167 + w076
                                 + w067 <= 10
 LinkCapacity78#600:             w687 + w678 + w587 + w578 + w487 + w478 + w387
                                 + w378 + w287 + w278 + w187 + w178 + w087
                                 + w078 <= 10
 LinkCapacity79#601:             w697 + w679 + w597 + w579 + w497 + w479 + w397
                                 + w379 + w297 + w279 + w197 + w179 + w097
                                 + w079 <= 10
 LinkCapacity89#602:             w698 + w689 + w598 + w589 + w498 + w489 + w398
                                 + w389 + w298 + w289 + w198 + w189 + w098
                                 + w089 <= 10
 IloC603#603:                    gamma021 - delta02 <= 0
 IloC604#604:                    gamma021 - delta21 <= 0
 IloC605#605:                    gamma021 - delta02 - delta21 >= -1
 IloC606#606:                    - z0 - gamma021 + delta01 >= 0
 IloC607#607:                    gamma031 - delta03 <= 0
 IloC608#608:                    gamma031 - delta31 <= 0
 IloC609#609:                    gamma031 - delta03 - delta31 >= -1
 IloC610#610:                    - z0 + delta01 - gamma031 >= 0
 IloC611#611:                    - delta01 + gamma012 <= 0
 IloC612#612:                    gamma012 - delta12 <= 0
 IloC613#613:                    - delta01 + gamma012 - delta12 >= -1
 IloC614#614:                    - z4 + delta02 - gamma012 >= 0
 IloC615#615:                    - delta03 + gamma032 <= 0
 IloC616#616:                    gamma032 - delta32 <= 0
 IloC617#617:                    - delta03 + gamma032 - delta32 >= -1
 IloC618#618:                    - z4 + delta02 - gamma032 >= 0
 IloC619#619:                    - delta01 + gamma013 <= 0
 IloC620#620:                    gamma013 - delta13 <= 0
 IloC621#621:                    - delta01 + gamma013 - delta13 >= -1
 IloC622#622:                    delta03 - gamma013 >= 0
 IloC623#623:                    - delta02 + gamma023 <= 0
 IloC624#624:                    gamma023 - delta23 <= 0
 IloC625#625:                    - delta02 + gamma023 - delta23 >= -1
 IloC626#626:                    delta03 - gamma023 >= 0
 IloC627#627:                    - delta12 + gamma120 <= 0
 IloC628#628:                    gamma120 - delta20 <= 0
 IloC629#629:                    - delta12 + gamma120 - delta20 >= -1
 IloC630#630:                    - z3 - gamma120 + delta10 >= 0
 IloC631#631:                    - delta13 + gamma130 <= 0
 IloC632#632:                    gamma130 - delta30 <= 0
 IloC633#633:                    - delta13 + gamma130 - delta30 >= -1
 IloC634#634:                    - z3 + delta10 - gamma130 >= 0
 IloC635#635:                    - delta10 + gamma102 <= 0
 IloC636#636:                    - delta02 + gamma102 <= 0
 IloC637#637:                    - delta02 - delta10 + gamma102 >= -1
 IloC638#638:                    - z1 + delta12 - gamma102 >= 0
 IloC639#639:                    - delta13 + gamma132 <= 0
 IloC640#640:                    - delta32 + gamma132 <= 0
 IloC641#641:                    - delta32 - delta13 + gamma132 >= -1
 IloC642#642:                    - z1 + delta12 - gamma132 >= 0
 IloC643#643:                    - delta10 + gamma103 <= 0
 IloC644#644:                    - delta03 + gamma103 <= 0
 IloC645#645:                    - delta03 - delta10 + gamma103 >= -1
 IloC646#646:                    delta13 - gamma103 >= 0
 IloC647#647:                    - delta12 + gamma123 <= 0
 IloC648#648:                    - delta23 + gamma123 <= 0
 IloC649#649:                    - delta12 - delta23 + gamma123 >= -1
 IloC650#650:                    delta13 - gamma123 >= 0
 IloC651#651:                    - delta21 + gamma210 <= 0
 IloC652#652:                    - delta10 + gamma210 <= 0
 IloC653#653:                    - delta21 - delta10 + gamma210 >= -1
 IloC654#654:                    delta20 - gamma210 >= 0
 IloC655#655:                    - delta23 + gamma230 <= 0
 IloC656#656:                    - delta30 + gamma230 <= 0
 IloC657#657:                    - delta23 - delta30 + gamma230 >= -1
 IloC658#658:                    delta20 - gamma230 >= 0
 IloC659#659:                    - delta20 + gamma201 <= 0
 IloC660#660:                    - delta01 + gamma201 <= 0
 IloC661#661:                    - delta01 - delta20 + gamma201 >= -1
 IloC662#662:                    delta21 - gamma201 >= 0
 IloC663#663:                    - delta23 + gamma231 <= 0
 IloC664#664:                    - delta31 + gamma231 <= 0
 IloC665#665:                    - delta31 - delta23 + gamma231 >= -1
 IloC666#666:                    delta21 - gamma231 >= 0
 IloC667#667:                    - delta20 + gamma203 <= 0
 IloC668#668:                    - delta03 + gamma203 <= 0
 IloC669#669:                    - delta03 - delta20 + gamma203 >= -1
 IloC670#670:                    - z2 + delta23 - gamma203 >= 0
 IloC671#671:                    - delta21 + gamma213 <= 0
 IloC672#672:                    - delta13 + gamma213 <= 0
 IloC673#673:                    - delta21 - delta13 + gamma213 >= -1
 IloC674#674:                    - z2 + delta23 - gamma213 >= 0
 IloC675#675:                    - delta31 + gamma310 <= 0
 IloC676#676:                    - delta10 + gamma310 <= 0
 IloC677#677:                    - delta31 - delta10 + gamma310 >= -1
 IloC678#678:                    delta30 - gamma310 >= 0
 IloC679#679:                    - delta32 + gamma320 <= 0
 IloC680#680:                    - delta20 + gamma320 <= 0
 IloC681#681:                    - delta32 - delta20 + gamma320 >= -1
 IloC682#682:                    delta30 - gamma320 >= 0
 IloC683#683:                    - delta30 + gamma301 <= 0
 IloC684#684:                    - delta01 + gamma301 <= 0
 IloC685#685:                    - delta01 - delta30 + gamma301 >= -1
 IloC686#686:                    delta31 - gamma301 >= 0
 IloC687#687:                    - delta32 + gamma321 <= 0
 IloC688#688:                    - delta21 + gamma321 <= 0
 IloC689#689:                    - delta21 - delta32 + gamma321 >= -1
 IloC690#690:                    delta31 - gamma321 >= 0
 IloC691#691:                    - delta30 + gamma302 <= 0
 IloC692#692:                    - delta02 + gamma302 <= 0
 IloC693#693:                    - delta02 - delta30 + gamma302 >= -1
 IloC694#694:                    delta32 - gamma302 >= 0
 IloC695#695:                    - delta31 + gamma312 <= 0
 IloC696#696:                    - delta12 + gamma312 <= 0
 IloC697#697:                    - delta31 - delta12 + gamma312 >= -1
 IloC698#698:                    delta32 - gamma312 >= 0
 IloC699#699:                    delta00 <= 0
 IloC700#700:                    delta01 <= 1
 IloC701#701:                    delta02 <= 1
 IloC702#702:                    delta03 <= 1
 IloC703#703:                    delta10 <= 1
 IloC704#704:                    delta11 <= 0
 IloC705#705:                    delta12 <= 1
 IloC706#706:                    delta13 <= 1
 IloC707#707:                    delta20 <= 0
 IloC708#708:                    delta21 <= 0
 IloC709#709:                    delta22 <= 0
 IloC710#710:                    delta23 <= 1
 IloC711#711:                    delta30 <= 0
 IloC712#712:                    delta31 <= 0
 IloC713#713:                    delta32 <= 0
 IloC714#714:                    delta33 <= 0
Bounds
 0 <= w698 <= 1
 0 <= w697 <= 1
 0 <= w695 <= 1
 0 <= w694 <= 1
 0 <= w689 <= 1
 0 <= w687 <= 1
 0 <= w683 <= 1
 0 <= w682 <= 1
 0 <= w679 <= 1
 0 <= w678 <= 1
 0 <= w676 <= 1
 0 <= w667 <= 1
 0 <= w661 <= 1
 0 <= w660 <= 1
 0 <= w659 <= 1
 0 <= w649 <= 1
 0 <= w638 <= 1
 0 <= w628 <= 1
 0 <= w616 <= 1
 0 <= w606 <= 1
 0 <= w598 <= 1
 0 <= w597 <= 1
 0 <= w595 <= 1
 0 <= w594 <= 1
 0 <= w589 <= 1
 0 <= w587 <= 1
 0 <= w583 <= 1
 0 <= w582 <= 1
 0 <= w579 <= 1
 0 <= w578 <= 1
 0 <= w576 <= 1
 0 <= w567 <= 1
 0 <= w561 <= 1
 0 <= w560 <= 1
 0 <= w559 <= 1
 0 <= w549 <= 1
 0 <= w538 <= 1
 0 <= w528 <= 1
 0 <= w516 <= 1
 0 <= w506 <= 1
 0 <= w498 <= 1
 0 <= w497 <= 1
 0 <= w495 <= 1
 0 <= w494 <= 1
 0 <= w489 <= 1
 0 <= w487 <= 1
 0 <= w483 <= 1
 0 <= w482 <= 1
 0 <= w479 <= 1
 0 <= w478 <= 1
 0 <= w476 <= 1
 0 <= w467 <= 1
 0 <= w461 <= 1
 0 <= w460 <= 1
 0 <= w459 <= 1
 0 <= w449 <= 1
 0 <= w438 <= 1
 0 <= w428 <= 1
 0 <= w416 <= 1
 0 <= w406 <= 1
 0 <= w398 <= 1
 0 <= w397 <= 1
 0 <= w395 <= 1
 0 <= w394 <= 1
 0 <= w389 <= 1
 0 <= w387 <= 1
 0 <= w383 <= 1
 0 <= w382 <= 1
 0 <= w379 <= 1
 0 <= w378 <= 1
 0 <= w376 <= 1
 0 <= w367 <= 1
 0 <= w361 <= 1
 0 <= w360 <= 1
 0 <= w359 <= 1
 0 <= w349 <= 1
 0 <= w338 <= 1
 0 <= w328 <= 1
 0 <= w316 <= 1
 0 <= w306 <= 1
 0 <= w298 <= 1
 0 <= w297 <= 1
 0 <= w295 <= 1
 0 <= w294 <= 1
 0 <= w289 <= 1
 0 <= w287 <= 1
 0 <= w283 <= 1
 0 <= w282 <= 1
 0 <= w279 <= 1
 0 <= w278 <= 1
 0 <= w276 <= 1
 0 <= w267 <= 1
 0 <= w261 <= 1
 0 <= w260 <= 1
 0 <= w259 <= 1
 0 <= w249 <= 1
 0 <= w238 <= 1
 0 <= w228 <= 1
 0 <= w216 <= 1
 0 <= w206 <= 1
 0 <= w198 <= 1
 0 <= w197 <= 1
 0 <= w195 <= 1
 0 <= w194 <= 1
 0 <= w189 <= 1
 0 <= w187 <= 1
 0 <= w183 <= 1
 0 <= w182 <= 1
 0 <= w179 <= 1
 0 <= w178 <= 1
 0 <= w176 <= 1
 0 <= w167 <= 1
 0 <= w161 <= 1
 0 <= w160 <= 1
 0 <= w159 <= 1
 0 <= w149 <= 1
 0 <= w138 <= 1
 0 <= w128 <= 1
 0 <= w116 <= 1
 0 <= w106 <= 1
 0 <= w098 <= 1
 0 <= w097 <= 1
 0 <= w095 <= 1
 0 <= w094 <= 1
 0 <= w089 <= 1
 0 <= w087 <= 1
 0 <= w083 <= 1
 0 <= w082 <= 1
 0 <= w079 <= 1
 0 <= w078 <= 1
 0 <= w076 <= 1
 0 <= w067 <= 1
 0 <= w061 <= 1
 0 <= w060 <= 1
 0 <= w059 <= 1
 0 <= w049 <= 1
 0 <= w038 <= 1
 0 <= w028 <= 1
 0 <= w016 <= 1
 0 <= w006 <= 1
 0 <= theta09 <= 1
 0 <= theta08 <= 1
 0 <= theta07 <= 1
 0 <= theta06 <= 1
 0 <= theta05 <= 1
 0 <= theta04 <= 1
 0 <= theta03 <= 1
 0 <= theta02 <= 1
 0 <= theta01 <= 1
 0 <= theta00 <= 1
 0 <= theta19 <= 1
 0 <= theta18 <= 1
 0 <= theta17 <= 1
 0 <= theta16 <= 1
 0 <= theta15 <= 1
 0 <= theta14 <= 1
 0 <= theta13 <= 1
 0 <= theta12 <= 1
 0 <= theta11 <= 1
 0 <= theta10 <= 1
 0 <= theta29 <= 1
 0 <= theta28 <= 1
 0 <= theta27 <= 1
 0 <= theta26 <= 1
 0 <= theta25 <= 1
 0 <= theta24 <= 1
 0 <= theta23 <= 1
 0 <= theta22 <= 1
 0 <= theta21 <= 1
 0 <= theta20 <= 1
 0 <= theta39 <= 1
 0 <= theta38 <= 1
 0 <= theta37 <= 1
 0 <= theta36 <= 1
 0 <= theta35 <= 1
 0 <= theta34 <= 1
 0 <= theta33 <= 1
 0 <= theta32 <= 1
 0 <= theta31 <= 1
 0 <= theta30 <= 1
 0 <= x00 <= 1
 0 <= y00 <= 1
 0 <= x01 <= 1
 0 <= y01 <= 1
 0 <= x02 <= 1
 0 <= y02 <= 1
 0 <= x03 <= 1
 0 <= y03 <= 1
 0 <= x04 <= 1
 0 <= y04 <= 1
 0 <= x05 <= 1
 0 <= y05 <= 1
 0 <= x06 <= 1
 0 <= y06 <= 1
 0 <= x07 <= 1
 0 <= y07 <= 1
 0 <= x08 <= 1
 0 <= y08 <= 1
 0 <= x09 <= 1
 0 <= y09 <= 1
 0 <= x10 <= 1
 0 <= y10 <= 1
 0 <= x11 <= 1
 0 <= y11 <= 1
 0 <= x12 <= 1
 0 <= y12 <= 1
 0 <= x13 <= 1
 0 <= y13 <= 1
 0 <= x14 <= 1
 0 <= y14 <= 1
 0 <= x15 <= 1
 0 <= y15 <= 1
 0 <= x16 <= 1
 0 <= y16 <= 1
 0 <= x17 <= 1
 0 <= y17 <= 1
 0 <= x18 <= 1
 0 <= y18 <= 1
 0 <= x19 <= 1
 0 <= y19 <= 1
 0 <= x20 <= 1
 0 <= y20 <= 1
 0 <= x21 <= 1
 0 <= y21 <= 1
 0 <= x22 <= 1
 0 <= y22 <= 1
 0 <= x23 <= 1
 0 <= y23 <= 1
 0 <= x24 <= 1
 0 <= y24 <= 1
 0 <= x25 <= 1
 0 <= y25 <= 1
 0 <= x26 <= 1
 0 <= y26 <= 1
 0 <= x27 <= 1
 0 <= y27 <= 1
 0 <= x28 <= 1
 0 <= y28 <= 1
 0 <= x29 <= 1
 0 <= y29 <= 1
 0 <= x30 <= 1
 0 <= y30 <= 1
 0 <= x31 <= 1
 0 <= y31 <= 1
 0 <= x32 <= 1
 0 <= y32 <= 1
 0 <= x33 <= 1
 0 <= y33 <= 1
 0 <= x34 <= 1
 0 <= y34 <= 1
 0 <= x35 <= 1
 0 <= y35 <= 1
 0 <= x36 <= 1
 0 <= y36 <= 1
 0 <= x37 <= 1
 0 <= y37 <= 1
 0 <= x38 <= 1
 0 <= y38 <= 1
 0 <= x39 <= 1
 0 <= y39 <= 1
 0 <= x40 <= 1
 0 <= y40 <= 1
 0 <= x41 <= 1
 0 <= y41 <= 1
 0 <= x42 <= 1
 0 <= y42 <= 1
 0 <= x43 <= 1
 0 <= y43 <= 1
 0 <= x44 <= 1
 0 <= y44 <= 1
 0 <= x45 <= 1
 0 <= y45 <= 1
 0 <= x46 <= 1
 0 <= y46 <= 1
 0 <= x47 <= 1
 0 <= y47 <= 1
 0 <= x48 <= 1
 0 <= y48 <= 1
 0 <= x49 <= 1
 0 <= y49 <= 1
 0 <= z0 <= 1
 0 <= z1 <= 1
 0 <= z2 <= 1
 0 <= z3 <= 1
 0 <= z4 <= 1
 0 <= o00 <= 1
 0 <= t00 <= 1
 0 <= o01 <= 1
 0 <= t01 <= 1
 0 <= o02 <= 1
 0 <= t02 <= 1
 0 <= o03 <= 1
 0 <= t03 <= 1
 0 <= o04 <= 1
 0 <= t04 <= 1
 0 <= o05 <= 1
 0 <= t05 <= 1
 0 <= o06 <= 1
 0 <= t06 <= 1
 0 <= o07 <= 1
 0 <= t07 <= 1
 0 <= o08 <= 1
 0 <= t08 <= 1
 0 <= o09 <= 1
 0 <= t09 <= 1
 0 <= o10 <= 1
 0 <= t10 <= 1
 0 <= o11 <= 1
 0 <= t11 <= 1
 0 <= o12 <= 1
 0 <= t12 <= 1
 0 <= o13 <= 1
 0 <= t13 <= 1
 0 <= o14 <= 1
 0 <= t14 <= 1
 0 <= o15 <= 1
 0 <= t15 <= 1
 0 <= o16 <= 1
 0 <= t16 <= 1
 0 <= o17 <= 1
 0 <= t17 <= 1
 0 <= o18 <= 1
 0 <= t18 <= 1
 0 <= o19 <= 1
 0 <= t19 <= 1
 0 <= o20 <= 1
 0 <= t20 <= 1
 0 <= o21 <= 1
 0 <= t21 <= 1
 0 <= o22 <= 1
 0 <= t22 <= 1
 0 <= o23 <= 1
 0 <= t23 <= 1
 0 <= o24 <= 1
 0 <= t24 <= 1
 0 <= o25 <= 1
 0 <= t25 <= 1
 0 <= o26 <= 1
 0 <= t26 <= 1
 0 <= o27 <= 1
 0 <= t27 <= 1
 0 <= o28 <= 1
 0 <= t28 <= 1
 0 <= o29 <= 1
 0 <= t29 <= 1
 0 <= o30 <= 1
 0 <= t30 <= 1
 0 <= o31 <= 1
 0 <= t31 <= 1
 0 <= o32 <= 1
 0 <= t32 <= 1
 0 <= o33 <= 1
 0 <= t33 <= 1
 0 <= o34 <= 1
 0 <= t34 <= 1
 0 <= o35 <= 1
 0 <= t35 <= 1
 0 <= o36 <= 1
 0 <= t36 <= 1
 0 <= o37 <= 1
 0 <= t37 <= 1
 0 <= o38 <= 1
 0 <= t38 <= 1
 0 <= o39 <= 1
 0 <= t39 <= 1
 0 <= q00 <= 1
 0 <= q10 <= 1
 0 <= q20 <= 1
 0 <= q30 <= 1
 0 <= q40 <= 1
 0 <= q01 <= 1
 0 <= q11 <= 1
 0 <= q21 <= 1
 0 <= q31 <= 1
 0 <= q41 <= 1
 0 <= q02 <= 1
 0 <= q12 <= 1
 0 <= q22 <= 1
 0 <= q32 <= 1
 0 <= q42 <= 1
 0 <= q03 <= 1
 0 <= q13 <= 1
 0 <= q23 <= 1
 0 <= q33 <= 1
 0 <= q43 <= 1
 0 <= q04 <= 1
 0 <= q14 <= 1
 0 <= q24 <= 1
 0 <= q34 <= 1
 0 <= q44 <= 1
 0 <= q05 <= 1
 0 <= q15 <= 1
 0 <= q25 <= 1
 0 <= q35 <= 1
 0 <= q45 <= 1
 0 <= q06 <= 1
 0 <= q16 <= 1
 0 <= q26 <= 1
 0 <= q36 <= 1
 0 <= q46 <= 1
 0 <= q07 <= 1
 0 <= q17 <= 1
 0 <= q27 <= 1
 0 <= q37 <= 1
 0 <= q47 <= 1
 0 <= q08 <= 1
 0 <= q18 <= 1
 0 <= q28 <= 1
 0 <= q38 <= 1
 0 <= q48 <= 1
 0 <= q09 <= 1
 0 <= q19 <= 1
 0 <= q29 <= 1
 0 <= q39 <= 1
 0 <= q49 <= 1
 0 <= gamma021 <= 1
 0 <= delta02 <= 1
 0 <= delta21 <= 1
 0 <= delta01 <= 1
 0 <= gamma031 <= 1
 0 <= delta03 <= 1
 0 <= delta31 <= 1
 0 <= gamma012 <= 1
 0 <= delta12 <= 1
 0 <= gamma032 <= 1
 0 <= delta32 <= 1
 0 <= gamma013 <= 1
 0 <= delta13 <= 1
 0 <= gamma023 <= 1
 0 <= delta23 <= 1
 0 <= gamma120 <= 1
 0 <= delta20 <= 1
 0 <= delta10 <= 1
 0 <= gamma130 <= 1
 0 <= delta30 <= 1
 0 <= gamma102 <= 1
 0 <= gamma132 <= 1
 0 <= gamma103 <= 1
 0 <= gamma123 <= 1
 0 <= gamma210 <= 1
 0 <= gamma230 <= 1
 0 <= gamma201 <= 1
 0 <= gamma231 <= 1
 0 <= gamma203 <= 1
 0 <= gamma213 <= 1
 0 <= gamma310 <= 1
 0 <= gamma320 <= 1
 0 <= gamma301 <= 1
 0 <= gamma321 <= 1
 0 <= gamma302 <= 1
 0 <= gamma312 <= 1
 0 <= delta00 <= 1
 0 <= delta11 <= 1
 0 <= delta22 <= 1
 0 <= delta33 <= 1
Generals
 w698  w697  w695  w694  w689  w687  w683  w682  w679  w678  w676  w667  w661 
 w660  w659  w649  w638  w628  w616  w606  w598  w597  w595  w594  w589  w587 
 w583  w582  w579  w578  w576  w567  w561  w560  w559  w549  w538  w528  w516 
 w506  w498  w497  w495  w494  w489  w487  w483  w482  w479  w478  w476  w467 
 w461  w460  w459  w449  w438  w428  w416  w406  w398  w397  w395  w394  w389 
 w387  w383  w382  w379  w378  w376  w367  w361  w360  w359  w349  w338  w328 
 w316  w306  w298  w297  w295  w294  w289  w287  w283  w282  w279  w278  w276 
 w267  w261  w260  w259  w249  w238  w228  w216  w206  w198  w197  w195  w194 
 w189  w187  w183  w182  w179  w178  w176  w167  w161  w160  w159  w149  w138 
 w128  w116  w106  w098  w097  w095  w094  w089  w087  w083  w082  w079  w078 
 w076  w067  w061  w060  w059  w049  w038  w028  w016  w006  theta09  theta08 
 theta07  theta06  theta05  theta04  theta03  theta02  theta01  theta00 
 theta19  theta18  theta17  theta16  theta15  theta14  theta13  theta12 
 theta11  theta10  theta29  theta28  theta27  theta26  theta25  theta24 
 theta23  theta22  theta21  theta20  theta39  theta38  theta37  theta36 
 theta35  theta34  theta33  theta32  theta31  theta30  x00  y00  x01  y01  x02 
 y02  x03  y03  x04  y04  x05  y05  x06  y06  x07  y07  x08  y08  x09  y09 
 x10  y10  x11  y11  x12  y12  x13  y13  x14  y14  x15  y15  x16  y16  x17 
 y17  x18  y18  x19  y19  x20  y20  x21  y21  x22  y22  x23  y23  x24  y24 
 x25  y25  x26  y26  x27  y27  x28  y28  x29  y29  x30  y30  x31  y31  x32 
 y32  x33  y33  x34  y34  x35  y35  x36  y36  x37  y37  x38  y38  x39  y39 
 x40  y40  x41  y41  x42  y42  x43  y43  x44  y44  x45  y45  x46  y46  x47 
 y47  x48  y48  x49  y49  z0  z1  z2  z3  z4  o00  t00  o01  t01  o02  t02 
 o03  t03  o04  t04  o05  t05  o06  t06  o07  t07  o08  t08  o09  t09  o10 
 t10  o11  t11  o12  t12  o13  t13  o14  t14  o15  t15  o16  t16  o17  t17 
 o18  t18  o19  t19  o20  t20  o21  t21  o22  t22  o23  t23  o24  t24  o25 
 t25  o26  t26  o27  t27  o28  t28  o29  t29  o30  t30  o31  t31  o32  t32 
 o33  t33  o34  t34  o35  t35  o36  t36  o37  t37  o38  t38  o39  t39  q00 
 q10  q20  q30  q40  q01  q11  q21  q31  q41  q02  q12  q22  q32  q42  q03 
 q13  q23  q33  q43  q04  q14  q24  q34  q44  q05  q15  q25  q35  q45  q06 
 q16  q26  q36  q46  q07  q17  q27  q37  q47  q08  q18  q28  q38  q48  q09 
 q19  q29  q39  q49  gamma021  delta02  delta21  delta01  gamma031  delta03 
 delta31  gamma012  delta12  gamma032  delta32  gamma013  delta13  gamma023 
 delta23  gamma120  delta20  delta10  gamma130  delta30  gamma102  gamma132 
 gamma103  gamma123  gamma210  gamma230  gamma201  gamma231  gamma203 
 gamma213  gamma310  gamma320  gamma301  gamma321  gamma302  gamma312  delta00 
 delta11  delta22  delta33 
End
