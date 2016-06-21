//Maya ASCII 2016 scene
//Name: tankalt1.ma
//Last modified: Tue, May 10, 2016 04:30:33 PM
//Codeset: 1252
requires maya "2016";
requires -nodeType "Unfold3DUnfold" "Unfold3D" "Trunk.r2232.release.Mar 18 2015|11:44:26";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201507301600-967122";
fileInfo "osv" "Microsoft Windows 7 Enterprise Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "7112A754-48C0-8F15-5E78-1BB3041EED37";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.6739506716897399 7.5545718124224965 10.148342545044345 ;
	setAttr ".r" -type "double3" -26.138352722865392 -329.40000000022167 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "416C2B3E-46F6-307A-2858-4DAE2ECC416D";
	setAttr -k off ".v" no;
	setAttr ".pze" yes;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 14.502134732671037;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 7.4468085106382969 0.021044746609360065 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "B318427F-4F7A-57AF-E6FC-E48E72BBFE96";
	setAttr ".t" -type "double3" -0.79534219653568972 100.1 -0.017324234419370699 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "CF314BCD-4123-6EFD-C7CD-60A2EF269640";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 15.043798987204074;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "7FBEAD36-4F05-D689-1654-558554C2F328";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "718BF2EF-448E-E021-1D48-67B97C52D464";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "D255071A-4689-A1F9-C93E-5891D38B7420";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "F2B7F0B2-454C-9FE5-5721-19866DDE5F95";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "imagePlane1";
	rename -uid "2050D74F-45BD-6171-CFD2-AD9652425011";
	setAttr ".t" -type "double3" 7.4468085106382977 0 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode imagePlane -n "imagePlaneShape1" -p "imagePlane1";
	rename -uid "D956D610-4865-2F35-CE09-C48FDA5F6D39";
	setAttr -k off ".v";
	setAttr ".fc" 204;
	setAttr ".imn" -type "string" "Z:/studio_a/Student Folders/Tim Tsai/tank_conceptpng.png";
	setAttr ".cov" -type "short2" 2688 1520 ;
	setAttr ".dlc" no;
	setAttr ".w" 26.88;
	setAttr ".h" 15.2;
	setAttr ".cs" -type "string" "sRGB";
createNode transform -n "pCube1";
	rename -uid "2EC94EF0-4604-36D4-D5B2-F59B1A746DD1";
	setAttr ".t" -type "double3" 0.033823505294960698 0 -1.9781411720905542 ;
	setAttr ".s" -type "double3" 3.815190935323987 1.2986374398615805 4.010863845373156 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "F719F09A-40E3-49C8-E991-A7AF694F9582";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.53903070837259293 0.41013631224632263 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube3";
	rename -uid "F51F7200-48DB-ABD9-2C53-D3973D634564";
	setAttr ".t" -type "double3" 0 -0.28703181987537452 1.15177716519934 ;
	setAttr ".s" -type "double3" 1 1 2.4393120499638026 ;
createNode mesh -n "pCubeShape3" -p "pCube3";
	rename -uid "DC6823F4-4472-0851-C7F0-A38998D8F448";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 13 ".pt";
	setAttr ".pt[40]" -type "float3" 0 -6.519258e-009 2.5611371e-009 ;
	setAttr ".pt[57]" -type "float3" 0 -6.519258e-009 2.5611371e-009 ;
	setAttr ".pt[58]" -type "float3" 0 1.3038516e-008 -8.0035534e-010 ;
	setAttr ".pt[59]" -type "float3" 0 1.3038516e-008 -8.0035534e-010 ;
	setAttr ".pt[60]" -type "float3" 0 6.519258e-009 -5.2386895e-010 ;
	setAttr ".pt[61]" -type "float3" 0 6.519258e-009 -5.2386895e-010 ;
createNode transform -n "pCube4";
	rename -uid "7A0E2F93-432C-9348-562D-0582B98F55E6";
	setAttr ".t" -type "double3" 0 0 -4.5800944746209522 ;
	setAttr ".s" -type "double3" 1 1 1.4005200927604726 ;
createNode mesh -n "pCubeShape4" -p "pCube4";
	rename -uid "2C346FA4-40B4-619D-7D41-80B039043AF6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.32731892168521881 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".pt";
	setAttr ".pt[2]" -type "float3" 0 0.1751304 0 ;
	setAttr ".pt[3]" -type "float3" 0 0.1751304 0 ;
	setAttr ".pt[20]" -type "float3" 0 0.1751304 0 ;
	setAttr ".pt[27]" -type "float3" 0 0.1751304 0 ;
	setAttr ".pt[29]" -type "float3" 0.35445821 0 0 ;
	setAttr ".pt[30]" -type "float3" 0 -0.20528786 0 ;
	setAttr ".pt[31]" -type "float3" 0.35445821 -0.20528786 0 ;
	setAttr ".pt[33]" -type "float3" -0.35445821 0 0 ;
	setAttr ".pt[34]" -type "float3" -0.35445821 -0.20528786 0 ;
	setAttr ".pt[35]" -type "float3" 0 -0.20528786 0 ;
createNode transform -n "pCube5";
	rename -uid "CD4DFA8B-43CD-09D6-EC24-76A858E15E0E";
	setAttr ".t" -type "double3" -2.0290319049360406 -1.1096159967798784 1.8257841358359022 ;
	setAttr ".s" -type "double3" 1.6767708085546085 1.1444071664599833 3.3155415881094776 ;
createNode mesh -n "pCubeShape5" -p "pCube5";
	rename -uid "7F833183-41D2-7685-041C-2F985CBD9E8B";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.24871869385242462 0.15489565953612328 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 11 ".pt";
	setAttr ".pt[18]" -type "float3" 0.069358721 0 0 ;
	setAttr ".pt[20]" -type "float3" 0.069358721 0 0 ;
	setAttr ".pt[22]" -type "float3" 0.069358721 0 0 ;
	setAttr ".pt[24]" -type "float3" 0.069358721 0 0 ;
	setAttr ".pt[26]" -type "float3" 0.069358721 0 0 ;
	setAttr ".pt[28]" -type "float3" 0.069358721 0 0 ;
createNode transform -n "pCube6";
	rename -uid "8244DFC2-44F2-FDA8-E13D-9294AD62B750";
	setAttr ".t" -type "double3" -2.0290319049360406 -1.1096159967798784 -4.2675640225197595 ;
	setAttr ".s" -type "double3" 1.6767708085546085 1.1444071664599833 3.3155415881094776 ;
createNode mesh -n "pCubeShape6" -p "pCube6";
	rename -uid "AC74945D-456B-23A2-041C-D2A012C82A0D";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 2 "f[0:5]" "f[8:27]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[6:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75081446766853333 0.12499999068677425 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.4374938 1 0.375
		 0.99347949 0.375 0.758169 0.375 0.25686026 0.375 0.49146396 0.375 0.55629015 0.375
		 0.62151134 0.125 0.12091179 0.125 0 0.1508299 0.062493756 0.14461407 0.122285 0.35282332
		 0.18750632 0.15007831 0.18750624 0.35193154 0.062493742 0.35282332 0.12249855 0.35282332
		 0.12249855 0.35282332 0.18750632 0.15007831 0.18750624 0.14461407 0.122285 0.1508299
		 0.062493756 0.35193154 0.062493742 0.59317982 1.5636836e-008 0.63966399 0.039725553
		 0.63909709 0.21027444 0.875 0.25 0.85905844 0.21027446 0.875 0.12091179 0.875 0 0.63909703
		 0.12192044 0.85858071 0.039725523 0.8625319 0.1217847 0.4374938 0.12091179 0.59317982
		 0.24999999 0.4374938 0.25 0.59317976 0.5 0.4374938 0.5 0.59317982 0.6290881 0.4374938
		 0.75 0.59317982 1 0.4374938 7.2069044e-009 0.59317976 0.12091179 0.4374938 0.62908816
		 0.59317982 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 30 ".pt[18:29]" -type "float3"  0.069358706 0 0 0 0 0 0.069358706 
		0 0 0 0 0 0.069358706 0 0 0 0 0 0.069358706 0 0 0 0 0 0.069358706 0 0 0 0 0 0.069358706 
		0 0 0 0 0;
	setAttr -s 30 ".vt[0:29]"  -0.2500248 -0.5 0.50000006 -0.5 -0.250025 0.47391802
		 -0.5 -0.010005776 0.56602746 -0.2500248 -0.016352832 0.68560427 -0.2500248 0.5 0.50000006
		 -0.5 0.250025 0.47255903 -0.5 0.250025 -0.4658559 -0.2500248 0.5 -0.5 -0.5 -0.010859973 -0.53491271
		 -0.2500248 -0.016352832 -0.63668001 -0.2500248 -0.5 -0.5 -0.5 -0.250025 -0.46732396
		 -0.29693079 -0.010859972 -0.53491271 -0.29693079 -0.010005775 0.56602746 -0.29693079 0.250025 0.47255903
		 -0.29693079 0.250025 -0.4658559 -0.29693079 -0.25002494 0.47391802 -0.29693079 -0.25002494 -0.46732396
		 0.49999976 -0.3410978 0.48342031 0.37271929 -0.5 0.50000006 0.49999976 -0.012318183 0.60959274
		 0.37271929 -0.016352832 0.68560427 0.49999976 0.3410978 0.48255664 0.37271929 0.5 0.50000006
		 0.49999976 0.3410978 -0.47829556 0.37271929 0.5 -0.5 0.49999976 -0.012861174 -0.57198948
		 0.37271929 -0.016352832 -0.63668001 0.49999976 -0.3410978 -0.47922891 0.37271929 -0.5 -0.5;
	setAttr -s 56 ".ed[0:55]"  0 1 1 1 11 0 11 10 0 10 0 0 0 3 0 3 2 0 2 1 0
		 3 4 0 4 5 1 5 2 0 4 7 0 7 6 0 6 5 0 7 9 0 9 8 0 8 6 0 9 10 0 11 8 0 8 12 0 2 13 0
		 12 13 1 5 14 0 14 13 0 6 15 0 15 14 0 12 15 0 1 16 0 11 17 0 16 17 0 13 16 0 17 12 0
		 18 19 1 19 29 0 29 28 0 28 18 0 18 20 0 20 21 0 21 19 0 20 22 0 22 23 1 23 21 0 22 24 0
		 24 25 0 25 23 0 24 26 0 26 27 0 27 25 0 26 28 0 29 27 0 20 26 1 3 21 0 23 4 0 25 7 0
		 27 9 0 10 29 0 19 0 0;
	setAttr -s 28 -ch 112 ".fc[0:27]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 37
		f 4 -1 4 5 6
		mu 0 4 13 39 31 14
		f 4 -6 7 8 9
		mu 0 4 14 31 33 11
		f 4 -9 10 11 12
		mu 0 4 3 33 35 4
		f 4 -12 13 14 15
		mu 0 4 5 35 41 6
		f 4 -15 16 -3 17
		mu 0 4 10 7 8 9
		f 4 20 -23 -25 -26
		mu 0 4 18 15 16 17
		f 4 -29 -30 -21 -31
		mu 0 4 19 20 15 18
		f 4 -10 21 22 -20
		mu 0 4 14 11 16 15
		f 4 -13 23 24 -22
		mu 0 4 11 12 17 16
		f 4 -16 18 25 -24
		mu 0 4 12 10 18 17
		f 4 -2 26 28 -28
		mu 0 4 9 13 20 19
		f 4 -7 19 29 -27
		mu 0 4 13 14 15 20
		f 4 -18 27 30 -19
		mu 0 4 10 9 19 18
		f 4 31 32 33 34
		mu 0 4 22 21 27 29
		f 4 -32 35 36 37
		mu 0 4 21 22 28 40
		f 4 -37 38 39 40
		mu 0 4 40 28 23 32
		f 4 -40 41 42 43
		mu 0 4 32 23 25 24
		f 4 -43 44 45 46
		mu 0 4 24 25 30 26
		f 4 -46 47 -34 48
		mu 0 4 26 30 29 27
		f 4 49 -45 -42 -39
		mu 0 4 28 30 25 23
		f 4 -35 -48 -50 -36
		mu 0 4 22 29 30 28
		f 4 50 -41 51 -8
		mu 0 4 31 40 32 33
		f 4 -52 -44 52 -11
		mu 0 4 33 32 34 35
		f 4 -53 -47 53 -14
		mu 0 4 35 34 36 41
		f 4 54 -33 55 -4
		mu 0 4 37 42 38 0
		f 4 -56 -38 -51 -5
		mu 0 4 39 21 40 31
		f 4 -54 -49 -55 -17
		mu 0 4 41 36 42 37;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube7";
	rename -uid "A9CD29EF-4856-A553-2290-978BD31B8EE6";
	setAttr ".t" -type "double3" 0 1.3709486079227238 -1.9889284642743605 ;
	setAttr ".s" -type "double3" 1.7445458514930798 0.70592143552608999 2.453399988500482 ;
createNode mesh -n "pCubeShape7" -p "pCube7";
	rename -uid "F9CA12AD-4881-4383-37A9-3F873BFE25ED";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.46875312924385071 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 37 ".pt";
	setAttr ".pt[34]" -type "float3" -9.3132257e-010 0 0 ;
	setAttr ".pt[35]" -type "float3" 1.8626451e-009 0 0 ;
	setAttr ".pt[36]" -type "float3" 1.8626451e-009 1.8626451e-009 -4.6566129e-010 ;
	setAttr ".pt[37]" -type "float3" -9.3132257e-010 1.8626451e-009 9.3132257e-010 ;
	setAttr ".pt[38]" -type "float3" 0 -9.3132257e-010 -9.3132257e-010 ;
	setAttr ".pt[39]" -type "float3" 9.3132257e-010 -9.3132257e-010 -9.3132257e-010 ;
	setAttr ".pt[40]" -type "float3" 9.3132257e-010 0 0 ;
	setAttr ".pt[41]" -type "float3" -1.8626451e-009 0 0 ;
	setAttr ".pt[42]" -type "float3" 0 0 9.3132257e-010 ;
	setAttr ".pt[43]" -type "float3" 0 0 -9.3132257e-010 ;
	setAttr ".pt[44]" -type "float3" 0 -9.3132257e-010 0 ;
	setAttr ".pt[45]" -type "float3" -3.7252903e-009 -9.3132257e-010 0 ;
	setAttr ".pt[46]" -type "float3" 3.7252903e-009 -1.8626451e-009 -9.3132257e-010 ;
	setAttr ".pt[47]" -type "float3" 3.7252903e-009 0 9.3132257e-010 ;
	setAttr ".pt[49]" -type "float3" 0 -1.8626451e-009 0 ;
	setAttr ".pt[50]" -type "float3" 0 0 -0.076283671 ;
	setAttr ".pt[51]" -type "float3" 0 0 -0.054901168 ;
	setAttr ".pt[52]" -type "float3" 0 0 0.035862178 ;
	setAttr ".pt[53]" -type "float3" 0 0 0.057244744 ;
	setAttr ".pt[54]" -type "float3" 0 0 -0.035862178 ;
	setAttr ".pt[55]" -type "float3" 0 0 0.076283671 ;
	setAttr ".pt[56]" -type "float3" 0 0 -0.057244744 ;
	setAttr ".pt[57]" -type "float3" 0 0 0.054901097 ;
	setAttr ".pt[58]" -type "float3" 0 0 -0.072269239 ;
	setAttr ".pt[59]" -type "float3" 0 0 -0.053315565 ;
	setAttr ".pt[60]" -type "float3" 0 0 0.034873184 ;
	setAttr ".pt[61]" -type "float3" 0 0 0.05382685 ;
	setAttr ".pt[62]" -type "float3" 0 0 -0.033612825 ;
	setAttr ".pt[63]" -type "float3" 0 0 0.073529676 ;
	setAttr ".pt[64]" -type "float3" 0 0 -0.052566368 ;
	setAttr ".pt[65]" -type "float3" 0 0 0.054576144 ;
createNode transform -n "pCube8";
	rename -uid "94F37D1C-4582-293B-18B6-F9B22DB602B6";
	setAttr ".t" -type "double3" 0.15658409194281386 -1.1096159967798784 1.8257841358359022 ;
	setAttr ".s" -type "double3" 1.6767708085546085 1.1444071664599833 3.3155415881094776 ;
createNode mesh -n "pCubeShape8" -p "pCube8";
	rename -uid "0E5198BA-4780-26A2-E488-BC89E1F30AF3";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75081446766853333 0.16602957993745804 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape1" -p "pCube8";
	rename -uid "2B851C88-422D-142F-D9BF-FA9D8CD6FBFA";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.51533681154251099 0.18545589596033096 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.4374938 1 0.375
		 0.99347949 0.375 0.758169 0.375 0.25686026 0.375 0.49146396 0.375 0.55629015 0.375
		 0.62151134 0.125 0.12091179 0.125 0 0.1508299 0.062493756 0.14461407 0.122285 0.35282332
		 0.18750632 0.15007831 0.18750624 0.35193154 0.062493742 0.35282332 0.12249855 0.35282332
		 0.12249855 0.35282332 0.18750632 0.15007831 0.18750624 0.14461407 0.122285 0.1508299
		 0.062493756 0.35193154 0.062493742 0.59317982 1.5636836e-008 0.63966399 0.039725553
		 0.63909709 0.21027444 0.875 0.25 0.85905844 0.21027446 0.875 0.12091179 0.875 0 0.63909703
		 0.12192044 0.85858071 0.039725523 0.8625319 0.1217847 0.4374938 0.12091179 0.59317982
		 0.24999999 0.4374938 0.25 0.59317976 0.5 0.4374938 0.5 0.59317982 0.6290881 0.4374938
		 0.75 0.59317982 1 0.4374938 7.2069044e-009 0.59317976 0.12091179 0.4374938 0.62908816
		 0.59317982 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".pt";
	setAttr ".pt[18]" -type "float3" 0.069358721 0 0 ;
	setAttr ".pt[20]" -type "float3" 0.069358721 0 0 ;
	setAttr ".pt[22]" -type "float3" 0.069358721 0 0 ;
	setAttr ".pt[24]" -type "float3" 0.069358721 0 0 ;
	setAttr ".pt[26]" -type "float3" 0.069358721 0 0 ;
	setAttr ".pt[28]" -type "float3" 0.069358721 0 0 ;
	setAttr -s 30 ".vt[0:29]"  -0.2500248 -0.5 0.50000006 -0.5 -0.250025 0.47391802
		 -0.5 -0.010005776 0.56602746 -0.2500248 -0.016352832 0.68560427 -0.2500248 0.5 0.50000006
		 -0.5 0.250025 0.47255903 -0.5 0.250025 -0.4658559 -0.2500248 0.5 -0.5 -0.5 -0.010859973 -0.53491271
		 -0.2500248 -0.016352832 -0.63668001 -0.2500248 -0.5 -0.5 -0.5 -0.250025 -0.46732396
		 -0.29693079 -0.010859972 -0.53491271 -0.29693079 -0.010005775 0.56602746 -0.29693079 0.250025 0.47255903
		 -0.29693079 0.250025 -0.4658559 -0.29693079 -0.25002494 0.47391802 -0.29693079 -0.25002494 -0.46732396
		 0.49999976 -0.3410978 0.48342031 0.37271929 -0.5 0.50000006 0.49999976 -0.012318183 0.60959274
		 0.37271929 -0.016352832 0.68560427 0.49999976 0.3410978 0.48255664 0.37271929 0.5 0.50000006
		 0.49999976 0.3410978 -0.47829556 0.37271929 0.5 -0.5 0.49999976 -0.012861174 -0.57198948
		 0.37271929 -0.016352832 -0.63668001 0.49999976 -0.3410978 -0.47922891 0.37271929 -0.5 -0.5;
	setAttr -s 56 ".ed[0:55]"  0 1 1 1 11 0 11 10 0 10 0 0 0 3 0 3 2 0 2 1 0
		 3 4 0 4 5 1 5 2 0 4 7 0 7 6 0 6 5 0 7 9 0 9 8 0 8 6 0 9 10 0 11 8 0 8 12 0 2 13 0
		 12 13 1 5 14 0 14 13 0 6 15 0 15 14 0 12 15 0 1 16 0 11 17 0 16 17 0 13 16 0 17 12 0
		 18 19 1 19 29 0 29 28 0 28 18 0 18 20 0 20 21 0 21 19 0 20 22 0 22 23 1 23 21 0 22 24 0
		 24 25 0 25 23 0 24 26 0 26 27 0 27 25 0 26 28 0 29 27 0 20 26 1 3 21 0 23 4 0 25 7 0
		 27 9 0 10 29 0 19 0 0;
	setAttr -s 28 -ch 112 ".fc[0:27]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 37
		f 4 -1 4 5 6
		mu 0 4 13 39 31 14
		f 4 -6 7 8 9
		mu 0 4 14 31 33 11
		f 4 -9 10 11 12
		mu 0 4 3 33 35 4
		f 4 -12 13 14 15
		mu 0 4 5 35 41 6
		f 4 -15 16 -3 17
		mu 0 4 10 7 8 9
		f 4 20 -23 -25 -26
		mu 0 4 18 15 16 17
		f 4 -29 -30 -21 -31
		mu 0 4 19 20 15 18
		f 4 -10 21 22 -20
		mu 0 4 14 11 16 15
		f 4 -13 23 24 -22
		mu 0 4 11 12 17 16
		f 4 -16 18 25 -24
		mu 0 4 12 10 18 17
		f 4 -2 26 28 -28
		mu 0 4 9 13 20 19
		f 4 -7 19 29 -27
		mu 0 4 13 14 15 20
		f 4 -18 27 30 -19
		mu 0 4 10 9 19 18
		f 4 31 32 33 34
		mu 0 4 22 21 27 29
		f 4 -32 35 36 37
		mu 0 4 21 22 28 40
		f 4 -37 38 39 40
		mu 0 4 40 28 23 32
		f 4 -40 41 42 43
		mu 0 4 32 23 25 24
		f 4 -43 44 45 46
		mu 0 4 24 25 30 26
		f 4 -46 47 -34 48
		mu 0 4 26 30 29 27
		f 4 49 -45 -42 -39
		mu 0 4 28 30 25 23
		f 4 -35 -48 -50 -36
		mu 0 4 22 29 30 28
		f 4 50 -41 51 -8
		mu 0 4 31 40 32 33
		f 4 -52 -44 52 -11
		mu 0 4 33 32 34 35
		f 4 -53 -47 53 -14
		mu 0 4 35 34 36 41
		f 4 54 -33 55 -4
		mu 0 4 37 42 38 0
		f 4 -56 -38 -51 -5
		mu 0 4 39 21 40 31
		f 4 -54 -49 -55 -17
		mu 0 4 41 36 42 37;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube9";
	rename -uid "FD977F00-40A9-518A-F07F-77AF11C7CC4C";
	setAttr ".t" -type "double3" 0.15658409194281386 -1.1096159967798784 -4.2742928925120944 ;
	setAttr ".s" -type "double3" 1.6767708085546085 1.1444071664599833 3.3155415881094776 ;
createNode mesh -n "pCubeShape9" -p "pCube9";
	rename -uid "2F82242C-4016-84F1-0C28-6E86B36E9AD9";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 3 "f[0:5]" "f[8:19]" "f[21:27]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 2 "f[6:7]" "f[20]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75081446766853333 0.16602957993745804 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.4374938 1 0.375
		 0.99347949 0.375 0.758169 0.4374938 0.75 0.35193154 0.062493742 0.4374938 7.2069044e-009
		 0.4374938 0.12091179 0.35282332 0.12249855 0.4374938 0.25 0.35282332 0.18750632 0.375
		 0.25686026 0.4374938 0.5 0.375 0.49146396 0.375 0.55629015 0.4374938 0.62908816 0.375
		 0.62151134 0.14461407 0.122285 0.125 0.12091179 0.125 0 0.1508299 0.062493756 0.14461407
		 0.122285 0.35282332 0.12249855 0.35282332 0.18750632 0.15007831 0.18750624 0.1508299
		 0.062493756 0.35193154 0.062493742 0.15007831 0.18750624 0.63966399 0.039725553 0.59317982
		 1.5636836e-008 0.875 0 0.85858071 0.039725523 0.63909703 0.12192044 0.59317976 0.12091179
		 0.63909709 0.21027444 0.59317982 0.24999999 0.85905844 0.21027446 0.875 0.25 0.8625319
		 0.1217847 0.875 0.12091179 0.59317976 0.5 0.59317982 0.6290881 0.59317982 0.75 0.59317982
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 30 ".vt[0:29]"  1.38874173 -0.50000006 0.50000006 1.6387167 -0.25002509 0.47391802
		 1.6387167 -0.25002509 -0.46732402 1.38874173 -0.50000006 -0.5 1.38874173 -0.016352892 0.68560427
		 1.6387167 -0.010005832 0.56602746 1.38874173 0.49999994 0.50000006 1.6387167 0.25002497 0.47255903
		 1.38874173 0.49999994 -0.5 1.6387167 0.25002497 -0.46585593 1.38874173 -0.016352892 -0.63668001
		 1.6387167 -0.010860085 -0.53491271 1.43564773 -0.010860085 -0.53491271 1.43564773 -0.010005832 0.56602746
		 1.43564773 0.25002497 0.47255903 1.43564773 0.25002497 -0.46585593 1.43564773 -0.25002497 -0.46732402
		 1.43564773 -0.25002497 0.47391802 0.56935859 -0.34109789 0.48342019 0.76599789 -0.50000006 0.50000006
		 0.76599789 -0.50000006 -0.5 0.56935859 -0.34109789 -0.47922891 0.56935859 -0.012318194 0.60959274
		 0.76599789 -0.016352892 0.68560427 0.56935859 0.34109771 0.48255664 0.76599789 0.49999994 0.50000006
		 0.56935859 0.34109771 -0.47829556 0.76599789 0.49999994 -0.5 0.56935859 -0.012861252 -0.57198948
		 0.76599789 -0.016352892 -0.63668001;
	setAttr -s 56 ".ed[0:55]"  0 1 1 1 2 0 2 3 0 3 0 0 0 4 0 4 5 0 5 1 0
		 4 6 0 6 7 1 7 5 0 6 8 0 8 9 0 9 7 0 8 10 0 10 11 0 11 9 0 10 3 0 2 11 0 12 13 1 14 13 0
		 15 14 0 12 15 0 17 16 0 13 17 0 16 12 0 7 14 0 5 13 0 9 15 0 11 12 0 1 17 0 2 16 0
		 18 19 1 19 20 0 20 21 0 21 18 0 18 22 0 22 23 0 23 19 0 22 24 0 24 25 1 25 23 0 24 26 0
		 26 27 0 27 25 0 26 28 0 28 29 0 29 27 0 28 21 0 20 29 0 22 28 1 4 23 0 25 6 0 27 8 0
		 29 10 0 3 20 0 19 0 0;
	setAttr -s 28 -ch 112 ".fc[0:27]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 3 2 1
		f 4 -7 -6 -5 0
		mu 0 4 4 7 6 5
		f 4 -10 -9 -8 5
		mu 0 4 7 9 8 6
		f 4 -13 -12 -11 8
		mu 0 4 10 12 11 8
		f 4 -16 -15 -14 11
		mu 0 4 13 15 14 11
		f 4 -18 2 -17 14
		mu 0 4 16 19 18 17
		f 4 21 20 19 -19
		mu 0 4 20 23 22 21
		f 4 24 18 23 22
		mu 0 4 24 20 21 25
		f 4 26 -20 -26 9
		mu 0 4 7 21 22 9
		f 4 25 -21 -28 12
		mu 0 4 9 22 23 26
		f 4 27 -22 -29 15
		mu 0 4 26 23 20 16
		f 4 30 -23 -30 1
		mu 0 4 19 24 25 4
		f 4 29 -24 -27 6
		mu 0 4 4 25 21 7
		f 4 28 -25 -31 17
		mu 0 4 16 20 24 19
		f 4 -35 -34 -33 -32
		mu 0 4 27 30 29 28
		f 4 -38 -37 -36 31
		mu 0 4 28 32 31 27
		f 4 -41 -40 -39 36
		mu 0 4 32 34 33 31
		f 4 -44 -43 -42 39
		mu 0 4 34 36 35 33
		f 4 -47 -46 -45 42
		mu 0 4 36 38 37 35
		f 4 -49 33 -48 45
		mu 0 4 38 29 30 37
		f 4 38 41 44 -50
		mu 0 4 31 33 35 37
		f 4 35 49 47 34
		mu 0 4 27 31 37 30
		f 4 7 -52 40 -51
		mu 0 4 6 8 34 32
		f 4 10 -53 43 51
		mu 0 4 8 11 39 34
		f 4 13 -54 46 52
		mu 0 4 11 14 40 39
		f 4 3 -56 32 -55
		mu 0 4 3 0 42 41
		f 4 4 50 37 55
		mu 0 4 5 6 32 28
		f 4 16 54 48 53
		mu 0 4 14 3 41 40;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "pCube9";
	rename -uid "547874AE-4DB2-12AD-6D4B-14ABD973042E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.51533681154251099 0.18545589596033096 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.4374938 1 0.375
		 0.99347949 0.375 0.758169 0.375 0.25686026 0.375 0.49146396 0.375 0.55629015 0.375
		 0.62151134 0.125 0.12091179 0.125 0 0.1508299 0.062493756 0.14461407 0.122285 0.35282332
		 0.18750632 0.15007831 0.18750624 0.35193154 0.062493742 0.35282332 0.12249855 0.35282332
		 0.12249855 0.35282332 0.18750632 0.15007831 0.18750624 0.14461407 0.122285 0.1508299
		 0.062493756 0.35193154 0.062493742 0.59317982 1.5636836e-008 0.63966399 0.039725553
		 0.63909709 0.21027444 0.875 0.25 0.85905844 0.21027446 0.875 0.12091179 0.875 0 0.63909703
		 0.12192044 0.85858071 0.039725523 0.8625319 0.1217847 0.4374938 0.12091179 0.59317982
		 0.24999999 0.4374938 0.25 0.59317976 0.5 0.4374938 0.5 0.59317982 0.6290881 0.4374938
		 0.75 0.59317982 1 0.4374938 7.2069044e-009 0.59317976 0.12091179 0.4374938 0.62908816
		 0.59317982 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".pt";
	setAttr ".pt[18]" -type "float3" 0.069358721 0 0 ;
	setAttr ".pt[20]" -type "float3" 0.069358721 0 0 ;
	setAttr ".pt[22]" -type "float3" 0.069358721 0 0 ;
	setAttr ".pt[24]" -type "float3" 0.069358721 0 0 ;
	setAttr ".pt[26]" -type "float3" 0.069358721 0 0 ;
	setAttr ".pt[28]" -type "float3" 0.069358721 0 0 ;
	setAttr -s 30 ".vt[0:29]"  -0.2500248 -0.5 0.50000006 -0.5 -0.250025 0.47391802
		 -0.5 -0.010005776 0.56602746 -0.2500248 -0.016352832 0.68560427 -0.2500248 0.5 0.50000006
		 -0.5 0.250025 0.47255903 -0.5 0.250025 -0.4658559 -0.2500248 0.5 -0.5 -0.5 -0.010859973 -0.53491271
		 -0.2500248 -0.016352832 -0.63668001 -0.2500248 -0.5 -0.5 -0.5 -0.250025 -0.46732396
		 -0.29693079 -0.010859972 -0.53491271 -0.29693079 -0.010005775 0.56602746 -0.29693079 0.250025 0.47255903
		 -0.29693079 0.250025 -0.4658559 -0.29693079 -0.25002494 0.47391802 -0.29693079 -0.25002494 -0.46732396
		 0.49999976 -0.3410978 0.48342031 0.37271929 -0.5 0.50000006 0.49999976 -0.012318183 0.60959274
		 0.37271929 -0.016352832 0.68560427 0.49999976 0.3410978 0.48255664 0.37271929 0.5 0.50000006
		 0.49999976 0.3410978 -0.47829556 0.37271929 0.5 -0.5 0.49999976 -0.012861174 -0.57198948
		 0.37271929 -0.016352832 -0.63668001 0.49999976 -0.3410978 -0.47922891 0.37271929 -0.5 -0.5;
	setAttr -s 56 ".ed[0:55]"  0 1 1 1 11 0 11 10 0 10 0 0 0 3 0 3 2 0 2 1 0
		 3 4 0 4 5 1 5 2 0 4 7 0 7 6 0 6 5 0 7 9 0 9 8 0 8 6 0 9 10 0 11 8 0 8 12 0 2 13 0
		 12 13 1 5 14 0 14 13 0 6 15 0 15 14 0 12 15 0 1 16 0 11 17 0 16 17 0 13 16 0 17 12 0
		 18 19 1 19 29 0 29 28 0 28 18 0 18 20 0 20 21 0 21 19 0 20 22 0 22 23 1 23 21 0 22 24 0
		 24 25 0 25 23 0 24 26 0 26 27 0 27 25 0 26 28 0 29 27 0 20 26 1 3 21 0 23 4 0 25 7 0
		 27 9 0 10 29 0 19 0 0;
	setAttr -s 28 -ch 112 ".fc[0:27]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 37
		f 4 -1 4 5 6
		mu 0 4 13 39 31 14
		f 4 -6 7 8 9
		mu 0 4 14 31 33 11
		f 4 -9 10 11 12
		mu 0 4 3 33 35 4
		f 4 -12 13 14 15
		mu 0 4 5 35 41 6
		f 4 -15 16 -3 17
		mu 0 4 10 7 8 9
		f 4 20 -23 -25 -26
		mu 0 4 18 15 16 17
		f 4 -29 -30 -21 -31
		mu 0 4 19 20 15 18
		f 4 -10 21 22 -20
		mu 0 4 14 11 16 15
		f 4 -13 23 24 -22
		mu 0 4 11 12 17 16
		f 4 -16 18 25 -24
		mu 0 4 12 10 18 17
		f 4 -2 26 28 -28
		mu 0 4 9 13 20 19
		f 4 -7 19 29 -27
		mu 0 4 13 14 15 20
		f 4 -18 27 30 -19
		mu 0 4 10 9 19 18
		f 4 31 32 33 34
		mu 0 4 22 21 27 29
		f 4 -32 35 36 37
		mu 0 4 21 22 28 40
		f 4 -37 38 39 40
		mu 0 4 40 28 23 32
		f 4 -40 41 42 43
		mu 0 4 32 23 25 24
		f 4 -43 44 45 46
		mu 0 4 24 25 30 26
		f 4 -46 47 -34 48
		mu 0 4 26 30 29 27
		f 4 49 -45 -42 -39
		mu 0 4 28 30 25 23
		f 4 -35 -48 -50 -36
		mu 0 4 22 29 30 28
		f 4 50 -41 51 -8
		mu 0 4 31 40 32 33
		f 4 -52 -44 52 -11
		mu 0 4 33 32 34 35
		f 4 -53 -47 53 -14
		mu 0 4 35 34 36 41
		f 4 54 -33 55 -4
		mu 0 4 37 42 38 0
		f 4 -56 -38 -51 -5
		mu 0 4 39 21 40 31
		f 4 -54 -49 -55 -17
		mu 0 4 41 36 42 37;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube10";
	rename -uid "5E136A4A-42E5-859A-EEEF-E1A2C67B99DD";
	setAttr ".t" -type "double3" 1.2376286656471711 0 -3.3441959655962514 ;
	setAttr ".s" -type "double3" 2.0612421822544542 1 2.4817185730396529 ;
createNode mesh -n "pCubeShape10" -p "pCube10";
	rename -uid "FF1A8B77-4EA3-2F0A-B9A2-09B63135EEAA";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.33811450004577637 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 15 ".pt";
	setAttr ".pt[0]" -type "float3" 0 -1.1920929e-007 0 ;
	setAttr ".pt[7]" -type "float3" 0 -2.9802322e-008 -2.9802322e-008 ;
	setAttr ".pt[8]" -type "float3" 0 0 7.4505806e-009 ;
	setAttr ".pt[9]" -type "float3" 0.17717344 0.51056898 -0.37147954 ;
	setAttr ".pt[10]" -type "float3" 0 -1.4901161e-007 0 ;
	setAttr ".pt[11]" -type "float3" 0 -1.1920929e-007 0 ;
	setAttr ".pt[12]" -type "float3" 0.17717344 -1.1920929e-007 0 ;
	setAttr ".pt[13]" -type "float3" 0.17717344 -1.1920929e-007 0 ;
	setAttr ".pt[16]" -type "float3" 0 0.5105691 -0.37147954 ;
	setAttr ".pt[17]" -type "float3" -0.27704105 0 0 ;
	setAttr ".pt[22]" -type "float3" 0.17717344 0 0 ;
	setAttr ".pt[23]" -type "float3" 0.17717344 0 0 ;
	setAttr ".pt[24]" -type "float3" 0.17717344 0 -0.3845115 ;
	setAttr ".pt[25]" -type "float3" 0 0 7.4505806e-009 ;
createNode mesh -n "polySurfaceShape2" -p "pCube10";
	rename -uid "96269EA9-454E-4C9B-89B8-93942B771706";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.55122900009155273 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 25 ".uvst[0].uvsp[0:24]" -type "float2" 0.375 0 0.375 0.25
		 0.375 0.5 0.375 0.75 0.375 1 0.125 0 0.125 0.25 0.551229 0.5 0.551229 0.75 0.551229
		 0 0.551229 1 0.551229 0.25 0.375 0.5 0.551229 0.5 0.551229 0.75 0.375 0.75 0.551229
		 0 0.551229 0.25 0.50520062 0.25 0.50520062 0.5 0.50520062 0.5 0.50520062 0.75 0.50520062
		 0.75 0.50520062 0 0.50520062 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  -0.49999994 -0.5 0.52197045 -0.49999994 -0.028464437 0.52197045
		 -0.49999994 -0.028464437 -0.5 -0.49999994 -0.5 -0.5 0.20491606 0.5 -0.5 0.20491606 -0.5 -0.5
		 0.20491606 -0.5 0.49999994 0.20491606 0.5 0.49999994 -0.49999994 -0.028464437 -0.81491232
		 -0.068426192 0.5 -0.83688283 -0.068426192 -0.5 -0.83688283 -0.49999994 -0.5 -0.81491232
		 0.20491606 -0.5 0.80758882 0.20491606 -0.028464496 0.80758882 -0.20845221 0.5 0.29335546
		 -0.20845221 0.5 -0.5 -0.18114683 0.5 -0.83114445 -0.18114683 -0.5 -0.83114445 -0.20845222 -0.5 -0.5
		 -0.20845222 -0.5 0.50573832;
	setAttr -s 36 ".ed[0:35]"  0 19 1 1 14 1 2 15 1 3 18 1 0 1 1 1 2 0 2 3 1
		 3 0 0 4 5 0 5 6 0 6 7 0 7 4 0 2 8 0 4 9 0 8 16 0 5 10 0 9 10 0 3 11 0 11 17 0 8 11 0
		 6 12 0 0 12 0 7 13 0 12 13 0 1 13 0 14 7 1 15 4 1 14 15 1 16 9 0 15 16 1 17 10 0
		 16 17 1 18 5 1 17 18 1 19 6 1 18 19 1;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 21 23 -25 -5
		mu 0 4 0 16 17 1
		f 4 1 27 -3 -6
		mu 0 4 1 18 19 2
		f 4 14 31 -19 -20
		mu 0 4 12 20 21 15
		f 4 3 35 -1 -8
		mu 0 4 3 22 24 4
		f 4 7 4 5 6
		mu 0 4 5 0 1 6
		f 4 2 29 -15 -13
		mu 0 4 2 19 20 12
		f 4 8 15 -17 -14
		mu 0 4 7 8 14 13
		f 4 -4 17 18 33
		mu 0 4 22 3 15 21
		f 4 -7 12 19 -18
		mu 0 4 3 2 12 15
		f 4 0 34 20 -22
		mu 0 4 0 23 9 16
		f 4 10 22 -24 -21
		mu 0 4 9 11 17 16
		f 4 -26 -2 24 -23
		mu 0 4 11 18 1 17
		f 4 25 11 -27 -28
		mu 0 4 18 11 7 19
		f 4 -30 26 13 -29
		mu 0 4 20 19 7 13
		f 4 -32 28 16 -31
		mu 0 4 21 20 13 14
		f 4 -33 -34 30 -16
		mu 0 4 8 22 21 14
		f 4 -36 32 9 -35
		mu 0 4 24 22 8 10
		f 4 -9 -12 -11 -10
		mu 0 4 8 7 11 10;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube11";
	rename -uid "A91399EF-4B28-27D0-CE51-62BA0A8C11AE";
	setAttr ".t" -type "double3" -4.9774346262015161 0 -3.3441959655962514 ;
	setAttr ".s" -type "double3" 2.0612421822544542 1 2.4817185730396529 ;
createNode mesh -n "pCubeShape11" -p "pCube11";
	rename -uid "3CBF111B-4C26-F8C0-60C3-B89D1FD3AF06";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.33811450004577637 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape2" -p "pCube11";
	rename -uid "32F2340A-4D49-4AF4-B061-1D9677CE2FF3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.55122900009155273 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 25 ".uvst[0].uvsp[0:24]" -type "float2" 0.375 0 0.375 0.25
		 0.375 0.5 0.375 0.75 0.375 1 0.125 0 0.125 0.25 0.551229 0.5 0.551229 0.75 0.551229
		 0 0.551229 1 0.551229 0.25 0.375 0.5 0.551229 0.5 0.551229 0.75 0.375 0.75 0.551229
		 0 0.551229 0.25 0.50520062 0.25 0.50520062 0.5 0.50520062 0.5 0.50520062 0.75 0.50520062
		 0.75 0.50520062 0 0.50520062 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  -0.49999994 -0.5 0.52197045 -0.49999994 -0.028464437 0.52197045
		 -0.49999994 -0.028464437 -0.5 -0.49999994 -0.5 -0.5 0.20491606 0.5 -0.5 0.20491606 -0.5 -0.5
		 0.20491606 -0.5 0.49999994 0.20491606 0.5 0.49999994 -0.49999994 -0.028464437 -0.81491232
		 -0.068426192 0.5 -0.83688283 -0.068426192 -0.5 -0.83688283 -0.49999994 -0.5 -0.81491232
		 0.20491606 -0.5 0.80758882 0.20491606 -0.028464496 0.80758882 -0.20845221 0.5 0.29335546
		 -0.20845221 0.5 -0.5 -0.18114683 0.5 -0.83114445 -0.18114683 -0.5 -0.83114445 -0.20845222 -0.5 -0.5
		 -0.20845222 -0.5 0.50573832;
	setAttr -s 36 ".ed[0:35]"  0 19 1 1 14 1 2 15 1 3 18 1 0 1 1 1 2 0 2 3 1
		 3 0 0 4 5 0 5 6 0 6 7 0 7 4 0 2 8 0 4 9 0 8 16 0 5 10 0 9 10 0 3 11 0 11 17 0 8 11 0
		 6 12 0 0 12 0 7 13 0 12 13 0 1 13 0 14 7 1 15 4 1 14 15 1 16 9 0 15 16 1 17 10 0
		 16 17 1 18 5 1 17 18 1 19 6 1 18 19 1;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 21 23 -25 -5
		mu 0 4 0 16 17 1
		f 4 1 27 -3 -6
		mu 0 4 1 18 19 2
		f 4 14 31 -19 -20
		mu 0 4 12 20 21 15
		f 4 3 35 -1 -8
		mu 0 4 3 22 24 4
		f 4 7 4 5 6
		mu 0 4 5 0 1 6
		f 4 2 29 -15 -13
		mu 0 4 2 19 20 12
		f 4 8 15 -17 -14
		mu 0 4 7 8 14 13
		f 4 -4 17 18 33
		mu 0 4 22 3 15 21
		f 4 -7 12 19 -18
		mu 0 4 3 2 12 15
		f 4 0 34 20 -22
		mu 0 4 0 23 9 16
		f 4 10 22 -24 -21
		mu 0 4 9 11 17 16
		f 4 -26 -2 24 -23
		mu 0 4 11 18 1 17
		f 4 25 11 -27 -28
		mu 0 4 18 11 7 19
		f 4 -30 26 13 -29
		mu 0 4 20 19 7 13
		f 4 -32 28 16 -31
		mu 0 4 21 20 13 14
		f 4 -33 -34 30 -16
		mu 0 4 8 22 21 14
		f 4 -36 32 9 -35
		mu 0 4 24 22 8 10
		f 4 -9 -12 -11 -10
		mu 0 4 8 7 11 10;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape3" -p "pCube11";
	rename -uid "2B21617F-4E57-FB1C-1991-52B87EAC7FC3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.55122900009155273 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 31 ".uvst[0].uvsp[0:30]" -type "float2" 0.375 0 0.551229
		 0 0.551229 0.25 0.375 0.25 0.50520062 0.25 0.50520062 0.5 0.375 0.5 0.375 0.5 0.50520062
		 0.5 0.50520062 0.75 0.375 0.75 0.375 0.75 0.50520062 0.75 0.50520062 1 0.375 1 0.125
		 0 0.125 0.25 0.551229 0.5 0.551229 0.75 0.551229 0.75 0.551229 0.5 0.50520062 0 0.551229
		 0 0.551229 0.25 0.551229 1 0.375 0.75 0.375 1 0.50520062 1 0.50520062 0.75 0.50520062
		 0.75 0.375 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 15 ".pt";
	setAttr ".pt[0]" -type "float3" 0 -1.1920929e-007 0 ;
	setAttr ".pt[7]" -type "float3" 0 -2.9802322e-008 -2.9802322e-008 ;
	setAttr ".pt[8]" -type "float3" 0 0 7.4505806e-009 ;
	setAttr ".pt[9]" -type "float3" 0.17717344 0.51056898 -0.37147954 ;
	setAttr ".pt[10]" -type "float3" 0 -1.4901161e-007 0 ;
	setAttr ".pt[11]" -type "float3" 0 -1.1920929e-007 0 ;
	setAttr ".pt[12]" -type "float3" 0.17717344 -1.1920929e-007 0 ;
	setAttr ".pt[13]" -type "float3" 0.17717344 -1.1920929e-007 0 ;
	setAttr ".pt[16]" -type "float3" 0 0.5105691 -0.37147954 ;
	setAttr ".pt[17]" -type "float3" -0.27704105 0 0 ;
	setAttr ".pt[22]" -type "float3" 0.17717344 0 0 ;
	setAttr ".pt[23]" -type "float3" 0.17717344 0 0 ;
	setAttr ".pt[24]" -type "float3" 0.17717344 0 -0.3845115 ;
	setAttr ".pt[25]" -type "float3" 0 0 7.4505806e-009 ;
	setAttr -s 26 ".vt[0:25]"  0.90983224 -0.5 0.52197039 0.20491624 -0.5 0.80758864
		 0.20491624 -0.028464496 0.80758864 0.90983224 -0.028464437 0.52197039 0.61828458 0.5 0.29335535
		 0.61828458 0.5 -0.5 0.90983224 -0.028464437 -0.5 0.90983224 -0.028464437 -0.81491232
		 0.59097922 0.5 -0.83114457 0.59097922 -0.5 -0.83114457 0.90983224 -0.5 -0.81491232
		 0.90983224 -0.5 -0.5 0.61828458 -0.5 -0.5 0.61828458 -0.5 0.5057382 0.20491624 0.5 -0.5
		 0.20491624 -0.5 -0.5 0.47825849 -0.5 -0.83688283 0.47825849 0.5 -0.83688283 0.20491624 -0.5 0.49999994
		 0.20491624 0.5 0.49999994 0.90983224 -1.10397768 -0.5 0.90983224 -1.10397768 0.52197039
		 0.61828458 -1.10397768 0.5057382 0.61828458 -1.10397768 -0.5 0.59097922 -1.10397768 -0.83114457
		 0.90983224 -1.10397768 -0.81491232;
	setAttr -s 48 ".ed[0:47]"  0 1 0 1 2 0 3 2 0 0 3 1 3 4 1 4 5 1 6 5 1
		 3 6 0 7 8 0 8 9 1 10 9 1 7 10 0 12 13 0 0 13 0 11 0 1 6 11 1 5 8 1 6 7 0 14 15 0
		 15 16 0 17 16 0 14 17 0 11 10 1 9 12 0 13 18 1 18 1 0 18 19 0 19 2 0 4 19 1 19 14 0
		 5 14 1 8 17 0 9 16 0 12 15 1 15 18 0 11 20 1 0 21 0 20 21 0 13 22 0 21 22 0 12 23 1
		 23 22 0 20 23 1 9 24 0 24 23 0 10 25 0 25 24 0 20 25 0;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 3 2 -2 -1
		mu 0 4 0 3 2 1
		f 4 7 6 -6 -5
		mu 0 4 3 6 5 4
		f 4 11 10 -10 -9
		mu 0 4 7 10 9 8
		f 4 37 39 -42 -43
		mu 0 4 25 26 27 28
		f 4 -16 -8 -4 -15
		mu 0 4 15 16 3 0
		f 4 17 8 -17 -7
		mu 0 4 6 7 8 5
		f 4 21 20 -20 -19
		mu 0 4 17 20 19 18
		f 4 -45 -47 -48 42
		mu 0 4 28 29 30 25
		f 4 22 -12 -18 15
		mu 0 4 11 10 7 6
		f 4 0 -26 -25 -14
		mu 0 4 0 1 22 21
		f 4 25 1 -28 -27
		mu 0 4 22 1 2 23
		f 4 27 -3 4 28
		mu 0 4 23 2 3 4
		f 4 5 30 -30 -29
		mu 0 4 4 5 17 23
		f 4 31 -22 -31 16
		mu 0 4 8 20 17 5
		f 4 32 -21 -32 9
		mu 0 4 9 19 20 8
		f 4 19 -33 23 33
		mu 0 4 18 19 9 12
		f 4 24 -35 -34 12
		mu 0 4 13 24 18 12
		f 4 34 26 29 18
		mu 0 4 18 24 23 17
		f 4 14 36 -38 -36
		mu 0 4 11 14 26 25
		f 4 13 38 -40 -37
		mu 0 4 14 13 27 26
		f 4 -13 40 41 -39
		mu 0 4 13 12 28 27
		f 4 -24 43 44 -41
		mu 0 4 12 9 29 28
		f 4 -11 45 46 -44
		mu 0 4 9 10 30 29
		f 4 -23 35 47 -46
		mu 0 4 10 11 25 30;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "F18C5711-49A5-E81D-EA7E-07BF94068C58";
	setAttr -s 6 ".lnk";
	setAttr -s 6 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "410A7CD8-464B-5F34-3E19-C6B2B55464D8";
	setAttr ".cdl" 3;
	setAttr -s 6 ".dli[1:6]"  1 2 3 4 5 6;
	setAttr -s 7 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "E445DA41-43E9-32C7-DCA7-509DD5FC93C2";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "3F2D4477-4C00-F29F-8877-D195F5BC44A4";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "39586EC4-4B28-DE78-6767-FBAF955C0400";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	rename -uid "9DA0566D-4558-37CA-73EE-7B8398F4E052";
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "D6928E16-435E-CAB1-AE58-E4A24E879CA3";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 3.815190935323987 0 0 0 0 1.2986374398615805 0 0 0 0 4.010863845373156 0
		 0.033823505294960698 0 -2.0294103176976321 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.033823505 0 -0.023978395 ;
	setAttr ".rs" 51639;
	setAttr ".lt" -type "double3" 0 0 1.1838226853236191 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.8737719623670328 -0.64931871993079027 -0.023978395011054143 ;
	setAttr ".cbx" -type "double3" 1.9414189729569542 0.64931871993079027 -0.023978395011054143 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "17A32A6A-400F-8E45-593F-17B4EED9F079";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 3.815190935323987 0 0 0 0 1.2986374398615805 0 0 0 0 4.010863845373156 0
		 0.033823505294960698 0 -2.0294103176976321 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.033823393 0.6493187 -2.0294106 ;
	setAttr ".rs" 38558;
	setAttr ".lt" -type "double3" 0 -3.6175293619132845e-016 0.37080961136855028 ;
	setAttr ".off" 0.5;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.8737721897701332 0.64931871993079027 -4.0348427185164395 ;
	setAttr ".cbx" -type "double3" 1.9414189729569542 0.64931871993079027 -0.023978514544111373 ;
createNode polyTweak -n "polyTweak1";
	rename -uid "090D0D2F-402D-DF2D-7CB8-B78F795D1EAF";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  0.26388869 0 0 -0.26388869
		 0 0 -0.26388869 0 0 0.26388869 0 0;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "2641A399-4868-790F-FCF0-C0A357CEAAA5";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 656\n                -height 622\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 656\n            -height 622\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 655\n                -height 104\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 655\n            -height 104\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 656\n                -height 104\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 656\n            -height 104\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 655\n                -height 622\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 655\n            -height 622\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n"
		+ "                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"quad\\\" -ps 1 50 82 -ps 2 50 82 -ps 3 50 18 -ps 4 50 18 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Top View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera top` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 656\\n    -height 622\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera top` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 656\\n    -height 622\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 655\\n    -height 622\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 655\\n    -height 622\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Side View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera side` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 655\\n    -height 104\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera side` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 655\\n    -height 104\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Front View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera front` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 656\\n    -height 104\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera front` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 656\\n    -height 104\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "031FC2D0-4780-CCCA-5B87-978BB280735E";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyTweak -n "polyTweak3";
	rename -uid "74BB08A6-4E43-4FA2-580C-81947F029E6C";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[12:15]" -type "float3"  0.05220747 0 0 -0.05220747
		 0 0 -0.05220747 0 0 0.05220747 0 0;
createNode polySplit -n "polySplit4";
	rename -uid "9E3BC58A-4235-D7CD-6A0F-879D430B455A";
	setAttr -s 3 ".e[0:2]"  0 0.194098 1;
	setAttr -s 3 ".d[0:2]"  -2147483626 -2147483647 -2147483631;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit5";
	rename -uid "172DBD42-440F-2D65-602A-93840478B3AD";
	setAttr -s 3 ".e[0:2]"  1 0.79464 1;
	setAttr -s 3 ".d[0:2]"  -2147483627 -2147483620 -2147483633;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak4";
	rename -uid "0A06BAA0-4ACD-73C0-EF46-EEA315F261C0";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[2]" -type "float3" 0 0.25593719 -0.01916275 ;
	setAttr ".tk[3]" -type "float3" 0 0.25593719 -0.01916275 ;
	setAttr ".tk[16]" -type "float3" 0 0.25593719 -0.01916275 ;
	setAttr ".tk[17]" -type "float3" -0.031172056 0.25593719 -0.01916275 ;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "9C20F3BE-4EEA-C486-BB61-2A911C426336";
	setAttr ".dc" -type "componentList" 1 "f[16]";
createNode deleteComponent -n "deleteComponent2";
	rename -uid "78406BC3-4FB0-08D0-6D8B-EA86DF29A044";
	setAttr ".dc" -type "componentList" 1 "f[10]";
createNode deleteComponent -n "deleteComponent3";
	rename -uid "5CAFDF60-43F9-C9A4-C8A5-6083322438CC";
	setAttr ".dc" -type "componentList" 1 "f[13]";
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "B0CBAB6F-4DC9-8DEC-8743-E1B42A74CAFD";
	setAttr ".ics" -type "componentList" 2 "vtx[12]" "vtx[16]";
	setAttr ".ix" -type "matrix" 3.815190935323987 0 0 0 0 1.2986374398615805 0 0 0 0 4.010863845373156 0
		 0.033823505294960698 0 -2.0294103176976321 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "B247E960-4B04-EF62-D4D8-8799F8CAA4C1";
	setAttr ".ics" -type "componentList" 2 "vtx[13]" "vtx[16]";
	setAttr ".ix" -type "matrix" 3.815190935323987 0 0 0 0 1.2986374398615805 0 0 0 0 4.010863845373156 0
		 0.033823505294960698 0 -2.0294103176976321 1;
	setAttr ".am" yes;
createNode displayLayer -n "reference";
	rename -uid "28D28CDD-48A7-7D56-7023-F6815E4A75ED";
	setAttr ".dt" 2;
	setAttr ".v" no;
	setAttr ".do" 1;
createNode polyCube -n "polyCube3";
	rename -uid "9E9B7843-4C9D-8D29-0823-A3BB688B5631";
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "149B12D5-4974-BE19-6A81-A2B42305F7DD";
	setAttr ".ics" -type "componentList" 1 "f[4:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 2.4393120499638026 0 0 -0.28703181987537452 1.15177716519934 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.28703183 1.1517771 ;
	setAttr ".rs" 62773;
	setAttr ".lt" -type "double3" -5.252653499628133e-017 -1.7527681502923976e-017 0.76344151656368409 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.5 -0.78703181987537452 -0.067878859782561252 ;
	setAttr ".cbx" -type "double3" 0.5 0.21296818012462548 2.3714331901812411 ;
createNode polySplitRing -n "polySplitRing3";
	rename -uid "0CDF363E-4CEE-7EA2-333C-AA8852C164DA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[6:7]" "e[10:11]" "e[14]" "e[18]" "e[22]" "e[26]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 2.4393120499638026 0 0 -0.28703181987537452 1.15177716519934 1;
	setAttr ".wt" 0.32359915971755981;
	setAttr ".re" 26;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "6B902E17-4E0F-3459-FD34-6D9C812D64AB";
	setAttr ".ics" -type "componentList" 2 "f[14]" "f[18]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 2.4393120499638026 0 0 -0.28703181987537452 1.15177716519934 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.28703183 0.75709748 ;
	setAttr ".rs" 45191;
	setAttr ".lt" -type "double3" 2.2523867868201925e-019 0 0.49898561517061824 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.2634415626525879 -0.78703181987537452 -0.067878859782561252 ;
	setAttr ".cbx" -type "double3" 1.2634415626525879 0.21296818012462548 1.5820738605240365 ;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "B2537746-4602-9A4E-ED5C-02A26C2443DA";
	setAttr ".ics" -type "componentList" 2 "f[9]" "f[11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 2.4393120499638026 0 0 -0.28703181987537452 1.15177716519934 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.28703183 2.3714333 ;
	setAttr ".rs" 37359;
	setAttr ".lt" -type "double3" 0 0 0.32448029098130959 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.2634415626525879 -0.78703181987537452 2.3714331901812411 ;
	setAttr ".cbx" -type "double3" 1.2634415626525879 0.21296818012462548 2.3714331901812411 ;
createNode polyTweak -n "polyTweak7";
	rename -uid "DE8F3D38-4120-3228-911C-0F8F9CA03E95";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[25]" -type "float3" 0 0 -0.17136985 ;
	setAttr ".tk[26]" -type "float3" 0 0 -0.17136985 ;
	setAttr ".tk[28]" -type "float3" 0 0 -0.17136985 ;
	setAttr ".tk[29]" -type "float3" 0 0 -0.17136985 ;
createNode polyCube -n "polyCube4";
	rename -uid "E2DE9C72-4B52-893D-6045-F6AAC2519890";
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing4";
	rename -uid "B8AE7790-4CB3-5815-9816-7CB385B810ED";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[6:7]" "e[10:11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1.4005200927604726 0 0 0 -4.5800944746209522 1;
	setAttr ".wt" 0.82790458202362061;
	setAttr ".dr" no;
	setAttr ".re" 6;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "0A43F3D3-44CD-1A65-817F-BCA4957D8B5C";
	setAttr ".ics" -type "componentList" 1 "f[4:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1.4005200927604726 0 0 0 -4.5800944746209522 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0 -4.4595828 ;
	setAttr ".rs" 65226;
	setAttr ".lt" -type "double3" 6.8606149040956157e-017 3.0814879110195774e-032 0.30897462725617486 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.5 -0.5 -5.0393314302532577 ;
	setAttr ".cbx" -type "double3" 0.5 0.5 -3.879834428240716 ;
createNode polySplitRing -n "polySplitRing5";
	rename -uid "BFB32E1F-4859-F008-239B-5C8216B35202";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[6:7]" "e[13]" "e[15]" "e[22]" "e[26]" "e[30]" "e[34]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1.4005200927604726 0 0 0 -4.5800944746209522 1;
	setAttr ".wt" 0.74712884426116943;
	setAttr ".dr" no;
	setAttr ".re" 6;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	rename -uid "93D80110-4D82-ED59-CF03-4AB72CCF9B7A";
	setAttr ".ics" -type "componentList" 1 "f[4:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1.4005200927604726 0 0 0 -4.5800944746209522 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0 -4.3129811 ;
	setAttr ".rs" 50470;
	setAttr ".lt" -type "double3" 6.4570493215017896e-017 6.1629758220391547e-033 0.29079964918228374 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.80897462368011475 -0.5 -4.7461278673821141 ;
	setAttr ".cbx" -type "double3" 0.80897462368011475 0.5 -3.8798340943307053 ;
createNode polySplitRing -n "polySplitRing6";
	rename -uid "C037FCCC-42E7-EA31-5FE3-A5A16278898B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 16 "e[4:5]" "e[8:9]" "e[16]" "e[19]" "e[24]" "e[27]" "e[30]" "e[38]" "e[48]" "e[51]" "e[54]" "e[58]" "e[62]" "e[66]" "e[70]" "e[74]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 2.4393120499638026 0 0 -0.28703181987537452 1.15177716519934 1;
	setAttr ".wt" 0.54580146074295044;
	setAttr ".re" 4;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak9";
	rename -uid "5B530674-48BE-1C78-BD52-1F9A45EFC2A6";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk";
	setAttr ".tk[2]" -type "float3" 0 -1.4901161e-008 0 ;
	setAttr ".tk[3]" -type "float3" 0 -1.4901161e-008 0 ;
	setAttr ".tk[4]" -type "float3" 0 -1.4901161e-008 0 ;
	setAttr ".tk[5]" -type "float3" 0 -1.4901161e-008 0 ;
	setAttr ".tk[11]" -type "float3" 0 -0.41167095 0 ;
	setAttr ".tk[14]" -type "float3" 0 -0.41167095 0 ;
	setAttr ".tk[16]" -type "float3" 0 -0.41167095 0 ;
	setAttr ".tk[21]" -type "float3" 0 -0.41167095 0 ;
	setAttr ".tk[22]" -type "float3" 0 -1.4901161e-008 0 ;
	setAttr ".tk[23]" -type "float3" 0 -1.4901161e-008 0 ;
	setAttr ".tk[26]" -type "float3" 0 -0.37779081 0 ;
	setAttr ".tk[27]" -type "float3" 0 -0.37779081 0 ;
	setAttr ".tk[29]" -type "float3" 0 -0.37779081 0 ;
	setAttr ".tk[31]" -type "float3" 0 -0.37779081 0 ;
	setAttr ".tk[32]" -type "float3" 0 0 0.11176294 ;
	setAttr ".tk[33]" -type "float3" 0 0 0.11176294 ;
	setAttr ".tk[35]" -type "float3" 0 -0.41167095 0 ;
	setAttr ".tk[36]" -type "float3" 0 0 0.11176294 ;
	setAttr ".tk[37]" -type "float3" 0 0 0.11176294 ;
	setAttr ".tk[38]" -type "float3" 0 -0.41167095 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	rename -uid "D61A719B-4E76-4277-70FB-CCB9CAA957A5";
	setAttr ".ics" -type "componentList" 2 "f[1]" "f[20]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 2.4393120499638026 0 0 -0.28703181987537452 1.15177716519934 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.21296819 1.1517771 ;
	setAttr ".rs" 48674;
	setAttr ".lt" -type "double3" 0 -1.0163002951725596e-016 -0.45770096306356645 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.5 0.21296818012462548 -0.067878859782561252 ;
	setAttr ".cbx" -type "double3" 0.5 0.21296818012462548 2.3714331901812411 ;
createNode deleteComponent -n "deleteComponent10";
	rename -uid "DB88C564-47CC-103E-36EB-6E9621CF2930";
	setAttr ".dc" -type "componentList" 1 "e[1]";
createNode polyTweak -n "polyTweak10";
	rename -uid "D5E042A2-4722-4643-6F9C-FC8734DB3761";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[2]" -type "float3" 0 -2.4214387e-008 0 ;
	setAttr ".tk[3]" -type "float3" 0 -2.4214387e-008 0 ;
	setAttr ".tk[58]" -type "float3" 0 0.098700911 -0.0048700962 ;
	setAttr ".tk[59]" -type "float3" 0 0.098700911 -0.0048700962 ;
	setAttr ".tk[60]" -type "float3" 0 0.20860489 -0.0017181782 ;
	setAttr ".tk[61]" -type "float3" 0 0.20860489 -0.0017181782 ;
	setAttr ".tk[62]" -type "float3" 0 0.43833089 0.0048700962 ;
	setAttr ".tk[63]" -type "float3" 0 0.43833089 0.0048700962 ;
createNode deleteComponent -n "deleteComponent11";
	rename -uid "2347A4CE-4CFC-D83D-ECFB-8CB2F0DD6B99";
	setAttr ".dc" -type "componentList" 1 "f[55]";
createNode polyMergeVert -n "polyMergeVert5";
	rename -uid "7E42B826-4007-8863-067D-83892EBCD75C";
	setAttr ".ics" -type "componentList" 2 "vtx[40]" "vtx[58]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 2.4393120499638026 0 0 -0.28703181987537452 1.15177716519934 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert6";
	rename -uid "1C87FC7D-49EE-2C58-C000-4BA81BF0506D";
	setAttr ".ics" -type "componentList" 1 "vtx[57:58]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 2.4393120499638026 0 0 -0.28703181987537452 1.15177716519934 1;
	setAttr ".am" yes;
createNode polyCube -n "polyCube5";
	rename -uid "F47E544F-4BFB-7CD3-70E0-439FCC8C3F17";
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing7";
	rename -uid "11DD65F1-4DC2-0E77-EE20-83BE4B889F99";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[4:5]" "e[8:9]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 3.3155415881094776 0 -4.4892195842514875 0 -3.258788903531836 1;
	setAttr ".wt" 0.51635283231735229;
	setAttr ".dr" no;
	setAttr ".re" 8;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyBevel3 -n "polyBevel1";
	rename -uid "71D7B896-4BAF-E2ED-B946-5D9CF853E38D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[4]" "e[6]" "e[8]" "e[10]" "e[12:13]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 3.3155415881094776 0 -4.4892195842514875 0 -3.258788903531836 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyTweak -n "polyTweak11";
	rename -uid "7543543D-4C4F-4B6C-AFEF-91BA62DE82E4";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[8]" -type "float3" 0 0 -0.13668001 ;
	setAttr ".tk[9]" -type "float3" 0 0 0.18560417 ;
	setAttr ".tk[10]" -type "float3" 0 0 0.18560417 ;
	setAttr ".tk[11]" -type "float3" 0 0 -0.13668001 ;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	rename -uid "62EDBBA0-4CF2-B928-489A-5BB44853DCEE";
	setAttr ".ics" -type "componentList" 1 "f[12:13]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 3.3155415881094776 0 -4.4892195842514875 0 -3.258788903531836 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -4.9892197 0 -3.2072074 ;
	setAttr ".rs" 41076;
	setAttr ".lt" -type "double3" -8.4308793866872863e-016 -3.4592322640053194e-017 
		-0.20306947357095548 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -4.9892195842514875 -0.25002500414848328 -5.0323142243648 ;
	setAttr ".cbx" -type "double3" -4.9892195842514875 0.25002500414848328 -1.3821007187941523 ;
createNode polyBevel3 -n "polyBevel2";
	rename -uid "C1AA5D04-40FB-6E5D-933E-ECA3E3062570";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:5]";
	setAttr ".ix" -type "matrix" 1.2484388051708304 0 0 0 0 1 0 0 0 0 3.3155415881094776 0
		 -4.4892195842514875 0 1.8257841358359022 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyCube -n "polyCube6";
	rename -uid "9F3BCA72-43E7-712B-38DF-DAA86F775A0A";
	setAttr ".cuv" 4;
createNode polyBevel3 -n "polyBevel3";
	rename -uid "D3B9367E-4B09-6ECC-989A-04B8E0B4533F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[1:2]" "e[6:7]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1.411631203857286 0 0 1.1347598273230635 -1.3449483774680571 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polySplitRing -n "polySplitRing8";
	rename -uid "A26BBE9F-44A1-7D77-666D-518C9136880D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[0:1]" "e[8]" "e[10]" "e[14:15]";
	setAttr ".ix" -type "matrix" 1.7445458514930798 0 0 0 0 1 0 0 0 0 2.453399988500482 0
		 0 1.1347598273230635 -1.3449483774680571 1;
	setAttr ".wt" 0.48716840147972107;
	setAttr ".re" 10;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing9";
	rename -uid "C3D15A31-4380-19A0-FF7B-7994075A2312";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[2:3]" "e[5]" "e[7]" "e[11]" "e[13]" "e[26]" "e[31]";
	setAttr ".ix" -type "matrix" 1.7445458514930798 0 0 0 0 1 0 0 0 0 2.453399988500482 0
		 0 1.1347598273230635 -1.3449483774680571 1;
	setAttr ".wt" 0.46342223882675171;
	setAttr ".re" 31;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak12";
	rename -uid "8E874FAD-4CA0-C363-F690-128F33B6F700";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[2]" -type "float3" 0 0 0.14450958 ;
	setAttr ".tk[3]" -type "float3" 0 0 0.14450958 ;
	setAttr ".tk[9]" -type "float3" 0 0 0.14450958 ;
	setAttr ".tk[11]" -type "float3" 0 0 0.14450958 ;
createNode polyExtrudeFace -n "polyExtrudeFace12";
	rename -uid "221C9AE6-49F3-4F4D-2256-AF9050DA223F";
	setAttr ".ics" -type "componentList" 2 "f[5]" "f[11]";
	setAttr ".ix" -type "matrix" 1.7445458514930798 0 0 0 0 0.70592143552608999 0 0 0 0 2.453399988500482 0
		 0 1.3709486079227238 -1.9889284642743605 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.2827172 -0.4939054 ;
	setAttr ".rs" 46480;
	setAttr ".off" 0.20000000298023224;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.68062293632740567 1.0179878901596788 -0.7154343100562075 ;
	setAttr ".cbx" -type "double3" 0.68062293632740567 1.5474466388067358 -0.27237647867590464 ;
createNode polyTweak -n "polyTweak13";
	rename -uid "C1435C96-4941-ACFD-0A30-AFA157A18D58";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[0]" -type "float3" 0.10985667 0 0.12003997 ;
	setAttr ".tk[1]" -type "float3" -0.10985667 0 0.12003997 ;
	setAttr ".tk[4]" -type "float3" 0.10985667 0 0.019073164 ;
	setAttr ".tk[7]" -type "float3" -0.10985667 0 0.019073164 ;
	setAttr ".tk[9]" -type "float3" 0.17923574 0 0 ;
	setAttr ".tk[11]" -type "float3" -0.17923574 0 0 ;
	setAttr ".tk[13]" -type "float3" 0 0 0.098695725 ;
	setAttr ".tk[14]" -type "float3" 0 0 0.19966251 ;
	setAttr ".tk[16]" -type "float3" 0 0 0.039045505 ;
	setAttr ".tk[21]" -type "float3" 0.10883911 0 0 ;
	setAttr ".tk[23]" -type "float3" -0.10883911 0 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace13";
	rename -uid "2BE1DE22-4BD4-E2B0-7902-E5B9E8C28816";
	setAttr ".ics" -type "componentList" 2 "f[5]" "f[11]";
	setAttr ".ix" -type "matrix" 1.7445458514930798 0 0 0 0 0.70592143552608999 0 0 0 0 2.453399988500482 0
		 0 1.3709486079227238 -1.9889284642743605 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.00040374012 1.2827172 -0.4939054 ;
	setAttr ".rs" 58333;
	setAttr ".lt" -type "double3" -2.2204460492503131e-015 -0.9359662944722521 2.0892886977552729 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.48667169834358753 1.2003189441511588 -0.57623559466423058 ;
	setAttr ".cbx" -type "double3" 0.48747917860787987 1.365115500662863 -0.41157519406788157 ;
createNode polySplitRing -n "polySplitRing10";
	rename -uid "756B07D9-4753-68B8-0AA4-E4B970F5B5CC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[72:73]" "e[75]" "e[77]";
	setAttr ".ix" -type "matrix" 1.7445458514930798 0 0 0 0 0.70592143552608999 0 0 0 0 2.453399988500482 0
		 0 1.3709486079227238 -1.9889284642743605 1;
	setAttr ".wt" 0.79486149549484253;
	setAttr ".dr" no;
	setAttr ".re" 77;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak14";
	rename -uid "66574C2B-4C94-80A9-604B-B1A777F03FDE";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[26:41]" -type "float3"  -4.6566129e-010 0 0 5.8207661e-011
		 0 -3.7252903e-009 0 0 0 -5.8207661e-011 0 0 0 0 0 -2.3283064e-010 0 0 0 0 0 0 0 0
		 -0.31357992 0 0 -0.31357992 0 0 -0.31357992 0 0 -0.31357992 0 0 0.29495698 0 0 0.29495698
		 0 0 0.29495698 0 0 0.29495698 0 0;
createNode polySplitRing -n "polySplitRing11";
	rename -uid "AE9688C0-44AE-0B4F-01CF-2D8F8E0BE354";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[64:65]" "e[67]" "e[69]";
	setAttr ".ix" -type "matrix" 1.7445458514930798 0 0 0 0 0.70592143552608999 0 0 0 0 2.453399988500482 0
		 0 1.3709486079227238 -1.9889284642743605 1;
	setAttr ".wt" 0.8033406138420105;
	setAttr ".dr" no;
	setAttr ".re" 67;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace14";
	rename -uid "5167BA2D-4022-D9FD-447B-9C9A87C0C501";
	setAttr ".ics" -type "componentList" 1 "f[40:47]";
	setAttr ".ix" -type "matrix" 1.7445458514930798 0 0 0 0 0.70592143552608999 0 0 0 0 2.453399988500482 0
		 0 1.3709486079227238 -1.9889284642743605 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.00035481612 1.2911284 1.5089945 ;
	setAttr ".rs" 54702;
	setAttr ".lt" -type "double3" 1.4851967679641018e-016 2.2399616883550522e-016 0.12855558680131157 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.48299828963884794 1.2063059450993667 1.1977486382322071 ;
	setAttr ".cbx" -type "double3" 0.48370792186647826 1.375950794456001 1.8202403098092226 ;
createNode polyMirror -n "polyMirror1";
	rename -uid "E6F34A9C-462E-8330-93F8-9FA1923A9238";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 1.6767708085546085 0 0 0 0 1.1444071664599833 0 0 0 0 3.3155415881094776 0
		 3.2066226061168104 -1.1096159967798784 1.8257841358359022 1;
	setAttr ".ws" yes;
	setAttr ".p" -type "double3" 4.1613062649560213 -1.1096159967798784 1.9068893572731449 ;
createNode deleteComponent -n "deleteComponent12";
	rename -uid "5B7D763F-49FB-BADE-F186-589E8E6690D2";
	setAttr ".dc" -type "componentList" 4 "f[0:14]" "f[18:19]" "f[22]" "f[24:27]";
createNode deleteComponent -n "deleteComponent13";
	rename -uid "829139FA-460A-A496-6719-DC9914F85370";
	setAttr ".dc" -type "componentList" 1 "f[0]";
createNode deleteComponent -n "deleteComponent14";
	rename -uid "4F766E07-4D08-FC05-52A3-BCAA62EA009D";
	setAttr ".dc" -type "componentList" 1 "f[0]";
createNode deleteComponent -n "deleteComponent15";
	rename -uid "588E5685-41A5-6530-E669-068293B5E04D";
	setAttr ".dc" -type "componentList" 1 "f[0]";
createNode deleteComponent -n "deleteComponent16";
	rename -uid "7E0C0D42-4E20-D897-26B9-4F9877F10A4C";
	setAttr ".dc" -type "componentList" 1 "f[2]";
createNode deleteComponent -n "deleteComponent17";
	rename -uid "E47C2AB8-451D-F1B9-ABD1-7F9E82F8EB9E";
	setAttr ".dc" -type "componentList" 1 "f[0]";
createNode deleteComponent -n "deleteComponent18";
	rename -uid "F2434908-409A-A114-DB04-2A8E6894E2E2";
	setAttr ".dc" -type "componentList" 1 "f[0]";
createNode polyMirror -n "polyMirror2";
	rename -uid "D3D87717-4350-5A30-F06D-67B6B8599EC1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 2.0612421822544542 0 0 0 0 1 0 0 0 0 2.4817185730396529 0
		 4.3564650410431369 0 -3.3441959655962514 1;
	setAttr ".ws" yes;
	setAttr ".p" -type "double3" 4.7788466676764481 0 -3.3805457148791165 ;
createNode deleteComponent -n "deleteComponent19";
	rename -uid "09BD4B84-4551-7B7B-D702-2B95676A6BDC";
	setAttr ".dc" -type "componentList" 5 "f[0:3]" "f[5]" "f[7]" "f[9]" "f[11:16]";
createNode deleteComponent -n "deleteComponent20";
	rename -uid "ABA8E5A1-431E-A377-AA04-F88D33DFE7AF";
	setAttr ".dc" -type "componentList" 1 "f[1]";
createNode deleteComponent -n "deleteComponent21";
	rename -uid "779DC33E-46CE-E3F5-DBC4-19866EED6C3D";
	setAttr ".dc" -type "componentList" 1 "f[1]";
createNode deleteComponent -n "deleteComponent22";
	rename -uid "F63D90B0-4168-0D8E-B79A-749A4928EF4B";
	setAttr ".dc" -type "componentList" 1 "f[0]";
createNode deleteComponent -n "deleteComponent23";
	rename -uid "9136F3BB-4231-B781-9C93-BCA72358304E";
	setAttr ".dc" -type "componentList" 1 "f[1]";
createNode deleteComponent -n "deleteComponent24";
	rename -uid "4595D6A5-406B-9B28-859B-D89D9E7728FC";
	setAttr ".dc" -type "componentList" 1 "f[0]";
createNode polyConnectComponents -n "polyConnectComponents1";
	rename -uid "25DA4EE5-41F9-2708-84D7-6B9676176BC3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[3:4]" "e[7:8]" "e[15]" "e[18]";
createNode polyTweak -n "polyTweak15";
	rename -uid "47E6B7A1-45A6-721B-B031-BCAD842A74A6";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[2]" -type "float3" 0 -0.32741684 -0.046253093 ;
	setAttr ".tk[3]" -type "float3" 0 -0.32741684 -0.046253093 ;
createNode blinn -n "gray";
	rename -uid "C757FE51-4925-6EEE-1EBC-ED939D222A1C";
	setAttr ".c" -type "float3" 0.38350001 0.38350001 0.38350001 ;
createNode shadingEngine -n "blinn1SG";
	rename -uid "C63A61C6-4827-4FE3-324F-9DAD42773382";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 7 ".gn";
createNode materialInfo -n "materialInfo1";
	rename -uid "C582D5C2-4E8E-87DD-6917-B19AC05F60C7";
createNode Unfold3DUnfold -n "Unfold3DUnfold1";
	rename -uid "C241DD13-4DA6-B7EA-AE09-3093BCE8140A";
	setAttr ".uvl" -type "Int32Array" 32 0 1 2 3 4 5
		 6 7 8 9 10 11 12 13 14 15 16 17
		 18 19 20 21 22 23 24 25 26 27 28 29
		 30 31 ;
	setAttr ".mdp" -type "string" "|pCube1|pCubeShape1";
	setAttr ".usn" -type "string" "map1";
	setAttr ".miee" yes;
	setAttr ".mue" -type "floatArray" 32 0.27079523 0.52723092 0.23721112 0.56311357
		 0.94018656 0.68749624 0.93597984 0.692442 0.93587995 0.69328088 0.7737757 0.79874927
		 0.024842456 0.0009765625 0.3503724 0.45063788 0.45614889 0.3432011 0.89698821 0.73010379
		 0.75063258 0.88359541 0.30755877 0.48907915 0.24059592 0.0097126858 0.93708581 0.69096655
		 0.78943956 0.55963302 0.45678636 0.34148288 ;
	setAttr ".mve" -type "floatArray" 32 0.021793278 0.023552353 0.26386285 0.26597396
		 0.74536127 0.74541068 0.50341314 0.5030995 0.26130205 0.26095116 0.0009765625 0.25328368
		 0.0051528816 0.25770965 0.066800676 0.073394231 0.26921943 0.27135193 0.99481851
		 0.99902344 0.80596125 0.8130008 0.3634899 0.36978468 0.1441471 0.12992772 0.62442678
		 0.62421548 0.12868683 0.1438245 0.16544871 0.16599807 ;
createNode polyNormalizeUV -n "polyNormalizeUV1";
	rename -uid "F560387C-4F43-6F50-7222-1A8BC383660F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:20]";
	setAttr ".ix" -type "matrix" 3.815190935323987 0 0 0 0 1.2986374398615805 0 0 0 0 4.010863845373156 0
		 0.033823505294960698 0 -1.9781411720905542 1;
	setAttr ".nt" 0;
	setAttr ".pa" no;
	setAttr ".cot" yes;
createNode polyTweak -n "polyTweak16";
	rename -uid "D68CEC99-48D6-1E3B-6C34-12A4811B373F";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[16]" -type "float3" -0.028198587 -0.0010078121 0.018031025 ;
	setAttr ".tk[17]" -type "float3" -0.028198587 0.0010078121 -0.036521513 ;
	setAttr ".tk[18]" -type "float3" 0.028198587 0.0010078121 -0.036521513 ;
	setAttr ".tk[19]" -type "float3" 0.028198587 -0.0010078121 0.018031025 ;
	setAttr ".tk[20]" -type "float3" 0.013316014 0.0010078121 0.036521513 ;
	setAttr ".tk[21]" -type "float3" -0.013316012 0.0010078121 0.036521513 ;
createNode Unfold3DUnfold -n "Unfold3DUnfold2";
	rename -uid "22803869-4F09-EE9E-7908-E5AEE8B4689B";
	setAttr ".uvl" -type "Int32Array" 82 0 1 2 3 4 5
		 6 7 8 9 10 11 12 13 14 15 16 17
		 18 19 20 21 22 23 24 25 26 27 28 29
		 30 31 32 33 34 35 36 37 38 39 40 41
		 42 43 44 45 46 47 48 49 50 51 52 53
		 54 55 56 57 58 59 60 61 62 63 64 65
		 66 67 68 69 70 71 72 73 74 75 76 77
		 78 79 80 81 ;
	setAttr ".mdp" -type "string" "|pCube1|pCubeShape1";
	setAttr ".usn" -type "string" "map1";
	setAttr ".miee" yes;
	setAttr ".mue" -type "floatArray" 82 0.99833542 0.13568337 0.98259193 0.68339878
		 0.36407685 0.58722204 0.0017459471 0.33603534 0.0009765625 0.32543701 0.32543787
		 0.32064471 0.66561329 0.67935705 0.0052970913 0.0072224848 0.32391658 0.46603483
		 0.66706169 0.87573224 0.64668363 0.40643716 0.17923778 0.61168092 0.85440904 0.667476
		 0.66964602 0.326886 0.33252406 0.67566299 0.32823712 0.4729768 0.16637804 0.0009765625
		 0.99864751 0.98532313 0.99902344 0.32874957 0.53143573 0.0009765625 0.16283563 0.0009765625
		 0.0057293987 0.14521497 0.326886 0.33727849 0.65377414 0.66964602 0.2933116 0.43447831
		 0.17069857 0.58769631 0.70662427 0.5383777 0.85116857 0.34058788 0.01740969 0.32620639
		 0.66049671 0.66717803 0.14876132 0.32101375 0.34078941 0.82050073 0.6741274 0.41007608
		 0.85222179 0.67236954 0.6014238 0.87790769 0.66049671 0.91168338 0.33603534 0.64369494
		 0.89556575 0.99240154 0.74533463 0.1585151 0.0009765625 0.68019921 0.99007463 0.86394066 ;
	setAttr ".mve" -type "floatArray" 82 0.76359081 0.80959791 0.5669378 0.89294761
		 0.48593506 0.59210753 0.0009765625 0.0009765625 0.32543698 0.32620636 0.3281638 0.65500194
		 0.26367307 0.59015012 0.64455181 0.80949825 0.81929606 0.91416818 0.58784968 0.0009765625
		 0.69319797 0.59529942 0.94051909 0.74447143 0.94298464 0.42799044 0.16592295 0.16592295
		 0.49284214 0.74101257 0.65695935 0.75192237 0.65695935 0.80754083 0.95545232 0.41423792
		 0.41569591 0.739326 0.75360894 0.97242481 0.80754083 0.48054937 0.47872987 0.95995706
		 0.16396555 0.4909794 0.42648876 0.16396555 0.84313488 0.59648138 0.81929606 0.59648138
		 0.82400626 0.91585469 0.79826152 0.33021709 0.63179106 0.0017459472 0.0009765625
		 0.46103767 0.8174237 0.8912611 0.4572311 0.92151761 0.0009765625 0.74447143 0.69319797
		 0.26170161 0.46444213 0.26170161 0.32825968 0.59210753 0.32825968 0.35504326 0.68651545
		 0.79252577 0.71662134 0.64455181 0.32814389 0.82734436 0.26365191 0.79262549 ;
createNode displayLayer -n "treads";
	rename -uid "462B2A72-48D4-EDD7-3E08-CFA6CB59DADD";
	setAttr ".dt" 2;
	setAttr ".do" 2;
createNode displayLayer -n "lips";
	rename -uid "3E724DA3-4952-D9F7-3B66-E282C51BE45B";
	setAttr ".do" 3;
createNode displayLayer -n "turret";
	rename -uid "91E84338-43DC-AE96-4E7C-A68A05033129";
	setAttr ".do" 4;
createNode displayLayer -n "chasis";
	rename -uid "4B79DFA9-4B4C-BDD3-B7A6-36858AD6EB86";
	setAttr ".do" 5;
createNode displayLayer -n "engine";
	rename -uid "0127C81C-4B4D-9977-7A6D-468B1149FDA4";
	setAttr ".dt" 2;
	setAttr ".do" 6;
createNode blinn -n "black";
	rename -uid "EC44F130-46F1-A705-A95D-E5BB6D46D911";
	setAttr ".c" -type "float3" 0.069930069 0.069930069 0.069930069 ;
createNode shadingEngine -n "blinn2SG";
	rename -uid "71FA830D-48C5-E53C-89A0-8E8586DCD5D6";
	setAttr ".ihi" 0;
	setAttr -s 11 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 8 ".gn";
createNode materialInfo -n "materialInfo2";
	rename -uid "3C450476-4F70-9A54-B944-FB9AC83F1634";
createNode groupId -n "groupId1";
	rename -uid "9A9A6CEF-45F2-7BEE-8BD7-1D9DCDFD90E9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2";
	rename -uid "0904C2B1-4DD8-A8BA-F989-1DB51C8CF9D4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "71CB1751-4AFB-BE0C-1FAD-E0BBD9E00CEC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "13F60304-4CD5-8329-6C22-B3B507479DD2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:5]" "f[8:27]";
	setAttr ".irc" -type "componentList" 1 "f[6:7]";
createNode groupId -n "groupId4";
	rename -uid "93714A90-4A6D-C4E0-D52A-4F8D6FBCB968";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "470EA29C-4677-63C2-486D-8FA0798AE5C3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6";
	rename -uid "985CA0A5-49B7-7457-AD49-8CA9D7D5B08F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "002AD46B-4ABE-B229-07F9-E6AF8FC8CAFF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[6:7]";
createNode groupId -n "groupId7";
	rename -uid "4F79FE4E-4434-444C-062A-028255A0918A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "6CBC511B-4A62-5923-D248-42BB2EDB791A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:5]" "f[8:27]";
	setAttr ".irc" -type "componentList" 1 "f[6:7]";
createNode groupId -n "groupId8";
	rename -uid "F869351A-4B1C-9488-473A-90B17572C9DF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId9";
	rename -uid "C1E7F7F9-4E46-9BEF-F400-02B355CEAD56";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "17DB351A-41FF-44E7-8BA7-5183E5AC8A89";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[6:7]";
createNode groupId -n "groupId10";
	rename -uid "D4878FE8-44B4-DFEE-2C0E-09B2C92AE770";
	setAttr ".ihi" 0;
createNode groupId -n "groupId11";
	rename -uid "D37DC3F2-4B1D-7B6E-8207-DBAC0B1F0DD7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId12";
	rename -uid "61E22243-40D2-6204-3309-E785CA42F7D4";
	setAttr ".ihi" 0;
createNode blinn -n "green";
	rename -uid "0DFE27D4-4A80-BC7B-C6BE-AAB0A4A27536";
	setAttr ".c" -type "float3" 0.0506 0.1069 0.046100002 ;
createNode shadingEngine -n "blinn3SG";
	rename -uid "09BC0443-4C65-2A7F-6EF1-1C958149E7FB";
	setAttr ".ihi" 0;
	setAttr -s 11 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 10 ".gn";
createNode materialInfo -n "materialInfo3";
	rename -uid "819449AE-4FF5-357E-EA1B-33AA72707F55";
createNode groupId -n "groupId13";
	rename -uid "D4BED21F-4EDF-A8F9-D316-768F34BC71C3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "513AB819-4095-928A-18F5-86B6AE3453EE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 14 "f[0:1]" "f[3]" "f[8:9]" "f[12]" "f[17:22]" "f[24:31]" "f[48]" "f[50]" "f[52]" "f[54]" "f[56]" "f[58]" "f[60]" "f[62]";
	setAttr ".irc" -type "componentList" 14 "f[2]" "f[4:7]" "f[10:11]" "f[13:16]" "f[23]" "f[32:47]" "f[49]" "f[51]" "f[53]" "f[55]" "f[57]" "f[59]" "f[61]" "f[63]";
createNode groupId -n "groupId14";
	rename -uid "F8203E88-4BB4-F2D3-1664-CBA3F31E41E3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId15";
	rename -uid "7FC45312-48D4-26C6-9E77-1DA5AB990DCC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "26B8A2F1-49F0-4991-7D3D-2D858BD9537E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 11 "f[5]" "f[11]" "f[32:47]" "f[49]" "f[51]" "f[53]" "f[55]" "f[57]" "f[59]" "f[61]" "f[63]";
createNode polyExtrudeFace -n "polyExtrudeFace15";
	rename -uid "785DE06C-46EE-A6F5-6D9A-27AB1D175BD3";
	setAttr ".ics" -type "componentList" 2 "f[3]" "f[7]";
	setAttr ".ix" -type "matrix" 2.0612421822544542 0 0 0 0 1 0 0 0 0 2.4817185730396529 0
		 1.2376286656471711 0 -3.3441959655962514 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.7843966 -0.50000012 -3.7278376 ;
	setAttr ".rs" 54164;
	setAttr ".lt" -type "double3" 0 -1.3411000481889856e-016 0.60397776772904699 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.4557802053392588 -0.50000011920928955 -5.4068628850832656 ;
	setAttr ".cbx" -type "double3" 3.1130132557602366 -0.50000011920928955 -2.0488123509960356 ;
createNode polyMirror -n "polyMirror3";
	rename -uid "52DE5A79-491C-7E00-147E-B6ADD53297CD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 2.0612421822544542 0 0 0 0 1 0 0 0 0 2.4817185730396529 0
		 -5.6478449441575842 0 -3.3441959655962514 1;
	setAttr ".ws" yes;
	setAttr ".p" -type "double3" -3.7724603540445187 -1.1039776802062988 -4.2049622473486234 ;
createNode deleteComponent -n "deleteComponent25";
	rename -uid "3ABF6DBC-407B-1D4D-6ADA-F39E3E90D6EF";
	setAttr ".dc" -type "componentList" 4 "f[0:2]" "f[5:7]" "f[9:17]" "f[21:22]";
createNode deleteComponent -n "deleteComponent26";
	rename -uid "DD85A232-467C-47F9-7D9A-1DA10143493E";
	setAttr ".dc" -type "componentList" 1 "f[5]";
createNode deleteComponent -n "deleteComponent27";
	rename -uid "230A6178-4D15-0503-0B5E-1CBA6B7FF409";
	setAttr ".dc" -type "componentList" 1 "f[4]";
createNode deleteComponent -n "deleteComponent28";
	rename -uid "05E057A7-44B6-695F-5B72-BB96C368D08B";
	setAttr ".dc" -type "componentList" 1 "f[0]";
createNode deleteComponent -n "deleteComponent29";
	rename -uid "BC5AECF7-4835-EFA8-009C-3A9A9C029942";
	setAttr ".dc" -type "componentList" 1 "f[1]";
createNode deleteComponent -n "deleteComponent30";
	rename -uid "3E911614-4923-82B4-F016-DB9A999ECF42";
	setAttr ".dc" -type "componentList" 1 "f[2]";
createNode deleteComponent -n "deleteComponent31";
	rename -uid "2B10F595-4FF1-2429-3672-8184DA186D2A";
	setAttr ".dc" -type "componentList" 1 "f[1]";
createNode deleteComponent -n "deleteComponent32";
	rename -uid "D97DFB61-44D5-57EC-AFAF-6B8AF93E1BE1";
	setAttr ".dc" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId16";
	rename -uid "E616AEAD-4959-FAB1-CAB4-DF83A10D3345";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	rename -uid "8B97E32A-4886-F40E-0CE3-E0AAD19E055A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 14 "f[0]" "f[2:3]" "f[6:8]" "f[10]" "f[12:13]" "f[15:17]" "f[19]" "f[21:22]" "f[24:25]" "f[27:31]" "f[33:35]" "f[37:38]" "f[44:48]" "f[54:59]";
	setAttr ".irc" -type "componentList" 13 "f[1]" "f[4:5]" "f[9]" "f[11]" "f[14]" "f[18]" "f[20]" "f[23]" "f[26]" "f[32]" "f[36]" "f[39:43]" "f[49:53]";
createNode groupId -n "groupId17";
	rename -uid "A1E01FE5-475C-3CEC-63C5-D18EF6D6B666";
	setAttr ".ihi" 0;
createNode groupId -n "groupId18";
	rename -uid "4B0023B8-47DC-4010-D726-84958EA16D57";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "331CE332-4AEA-2310-2250-44981E1FB6A4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[1]" "f[20]";
createNode groupId -n "groupId19";
	rename -uid "E2F45A14-48C1-E34C-99D9-0CAFF6A90B95";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	rename -uid "3D3893AF-4485-364F-8372-6AB190F2FF63";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[2]" "f[4]" "f[6:7]" "f[10]" "f[13:16]" "f[23]";
createNode blinn -n "blinn4";
	rename -uid "BD212843-47A8-96E2-8DD5-AE808AABBEEB";
	setAttr ".c" -type "float3" 0.29159999 0.1452 0 ;
createNode shadingEngine -n "blinn4SG";
	rename -uid "6C2882C6-4725-1FDE-9939-ED88B267C89B";
	setAttr ".ihi" 0;
	setAttr -s 5 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 4 ".gn";
createNode materialInfo -n "materialInfo4";
	rename -uid "398FC633-4049-DC1F-9A27-FA9D68C2810C";
createNode groupId -n "groupId20";
	rename -uid "97902593-417C-D032-13DE-45AAB742E8B5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	rename -uid "F8628D89-40AE-9B04-7F39-75923E7DDAE8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 8 "f[3]" "f[6]" "f[8]" "f[10]" "f[12:13]" "f[15]" "f[17:18]" "f[20]";
	setAttr ".irc" -type "componentList" 8 "f[0:2]" "f[4:5]" "f[7]" "f[9]" "f[11]" "f[14]" "f[16]" "f[19]";
createNode groupId -n "groupId21";
	rename -uid "A11DD7DF-4189-37B3-E9FD-4A82137AB76B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId22";
	rename -uid "61EE261E-48D1-ABF4-108C-A198B4418C73";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts11";
	rename -uid "C9E6F82E-4253-A457-DCFD-829F482A562A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 8 "f[0:2]" "f[4:5]" "f[7]" "f[9]" "f[11]" "f[14]" "f[16]" "f[19]";
createNode groupId -n "groupId23";
	rename -uid "18A6FB6C-4F69-739F-7AED-27BE86651BCC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts12";
	rename -uid "FCC4E185-402D-B989-66C9-53926170FFAA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[1]" "f[3]" "f[5:7]" "f[9:13]" "f[15:23]";
	setAttr ".irc" -type "componentList" 5 "f[0]" "f[2]" "f[4]" "f[8]" "f[14]";
createNode groupId -n "groupId24";
	rename -uid "3BA70CE0-4941-A9B0-C063-B7A2C9794CE5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId25";
	rename -uid "5D6480B9-4147-7CE7-57E4-F28CE6732A0D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts13";
	rename -uid "B7772194-4A19-1AF3-F80C-3C96321F2B08";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[2]" "f[4]" "f[8]" "f[14]";
createNode groupId -n "groupId26";
	rename -uid "FD1AA91A-4F33-1969-3481-E78CB1B9EC2A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts14";
	rename -uid "78ED0D7A-4260-CD13-D534-C8951C7DAD86";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[1]" "f[3]" "f[5:7]" "f[9:13]" "f[15:23]";
	setAttr ".irc" -type "componentList" 5 "f[0]" "f[2]" "f[4]" "f[8]" "f[14]";
createNode groupId -n "groupId27";
	rename -uid "843FA710-46C2-CD0C-DB1A-81BD3FDA8F68";
	setAttr ".ihi" 0;
createNode groupId -n "groupId28";
	rename -uid "258575AF-4B48-B340-B88D-5C99946E15EA";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts15";
	rename -uid "C7725E03-4683-D2E0-60D9-F3B1BC145384";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[2]" "f[4]" "f[8]" "f[14]";
createNode groupId -n "groupId29";
	rename -uid "C1791C8C-480C-5DA5-5B7A-8391DABB59D2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts16";
	rename -uid "C87BBCA4-48C3-87F1-4235-32882F44E53B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 11 "f[4:5]" "f[9]" "f[11]" "f[14]" "f[18]" "f[23]" "f[26]" "f[32]" "f[36]" "f[39:43]" "f[49:53]";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "16181D84-4D6C-1FDC-D1C0-4AB0A7383FCA";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -908.94150374042613 -814.2931535038008 ;
	setAttr ".tgi[0].vh" -type "double2" 751.075778510546 322.12841396010015 ;
	setAttr -s 8 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 132.38095092773437;
	setAttr ".tgi[0].ni[0].y" 368.80950927734375;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" 362.85714721679687;
	setAttr ".tgi[0].ni[1].y" 322.6190185546875;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" -417.6190185546875;
	setAttr ".tgi[0].ni[2].y" 210.47618103027344;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" -194.28569030761719;
	setAttr ".tgi[0].ni[3].y" 186.42855834960937;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" 1.4285714626312256;
	setAttr ".tgi[0].ni[4].y" -1.4285714626312256;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" 296.19046020507812;
	setAttr ".tgi[0].ni[5].y" 18.571422576904297;
	setAttr ".tgi[0].ni[5].nvs" 1923;
	setAttr ".tgi[0].ni[6].x" 1.4285714626312256;
	setAttr ".tgi[0].ni[6].y" -447.14285278320312;
	setAttr ".tgi[0].ni[6].nvs" 1923;
	setAttr ".tgi[0].ni[7].x" 262.85714721679687;
	setAttr ".tgi[0].ni[7].y" -560;
	setAttr ".tgi[0].ni[7].nvs" 1923;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 6 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 8 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :lambert1;
	setAttr ".c" -type "float3" 0.31612903 0.31612903 0.31612903 ;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "reference.di" "imagePlane1.do";
connectAttr ":defaultColorMgtGlobals.cme" "imagePlaneShape1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "imagePlaneShape1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "imagePlaneShape1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "imagePlaneShape1.ws";
connectAttr ":topShape.msg" "imagePlaneShape1.ltc";
connectAttr "chasis.di" "pCube1.do";
connectAttr "groupParts11.og" "pCubeShape1.i";
connectAttr "groupId20.id" "pCubeShape1.iog.og[0].gid";
connectAttr "blinn3SG.mwc" "pCubeShape1.iog.og[0].gco";
connectAttr "groupId22.id" "pCubeShape1.iog.og[1].gid";
connectAttr "blinn4SG.mwc" "pCubeShape1.iog.og[1].gco";
connectAttr "groupId21.id" "pCubeShape1.ciog.cog[0].cgid";
connectAttr "lips.di" "pCube3.do";
connectAttr "groupId16.id" "pCubeShape3.iog.og[0].gid";
connectAttr "blinn3SG.mwc" "pCubeShape3.iog.og[0].gco";
connectAttr "groupId18.id" "pCubeShape3.iog.og[1].gid";
connectAttr "blinn2SG.mwc" "pCubeShape3.iog.og[1].gco";
connectAttr "groupId29.id" "pCubeShape3.iog.og[2].gid";
connectAttr "blinn4SG.mwc" "pCubeShape3.iog.og[2].gco";
connectAttr "groupParts16.og" "pCubeShape3.i";
connectAttr "groupId17.id" "pCubeShape3.ciog.cog[0].cgid";
connectAttr "engine.di" "pCube4.do";
connectAttr "polyExtrudeFace9.out" "pCubeShape4.i";
connectAttr "treads.di" "pCube5.do";
connectAttr "groupId3.id" "pCubeShape5.iog.og[0].gid";
connectAttr "blinn2SG.mwc" "pCubeShape5.iog.og[0].gco";
connectAttr "groupId6.id" "pCubeShape5.iog.og[1].gid";
connectAttr "blinn1SG.mwc" "pCubeShape5.iog.og[1].gco";
connectAttr "groupParts2.og" "pCubeShape5.i";
connectAttr "groupId4.id" "pCubeShape5.ciog.cog[0].cgid";
connectAttr "treads.di" "pCube6.do";
connectAttr "groupId1.id" "pCubeShape6.iog.og[0].gid";
connectAttr "blinn2SG.mwc" "pCubeShape6.iog.og[0].gco";
connectAttr "groupId5.id" "pCubeShape6.iog.og[1].gid";
connectAttr "blinn1SG.mwc" "pCubeShape6.iog.og[1].gco";
connectAttr "groupId2.id" "pCubeShape6.ciog.cog[0].cgid";
connectAttr "turret.di" "pCube7.do";
connectAttr "groupId13.id" "pCubeShape7.iog.og[0].gid";
connectAttr "blinn3SG.mwc" "pCubeShape7.iog.og[0].gco";
connectAttr "groupId15.id" "pCubeShape7.iog.og[1].gid";
connectAttr "blinn2SG.mwc" "pCubeShape7.iog.og[1].gco";
connectAttr "groupId19.id" "pCubeShape7.iog.og[2].gid";
connectAttr "blinn4SG.mwc" "pCubeShape7.iog.og[2].gco";
connectAttr "groupParts9.og" "pCubeShape7.i";
connectAttr "groupId14.id" "pCubeShape7.ciog.cog[0].cgid";
connectAttr "treads.di" "pCube8.do";
connectAttr "groupId7.id" "pCubeShape8.iog.og[0].gid";
connectAttr "blinn2SG.mwc" "pCubeShape8.iog.og[0].gco";
connectAttr "groupId9.id" "pCubeShape8.iog.og[1].gid";
connectAttr "blinn1SG.mwc" "pCubeShape8.iog.og[1].gco";
connectAttr "groupParts4.og" "pCubeShape8.i";
connectAttr "groupId8.id" "pCubeShape8.ciog.cog[0].cgid";
connectAttr "treads.di" "pCube9.do";
connectAttr "groupId10.id" "pCubeShape9.iog.og[0].gid";
connectAttr "blinn2SG.mwc" "pCubeShape9.iog.og[0].gco";
connectAttr "groupId12.id" "pCubeShape9.iog.og[1].gid";
connectAttr "blinn1SG.mwc" "pCubeShape9.iog.og[1].gco";
connectAttr "groupId11.id" "pCubeShape9.ciog.cog[0].cgid";
connectAttr "lips.di" "pCube10.do";
connectAttr "groupId23.id" "pCubeShape10.iog.og[0].gid";
connectAttr "blinn3SG.mwc" "pCubeShape10.iog.og[0].gco";
connectAttr "groupId25.id" "pCubeShape10.iog.og[1].gid";
connectAttr "blinn4SG.mwc" "pCubeShape10.iog.og[1].gco";
connectAttr "groupParts13.og" "pCubeShape10.i";
connectAttr "groupId24.id" "pCubeShape10.ciog.cog[0].cgid";
connectAttr "lips.di" "pCube11.do";
connectAttr "groupId26.id" "pCubeShape11.iog.og[0].gid";
connectAttr "blinn3SG.mwc" "pCubeShape11.iog.og[0].gco";
connectAttr "groupId28.id" "pCubeShape11.iog.og[1].gid";
connectAttr "blinn4SG.mwc" "pCubeShape11.iog.og[1].gco";
connectAttr "groupParts15.og" "pCubeShape11.i";
connectAttr "groupId27.id" "pCubeShape11.ciog.cog[0].cgid";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn4SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCube1.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyTweak1.out" "polyExtrudeFace2.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak1.ip";
connectAttr "polyExtrudeFace2.out" "polyTweak3.ip";
connectAttr "polyTweak3.out" "polySplit4.ip";
connectAttr "polySplit4.out" "polySplit5.ip";
connectAttr "polySplit5.out" "polyTweak4.ip";
connectAttr "polyTweak4.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "polyMergeVert1.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert1.mp";
connectAttr "polyMergeVert1.out" "polyMergeVert2.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert2.mp";
connectAttr "layerManager.dli[1]" "reference.id";
connectAttr "polyCube3.out" "polyExtrudeFace5.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace5.out" "polySplitRing3.ip";
connectAttr "pCubeShape3.wm" "polySplitRing3.mp";
connectAttr "polySplitRing3.out" "polyExtrudeFace6.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeFace6.mp";
connectAttr "polyTweak7.out" "polyExtrudeFace7.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak7.ip";
connectAttr "polyCube4.out" "polySplitRing4.ip";
connectAttr "pCubeShape4.wm" "polySplitRing4.mp";
connectAttr "polySplitRing4.out" "polyExtrudeFace8.ip";
connectAttr "pCubeShape4.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace8.out" "polySplitRing5.ip";
connectAttr "pCubeShape4.wm" "polySplitRing5.mp";
connectAttr "polySplitRing5.out" "polyExtrudeFace9.ip";
connectAttr "pCubeShape4.wm" "polyExtrudeFace9.mp";
connectAttr "polyTweak9.out" "polySplitRing6.ip";
connectAttr "pCubeShape3.wm" "polySplitRing6.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak9.ip";
connectAttr "polySplitRing6.out" "polyExtrudeFace10.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeFace10.mp";
connectAttr "polyExtrudeFace10.out" "deleteComponent10.ig";
connectAttr "deleteComponent10.og" "polyTweak10.ip";
connectAttr "polyTweak10.out" "deleteComponent11.ig";
connectAttr "deleteComponent11.og" "polyMergeVert5.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert5.mp";
connectAttr "polyMergeVert5.out" "polyMergeVert6.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert6.mp";
connectAttr "polyCube5.out" "polySplitRing7.ip";
connectAttr "pCubeShape5.wm" "polySplitRing7.mp";
connectAttr "polyTweak11.out" "polyBevel1.ip";
connectAttr "pCubeShape5.wm" "polyBevel1.mp";
connectAttr "polySplitRing7.out" "polyTweak11.ip";
connectAttr "polyBevel1.out" "polyExtrudeFace11.ip";
connectAttr "pCubeShape5.wm" "polyExtrudeFace11.mp";
connectAttr "polyExtrudeFace11.out" "polyBevel2.ip";
connectAttr "pCubeShape5.wm" "polyBevel2.mp";
connectAttr "polyCube6.out" "polyBevel3.ip";
connectAttr "pCubeShape7.wm" "polyBevel3.mp";
connectAttr "polyBevel3.out" "polySplitRing8.ip";
connectAttr "pCubeShape7.wm" "polySplitRing8.mp";
connectAttr "polyTweak12.out" "polySplitRing9.ip";
connectAttr "pCubeShape7.wm" "polySplitRing9.mp";
connectAttr "polySplitRing8.out" "polyTweak12.ip";
connectAttr "polyTweak13.out" "polyExtrudeFace12.ip";
connectAttr "pCubeShape7.wm" "polyExtrudeFace12.mp";
connectAttr "polySplitRing9.out" "polyTweak13.ip";
connectAttr "polyExtrudeFace12.out" "polyExtrudeFace13.ip";
connectAttr "pCubeShape7.wm" "polyExtrudeFace13.mp";
connectAttr "polyTweak14.out" "polySplitRing10.ip";
connectAttr "pCubeShape7.wm" "polySplitRing10.mp";
connectAttr "polyExtrudeFace13.out" "polyTweak14.ip";
connectAttr "polySplitRing10.out" "polySplitRing11.ip";
connectAttr "pCubeShape7.wm" "polySplitRing11.mp";
connectAttr "polySplitRing11.out" "polyExtrudeFace14.ip";
connectAttr "pCubeShape7.wm" "polyExtrudeFace14.mp";
connectAttr "|pCube8|polySurfaceShape1.o" "polyMirror1.ip";
connectAttr "pCubeShape8.wm" "polyMirror1.mp";
connectAttr "polyMirror1.out" "deleteComponent12.ig";
connectAttr "deleteComponent12.og" "deleteComponent13.ig";
connectAttr "deleteComponent13.og" "deleteComponent14.ig";
connectAttr "deleteComponent14.og" "deleteComponent15.ig";
connectAttr "deleteComponent15.og" "deleteComponent16.ig";
connectAttr "deleteComponent16.og" "deleteComponent17.ig";
connectAttr "deleteComponent17.og" "deleteComponent18.ig";
connectAttr "|pCube10|polySurfaceShape2.o" "polyMirror2.ip";
connectAttr "pCubeShape10.wm" "polyMirror2.mp";
connectAttr "polyMirror2.out" "deleteComponent19.ig";
connectAttr "deleteComponent19.og" "deleteComponent20.ig";
connectAttr "deleteComponent20.og" "deleteComponent21.ig";
connectAttr "deleteComponent21.og" "deleteComponent22.ig";
connectAttr "deleteComponent22.og" "deleteComponent23.ig";
connectAttr "deleteComponent23.og" "deleteComponent24.ig";
connectAttr "polyTweak15.out" "polyConnectComponents1.ip";
connectAttr "polyMergeVert2.out" "polyTweak15.ip";
connectAttr "gray.oc" "blinn1SG.ss";
connectAttr "pCubeShape6.iog.og[1]" "blinn1SG.dsm" -na;
connectAttr "pCubeShape5.iog.og[1]" "blinn1SG.dsm" -na;
connectAttr "pCubeShape8.iog.og[1]" "blinn1SG.dsm" -na;
connectAttr "pCubeShape9.iog.og[1]" "blinn1SG.dsm" -na;
connectAttr "groupId5.msg" "blinn1SG.gn" -na;
connectAttr "groupId6.msg" "blinn1SG.gn" -na;
connectAttr "groupId9.msg" "blinn1SG.gn" -na;
connectAttr "groupId12.msg" "blinn1SG.gn" -na;
connectAttr "groupId15.msg" "blinn1SG.gn" -na;
connectAttr "groupId18.msg" "blinn1SG.gn" -na;
connectAttr "groupId19.msg" "blinn1SG.gn" -na;
connectAttr "blinn1SG.msg" "materialInfo1.sg";
connectAttr "gray.msg" "materialInfo1.m";
connectAttr "polyConnectComponents1.out" "Unfold3DUnfold1.im";
connectAttr "polyTweak16.out" "polyNormalizeUV1.ip";
connectAttr "pCubeShape1.wm" "polyNormalizeUV1.mp";
connectAttr "Unfold3DUnfold1.om" "polyTweak16.ip";
connectAttr "polyNormalizeUV1.out" "Unfold3DUnfold2.im";
connectAttr "layerManager.dli[2]" "treads.id";
connectAttr "layerManager.dli[3]" "lips.id";
connectAttr "layerManager.dli[4]" "turret.id";
connectAttr "layerManager.dli[5]" "chasis.id";
connectAttr "layerManager.dli[6]" "engine.id";
connectAttr "black.oc" "blinn2SG.ss";
connectAttr "pCubeShape6.iog.og[0]" "blinn2SG.dsm" -na;
connectAttr "pCubeShape6.ciog.cog[0]" "blinn2SG.dsm" -na;
connectAttr "pCubeShape5.iog.og[0]" "blinn2SG.dsm" -na;
connectAttr "pCubeShape5.ciog.cog[0]" "blinn2SG.dsm" -na;
connectAttr "pCubeShape8.iog.og[0]" "blinn2SG.dsm" -na;
connectAttr "pCubeShape8.ciog.cog[0]" "blinn2SG.dsm" -na;
connectAttr "pCubeShape9.iog.og[0]" "blinn2SG.dsm" -na;
connectAttr "pCubeShape9.ciog.cog[0]" "blinn2SG.dsm" -na;
connectAttr "pCubeShape4.iog" "blinn2SG.dsm" -na;
connectAttr "pCubeShape7.iog.og[1]" "blinn2SG.dsm" -na;
connectAttr "pCubeShape3.iog.og[1]" "blinn2SG.dsm" -na;
connectAttr "groupId1.msg" "blinn2SG.gn" -na;
connectAttr "groupId2.msg" "blinn2SG.gn" -na;
connectAttr "groupId3.msg" "blinn2SG.gn" -na;
connectAttr "groupId4.msg" "blinn2SG.gn" -na;
connectAttr "groupId7.msg" "blinn2SG.gn" -na;
connectAttr "groupId8.msg" "blinn2SG.gn" -na;
connectAttr "groupId10.msg" "blinn2SG.gn" -na;
connectAttr "groupId11.msg" "blinn2SG.gn" -na;
connectAttr "blinn2SG.msg" "materialInfo2.sg";
connectAttr "black.msg" "materialInfo2.m";
connectAttr "polyBevel2.out" "groupParts1.ig";
connectAttr "groupId3.id" "groupParts1.gi";
connectAttr "groupParts1.og" "groupParts2.ig";
connectAttr "groupId6.id" "groupParts2.gi";
connectAttr "deleteComponent18.og" "groupParts3.ig";
connectAttr "groupId7.id" "groupParts3.gi";
connectAttr "groupParts3.og" "groupParts4.ig";
connectAttr "groupId9.id" "groupParts4.gi";
connectAttr "green.oc" "blinn3SG.ss";
connectAttr "pCubeShape7.iog.og[0]" "blinn3SG.dsm" -na;
connectAttr "pCubeShape7.ciog.cog[0]" "blinn3SG.dsm" -na;
connectAttr "pCubeShape3.iog.og[0]" "blinn3SG.dsm" -na;
connectAttr "pCubeShape3.ciog.cog[0]" "blinn3SG.dsm" -na;
connectAttr "pCubeShape1.iog.og[0]" "blinn3SG.dsm" -na;
connectAttr "pCubeShape1.ciog.cog[0]" "blinn3SG.dsm" -na;
connectAttr "pCubeShape10.iog.og[0]" "blinn3SG.dsm" -na;
connectAttr "pCubeShape10.ciog.cog[0]" "blinn3SG.dsm" -na;
connectAttr "pCubeShape11.iog.og[0]" "blinn3SG.dsm" -na;
connectAttr "pCubeShape11.ciog.cog[0]" "blinn3SG.dsm" -na;
connectAttr "groupId13.msg" "blinn3SG.gn" -na;
connectAttr "groupId14.msg" "blinn3SG.gn" -na;
connectAttr "groupId16.msg" "blinn3SG.gn" -na;
connectAttr "groupId17.msg" "blinn3SG.gn" -na;
connectAttr "groupId20.msg" "blinn3SG.gn" -na;
connectAttr "groupId21.msg" "blinn3SG.gn" -na;
connectAttr "groupId23.msg" "blinn3SG.gn" -na;
connectAttr "groupId24.msg" "blinn3SG.gn" -na;
connectAttr "groupId26.msg" "blinn3SG.gn" -na;
connectAttr "groupId27.msg" "blinn3SG.gn" -na;
connectAttr "blinn3SG.msg" "materialInfo3.sg";
connectAttr "green.msg" "materialInfo3.m";
connectAttr "polyExtrudeFace14.out" "groupParts5.ig";
connectAttr "groupId13.id" "groupParts5.gi";
connectAttr "groupParts5.og" "groupParts6.ig";
connectAttr "groupId15.id" "groupParts6.gi";
connectAttr "deleteComponent24.og" "polyExtrudeFace15.ip";
connectAttr "pCubeShape10.wm" "polyExtrudeFace15.mp";
connectAttr "polySurfaceShape3.o" "polyMirror3.ip";
connectAttr "pCubeShape11.wm" "polyMirror3.mp";
connectAttr "polyMirror3.out" "deleteComponent25.ig";
connectAttr "deleteComponent25.og" "deleteComponent26.ig";
connectAttr "deleteComponent26.og" "deleteComponent27.ig";
connectAttr "deleteComponent27.og" "deleteComponent28.ig";
connectAttr "deleteComponent28.og" "deleteComponent29.ig";
connectAttr "deleteComponent29.og" "deleteComponent30.ig";
connectAttr "deleteComponent30.og" "deleteComponent31.ig";
connectAttr "deleteComponent31.og" "deleteComponent32.ig";
connectAttr "polyMergeVert6.out" "groupParts7.ig";
connectAttr "groupId16.id" "groupParts7.gi";
connectAttr "groupParts7.og" "groupParts8.ig";
connectAttr "groupId18.id" "groupParts8.gi";
connectAttr "groupParts6.og" "groupParts9.ig";
connectAttr "groupId19.id" "groupParts9.gi";
connectAttr "blinn4.oc" "blinn4SG.ss";
connectAttr "pCubeShape7.iog.og[2]" "blinn4SG.dsm" -na;
connectAttr "pCubeShape1.iog.og[1]" "blinn4SG.dsm" -na;
connectAttr "pCubeShape10.iog.og[1]" "blinn4SG.dsm" -na;
connectAttr "pCubeShape11.iog.og[1]" "blinn4SG.dsm" -na;
connectAttr "pCubeShape3.iog.og[2]" "blinn4SG.dsm" -na;
connectAttr "groupId22.msg" "blinn4SG.gn" -na;
connectAttr "groupId25.msg" "blinn4SG.gn" -na;
connectAttr "groupId28.msg" "blinn4SG.gn" -na;
connectAttr "groupId29.msg" "blinn4SG.gn" -na;
connectAttr "blinn4SG.msg" "materialInfo4.sg";
connectAttr "blinn4.msg" "materialInfo4.m";
connectAttr "Unfold3DUnfold2.om" "groupParts10.ig";
connectAttr "groupId20.id" "groupParts10.gi";
connectAttr "groupParts10.og" "groupParts11.ig";
connectAttr "groupId22.id" "groupParts11.gi";
connectAttr "polyExtrudeFace15.out" "groupParts12.ig";
connectAttr "groupId23.id" "groupParts12.gi";
connectAttr "groupParts12.og" "groupParts13.ig";
connectAttr "groupId25.id" "groupParts13.gi";
connectAttr "deleteComponent32.og" "groupParts14.ig";
connectAttr "groupId26.id" "groupParts14.gi";
connectAttr "groupParts14.og" "groupParts15.ig";
connectAttr "groupId28.id" "groupParts15.gi";
connectAttr "groupParts8.og" "groupParts16.ig";
connectAttr "groupId29.id" "groupParts16.gi";
connectAttr "gray.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "blinn1SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "black.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "blinn2SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "green.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "blinn3SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "blinn4.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "blinn4SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "blinn2SG.pa" ":renderPartition.st" -na;
connectAttr "blinn3SG.pa" ":renderPartition.st" -na;
connectAttr "blinn4SG.pa" ":renderPartition.st" -na;
connectAttr "gray.msg" ":defaultShaderList1.s" -na;
connectAttr "black.msg" ":defaultShaderList1.s" -na;
connectAttr "green.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn4.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of tankalt1.ma
