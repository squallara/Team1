//Maya ASCII 2015 scene
//Name: piglet_03.ma
//Last modified: Mon, Sep 12, 2016 09:16:34 AM
//Codeset: 1252
requires maya "2015";
currentUnit -l meter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201408201531-928694";
fileInfo "osv" "Microsoft Windows 7 Enterprise Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "education";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.60764506506175608 0.42456609275327317 0.95322897437008069 ;
	setAttr ".r" -type "double3" -6.8164269403558873 -5367.4162180973499 0 ;
	setAttr ".rp" -type "double3" 1.7053025658242404e-015 -2.4868995751603509e-016 2.2737367544323206e-015 ;
	setAttr ".rpt" -type "double3" -3.3743403217419069e-015 1.287324816161005e-015 1.9371697245507322e-015 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".pze" yes;
	setAttr ".fl" 34.999999999999979;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 1.1978998685222366;
	setAttr ".ow" 0.1;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 162.43096748356913 33.722219467163086 -83.72113037109375 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.058134613037109373 3.4457992841629119 -0.42639518737792897 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 1.001;
	setAttr ".ow" 0.34080846686112265;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.033690363745463713 0.32726124766075565 1.6996568776838195 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 1.001;
	setAttr ".ow" 0.54949387584009779;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.4608084913169268 0.29224339871285976 -0.43086792094402859 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 1.001;
	setAttr ".ow" 0.20580223179457716;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "samantha";
	setAttr ".v" no;
createNode transform -n "grp_skeleton" -p "samantha";
createNode joint -n "jnt_backMain" -p "grp_skeleton";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -90 -84.523826571103498 89.999999999999872 ;
	setAttr ".bps" -type "matrix" 4.4408920985006262e-016 0.095431806630139129 0.99543596995653494 0
		 2.2620794126737568e-015 0.99543596995653505 -0.095431806630139129 0 -1 2.2898349882893858e-015 2.2204460492503131e-016 0
		 0 34.204625513024482 0.061553375823110879 1;
	setAttr ".radi" 5;
createNode joint -n "jnt_backLower_01" -p "jnt_backMain";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.3083549315181533e-013 -5.6372017126856106e-015 -3.2304308630014451 ;
	setAttr ".bps" -type "matrix" 3.1591132237626194e-016 0.039185566695354217 0.99923195073154247 0
		 2.2835101339696706e-015 0.99923195073154258 -0.039185566695354224 0 -1 2.2898349882893858e-015 2.2204460492503131e-016 0
		 6.4686594228122968e-029 36.930563468576253 30.962589450656484 1;
	setAttr ".radi" 5;
createNode joint -n "jnt_backLower_02" -p "jnt_backLower_01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.4833006785013647e-013 -6.2773793440791517e-014 
		-20.680691388817088 ;
	setAttr ".bps" -type "matrix" -5.1088850464903517e-016 -0.31622776601683839 0.94868329805051355 0
		 2.2479349259631993e-015 0.94868329805051366 0.31622776601683833 0 -1 2.2898349882893858e-015 2.2204460492503131e-016 0
		 -4.8263780539474273e-015 38.37949424500453 58.979280272872437 1;
	setAttr ".radi" 5;
createNode joint -n "jnt_r_back_hip" -p "jnt_backLower_02";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999999999974 -2.5951975010587967e-013 92.04540848888719 ;
	setAttr ".bps" -type "matrix" 2.264737056650252e-015 0.95936550157127021 0.28216632399155112 0
		 -4.9936875346748408e-015 -0.28216632399155128 0.9593655015712701 0 1 -3.5774605955167759e-015 4.1558824596480777e-015 0
		 40.730399999999982 -7.7147600000000196 80.483200000000025 1;
	setAttr ".radi" 3;
createNode joint -n "jnt_r_back_thigh" -p "jnt_r_back_hip";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.264737056650252e-015 0.95936550157127021 0.28216632399155112 0
		 -4.9936875346748408e-015 -0.28216632399155128 0.9593655015712701 0 1 -3.5774605955167759e-015 4.1558824596480777e-015 0
		 40.73040000000001 -29.21810000000001 74.732300000000009 1;
	setAttr ".radi" 3;
createNode joint -n "jnt_r_back_knee" -p "jnt_r_back_thigh";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.264737056650252e-015 0.95936550157127021 0.28216632399155112 0
		 -4.9936875346748408e-015 -0.28216632399155128 0.9593655015712701 0 1 -3.5774605955167759e-015 4.1558824596480777e-015 0
		 40.730399999999982 -47.721099999999979 59.479899999999944 1;
	setAttr ".radi" 3;
createNode joint -n "jnt_r_back_sheen" -p "jnt_r_back_knee";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.264737056650252e-015 0.95936550157127021 0.28216632399155112 0
		 -4.9936875346748408e-015 -0.28216632399155128 0.9593655015712701 0 1 -3.5774605955167759e-015 4.1558824596480777e-015 0
		 40.730400000000003 -59.772499999999994 62.923199999999994 1;
	setAttr ".radi" 3;
createNode joint -n "jnt_r_back_foot" -p "jnt_r_back_sheen";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.264737056650252e-015 0.95936550157127021 0.28216632399155112 0
		 -4.9936875346748408e-015 -0.28216632399155128 0.9593655015712701 0 1 -3.5774605955167759e-015 4.1558824596480777e-015 0
		 40.730400000000003 -65.629800000000003 61.35169999999998 1;
	setAttr ".radi" 3;
createNode joint -n "jnt_r_back_footEnd" -p "jnt_r_back_foot";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.264737056650252e-015 0.95936550157127021 0.28216632399155112 0
		 -4.9936875346748408e-015 -0.28216632399155128 0.9593655015712701 0 1 -3.5774605955167759e-015 4.1558824596480777e-015 0
		 40.73040000000001 -74.3667570733936 58.479400486245119 1;
	setAttr ".radi" 3;
createNode parentConstraint -n "jnt_r_back_footEnd_parentConstraint1" -p "jnt_r_back_footEnd";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctrl_r_back_footEndW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.1263880373444408e-015 1.4210854715202005e-015 
		-3.1263880373444408e-015 ;
	setAttr ".tg[0].tor" -type "double3" 89.999999999999758 -16.389540334034848 89.999999999999872 ;
	setAttr ".lr" -type "double3" -2.7034714792439894e-013 8.269442171805148e-014 1.9083328088780905e-014 ;
	setAttr ".rst" -type "double3" -0.099646021518849964 -0.019832116515010653 2.8421709430404008e-016 ;
	setAttr ".rsrr" -type "double3" -2.7352770260586251e-013 1.6538884343610288e-013 
		3.1805546814631219e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_r_back_foot_parentConstraint1" -p "jnt_r_back_foot";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctrl_r_back_footW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -9.3791641120333229e-015 2.5579538487363606e-015 
		2.4868995751603509e-015 ;
	setAttr ".tg[0].tor" -type "double3" 89.999999999999758 -16.389540334034855 89.999999999999872 ;
	setAttr ".lr" -type "double3" -2.7670825728732593e-013 8.9055531080978545e-014 3.4986101496098467e-014 ;
	setAttr ".rst" -type "double3" -0.060627159305061372 0.001450899237964336 1.4210854715202004e-016 ;
	setAttr ".rsrr" -type "double3" -2.7988881196878945e-013 1.7811106216195696e-013 
		1.2722218725853632e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_r_back_sheen_parentConstraint1" -p "jnt_r_back_sheen";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctrl_r_back_sheenW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -8.0291329140891329e-015 2.7711166694643908e-015 
		2.3447910280083307e-015 ;
	setAttr ".tg[0].tor" -type "double3" 89.999999999999758 -16.389540334034844 89.999999999999886 ;
	setAttr ".lr" -type "double3" -2.7034714792439894e-013 1.0813885916975961e-013 2.2263882770244362e-014 ;
	setAttr ".rst" -type "double3" -0.10590114102235877 0.067038824685121207 4.9737991503207018e-016 ;
	setAttr ".rsrr" -type "double3" -2.7352770260586251e-013 1.9719439025073803e-013 
		3.1805546814630466e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_r_back_knee_parentConstraint1" -p "jnt_r_back_knee";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctrl_r_back_kneeW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -5.4711790653527716e-015 2.3447910280083307e-015 
		1.4210854715202005e-015 ;
	setAttr ".tg[0].tor" -type "double3" 89.999999999999758 -16.389540334034976 89.999999999999829 ;
	setAttr ".lr" -type "double3" -2.95791585376107e-013 5.0888874903416653e-014 1.4948607002878516e-013 ;
	setAttr ".rst" -type "double3" -0.2205485351562195 -0.094117028833500455 -2.1316282072803005e-016 ;
	setAttr ".rsrr" -type "double3" -2.9897214005757042e-013 1.3358329662146804e-013 
		1.2722218725854034e-013 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_r_back_thigh_parentConstraint1" -p "jnt_r_back_thigh";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctrl_r_back_thighW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.6290081223123707e-015 2.4158453015843408e-015 
		1.1368683772161603e-015 ;
	setAttr ".tg[0].tor" -type "double3" 89.999999999999758 -16.389540334034841 89.999999999999872 ;
	setAttr ".lr" -type "double3" -2.7352770260586246e-013 7.633331235512444e-014 1.5902773407317404e-014 ;
	setAttr ".rst" -type "double3" -0.22252272877200574 0.0055030333835425441 5.6843418860808016e-016 ;
	setAttr ".rsrr" -type "double3" -2.7670825728732588e-013 1.5902773407317582e-013 
		-3.8400984793036365e-028 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_r_back_hip_parentConstraint1" -p "jnt_r_back_hip";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctrl_r_back_hipW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 7.5317529990570623e-015 2.3803181647963358e-015 
		1.2789769243681803e-015 ;
	setAttr ".tg[0].tor" -type "double3" 89.999999999999758 -16.389540334034841 89.999999999999872 ;
	setAttr ".lr" -type "double3" -1.5887353566535279e-013 -1.4246458954490859e-013 
		1.9083328088781299e-014 ;
	setAttr ".rst" -type "double3" 0.34976692533854847 -0.36928712642414752 -0.40730400000000089 ;
	setAttr ".rsrr" -type "double3" -1.5429598587587546e-013 -1.4688157383874237e-013 
		-1.2722218725853867e-014 ;
	setAttr -k on ".w0";
createNode joint -n "jnt_l_back_hip" -p "jnt_backLower_02";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 -1.4466457491153583e-015 -87.954591511112795 ;
	setAttr ".bps" -type "matrix" -2.264737056650252e-015 -0.95936550157127032 -0.28216632399155089 0
		 3.0786607634474341e-016 0.28216632399155095 -0.95936550157127021 0 1 -2.2552795797390431e-015 -3.3953299399619646e-016 0
		 -40.730423179557469 -7.7147565332748869 80.483199985585244 1;
	setAttr ".radi" 3;
createNode joint -n "jnt_l_back_thigh" -p "jnt_l_back_hip";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.9083328088781075e-014 3.9843335435145638e-015 6.361109362927032e-015 ;
	setAttr ".bps" -type "matrix" -2.264737056650252e-015 -0.95936550157127032 -0.28216632399155089 0
		 3.0786607634474341e-016 0.28216632399155095 -0.95936550157127021 0 1 -2.2552795797390431e-015 -3.3953299399619646e-016 0
		 -40.730423179557469 -29.218142003235478 74.732294569200477 1;
	setAttr ".radi" 3;
createNode joint -n "jnt_l_back_knee" -p "jnt_l_back_thigh";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.9083328088781075e-014 3.9843335435145638e-015 6.361109362927032e-015 ;
	setAttr ".bps" -type "matrix" -2.264737056650252e-015 -0.95936550157127032 -0.28216632399155089 0
		 3.0786607634474341e-016 0.28216632399155095 -0.95936550157127021 0 1 -2.2552795797390431e-015 -3.3953299399619646e-016 0
		 -40.730423179557448 -47.721055082038774 59.479893247484242 1;
	setAttr ".radi" 3;
createNode joint -n "jnt_l_back_sheen" -p "jnt_l_back_knee";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -5.6498000615042044e-030 3.9843335435145914e-015 0 ;
	setAttr ".bps" -type "matrix" -2.264737056650252e-015 -0.95936550157127032 -0.28216632399155089 0
		 3.0786607634474341e-016 0.28216632399155095 -0.95936550157127021 0 1 -2.2552795797390431e-015 -3.3953299399619646e-016 0
		 -40.730423179557455 -59.772522393285087 62.923169622126075 1;
	setAttr ".radi" 3;
createNode joint -n "jnt_l_back_foot" -p "jnt_l_back_sheen";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -5.6498000615042044e-030 3.9843335435145914e-015 0 ;
	setAttr ".bps" -type "matrix" -2.264737056650252e-015 -0.95936550157127032 -0.28216632399155089 0
		 3.0786607634474341e-016 0.28216632399155095 -0.95936550157127021 0 1 -2.2552795797390431e-015 -3.3953299399619646e-016 0
		 -40.730423179557476 -65.629755290149177 61.351716893699127 1;
	setAttr ".radi" 3;
createNode joint -n "jnt_l_back_footEnd" -p "jnt_l_back_foot";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -5.6498000615042044e-030 3.9843335435145914e-015 0 ;
	setAttr ".bps" -type "matrix" -2.264737056650252e-015 -0.95936550157127032 -0.28216632399155089 0
		 3.0786607634474341e-016 0.28216632399155095 -0.95936550157127021 0 1 -2.2552795797390431e-015 -3.3953299399619646e-016 0
		 -40.730423179557476 -74.366750717260715 58.479359194663438 1;
	setAttr ".radi" 3;
createNode parentConstraint -n "jnt_l_back_footEnd_parentConstraint1" -p "jnt_l_back_footEnd";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctrl_l_back_footEndW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.8474111129762605e-015 -4.263256414560601e-016 
		1.4210854715202004e-016 ;
	setAttr ".tg[0].tor" -type "double3" -90.000000000000028 16.389540334034812 -90.000000000000142 ;
	setAttr ".lr" -type "double3" 1.5902773407317596e-014 2.7034714792439899e-013 3.180554681463555e-015 ;
	setAttr ".rst" -type "double3" 0.099646553650456438 0.019832566503246055 2.1316282072803005e-016 ;
	setAttr ".rsrr" -type "double3" 1.5902773407317543e-014 2.6080548388000838e-013 
		-1.9083328088781063e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_l_back_foot_parentConstraint1" -p "jnt_l_back_foot";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctrl_l_back_footW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.3179556414731907e-007 4.4709851025004357e-007 
		1.6893699424258558e-007 ;
	setAttr ".tg[0].tor" -type "double3" -90.000000000000028 16.389540334034823 -90.000000000000128 ;
	setAttr ".lr" -type "double3" 6.361109362927069e-015 2.5444437451708134e-013 1.5902773407317596e-014 ;
	setAttr ".rst" -type "double3" 0.060626382156264924 -0.0014511634026766274 7.105427357601002e-017 ;
	setAttr ".rsrr" -type "double3" 3.1805546814634817e-015 2.5126381983561782e-013 
		-1.5902773407317578e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_l_back_sheen_parentConstraint1" -p "jnt_l_back_sheen";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctrl_l_back_sheenW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.3179556471575324e-007 -2.2393284950794624e-007 
		-3.0377873535769598e-007 ;
	setAttr ".tg[0].tor" -type "double3" -90.000000000000028 16.38954033403483 -90.000000000000142 ;
	setAttr ".lr" -type "double3" 9.5416640443905976e-015 2.8306936665025307e-013 1.9083328088781126e-014 ;
	setAttr ".rst" -type "double3" 0.10590185344603949 -0.067038787961254509 2.8421709430404008e-016 ;
	setAttr ".rsrr" -type "double3" 9.5416640443905566e-015 2.6716659324293542e-013 
		3.1805546814635393e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_l_back_knee_parentConstraint1" -p "jnt_l_back_knee";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctrl_l_back_kneeW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.3179556436048187e-007 4.4917961453450064e-007 
		-6.7525156239867105e-008 ;
	setAttr ".tg[0].tor" -type "double3" -90.000000000000028 16.389540334034823 -90.000000000000142 ;
	setAttr ".lr" -type "double3" 1.2722218725854107e-014 2.8306936665025297e-013 1.5902773407317615e-014 ;
	setAttr ".rst" -type "double3" 0.22054770499368295 0.09411728677593488 6.3948846218409014e-016 ;
	setAttr ".rsrr" -type "double3" 1.2722218725854067e-014 2.7034714792439894e-013 
		3.001456282674108e-029 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_l_back_thigh_parentConstraint1" -p "jnt_l_back_thigh";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctrl_l_back_thighW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.3179557096852936e-007 -4.2003235240173353e-007 
		-5.430799461692004e-008 ;
	setAttr ".tg[0].tor" -type "double3" -90.000000000000028 16.389540334034827 -90.000000000000156 ;
	setAttr ".lr" -type "double3" 1.2722218725854114e-014 2.9261103069464353e-013 1.9083328088781135e-014 ;
	setAttr ".rst" -type "double3" 0.22252318027833506 -0.0055031097215317007 4.263256414560601e-016 ;
	setAttr ".rsrr" -type "double3" 1.2722218725854067e-014 2.7670825728732598e-013 
		3.0720787834429106e-029 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_l_back_hip_parentConstraint1" -p "jnt_l_back_hip";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctrl_l_back_hipW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.3179557395280881e-007 3.4667251203046588e-008 
		-1.4414382576433126e-010 ;
	setAttr ".tg[0].tor" -type "double3" -90.000000000000028 16.389540334034823 -90.000000000000142 ;
	setAttr ".lr" -type "double3" 1.576758717758149e-013 1.2865309059229388e-013 1.7702427987004739e-028 ;
	setAttr ".rst" -type "double3" 0.34976691423905082 -0.36928709358149048 0.40730423179557362 ;
	setAttr ".rsrr" -type "double3" 1.5751530628017143e-013 1.3764762467560496e-013 
		1.8920772126475255e-028 ;
	setAttr -k on ".w0";
createNode joint -n "jnt_tail_01" -p "jnt_backLower_02";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -18.434948822922035 89.999999999999872 0 ;
	setAttr ".bps" -type "matrix" 1 -3.0622183513762611e-015 2.0951054843355908e-015 0
		 3.0435359914965335e-015 1 5.5511151231257661e-017 0 -2.1052803034508011e-015 -1.1102230246251032e-016 0.99999999999999978 0
		 -4.8263780539474684e-015 28.375369689620058 92.885181332221336 1;
	setAttr ".radi" 5;
createNode joint -n "jnt_tail_02" -p "jnt_tail_01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 -3.0622183513762611e-015 2.0951054843355908e-015 0
		 3.0435359914965335e-015 1 5.5511151231257661e-017 0 -2.1052803034508011e-015 -1.1102230246251032e-016 0.99999999999999978 0
		 -4.1427221254487091e-014 19.875050032472569 99.88840005425331 1;
	setAttr ".radi" 5;
createNode joint -n "jnt_tail_03" -p "jnt_tail_02";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 -3.0622183513762611e-015 2.0951054843355908e-015 0
		 3.0435359914965335e-015 1 5.5511151231257661e-017 0 -2.1052803034508011e-015 -1.1102230246251032e-016 0.99999999999999978 0
		 -0.057551901427264074 20.878771290375923 105.01458335349342 1;
	setAttr ".radi" 5;
createNode joint -n "jnt_tail_04" -p "jnt_tail_03";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 -3.0622183513762611e-015 2.0951054843355908e-015 0
		 3.0435359914965335e-015 1 5.5511151231257661e-017 0 -2.1052803034508011e-015 -1.1102230246251032e-016 0.99999999999999978 0
		 0.0075336254256042068 26.16631040365586 108.92385708173175 1;
	setAttr ".radi" 5;
createNode parentConstraint -n "jnt_tail_04_parentConstraint1" -p "jnt_tail_04";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctrl_tail_04W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 6.2172489379008772e-017 3.1974423109204507e-016 
		-2.8421709430404008e-016 ;
	setAttr ".tg[0].tor" -type "double3" 0 1.5640315015061934e-013 -1.9016693618072668e-013 ;
	setAttr ".rst" -type "double3" 0.019823612495070028 0.035817161109422527 0.066328076128559982 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_tail_03_parentConstraint1" -p "jnt_tail_03";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctrl_tail_03W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.7517545453956703e-016 1.4210854715202004e-016 
		-1.4210854715202004e-016 ;
	setAttr ".tg[0].tor" -type "double3" 0 -1.2004070188714144e-013 -1.7545218748136872e-013 ;
	setAttr ".rst" -type "double3" 0.02045266633096687 -0.034490599586851189 0.06898119917370267 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_tail_02_parentConstraint1" -p "jnt_tail_02";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctrl_tail_02W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.2089305772940338e-016 1.0658141036401502e-016 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 0 -1.2004070188714162e-013 -1.754521874813687e-013 ;
	setAttr ".rst" -type "double3" 2.5243548967072378e-031 -0.059695268515704107 0.087553060489699561 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_tail_01_parentConstraint1" -p "jnt_tail_01";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctrl_tail_01W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.6739704199396196e-016 3.552713678800501e-017 
		-2.8421709430404008e-016 ;
	setAttr ".tg[0].tor" -type "double3" 3.1805546814635085e-015 -1.2004070188714154e-013 
		-1.754521874813687e-013 ;
	setAttr ".lr" -type "double3" 4.7708320221952752e-015 -1.987846675914699e-016 1.5902773407317584e-015 ;
	setAttr ".rst" -type "double3" 0.28557715917345261 -1.4210854715202004e-016 -1.4589808781204462e-016 ;
	setAttr ".rsrr" -type "double3" -1.5902773407317584e-015 -2.2069531490250793e-032 
		-1.5902773407317584e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_backLower_02_parentConstraint1" -p "jnt_backLower_02";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctrl_backLower_02W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 8.6628316952482235e-017 -7.105427357601002e-017 
		-1.4210854715202004e-016 ;
	setAttr ".tg[0].tor" -type "double3" 89.999999999999957 -71.565051177077947 -90.000000000000099 ;
	setAttr ".lr" -type "double3" -9.4131547843182313e-014 -1.4968015912672613e-013 
		-1.9083328088780978e-014 ;
	setAttr ".rst" -type "double3" 0.28051949796902043 0.0034996801940832965 1.448746212840347e-016 ;
	setAttr ".rsrr" -type "double3" -9.4718216393636788e-014 -1.4978720168150095e-013 
		-9.5416640443904257e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_backLower_01_parentConstraint1" -p "jnt_backLower_01";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctrl_backLower_01W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.0380585280245293e-016 -1.4210854715202004e-016 
		3.552713678800501e-017 ;
	setAttr ".tg[0].tor" -type "double3" -89.999999999999687 -87.754257434104971 89.999999999999545 ;
	setAttr ".lr" -type "double3" -1.3627517479522016e-013 -1.1799048205664929e-013 
		-2.1866313435061539e-014 ;
	setAttr ".rst" -type "double3" 0.31020144001673616 -0.0023544500653844124 1.3243115937030884e-016 ;
	setAttr ".rsrr" -type "double3" -1.3627499969640684e-013 -1.1799669160925785e-013 
		-1.3914926731402745e-014 ;
	setAttr -k on ".w0";
createNode joint -n "jnt_backFront_01" -p "jnt_backMain";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999999999986 4.6002000870111392e-016 168.514820613609 ;
	setAttr ".pa" -type "double3" 1.0331271417698591e-013 -1.2475381375510913e-013 -6.3611093629271463e-015 ;
	setAttr ".bps" -type "matrix" 1.5215827843083536e-017 0.10468478451804256 -0.99450545292140602 0
		 -3.7702067431635562e-017 0.99450545292140613 0.10468478451804253 0 1 4.0202507573322338e-017 2.3222499902621633e-017 0
		 -1.8774889544260081e-028 37.029547513629453 -23.541171300322716 1;
	setAttr ".radi" 5;
createNode joint -n "jnt_head_01" -p "jnt_backFront_01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.9874955199378078e-031 -1.5253503309533333e-030 -22.162938806595399 ;
	setAttr ".pa" -type "double3" -5.1572613770066115e-015 1.1852569706645588e-014 2.2263882770244617e-014 ;
	setAttr ".bps" -type "matrix" 2.8314399715710733e-017 -0.27821891729303327 -0.96051769065451997 0
		 -2.917639584165445e-017 0.96051769065452008 -0.27821891729303327 0 1 4.0202507573322338e-017 2.3222499902621633e-017 0
		 3.423608529312708e-016 39.384987683309987 -45.917852912287913 1;
	setAttr ".radi" 5;
createNode joint -n "jnt_head_02" -p "jnt_head_01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 16.153932849100883 -90 0 ;
	setAttr ".pa" -type "double3" -1.5902773407317584e-015 0 0 ;
	setAttr ".bps" -type "matrix" 1 4.0202507573322338e-017 2.3222499902621633e-017 0
		 -8.1464703725263627e-018 1 -5.5511151231257827e-017 0 -1.9079056565625415e-017 -5.5511151231257827e-017 1 0
		 1.1813586569586097e-015 31.140947089428064 -74.379421629261202 1;
	setAttr ".radi" 5;
createNode joint -n "jnt_nose_01" -p "jnt_head_02";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 3.1805546814635168e-015 1.3305512341631851e-015 -2.3034340097940991e-015 ;
	setAttr ".bps" -type "matrix" 1 4.0202507573322338e-017 2.3222499902621633e-017 0
		 -8.1464703725263627e-018 1 -5.5511151231257827e-017 0 -1.9079056565625415e-017 -5.5511151231257827e-017 1 0
		 1.6165426660418205e-015 -4.3429940532997371 -82.037826192439894 1;
	setAttr ".radi" 5;
createNode joint -n "jnt_nose_02" -p "jnt_nose_01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 4.0202507573322338e-017 2.3222499902621633e-017 0
		 -8.1464703725263627e-018 1 -5.5511151231257827e-017 0 -1.9079056565625415e-017 -5.5511151231257827e-017 1 0
		 1.8065847258574407e-015 -7.2097288372308217 -90.077669323449385 1;
	setAttr ".radi" 5;
createNode joint -n "jnt_noseEnd" -p "jnt_nose_02";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 4.0202507573322338e-017 2.3222499902621633e-017 0
		 -8.1464703725263627e-018 1 -5.5511151231257827e-017 0 -1.9079056565625415e-017 -5.5511151231257827e-017 1 0
		 1.9640184069967239e-015 -6.6405154222533396 -99.711496864662351 1;
	setAttr ".radi" 5;
createNode parentConstraint -n "jnt_noseEnd_parentConstraint1" -p "jnt_noseEnd";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctrl_noseEndW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 5.5254723589004235e-016 -5.3290705182007512e-017 
		1.4210854715202004e-016 ;
	setAttr ".tg[0].tor" -type "double3" 0 -1.3305512341631892e-015 2.3034340097940991e-015 ;
	setAttr ".rst" -type "double3" -1.2319788668256272e-031 0.0056921341497747947 -0.084946947351715499 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_nose_02_parentConstraint1" -p "jnt_nose_02";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctrl_nose_02W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 6.2535784172853502e-016 -5.3290705182007512e-017 
		1.4210854715202004e-016 ;
	setAttr ".tg[0].tor" -type "double3" 0 -1.3305512341631851e-015 2.3034340097940991e-015 ;
	setAttr ".rst" -type "double3" 1.0831430007233814e-031 -0.028667347839310839 -0.087367155319804518 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_nose_01_parentConstraint1" -p "jnt_nose_01";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctrl_nose_01W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.9633688481079838e-016 -7.105427357601002e-017 
		4.263256414560601e-016 ;
	setAttr ".tg[0].tor" -type "double3" 0 -1.3305512341631851e-015 2.3034340097940991e-015 ;
	setAttr ".rst" -type "double3" 2.8257244144049524e-032 -0.35483941142727815 -0.07658404563178664 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_head_02_parentConstraint1" -p "jnt_head_02";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctrl_head_02W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.7937733550424882e-016 -3.552713678800501e-017 
		4.263256414560601e-016 ;
	setAttr ".tg[0].tor" -type "double3" -3.1805546814635168e-015 -1.3305512341631845e-015 
		2.3034340097940995e-015 ;
	setAttr ".lr" -type "double3" 6.3611093629268852e-015 2.4291486379677611e-013 -6.9972202992197363e-014 ;
	setAttr ".rst" -type "double3" 0.29631488304581766 -7.105427357601002e-017 -3.9443045261050591e-033 ;
	setAttr ".rsrr" -type "double3" -1.5902773407317584e-015 0 0 ;
	setAttr -k on ".w0";
createNode joint -n "jnt_l_eyeLash" -p "jnt_head_02";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.1069697768788946 30.687180189888338 -0.82830817515004274 ;
	setAttr ".bps" -type "matrix" 0.85987661962787221 -0.012431848603322266 -0.51035051499694573 0
		 0.024311968039614155 0.99956636176066938 0.016613748721450106 0 0.50992266788934215 -0.026693399499553846 0.85980598695041244 0
		 -21.517396269588573 3.9299729644534693 -73.048531007901119 1;
	setAttr ".radi" 8;
createNode parentConstraint -n "jnt_l_eyeLash_parentConstraint1" -p "jnt_l_eyeLash";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctrl_l_eyeLashW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.0658141036401502e-016 7.549516567451065e-017 
		4.263256414560601e-016 ;
	setAttr ".tg[0].tor" -type "double3" 1.1069697768788951 30.687180189888338 -0.82830817515003874 ;
	setAttr ".lr" -type "double3" -1.789062008323228e-015 3.4166114742283918e-017 3.379339349054986e-015 ;
	setAttr ".rst" -type "double3" -0.21517396269588573 -0.27210974124974596 0.013308906213600835 ;
	setAttr ".rsrr" -type "double3" -1.7890620083232284e-015 3.4166114742283918e-017 
		3.379339349054986e-015 ;
	setAttr -k on ".w0";
createNode joint -n "jnt_r_eyeLash" -p "jnt_head_02";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.6352481463794928 -28.875892256060155 1.4842364713586649 ;
	setAttr ".bps" -type "matrix" 0.87537399905422442 0.022681473781501739 0.48291398046330558 0
		 -0.012115272964969526 0.99961432132538175 -0.024988572631919014 0 -0.48329450849435385 0.016023712063546872 0.87531117821658455 0
		 21.51739626958857 3.9299729644534693 -73.048531007901133 1;
	setAttr ".radi" 8;
createNode parentConstraint -n "jnt_r_eyeLash_parentConstraint1" -p "jnt_r_eyeLash";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctrl_r_eyeLashW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.4210854715202004e-016 7.549516567451065e-017 
		2.8421709430404008e-016 ;
	setAttr ".tg[0].tor" -type "double3" -1.6352481463794932 -28.875892256060155 1.4842364713586658 ;
	setAttr ".lr" -type "double3" -2.981770013872047e-016 -3.182107686679075e-015 4.4726550208080709e-016 ;
	setAttr ".rst" -type "double3" 0.21517396269588571 -0.27210974124974596 0.013308906213600693 ;
	setAttr ".rsrr" -type "double3" -2.981770013872047e-016 -3.182107686679075e-015 
		4.4726550208080709e-016 ;
	setAttr -k on ".w0";
createNode joint -n "jnt_r_ear_01" -p "jnt_head_01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999957 45.603091194380568 -73.846067150899145 ;
	setAttr ".pa" -type "double3" 1.1131941385122313e-014 2.5444437451708134e-014 1.1131941385122313e-014 ;
	setAttr ".bps" -type "matrix" -0.71451042649349472 -0.69962479260821264 5.9402994523416875e-016 0
		 0.69962479260821264 -0.71451042649349472 -3.1681987070933107e-016 0 5.3603245574695287e-016 5.5511151231257852e-017 1 0
		 36.03267283353324 34.678809742088305 -60.267400000000009 1;
	setAttr ".radi" 1.0938610848294967;
createNode joint -n "jnt_r_ear_02" -p "jnt_r_ear_01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.4237551219170953e-015 1.9458679213795039e-014 -8.3695354205157937 ;
	setAttr ".pa" -type "double3" 0 0 -2.5444437451708134e-014 ;
	setAttr ".bps" -type "matrix" -0.80873608430318833 -0.58817169767504673 6.338187984356719e-016 0
		 0.58817169767504673 -0.80873608430318833 -2.2698047726786516e-016 0 5.3603245574695287e-016 5.5511151231257852e-017 1 0
		 40.51036169320605 42.124365097296305 -60.267399999999995 1;
	setAttr ".radi" 0.84040402351900134;
createNode joint -n "jnt_r_ear_03" -p "jnt_r_ear_02";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999914622637 -8.33777907433397e-015 -150.6832721291853 ;
	setAttr ".pa" -type "double3" -5.2617863393427832e-039 -9.4787915988669299e-023 
		6.3611093629270335e-015 ;
	setAttr ".bps" -type "matrix" 0.41716766033065172 0.90882954572034613 -4.4150526708017504e-016 0
		 0.90882954572034602 -0.4171676603306515 1.4901160363971709e-008 0 1.3542614730175885e-008 -6.2162824727871251e-009 -1 0
		 46.083431362751298 53.121900663032463 -64.30720637274095 1;
	setAttr ".radi" 1.0932886305180631;
createNode joint -n "jnt_r_ear_04" -p "jnt_r_ear_03";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.6960810591945833e-006 1.3945487292667301e-007 -9.4007800410240367 ;
	setAttr ".pa" -type "double3" -7.4859370544440118e-007 3.4361680847062269e-007 -1.2101488376928302e-014 ;
	setAttr ".bps" -type "matrix" 0.26311740579210641 0.96476382123773319 -2.4339469348571318e-009 0
		 0.96476382123773308 -0.26311740579210624 -1.4901162080114746e-008 0 -1.5016515762566404e-008 1.572571297960688e-009 -1 0
		 46.583407045765682 52.829910335319809 -80.902809240516362 1;
	setAttr ".radi" 0.66741633068594064;
createNode joint -n "jnt_r_ear_05" -p "jnt_r_ear_04";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.5662528370994965e-006 8.6038296022057984e-007 74.744881296942367 ;
	setAttr ".pa" -type "double3" -3.0334502814273893e-015 -1.895758319773386e-022 5.0184225238805242e-039 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 0 -1.5016515872629564e-008 0 -8.9462776037780552e-016 -0.99999999999999922 -4.6362132610276741e-008 0
		 -1.5016515762566381e-008 4.6362132743992585e-008 -0.99999999999999889 0 45.706161489769727 42.752966715649549 -88.724513796519119 1;
	setAttr ".radi" 1.0932886305180631;
createNode parentConstraint -n "jnt_r_ear_05_parentConstraint1" -p "jnt_r_ear_05";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctrl_r_ear_05W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.8421709430404008e-016 1.5631940186722204e-015 
		2.8421709430404008e-016 ;
	setAttr ".tg[0].tor" -type "double3" -179.99999734364548 8.6038299040113646e-007 
		-3.180554681463516e-015 ;
	setAttr ".lr" -type "double3" -3.0334502814273893e-015 1.1943277421813115e-020 2.7352770260586231e-013 ;
	setAttr ".rst" -type "double3" -0.12062626223350861 0.0089813382004962968 0.064786000159765961 ;
	setAttr ".rsrr" -type "double3" -3.0334502814273893e-015 -1.895758319773386e-022 
		5.0184225238805242e-039 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_r_ear_04_parentConstraint1" -p "jnt_r_ear_04";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctrl_r_ear_04W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.4921397450962103e-015 1.8474111129762605e-015 
		-1.4210854715202004e-016 ;
	setAttr ".tg[0].tor" -type "double3" -179.99999914622632 1.3945488174356509e-007 
		74.744881296942367 ;
	setAttr ".lr" -type "double3" -7.4859370544440108e-007 3.4361680847063037e-007 2.5029427284381174e-013 ;
	setAttr ".rst" -type "double3" -0.001137660906256457 -0.0031616565762015015 0.16602299995288733 ;
	setAttr ".rsrr" -type "double3" -7.4859367999996386e-007 3.4361680847062275e-007 
		-1.2101488300630048e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_r_ear_03_parentConstraint1" -p "jnt_r_ear_03";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctrl_r_ear_03W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -7.1054273576010023e-016 1.3500311979441904e-015 
		5.6843418860808016e-016 ;
	setAttr ".tg[0].tor" -type "double3" 179.99999914622637 7.5128992976175829e-015 
		65.344101255918346 ;
	setAttr ".lr" -type "double3" 9.4787915988660965e-023 -3.7915166395467705e-021 2.5126381983561777e-013 ;
	setAttr ".rst" -type "double3" -0.11070927948804524 -0.0062219743038552447 -0.077484999999999929 ;
	setAttr ".rsrr" -type "double3" -5.2617863393427832e-039 -9.4787915988669299e-023 
		6.3611093629270335e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_r_ear_02_parentConstraint1" -p "jnt_r_ear_02";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctrl_r_ear_02W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 0 2.1316282072803005e-016 ;
	setAttr ".tg[0].tor" -type "double3" -8.3650297065562816e-015 -2.544909507903712e-014 
		-143.9726266148964 ;
	setAttr ".lr" -type "double3" 0 0 -3.0533324942049761e-013 ;
	setAttr ".rst" -type "double3" -0.12481267597482443 5.9542535372214547e-008 2.1316282072803005e-016 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_r_ear_01_parentConstraint1" -p "jnt_r_ear_01";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctrl_r_ear_01W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -7.105427357601002e-017 0 3.5527136788005011e-016 ;
	setAttr ".tg[0].tor" -type "double3" -1.8152441457525081e-014 -3.4035408766305295e-014 
		-135.60309119438057 ;
	setAttr ".lr" -type "double3" -1.5902773407317579e-013 -1.3994440598439488e-013 
		-5.7249984266343119e-014 ;
	setAttr ".rst" -type "double3" 0.14530898497358466 0.014102636287698119 0.3833939999999999 ;
	setAttr ".rsrr" -type "double3" 1.1131941385122313e-014 2.5444437451708134e-014 
		1.1131941385122313e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_head_01_parentConstraint1" -p "jnt_head_01";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctrl_head_01W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 8.058410874076109e-017 -7.105427357601002e-017 
		4.263256414560601e-016 ;
	setAttr ".tg[0].tor" -type "double3" -90 73.846067150899131 -90 ;
	setAttr ".lr" -type "double3" -9.7302430274332909e-014 2.382463834559932e-013 3.1805546814634966e-014 ;
	setAttr ".rst" -type "double3" 0.225003106279937 -7.105427357601002e-017 3.3526588471893004e-032 ;
	setAttr ".rsrr" -type "double3" -5.1572613770066115e-015 1.1852569706645588e-014 
		2.2263882770244617e-014 ;
	setAttr -k on ".w0";
createNode joint -n "jnt_l_ear_01" -p "jnt_head_01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999986 45.603091194380553 106.15393284910087 ;
	setAttr ".pa" -type "double3" 1.1131941385122313e-014 2.5444437451708134e-014 1.1131941385122313e-014 ;
	setAttr ".bps" -type "matrix" -0.7145104264934945 0.69962479260821298 -1.5537059638781189e-016 0
		 0.69962479260821286 0.71451042649349439 -3.926411455304192e-017 0 1.9079056565625427e-017 -2.2204460492503131e-016 -1 0
		 -36.032699999999998 34.678799999999995 -60.267400000000002 1;
	setAttr ".radi" 1.0938610848294967;
createNode joint -n "jnt_l_ear_02" -p "jnt_l_ear_01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 8.5377364706932202e-007 -1.1176015479298566e-014 -8.3695354205157919 ;
	setAttr ".pa" -type "double3" 0 0 -2.5444437451708134e-014 ;
	setAttr ".bps" -type "matrix" -0.80873608430318811 0.58817169767504707 -3.4022053710453055e-016 0
		 0.58817169767504696 0.80873608430318811 -8.9741354272459676e-017 0 2.411236614906567e-016 -1.6653345369377348e-016 -0.99999999999999989 0
		 -40.510400000000004 42.124400000000009 -60.267400000000016 1;
	setAttr ".radi" 0.84040402351900134;
createNode joint -n "jnt_l_ear_03" -p "jnt_l_ear_02";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -2.5444437451708134e-014 180 29.316727870814695 ;
	setAttr ".pa" -type "double3" -5.2617863393427832e-039 -9.4787915988669299e-023 
		6.3611093629270335e-015 ;
	setAttr ".bps" -type "matrix" 0.41716766033065145 -0.90882954572034624 4.6305262419322468e-016 0
		 0.90882954572034602 0.41716766033065128 8.833672365728219e-017 0 -2.9221196548382896e-016 2.7783297310747001e-016 0.99999999999999989 0
		 -46.083399999999997 53.121899999999997 -64.307199999999995 1;
	setAttr ".radi" 1.0932886305180631;
createNode joint -n "jnt_l_ear_04" -p "jnt_l_ear_03";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 8.6523987855284603e-007 -1.394548606750356e-007 -9.4007800410239994 ;
	setAttr ".pa" -type "double3" -7.4859370544440118e-007 3.4361680847062269e-007 -1.2101488376928302e-014 ;
	setAttr ".bps" -type "matrix" 0.2631174057921068 -0.96476382123773308 4.4240493183400556e-016 0
		 0.96476382123773285 0.26311740579210663 1.6278509086425488e-016 0 -2.9221196548382896e-016 2.7783297310747001e-016 0.99999999999999989 0
		 -46.58339999999999 52.829900000000009 -80.902799999999971 1;
	setAttr ".radi" 0.66741633068594064;
createNode joint -n "jnt_l_ear_05" -p "jnt_l_ear_04";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.7579376592815836e-006 -8.6038295896594797e-007 74.744881296942339 ;
	setAttr ".pa" -type "double3" -3.0334502814273893e-015 -1.895758319773386e-022 5.0184225238805242e-039 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 -2.2204460492503131e-016 2.7345360096780501e-016 0
		 -5.5511165296907882e-017 0.99999999999999933 4.8135092335224476e-008 0 -2.9221196052074494e-016 -4.8135092441376213e-008 0.99999999999999878 0
		 -45.70620000000001 42.752999999999972 -88.724499999999992 1;
	setAttr ".radi" 1.0932886305180631;
createNode parentConstraint -n "jnt_l_ear_05_parentConstraint1" -p "jnt_l_ear_05";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctrl_l_ear_05W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.851023026157918e-007 3.3284350600126803e-007 
		1.3796519141351382e-007 ;
	setAttr ".tg[0].tor" -type "double3" 2.7579376148506627e-006 -2.0452328447081167e-014 
		-1.9083328088781091e-014 ;
	setAttr ".lr" -type "double3" -4.4430920726723611e-014 -1.0616246677055365e-020 
		-2.2263882770244604e-013 ;
	setAttr ".rst" -type "double3" 0.099526351385913328 -0.018051169624367595 -0.078216999999999925 ;
	setAttr ".rsrr" -type "double3" -4.4430920726723611e-014 3.7915166888750034e-022 
		1.2722218725854073e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_l_ear_04_parentConstraint1" -p "jnt_l_ear_04";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctrl_l_ear_04W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 7.0457658196687587e-008 -1.0335319629461992e-007 
		9.2405163769626598e-008 ;
	setAttr ".tg[0].tor" -type "double3" 8.3938166127365445e-015 -1.1567598018547302e-014 
		-74.744881296942324 ;
	setAttr ".lr" -type "double3" 0 0 -2.2581938238390969e-013 ;
	setAttr ".rst" -type "double3" 0.00056794397185001345 -0.0057622772967673794 -0.16595600000000005 ;
	setAttr ".rsrr" -type "double3" 0 0 3.4986101496098681e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_l_ear_03_parentConstraint1" -p "jnt_l_ear_03";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctrl_l_ear_03W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.1362751357733031e-007 -6.6303233126063791e-009 
		6.3727410122282895e-008 ;
	setAttr ".tg[0].tor" -type "double3" 5.8659668063364068e-015 -1.7462592023017642e-014 
		-65.344101255918346 ;
	setAttr ".lr" -type "double3" 2.9271442012900882e-015 1.3393702022774054e-014 -2.6080548388000828e-013 ;
	setAttr ".rst" -type "double3" 0.1097550444300299 0.056161942159812704 0.040397999999999927 ;
	setAttr ".rsrr" -type "double3" 2.9271442012901222e-015 1.3393702022774057e-014 
		2.2263882770244611e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_l_ear_02_parentConstraint1" -p "jnt_l_ear_02";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctrl_l_ear_02W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.8306793960884987e-007 3.4902703724526421e-007 
		-7.105427357601002e-017 ;
	setAttr ".tg[0].tor" -type "double3" 180 3.7301739051963201e-014 143.97262661489634 ;
	setAttr ".lr" -type "double3" -1.2691375301325742e-014 4.1270298202115468e-015 2.719374252651307e-013 ;
	setAttr ".rst" -type "double3" 0.084084896925536445 0.021872488976381818 1.4210854715202004e-016 ;
	setAttr ".rsrr" -type "double3" -1.2691375301325738e-014 4.1270298202115468e-015 
		-7.9513867036587919e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_l_ear_01_parentConstraint1" -p "jnt_l_ear_01";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctrl_l_ear_01W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.716646675082757e-007 -9.7420883022891762e-008 
		4.9737991503207018e-016 ;
	setAttr ".tg[0].tor" -type "double3" -180 2.0034020818574477e-014 135.60309119438054 ;
	setAttr ".lr" -type "double3" 1.7174995279903008e-013 2.0196522227293319e-013 9.0645808421710532e-014 ;
	setAttr ".rst" -type "double3" 0.15092344272455827 -0.0052806107097099894 -0.360327 ;
	setAttr ".rsrr" -type "double3" 1.2722218725854073e-014 1.2722218725854067e-014 
		1.9083328088781104e-014 ;
	setAttr -k on ".w0";
createNode joint -n "jnt_l_front_hip" -p "jnt_backFront_01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90 -1.7026292377775213e-014 -96.009005957494509 ;
	setAttr ".pa" -type "double3" 6.3611093629270335e-015 3.180554681463516e-015 9.5416640443905503e-015 ;
	setAttr ".bps" -type "matrix" 3.5902045988155289e-017 -1 0 0 1 6.3447199193293125e-017 -1.9760207048710129e-016 0
		 2.0296554835940589e-016 4.1633363423443376e-017 0.99999999999999989 0 -40.967227965485094 -25.627494307547515 -18.851073126290423 1;
	setAttr ".radi" 3;
createNode joint -n "jnt_l_front_thigh" -p "jnt_l_front_hip";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 6.3611093629270304e-015 ;
	setAttr ".bps" -type "matrix" 3.5902045988155289e-017 -1 0 0 1 6.3447199193293125e-017 -1.9760207048710129e-016 0
		 2.0296554835940589e-016 4.1633363423443376e-017 0.99999999999999989 0 -40.967227965485094 -37.32056346400779 -19.071697072638731 1;
	setAttr ".radi" 3;
createNode joint -n "jnt_l_front_knee" -p "jnt_l_front_thigh";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.132176466195751e-014 -3.3644306265671333e-030 1.702629237777521e-014 ;
	setAttr ".bps" -type "matrix" 3.5902045988155289e-017 -1 0 0 1 6.3447199193293125e-017 -1.9760207048710129e-016 0
		 2.0296554835940589e-016 4.1633363423443376e-017 0.99999999999999989 0 -40.967227965485108 -47.689888942378225 -24.587295731346408 1;
	setAttr ".radi" 3;
createNode joint -n "jnt_l_front_foot" -p "jnt_l_front_knee";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 6.3611093629270304e-015 ;
	setAttr ".bps" -type "matrix" 3.5902045988155289e-017 -1 0 0 1 6.3447199193293125e-017 -1.9760207048710129e-016 0
		 2.0296554835940589e-016 4.1633363423443376e-017 0.99999999999999989 0 -40.967227965485101 -55.32400940206351 -23.579015670633247 1;
	setAttr ".radi" 3;
createNode joint -n "jnt_l_front_footEnd" -p "jnt_l_front_foot";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 6.3611093629270304e-015 ;
	setAttr ".bps" -type "matrix" 3.5902045988155289e-017 -1 0 0 1 6.3447199193293125e-017 -1.9760207048710129e-016 0
		 2.0296554835940589e-016 4.1633363423443376e-017 0.99999999999999989 0 -40.967227965485108 -63.57889555949923 -28.561556308849742 1;
	setAttr ".radi" 3;
createNode parentConstraint -n "jnt_l_front_footEnd_parentConstraint1" -p "jnt_l_front_footEnd";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctrl_l_front_footEndW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 9.9475983006414035e-016 -4.263256414560601e-016 
		4.6185277824406514e-016 ;
	setAttr ".tg[0].tor" -type "double3" -1.1321764661957511e-014 0 -90 ;
	setAttr ".lr" -type "double3" 0 0 -2.5444437451708134e-013 ;
	setAttr ".rst" -type "double3" 0.064818003902988294 0 -0.028087801691294951 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_l_front_foot_parentConstraint1" -p "jnt_l_front_foot";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctrl_l_front_footW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.796548502459473e-007 -9.4020635472702451e-008 
		-1.5670633224829089e-007 ;
	setAttr ".tg[0].tor" -type "double3" -1.1321764661957511e-014 0 -90 ;
	setAttr ".lr" -type "double3" 0 0 -2.5444437451708134e-013 ;
	setAttr ".rst" -type "double3" 0.076341204596852855 0 0.010082800607131582 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_l_front_knee_parentConstraint1" -p "jnt_l_front_knee";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctrl_l_front_kneeW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.7965485053016439e-007 1.1057621740917511e-007 
		4.2686536296798751e-008 ;
	setAttr ".tg[0].tor" -type "double3" -1.272221872585407e-014 0 -90 ;
	setAttr ".lr" -type "double3" 0 0 -2.5444437451708134e-013 ;
	setAttr ".rst" -type "double3" 0.10369325478370435 -1.4210854715202004e-016 -0.055155986587076815 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_l_front_thigh_parentConstraint1" -p "jnt_l_front_thigh";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctrl_l_front_thighW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.7965485053016439e-007 3.6535992173014623e-007 
		2.9273612973668151e-008 ;
	setAttr ".tg[0].tor" -type "double3" -9.5416640443905519e-015 0 -90 ;
	setAttr ".lr" -type "double3" 0 0 -2.5444437451708134e-013 ;
	setAttr ".rst" -type "double3" 0.11693069156460276 0 -0.0022062394634831152 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_l_front_hip_parentConstraint1" -p "jnt_l_front_hip";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctrl_l_front_hipW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.7965485074332722e-007 5.6924524542978363e-008 
		2.6873709611408005e-007 ;
	setAttr ".tg[0].tor" -type "double3" -1.1321764661957508e-014 5.5659706925611551e-015 
		-90 ;
	setAttr ".lr" -type "double3" -2.4172215579122726e-013 9.5416640443906181e-015 3.1805546814635142e-014 ;
	setAttr ".rst" -type "double3" -0.11223567130399736 -0.61821787838368036 -0.40967227965485092 ;
	setAttr ".rsrr" -type "double3" 6.3611093629270335e-015 3.180554681463516e-015 9.5416640443905503e-015 ;
	setAttr -k on ".w0";
createNode joint -n "jnt_r_front_hip" -p "jnt_backFront_01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90 0 83.990994042505491 ;
	setAttr ".pa" -type "double3" 1.272221872585407e-014 1.2722218725854067e-014 9.5416640443905535e-015 ;
	setAttr ".bps" -type "matrix" -3.5902045988155289e-017 1 0 0 1 1.6957815953351545e-017 2.4404707029234458e-016 0
		 2.411236614906567e-016 -4.1633363423443364e-017 -0.99999999999999989 0 40.967199999999998 -25.627499999999998 -18.85110000000001 1;
	setAttr ".radi" 3;
createNode joint -n "jnt_r_front_thigh" -p "jnt_r_front_hip";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" -7.0167092985348775e-015 -7.0167092985348752e-015 
		4.2964952914991028e-031 ;
	setAttr ".bps" -type "matrix" -3.5902045988155289e-017 1 0 0 1 1.6957815953351545e-017 2.4404707029234458e-016 0
		 2.411236614906567e-016 -4.1633363423443364e-017 -0.99999999999999989 0 40.967199999999991 -37.320599999999999 -19.071700000000007 1;
	setAttr ".radi" 3;
createNode joint -n "jnt_r_front_knee" -p "jnt_r_front_thigh";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" -7.0167092985348775e-015 -7.0167092985348752e-015 
		4.2964952914991028e-031 ;
	setAttr ".bps" -type "matrix" -3.5902045988155289e-017 1 0 0 1 1.6957815953351545e-017 2.4404707029234458e-016 0
		 2.411236614906567e-016 -4.1633363423443364e-017 -0.99999999999999989 0 40.967199999999991 -47.689900000000009 -24.587300000000013 1;
	setAttr ".radi" 3;
createNode joint -n "jnt_r_front_foot" -p "jnt_r_front_knee";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" -7.0167092985348775e-015 -7.0167092985348752e-015 
		4.2964952914991028e-031 ;
	setAttr ".bps" -type "matrix" -3.5902045988155289e-017 1 0 0 1 1.6957815953351545e-017 2.4404707029234458e-016 0
		 2.411236614906567e-016 -4.1633363423443364e-017 -0.99999999999999989 0 40.967199999999998 -55.324000000000005 -23.578999999999997 1;
	setAttr ".radi" 3;
createNode joint -n "jnt_r_front_footEnd" -p "jnt_r_front_foot";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" -7.0167092985348775e-015 -7.0167092985348752e-015 
		4.2964952914991028e-031 ;
	setAttr ".bps" -type "matrix" -3.5902045988155289e-017 1 0 0 1 1.6957815953351545e-017 2.4404707029234458e-016 0
		 2.411236614906567e-016 -4.1633363423443364e-017 -0.99999999999999989 0 40.967199999999991 -63.578885357193911 -28.561559327276797 1;
	setAttr ".radi" 3;
createNode parentConstraint -n "jnt_r_front_footEnd_parentConstraint1" -p "jnt_r_front_footEnd";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctrl_r_front_footEndW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.334310688136611e-015 -9.450218385609333e-015 
		4.7570836159138709e-014 ;
	setAttr ".tg[0].tor" -type "double3" 180 0 90 ;
	setAttr ".lr" -type "double3" -7.0167092985348752e-015 7.016709298534876e-015 2.7352770260586246e-013 ;
	setAttr ".rst" -type "double3" -0.064818 -7.105427357601002e-017 0.028088000000000085 ;
	setAttr ".rsrr" -type "double3" -7.0167092985348775e-015 -7.0167092985348752e-015 
		4.2964952914991028e-031 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_r_front_foot_parentConstraint1" -p "jnt_r_front_foot";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctrl_r_front_footW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.4816594052244908e-015 -5.7553961596568119e-015 
		3.9008796193229502e-014 ;
	setAttr ".tg[0].tor" -type "double3" 180 0 90 ;
	setAttr ".lr" -type "double3" -7.0167092985348752e-015 7.016709298534876e-015 2.7352770260586246e-013 ;
	setAttr ".rst" -type "double3" -0.076341000000000034 0 -0.010083000000000055 ;
	setAttr ".rsrr" -type "double3" -7.0167092985348775e-015 -7.0167092985348752e-015 
		4.2964952914991028e-031 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_r_front_knee_parentConstraint1" -p "jnt_r_front_knee";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctrl_r_front_kneeW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.7000623958883807e-015 -7.1054273576010019e-015 
		2.8883562208648075e-014 ;
	setAttr ".tg[0].tor" -type "double3" 180 0 90 ;
	setAttr ".lr" -type "double3" -7.0167092985348752e-015 7.016709298534876e-015 2.7352770260586246e-013 ;
	setAttr ".rst" -type "double3" -0.1036930000000001 -7.105427357601002e-017 0.055156000000000135 ;
	setAttr ".rsrr" -type "double3" -7.0167092985348775e-015 -7.0167092985348752e-015 
		4.2964952914991028e-031 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_r_front_thigh_parentConstraint1" -p "jnt_r_front_thigh";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctrl_r_front_thighW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.4210854715202005e-015 2.1316282072803005e-016 
		1.5312195955630161e-014 ;
	setAttr ".tg[0].tor" -type "double3" 180 0 90 ;
	setAttr ".lr" -type "double3" -7.0167092985348752e-015 7.016709298534876e-015 2.7352770260586246e-013 ;
	setAttr ".rst" -type "double3" -0.11693099999999998 -7.105427357601002e-017 0.0022060000000000456 ;
	setAttr ".rsrr" -type "double3" -7.0167092985348775e-015 -7.0167092985348752e-015 
		4.2964952914991028e-031 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_r_front_hip_parentConstraint1" -p "jnt_r_front_hip";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctrl_r_front_hipW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 6.3948846218409014e-016 1.0658141036401502e-016 ;
	setAttr ".tg[0].tor" -type "double3" 180 -5.5659706925611551e-015 90 ;
	setAttr ".lr" -type "double3" 2.6716659324293542e-013 9.5416640443905961e-015 -1.9083328088781079e-014 ;
	setAttr ".rst" -type "double3" -0.11223541000262173 -0.61821796312811572 0.409672 ;
	setAttr ".rsrr" -type "double3" 1.272221872585407e-014 1.2722218725854067e-014 9.5416640443905535e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_backFront_01_parentConstraint1" -p "jnt_backFront_01";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctrl_backFront_01W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.1046719095020134e-016 0 1.4210854715202004e-016 ;
	setAttr ".tg[0].tor" -type "double3" 89.999999999999986 83.990994042505477 90 ;
	setAttr ".lr" -type "double3" 1.0331271417698591e-013 -1.2475381375510913e-013 -1.1247473385040222e-028 ;
	setAttr ".rst" -type "double3" -0.23225413721509308 0.050644796289621256 1.142099476555167e-017 ;
	setAttr ".rsrr" -type "double3" 1.0331271417698591e-013 -1.2475381375510913e-013 
		-6.3611093629271463e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_backMain_parentConstraint1" -p "jnt_backMain";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctrl_backMainW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.8421709430404008e-016 0 1.1587952819525071e-016 ;
	setAttr ".tg[0].tor" -type "double3" -89.999999999999872 -84.523826571103513 89.99999999999973 ;
	setAttr ".lr" -type "double3" -2.5444437451708134e-013 180.00000000000003 -10.952346857792998 ;
	setAttr ".rst" -type "double3" 0 0.34204625513024484 0.00061553375823110879 ;
	setAttr ".rsrr" -type "double3" -9.5416640443905487e-015 -5.9138438608462268e-015 
		-1.0734372049939367e-014 ;
	setAttr -k on ".w0";
createNode transform -n "grp_ctrl" -p "samantha";
createNode transform -n "ctrl_main" -p "grp_ctrl";
	setAttr ".rp" -type "double3" 0 0 -5.513956744456612e-018 ;
	setAttr ".sp" -type "double3" -3.2842932757612899e-049 0 -5.5139567444566097e-018 ;
createNode nurbsCurve -n "ctrl_mainShape" -p "ctrl_main";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.78361162489122527 4.7982373409884682e-017 1.2112647737318845
		-2.2660181131983863e-017 6.7857323231109134e-017 1.2174276478253214
		0.78361162489122405 4.7982373409884707e-017 1.2112647737318853
		0.81989158733768497 1.9663354616187859e-032 5.1513224587475784e-016
		0.7836116248912246 -4.7982373409884707e-017 -1.2112647737318849
		4.8301242356932915e-016 -6.7857323231109146e-017 -1.2174276478253219
		-0.78361162489122371 -4.7982373409884713e-017 -1.2112647737318856
		-0.81989158733768497 -3.6446300679047921e-032 -8.7532836050435473e-016
		-0.78361162489122527 4.7982373409884682e-017 1.2112647737318845
		-2.2660181131983863e-017 6.7857323231109134e-017 1.2174276478253214
		0.78361162489122405 4.7982373409884707e-017 1.2112647737318853
		;
createNode transform -n "ctrl_pigMain" -p "ctrl_main";
	setAttr ".t" -type "double3" 6.7526494777357491e-034 0 -1.1027913488913224e-017 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" -2.8421709430404008e-016 0.34204625513024484 0.00061553375823099289 ;
	setAttr ".rpt" -type "double3" 5.6850956975275869e-016 0 -0.0012310675164619858 ;
	setAttr ".sp" -type "double3" -2.8421709430404008e-016 0.34204625513024467 0.00061553375823099311 ;
createNode nurbsCurve -n "ctrl_pigMainShape" -p "ctrl_pigMain";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.35686687297283953 0.42982468929554446 -0.00021682868060440884
		0.47907948467256328 0.3991570589511606 -0.00021682868060435181
		0.18667525519608283 0.69092303271512567 -0.00021682868060443554
		-0.0058627242387385989 1.0517957506231284 -0.00021682868060447576
		-0.1984007036735401 0.6909230327151471 -0.0002168286806045789
		-0.49080493315004275 0.39915705895115439 -0.0002168286806046723
		-0.36859232145029958 0.42982468929555112 -0.00021682868060465029
		-0.0058627242387461519 0.65208238209562941 -0.00021682868060450967
		0.35686687297283953 0.42982468929554446 -0.00021682868060440884
		0.47907948467256328 0.3991570589511606 -0.00021682868060435181
		0.18667525519608283 0.69092303271512567 -0.00021682868060443554
		;
createNode transform -n "ctrl_backLower_01" -p "ctrl_pigMain";
	setAttr ".rp" -type "double3" -1.0380585280245214e-016 0.36930563468576266 0.30962589450656486 ;
	setAttr ".sp" -type "double3" -1.0380585280245214e-016 0.36930563468576266 0.30962589450656486 ;
createNode nurbsCurve -n "ctrl_backLower_0Shape1" -p "ctrl_backLower_01";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.23465518898012591 0.4270236988082502 0.30907858070363942
		0.31501519341330858 0.40685842391432153 0.30907858070363947
		0.12274694179665126 0.59870699517905845 0.30907858070363942
		-0.0038549912260537685 0.83599619804916869 0.30907858070363942
		-0.13045692424874569 0.59870699517907255 0.30907858070363931
		-0.32272517586541766 0.40685842391431737 0.30907858070363925
		-0.24236517143222228 0.42702369880825453 0.30907858070363925
		-0.0038549912260587346 0.57316761088344015 0.30907858070363936
		0.23465518898012591 0.4270236988082502 0.30907858070363942
		0.31501519341330858 0.40685842391432153 0.30907858070363947
		0.12274694179665126 0.59870699517905845 0.30907858070363942
		;
createNode transform -n "ctrl_backLower_02" -p "ctrl_backLower_01";
	setAttr ".rp" -type "double3" -1.3489209749195653e-016 0.38379494245004547 0.58979280272872447 ;
	setAttr ".sp" -type "double3" -1.3489209749195653e-016 0.38379494245004553 0.58979280272872447 ;
createNode nurbsCurve -n "ctrl_backLower_0Shape2" -p "ctrl_backLower_02";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.20864098962303587 0.43511430201750662 0.58930616489227594
		0.28009217262871328 0.41718457743661885 0.58930616489227594
		0.10913904576737717 0.58776455029130126 0.58930616489227594
		-0.0034276215577747561 0.79874754337514164 0.58930616489227594
		-0.11599428888291501 0.5877645502913138 0.58930616489227583
		-0.28694741574426408 0.41718457743661519 0.58930616489227583
		-0.21549623273857546 0.43511430201751056 0.58930616489227583
		-0.0034276215577791714 0.56505649752264031 0.58930616489227594
		0.20864098962303587 0.43511430201750662 0.58930616489227594
		0.28009217262871328 0.41718457743661885 0.58930616489227594
		0.10913904576737717 0.58776455029130126 0.58930616489227594
		;
createNode transform -n "ctrl_r_back_hip" -p "ctrl_backLower_02";
	setAttr ".rp" -type "double3" 0.40730399999999234 -0.077147600000002522 0.80483199999999888 ;
	setAttr ".sp" -type "double3" 0.40730399999999234 -0.077147600000002522 0.80483199999999888 ;
createNode nurbsCurve -n "ctrl_r_back_hipShape" -p "ctrl_r_back_hip";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.46502206412248004 -0.077694913802927451 1.0394871889801247
		0.44485678922855143 -0.077694913802927659 1.1198471934133074
		0.6367053604932883 -0.077694913802925605 0.92757894179665001
		0.87399456336339842 -0.077694913802923066 0.80097700877394507
		0.63670536049330217 -0.077694913802925591 0.67437507575125322
		0.44485678922854688 -0.077694913802927618 0.48210682413458161
		0.46502206412248404 -0.077694913802927423 0.56246682856777686
		0.61116597619766988 -0.077694913802925869 0.80097700877394007
		0.46502206412248004 -0.077694913802927451 1.0394871889801247
		0.44485678922855143 -0.077694913802927659 1.1198471934133074
		0.6367053604932883 -0.077694913802925605 0.92757894179665001
		;
createNode transform -n "ctrl_r_back_thigh" -p "ctrl_r_back_hip";
	setAttr ".rp" -type "double3" 0.40730399999999739 -0.29218100000000247 0.74732299999999885 ;
	setAttr ".sp" -type "double3" 0.4073039999999975 -0.29218100000000247 0.74732299999999885 ;
createNode nurbsCurve -n "ctrl_r_back_thighShape" -p "ctrl_r_back_thigh";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.46093213257251597 -0.36982368350955319 0.95105768146693737
		0.44219577937331922 -0.3962503142963727 1.0208902883523472
		0.62044986273618574 -0.33302231756666184 0.85380974466154924
		0.84092463130326123 -0.29138888854326411 0.74379303819087483
		0.62044986273619696 -0.24975545951987549 0.63377633172021219
		0.44219577937331062 -0.18652746279016374 0.46669578802940165
		0.46093213257251647 -0.21295409357698694 0.5365283949148224
		0.59672021227668082 -0.29138888854326511 0.74379303819087073
		0.46093213257251597 -0.36982368350955319 0.95105768146693737
		0.44219577937331922 -0.3962503142963727 1.0208902883523472
		0.62044986273618574 -0.33302231756666184 0.85380974466154924
		;
createNode transform -n "ctrl_r_back_knee" -p "ctrl_r_back_thigh";
	setAttr ".rp" -type "double3" 0.40730400000000527 -0.47721100000000216 0.59479899999999786 ;
	setAttr ".sp" -type "double3" 0.40730400000000527 -0.47721100000000216 0.59479899999999786 ;
createNode nurbsCurve -n "ctrl_r_back_kneeShape" -p "ctrl_r_back_knee";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.44771554333195712 -0.4861108016197605 0.75885302992853798
		0.43359674200751686 -0.48902757166287736 0.81504176804316886
		0.56792031936078624 -0.48204894740179582 0.68060535886117324
		0.73405934446113874 -0.47745376689818486 0.59208367559852981
		0.56792031936079579 -0.47285858639457784 0.5035619923358956
		0.43359674200751314 -0.46587996213349864 0.36912558315388994
		0.44771554333195968 -0.46879673217661577 0.42531432126852969
		0.55003881292385004 -0.47745376689818664 0.59208367559852637
		0.44771554333195712 -0.4861108016197605 0.75885302992853798
		0.43359674200751686 -0.48902757166287736 0.81504176804316886
		0.56792031936078624 -0.48204894740179582 0.68060535886117324
		;
createNode transform -n "ctrl_r_back_sheen" -p "ctrl_r_back_knee";
	setAttr ".rp" -type "double3" 0.40730400000000799 -0.59772500000000262 0.62923199999999757 ;
	setAttr ".sp" -type "double3" 0.40730400000000805 -0.59772500000000262 0.62923199999999757 ;
createNode nurbsCurve -n "ctrl_r_back_sheenShape" -p "ctrl_r_back_sheen";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.43099349946318177 -0.58127149605706452 0.72412706296520901
		0.4227169698179617 -0.57556106264317242 0.75661150243008268
		0.50145829101580863 -0.58922376781854635 0.67888967520132004
		0.598850026679001 -0.59822018231224183 0.62771256466704184
		0.50145829101581474 -0.60721659680593831 0.57653545413276919
		0.42271696981796075 -0.62087930198131491 0.49881362690400066
		0.43099349946318422 -0.61516886856742181 0.53129806636887955
		0.4909760400990611 -0.59822018231224328 0.62771256466703995
		0.43099349946318177 -0.58127149605706452 0.72412706296520901
		0.4227169698179617 -0.57556106264317242 0.75661150243008268
		0.50145829101580863 -0.58922376781854635 0.67888967520132004
		;
createNode transform -n "ctrl_r_back_foot" -p "ctrl_r_back_sheen";
	setAttr ".rp" -type "double3" 0.40730400000000944 -0.65629800000000249 0.6135169999999972 ;
	setAttr ".sp" -type "double3" 0.40730400000000944 -0.65629800000000249 0.6135169999999972 ;
createNode nurbsCurve -n "ctrl_r_back_footShape" -p "ctrl_r_back_foot";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.427991008244615 -0.68291409688622451 0.69329849227818841
		0.42076347533394542 -0.69196526864823338 0.7206415692938124
		0.48952484208815372 -0.67030955842225259 0.65522089580461595
		0.57457280360176921 -0.65605002907959697 0.61214366566527478
		0.48952484208815811 -0.6417904997369448 0.56906643552593805
		0.42076347533394226 -0.62013478951096379 0.50364576203673672
		0.42799100824461533 -0.62918596127297388 0.53098883905236494
		0.48037114884639154 -0.65605002907959742 0.61214366566527312
		0.427991008244615 -0.68291409688622451 0.69329849227818841
		0.42076347533394542 -0.69196526864823338 0.7206415692938124
		0.48952484208815372 -0.67030955842225259 0.65522089580461595
		;
createNode transform -n "ctrl_r_back_footEnd" -p "ctrl_r_back_foot";
	setAttr ".rp" -type "double3" 0.40730400000000333 -0.7436675707339373 0.58479400486245425 ;
	setAttr ".sp" -type "double3" 0.40730400000000333 -0.7436675707339373 0.58479400486245425 ;
createNode nurbsCurve -n "ctrl_r_back_footEndShape" -p "ctrl_r_back_footEnd";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.4953871604786555 -0.73276137191268687 0.49738863896779206
		0.40730400000000133 -0.72824387644698851 0.46118415099004195
		0.3192208395213485 -0.73276137191268842 0.49738863896779451
		0.28273559983440577 -0.74366757073393841 0.58479400486245592
		0.31922083952135116 -0.75457376955518773 0.67219937075711644
		0.40730400000000522 -0.75909126502088609 0.70840385873486666
		0.49538716047865805 -0.75457376955518618 0.672199370757114
		0.53187240016560078 -0.74366757073393619 0.5847940048624527
		0.4953871604786555 -0.73276137191268687 0.49738863896779206
		0.40730400000000133 -0.72824387644698851 0.46118415099004195
		0.3192208395213485 -0.73276137191268842 0.49738863896779451
		;
createNode transform -n "ctrl_l_back_hip" -p "ctrl_backLower_02";
	setAttr ".rp" -type "double3" -0.40730400000000067 -0.077147599999999927 0.80483199999999611 ;
	setAttr ".sp" -type "double3" -0.40730400000000067 -0.077147599999999927 0.80483199999999611 ;
createNode nurbsCurve -n "ctrl_l_back_hipShape" -p "ctrl_l_back_hip";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.4650220641224847 -0.077694913802925411 1.0394871889801229
		-0.44485678922855487 -0.077694913802925425 1.1198471934133054
		-0.63670536049329474 -0.077694913802925217 0.92757894179665101
		-0.87399456336340664 -0.077694913802924967 0.80097700877394939
		-0.6367053604933125 -0.077694913802925231 0.6743750757512541
		-0.44485678922856031 -0.077694913802925397 0.48210682413457923
		-0.46502206412249619 -0.077694913802925397 0.56246682856777486
		-0.61116597619767821 -0.077694913802925245 0.80097700877394062
		-0.4650220641224847 -0.077694913802925411 1.0394871889801229
		-0.44485678922855487 -0.077694913802925425 1.1198471934133054
		-0.63670536049329474 -0.077694913802925217 0.92757894179665101
		;
createNode transform -n "ctrl_l_back_thigh" -p "ctrl_l_back_hip";
	setAttr ".rp" -type "double3" -0.40730400000000372 -0.2921810000000023 0.74732299999999929 ;
	setAttr ".sp" -type "double3" -0.40730400000000383 -0.2921810000000023 0.74732299999999929 ;
createNode nurbsCurve -n "ctrl_l_back_thighShape" -p "ctrl_l_back_thigh";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.46093213257252169 -0.36982368350955297 0.95105768146693803
		-0.44219577937332466 -0.39625031429637242 1.0208902883523479
		-0.62044986273619185 -0.3330223175666614 0.8538097446615498
		-0.84092463130326733 -0.29138888854326339 0.74379303819087517
		-0.62044986273620373 -0.24975545951987507 0.63377633172021253
		-0.44219577937331783 -0.18652746279016352 0.46669578802940193
		-0.46093213257252352 -0.21295409357698666 0.53652839491482274
		-0.59672021227668715 -0.29138888854326472 0.74379303819087117
		-0.46093213257252169 -0.36982368350955297 0.95105768146693803
		-0.44219577937332466 -0.39625031429637242 1.0208902883523479
		-0.62044986273619185 -0.3330223175666614 0.8538097446615498
		;
createNode transform -n "ctrl_l_back_knee" -p "ctrl_l_back_thigh";
	setAttr ".rp" -type "double3" -0.4073040000000101 -0.47721100000000227 0.59479899999999852 ;
	setAttr ".sp" -type "double3" -0.4073040000000101 -0.47721100000000227 0.59479899999999852 ;
createNode nurbsCurve -n "ctrl_l_back_kneeShape" -p "ctrl_l_back_knee";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.44771554333196184 -0.4861108016197605 0.75885302992853865
		-0.43359674200752152 -0.48902757166287741 0.81504176804316952
		-0.56792031936079101 -0.48204894740179577 0.68060535886117413
		-0.73405934446114374 -0.47745376689818458 0.59208367559853037
		-0.56792031936080078 -0.47285858639457784 0.50356199233589638
		-0.43359674200751819 -0.4658799621334988 0.36912558315389066
		-0.44771554333196462 -0.46879673217661594 0.42531432126853042
		-0.55003881292385493 -0.47745376689818664 0.59208367559852715
		-0.44771554333196184 -0.4861108016197605 0.75885302992853865
		-0.43359674200752152 -0.48902757166287741 0.81504176804316952
		-0.56792031936079101 -0.48204894740179577 0.68060535886117413
		;
createNode transform -n "ctrl_l_back_sheen" -p "ctrl_l_back_knee";
	setAttr ".rp" -type "double3" -0.40730400000000977 -0.59772500000000128 0.62923199999999602 ;
	setAttr ".sp" -type "double3" -0.40730400000000982 -0.59772500000000128 0.62923199999999602 ;
createNode nurbsCurve -n "ctrl_l_back_sheenShape" -p "ctrl_l_back_sheen";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.43099349946318244 -0.58127149605706341 0.72412706296520757
		-0.42271696981796192 -0.57556106264317131 0.75661150243008135
		-0.50145829101580985 -0.58922376781854602 0.67888967520131982
		-0.59885002667900289 -0.59822018231224239 0.62771256466704317
		-0.50145829101581718 -0.60721659680593787 0.57653545413276897
		-0.42271696981796419 -0.6208793019813138 0.49881362690399916
		-0.43099349946318727 -0.61516886856742081 0.53129806636887833
		-0.49097604009906293 -0.59822018231224283 0.62771256466703962
		-0.43099349946318244 -0.58127149605706341 0.72412706296520757
		-0.42271696981796192 -0.57556106264317131 0.75661150243008135
		-0.50145829101580985 -0.58922376781854602 0.67888967520131982
		;
createNode transform -n "ctrl_l_back_foot" -p "ctrl_l_back_sheen";
	setAttr ".rp" -type "double3" -0.40730400000001055 -0.65629800000000205 0.61351699999999709 ;
	setAttr ".sp" -type "double3" -0.40730400000001055 -0.65629800000000205 0.61351699999999709 ;
createNode nurbsCurve -n "ctrl_l_back_footShape" -p "ctrl_l_back_foot";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.427991008244616 -0.68291409688622406 0.69329849227818841
		-0.42076347533394631 -0.69196526864823305 0.72064156929381229
		-0.48952484208815494 -0.67030955842225193 0.65522089580461573
		-0.57457280360177043 -0.65605002907959642 0.61214366566527456
		-0.48952484208815955 -0.64179049973694424 0.56906643552593794
		-0.42076347533394381 -0.62013478951096346 0.50364576203673661
		-0.42799100824461683 -0.62918596127297355 0.53098883905236482
		-0.48037114884639281 -0.65605002907959686 0.61214366566527301
		-0.427991008244616 -0.68291409688622406 0.69329849227818841
		-0.42076347533394631 -0.69196526864823305 0.72064156929381229
		-0.48952484208815494 -0.67030955842225193 0.65522089580461573
		;
createNode transform -n "ctrl_l_back_footEnd" -p "ctrl_l_back_foot";
	setAttr ".rp" -type "double3" -0.40730423179557657 -0.74366750717260655 0.58479359194663416 ;
	setAttr ".sp" -type "double3" -0.40730423179557657 -0.74366750717260655 0.58479359194663416 ;
createNode nurbsCurve -n "ctrl_l_back_footEndShape" -p "ctrl_l_back_footEnd";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.31922107131692296 -0.73276130835135689 0.49738822605197314
		-0.40730423179557645 -0.72824381288565776 0.46118373807422158
		-0.4953873922742299 -0.73276130835135678 0.49738822605197303
		-0.53187263196117407 -0.74366750717260655 0.58479359194663405
		-0.49538739227423007 -0.75457370599385631 0.67219895784129502
		-0.40730423179557668 -0.75909120145955544 0.7084034458190468
		-0.31922107131692323 -0.75457370599385631 0.67219895784129535
		-0.28273583162997901 -0.74366750717260677 0.58479359194663427
		-0.31922107131692296 -0.73276130835135689 0.49738822605197314
		-0.40730423179557645 -0.72824381288565776 0.46118373807422158
		-0.4953873922742299 -0.73276130835135678 0.49738822605197303
		;
createNode transform -n "ctrl_tail_01" -p "ctrl_backLower_02";
	setAttr ".rp" -type "double3" -2.1566082253343667e-016 0.28375369689620061 0.92885181332221356 ;
	setAttr ".sp" -type "double3" -2.1566082253343667e-016 0.28375369689620067 0.92885181332221356 ;
createNode nurbsCurve -n "ctrl_tail_0Shape1" -p "ctrl_tail_01";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.14048135090839867 0.31697989537579868 0.93834479385805336
		0.18859058740490992 0.30540396799232733 0.93491841028276801
		0.073485083702660339 0.41553512867647768 0.96751636875252234
		-0.0023078730009331418 0.55175159960260478 1.0078353741508321
		-0.078100829704518773 0.41553512867648579 0.96751636875252456
		-0.19320633340677709 0.305403967992325 0.93491841028276712
		-0.14509709691025824 0.31697989537580123 0.93834479385805392
		-0.0023078730009361086 0.40087418011119641 0.96317684314061225
		0.14048135090839867 0.31697989537579868 0.93834479385805336
		0.18859058740490992 0.30540396799232733 0.93491841028276801
		0.073485083702660339 0.41553512867647768 0.96751636875252234
		;
createNode transform -n "ctrl_tail_02" -p "ctrl_tail_01";
	setAttr ".rp" -type "double3" -8.35165270274274e-016 0.19875050032472558 0.99888400054253301 ;
	setAttr ".sp" -type "double3" -8.35165270274274e-016 0.19875050032472558 0.99888400054253301 ;
createNode nurbsCurve -n "ctrl_tail_0Shape2" -p "ctrl_tail_02";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.14554150630110604 0.23427291539261264 0.99443121625816899
		0.19538364336358371 0.2218486207279402 0.99586909593133088
		0.076132025379808593 0.34005098558174879 0.98218938353476193
		-0.0023910028678936087 0.48625037997191001 0.96526953873907195
		-0.08091403111558769 0.34005098558175756 0.98218938353476082
		-0.20016564909937182 0.22184862072793762 0.99586909593133099
		-0.15032351203688632 0.23427291539261533 0.99443121625816855
		-0.0023910028678966865 0.32431557717734344 0.98401046267883019
		0.14554150630110604 0.23427291539261264 0.99443121625816899
		0.19538364336358371 0.2218486207279402 0.99586909593133088
		0.076132025379808593 0.34005098558174879 0.98218938353476193
		;
createNode transform -n "ctrl_tail_03" -p "ctrl_tail_02";
	setAttr ".rp" -type "double3" -0.00057551901427311592 0.20878771290375908 1.0501458335349343 ;
	setAttr ".sp" -type "double3" -0.00057551901427311592 0.20878771290375908 1.0501458335349343 ;
createNode nurbsCurve -n "ctrl_tail_0Shape3" -p "ctrl_tail_03";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.13951111315456705 0.24206226333811742 1.0411903650337697
		0.18748517429101633 0.23040833089026194 1.0442086770421755
		0.072703089313343558 0.34128161684829278 1.01549303346728
		-0.002876907448278827 0.47841599043852595 0.97997589550336772
		-0.078456904209893374 0.34128161684830088 1.0154930334672776
		-0.19323898918757479 0.23040833089025953 1.0442086770421759
		-0.14526492805111801 0.24206226333812011 1.0411903650337688
		-0.0028769074482817912 0.32652187462278148 1.0193157351518458
		0.13951111315456705 0.24206226333811742 1.0411903650337697
		0.18748517429101633 0.23040833089026194 1.0442086770421755
		0.072703089313343558 0.34128161684829278 1.01549303346728
		;
createNode transform -n "ctrl_tail_04" -p "ctrl_tail_03";
	setAttr ".rp" -type "double3" 7.5336254255979902e-005 0.26166310403655829 1.0892385708173178 ;
	setAttr ".sp" -type "double3" 7.5336254255979902e-005 0.26166310403655829 1.0892385708173178 ;
createNode nurbsCurve -n "ctrl_tail_0Shape4" -p "ctrl_tail_04";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.091701394162038416 0.25996255673096458 1.1117125710276277
		0.12307964942954951 0.26063108171440319 1.1038670463008264
		0.0480044634384654 0.25427086279340577 1.1785078690803932
		-0.0014299262155304505 0.24640418300583392 1.2708278755426361
		-0.050864315869521025 0.25427086279340544 1.1785078690803987
		-0.12593950186061065 0.26063108171440341 1.1038670463008244
		-0.094561246593094631 0.25996255673096458 1.1117125710276292
		-0.0014299262155322979 0.25511755179482387 1.1685714872530928
		0.091701394162038416 0.25996255673096458 1.1117125710276277
		0.12307964942954951 0.26063108171440319 1.1038670463008264
		0.0480044634384654 0.25427086279340577 1.1785078690803932
		;
createNode transform -n "ctrl_backFront_01" -p "ctrl_pigMain";
	setAttr ".rp" -type "double3" -1.1046719095020308e-016 0.37029547513629452 -0.23541171300322736 ;
	setAttr ".sp" -type "double3" -1.1046719095020308e-016 0.37029547513629452 -0.23541171300322736 ;
createNode nurbsCurve -n "ctrl_backFront_0Shape1" -p "ctrl_backFront_01";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.23465518898012591 0.42801353925878205 -0.2359590268061528
		0.31501519341330858 0.40784826436485339 -0.23595902680615274
		0.12274694179665124 0.59969683562959031 -0.23595902680615283
		-0.003854991226053775 0.83698603849970055 -0.23595902680615283
		-0.13045692424874569 0.59969683562960441 -0.23595902680615288
		-0.32272517586541766 0.40784826436484922 -0.23595902680615297
		-0.24236517143222228 0.42801353925878638 -0.23595902680615297
		-0.0038549912260587411 0.574157451333972 -0.23595902680615286
		0.23465518898012591 0.42801353925878205 -0.2359590268061528
		0.31501519341330858 0.40784826436485339 -0.23595902680615274
		0.12274694179665124 0.59969683562959031 -0.23595902680615283
		;
createNode transform -n "ctrl_head_01" -p "ctrl_backFront_01";
	setAttr ".rp" -type "double3" -7.7160500211448386e-017 0.39384987683309997 -0.45917852912287965 ;
	setAttr ".sp" -type "double3" -7.7160500211448386e-017 0.39384987683309997 -0.45917852912287965 ;
createNode nurbsCurve -n "ctrl_head_01Shape" -p "ctrl_head_01";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.20915418001852362 0.44529546568312045 -0.4596663639334424
		0.28078111018170349 0.42732163968924924 -0.4596663639334424
		0.10940749306606817 0.59832118495820041 -0.4596663639334424
		-0.0034360524153257224 0.80982312902026166 -0.45966636393344246
		-0.11627959789670794 0.59832118495821296 -0.45966636393344251
		-0.28765321501235624 0.42732163968924552 -0.45966636393344251
		-0.21602628484916511 0.44529546568312439 -0.45966636393344251
		-0.0034360524153301485 0.57555727761080988 -0.45966636393344246
		0.20915418001852362 0.44529546568312045 -0.4596663639334424
		0.28078111018170349 0.42732163968924924 -0.4596663639334424
		0.10940749306606817 0.59832118495820041 -0.4596663639334424
		;
createNode transform -n "ctrl_head_02" -p "ctrl_head_01";
	setAttr ".rp" -type "double3" -2.6756374893466274e-016 0.31140947089428073 -0.74379421629261244 ;
	setAttr ".sp" -type "double3" -2.6756374893466274e-016 0.31140947089428073 -0.74379421629261244 ;
createNode nurbsCurve -n "ctrl_head_0Shape2" -p "ctrl_head_02";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.20915418001852346 0.34891064593885318 -0.77901563683756059
		0.28078111018170332 0.33569315697160873 -0.76683547237813177
		0.10940749306606795 0.46144182082130175 -0.88271522911849176
		-0.0034360524153259743 0.61697490616130013 -1.0260418899553789
		-0.11627959789670815 0.46144182082131097 -0.88271522911850031
		-0.28765321501235647 0.33569315697160607 -0.76683547237812921
		-0.21602628484916531 0.34891064593885618 -0.77901563683756314
		-0.0034360524153303662 0.44470182932933411 -0.86728901238951273
		0.20915418001852346 0.34891064593885318 -0.77901563683756059
		0.28078111018170332 0.33569315697160873 -0.76683547237813177
		0.10940749306606795 0.46144182082130175 -0.88271522911849176
		;
createNode transform -n "ctrl_nose_01" -p "ctrl_head_02";
	setAttr ".rp" -type "double3" -4.8017145815038022e-016 -0.043429940532997299 -0.82037826192439933 ;
	setAttr ".sp" -type "double3" -4.8017145815038022e-016 -0.043429940532997265 -0.82037826192439933 ;
createNode nurbsCurve -n "ctrl_nose_0Shape1" -p "ctrl_nose_01";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.19945869730971577 0.054070890699081213 -0.8514197247023878
		0.26776531294310441 0.037714556785979188 -0.84629412380881153
		0.10433583512864525 0.19332559154069848 -0.89505811108289224
		-0.003276771894246436 0.38579415229837466 -0.95537217854116618
		-0.11088937891712704 0.19332559154070994 -0.8950581110828959
		-0.27431885673159856 0.037714556785975864 -0.84629412380881064
		-0.20601224109819913 0.0540708906990848 -0.85141972470238902
		-0.0032767718942506531 0.1726102430184753 -0.88856652137456538
		0.19945869730971577 0.054070890699081213 -0.8514197247023878
		0.26776531294310441 0.037714556785979188 -0.84629412380881153
		0.10433583512864525 0.19332559154069848 -0.89505811108289224
		;
createNode transform -n "ctrl_nose_02" -p "ctrl_nose_01";
	setAttr ".rp" -type "double3" -6.072919944699606e-016 -0.072097288372308152 -0.90077669323449405 ;
	setAttr ".sp" -type "double3" -6.072919944699606e-016 -0.07209728837230811 -0.90077669323449405 ;
createNode nurbsCurve -n "ctrl_nose_0Shape2" -p "ctrl_nose_02";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.18108483070804457 0.024225808152419363 -0.91507034377534113
		0.24309913289214469 0.0080795160610774453 -0.91274932822206978
		0.094724558497017913 0.16169225306768867 -0.93483102659318507
		-0.0029749200799057927 0.35168920574082313 -0.96214292456541306
		-0.10067439865681946 0.16169225306769996 -0.93483102659318673
		-0.24904897305195742 0.0080795160610741233 -0.91274932822206933
		-0.18703467086784756 0.024225808152422878 -0.9150703437753418
		-0.0029749200799096317 0.14124292317562551 -0.93189145306974397
		0.18108483070804457 0.024225808152419363 -0.91507034377534113
		0.24309913289214469 0.0080795160610774453 -0.91274932822206978
		0.094724558497017913 0.16169225306768867 -0.93483102659318507
		;
createNode transform -n "ctrl_noseEnd" -p "ctrl_nose_02";
	setAttr ".rp" -type "double3" -5.3290705182007512e-016 -0.066405154222533347 -0.99711496864662363 ;
	setAttr ".sp" -type "double3" -5.3290705182007512e-016 -0.066405154222533347 -0.99711496864662363 ;
createNode nurbsCurve -n "ctrl_noseEndShape" -p "ctrl_noseEnd";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.16038196756534523 0.01983381547448251 -1.0664028564971801
		0.21530636825969893 0.0053868620697141625 -1.0662983741873648
		0.083894995561522065 0.1428324155973541 -1.0672923989138254
		-0.0026348067582435447 0.31283287804338067 -1.0685218651194897
		-0.089164609078000223 0.14283241559736418 -1.0672923989138257
		-0.22057598177618712 0.0053868620697111961 -1.0662983741873651
		-0.16565158108182465 0.019833815474485653 -1.0664028564971801
		-0.0026348067582469448 0.1245353035150209 -1.0671600717386942
		0.16038196756534523 0.01983381547448251 -1.0664028564971801
		0.21530636825969893 0.0053868620697141625 -1.0662983741873648
		0.083894995561522065 0.1428324155973541 -1.0672923989138254
		;
createNode transform -n "ctrl_r_eyeLash" -p "ctrl_head_02";
	setAttr ".rp" -type "double3" 0.21517396269588585 0.039299729644534626 -0.73048531007901163 ;
	setAttr ".sp" -type "double3" 0.21517396269588585 0.039299729644534626 -0.73048531007901163 ;
createNode nurbsCurve -n "ctrl_r_eyeLashShape" -p "ctrl_r_eyeLash";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.32192527524243381 0.038890888437940488 -0.72934855021231149
		0.34602984800518705 0.038872874492366809 -0.70638061996451318
		0.3174880694333802 0.038937810926159881 -0.81414779593459008
		0.32120400612268024 0.03899744280165926 -0.92591945343428406
		0.22864858059752952 0.038984908689308644 -0.86314837561638302
		0.12227130394507091 0.038991498845667112 -0.82979756564231666
		0.15455719494728767 0.038979617699080225 -0.82166259954057086
		0.26788749233002035 0.038957476203098126 -0.82925508782326862
		0.32192527524243381 0.038890888437940488 -0.72934855021231149
		0.34602984800518705 0.038872874492366809 -0.70638061996451318
		0.3174880694333802 0.038937810926159881 -0.81414779593459008
		;
createNode transform -n "ctrl_l_eyeLash" -p "ctrl_head_02";
	setAttr ".rp" -type "double3" -0.21517396269588585 0.039299729644534626 -0.73048531007901163 ;
	setAttr ".sp" -type "double3" -0.21517396269588585 0.039299729644534626 -0.73048531007901163 ;
createNode nurbsCurve -n "ctrl_l_eyeLashShape" -p "ctrl_l_eyeLash";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.32192527524243381 0.038890888437940488 -0.72934855021231149
		-0.34602984800518705 0.038872874492366809 -0.70638061996451318
		-0.3174880694333802 0.038937810926159881 -0.81414779593459008
		-0.32120400612268024 0.03899744280165926 -0.92591945343428406
		-0.22864858059752952 0.038984908689308644 -0.86314837561638302
		-0.12227130394507091 0.038991498845667112 -0.82979756564231666
		-0.15455719494728767 0.038979617699080225 -0.82166259954057086
		-0.26788749233002035 0.038957476203098126 -0.82925508782326862
		-0.32192527524243381 0.038890888437940488 -0.72934855021231149
		-0.34602984800518705 0.038872874492366809 -0.70638061996451318
		-0.3174880694333802 0.038937810926159881 -0.81414779593459008
		;
createNode transform -n "ctrl_r_ear_01" -p "ctrl_head_01";
	setAttr ".rp" -type "double3" 0.36032672833533247 0.34678809742088307 -0.60267400000000049 ;
	setAttr ".sp" -type "double3" 0.36032672833533247 0.34678809742088307 -0.60267400000000049 ;
createNode nurbsCurve -n "ctrl_r_ear_0Shape1" -p "ctrl_r_ear_01";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.26108636307954297 0.46967973964988224 -0.54205207151456858
		0.22213433527802873 0.51213192880089464 -0.54880289040376595
		0.33353941441423479 0.40955363666593231 -0.43377561073222026
		0.42096621163532788 0.34123069351944602 -0.28163123745383739
		0.4482153781383974 0.27623823632472039 -0.45625323831708181
		0.51096677924919598 0.17635264560107866 -0.60541691743412795
		0.4771287576949752 0.21852180390225218 -0.58439852608973941
		0.38763894375020902 0.34307516622761364 -0.46259932072546994
		0.26108636307954297 0.46967973964988224 -0.54205207151456858
		0.22213433527802873 0.51213192880089464 -0.54880289040376595
		0.33353941441423479 0.40955363666593231 -0.43377561073222026
		;
createNode transform -n "ctrl_r_ear_02" -p "ctrl_r_ear_01";
	setAttr ".rp" -type "double3" 0.40510361693206043 0.42124365097296285 -0.60267400000000015 ;
	setAttr ".sp" -type "double3" 0.40510361693206043 0.42124365097296285 -0.60267400000000015 ;
createNode nurbsCurve -n "ctrl_r_ear_0Shape2" -p "ctrl_r_ear_02";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.27496814646129564 0.50923130890494028 -0.56815357323151627
		0.22660330538501797 0.53205474940377695 -0.58160094489302294
		0.35619428268303593 0.50410038893886855 -0.45869456930456515
		0.45224606534031397 0.50628847432508139 -0.30765432997427994
		0.50244689355091143 0.42039391296165513 -0.45646927459140652
		0.59496732572795086 0.32122463952243807 -0.57599613208237299
		0.55049898347834214 0.35153350609042905 -0.56396125617621262
		0.42685312408623 0.4575069930798083 -0.47371859543173578
		0.27496814646129564 0.50923130890494028 -0.56815357323151627
		0.22660330538501797 0.53205474940377695 -0.58160094489302294
		0.35619428268303593 0.50410038893886855 -0.45869456930456515
		;
createNode transform -n "ctrl_r_ear_03" -p "ctrl_r_ear_02";
	setAttr ".rp" -type "double3" 0.46083431362751365 0.53121900663032329 -0.6430720637274101 ;
	setAttr ".sp" -type "double3" 0.46083431362751365 0.53121900663032329 -0.6430720637274101 ;
createNode nurbsCurve -n "ctrl_r_ear_0Shape3" -p "ctrl_r_ear_03";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.33473288168663495 0.60427058677816725 -0.63146396076960587
		0.28483099126498596 0.60734395981990008 -0.63503598588959942
		0.42841718394124251 0.67902580065538842 -0.59973582659832203
		0.54165700969881903 0.78729779657925469 -0.55581873473305865
		0.57494765125720659 0.63437196529585282 -0.60031836965014218
		0.65389484402587217 0.49487508682567233 -0.63650322739263321
		0.61078718299780854 0.52014553383295103 -0.63256143570502488
		0.49737996111430144 0.64264255085948663 -0.60478523447460764
		0.33473288168663495 0.60427058677816725 -0.63146396076960587
		0.28483099126498596 0.60734395981990008 -0.63503598588959942
		0.42841718394124251 0.67902580065538842 -0.59973582659832203
		;
createNode transform -n "ctrl_r_ear_04" -p "ctrl_r_ear_03";
	setAttr ".rp" -type "double3" 0.4658340704576584 0.5282991033531963 -0.80902809240516382 ;
	setAttr ".sp" -type "double3" 0.4658340704576584 0.5282991033531963 -0.80902809240516382 ;
createNode nurbsCurve -n "ctrl_r_ear_0Shape4" -p "ctrl_r_ear_04";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.3526634755506739 0.57815688920497788 -0.82034231387925305
		0.31022069384961981 0.57615126680061279 -0.81762375893467698
		0.42501001640590053 0.64945327019860233 -0.84816615344524848
		0.51082659115377982 0.75065398005678929 -0.88685189961295097
		0.55288290107384341 0.62546259294179096 -0.84609605927148945
		0.63229200327523449 0.5157263467076969 -0.81240984714321973
		0.59356804973411847 0.53295994300380334 -0.81644238500266142
		0.4865915049392035 0.62527466596822923 -0.84285596618685765
		0.3526634755506739 0.57815688920497788 -0.82034231387925305
		0.31022069384961981 0.57615126680061279 -0.81762375893467698
		0.42501001640590053 0.64945327019860233 -0.84816615344524848
		;
createNode transform -n "ctrl_r_ear_05" -p "ctrl_r_ear_04";
	setAttr ".rp" -type "double3" 0.45706161489769748 0.42752966715649393 -0.88724513796519122 ;
	setAttr ".sp" -type "double3" 0.45706161489769748 0.42752966715649393 -0.88724513796519122 ;
createNode nurbsCurve -n "ctrl_r_ear_0Shape5" -p "ctrl_r_ear_05";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.36296617225915695 0.43576543450706334 -0.91143077025384234
		0.33035819376915398 0.43382234102971851 -0.90432649710952351
		0.40975498569452135 0.45534176110393482 -0.97673768497203894
		0.46310088123583809 0.48254763668481609 -1.0672370968176121
		0.51188813600216732 0.45399968579309219 -0.9746039167260836
		0.58759926204383661 0.43044207824895842 -0.89895221049065077
		0.55537868526978673 0.43323704796037271 -0.90741088337920162
		0.4605762381003905 0.45167033745746826 -0.9658155407150889
		0.36296617225915695 0.43576543450706334 -0.91143077025384234
		0.33035819376915398 0.43382234102971851 -0.90432649710952351
		0.40975498569452135 0.45534176110393482 -0.97673768497203894
		;
createNode transform -n "ctrl_l_ear_01" -p "ctrl_head_01";
	setAttr ".rp" -type "double3" -0.36032672833533247 0.34678809742088307 -0.60267400000000049 ;
	setAttr ".sp" -type "double3" -0.36032672833533247 0.34678809742088307 -0.60267400000000049 ;
createNode nurbsCurve -n "ctrl_l_ear_0Shape1" -p "ctrl_l_ear_01";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.26108636307954297 0.46967973964988224 -0.54205207151456858
		-0.22213433527802873 0.51213192880089464 -0.54880289040376595
		-0.33353941441423479 0.40955363666593231 -0.43377561073222026
		-0.42096621163532788 0.34123069351944602 -0.28163123745383739
		-0.4482153781383974 0.27623823632472039 -0.45625323831708181
		-0.51096677924919598 0.17635264560107866 -0.60541691743412795
		-0.4771287576949752 0.21852180390225218 -0.58439852608973941
		-0.38763894375020902 0.34307516622761364 -0.46259932072546994
		-0.26108636307954297 0.46967973964988224 -0.54205207151456858
		-0.22213433527802873 0.51213192880089464 -0.54880289040376595
		-0.33353941441423479 0.40955363666593231 -0.43377561073222026
		;
createNode transform -n "ctrl_l_ear_02" -p "ctrl_l_ear_01";
	setAttr ".rp" -type "double3" -0.40510361693206043 0.42124365097296285 -0.60267400000000015 ;
	setAttr ".sp" -type "double3" -0.40510361693206043 0.42124365097296285 -0.60267400000000015 ;
createNode nurbsCurve -n "ctrl_l_ear_0Shape2" -p "ctrl_l_ear_02";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.27496814646129564 0.50923130890494028 -0.56815357323151627
		-0.22660330538501797 0.53205474940377695 -0.58160094489302294
		-0.35619428268303593 0.50410038893886855 -0.45869456930456515
		-0.45224606534031397 0.50628847432508139 -0.30765432997427994
		-0.50244689355091143 0.42039391296165513 -0.45646927459140652
		-0.59496732572795086 0.32122463952243807 -0.57599613208237299
		-0.55049898347834214 0.35153350609042905 -0.56396125617621262
		-0.42685312408623 0.4575069930798083 -0.47371859543173578
		-0.27496814646129564 0.50923130890494028 -0.56815357323151627
		-0.22660330538501797 0.53205474940377695 -0.58160094489302294
		-0.35619428268303593 0.50410038893886855 -0.45869456930456515
		;
createNode transform -n "ctrl_l_ear_03" -p "ctrl_l_ear_02";
	setAttr ".rp" -type "double3" -0.46083431362751365 0.53121900663032329 -0.6430720637274101 ;
	setAttr ".sp" -type "double3" -0.46083431362751365 0.53121900663032329 -0.6430720637274101 ;
createNode nurbsCurve -n "ctrl_l_ear_0Shape3" -p "ctrl_l_ear_03";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.33473288168663495 0.60427058677816725 -0.63146396076960587
		-0.28483099126498596 0.60734395981990008 -0.63503598588959942
		-0.42841718394124251 0.67902580065538842 -0.59973582659832203
		-0.54165700969881903 0.78729779657925469 -0.55581873473305865
		-0.57494765125720659 0.63437196529585282 -0.60031836965014218
		-0.65389484402587217 0.49487508682567233 -0.63650322739263321
		-0.61078718299780854 0.52014553383295103 -0.63256143570502488
		-0.49737996111430144 0.64264255085948663 -0.60478523447460764
		-0.33473288168663495 0.60427058677816725 -0.63146396076960587
		-0.28483099126498596 0.60734395981990008 -0.63503598588959942
		-0.42841718394124251 0.67902580065538842 -0.59973582659832203
		;
createNode transform -n "ctrl_l_ear_04" -p "ctrl_l_ear_03";
	setAttr ".rp" -type "double3" -0.4658340704576584 0.5282991033531963 -0.80902809240516382 ;
	setAttr ".sp" -type "double3" -0.4658340704576584 0.5282991033531963 -0.80902809240516382 ;
createNode nurbsCurve -n "ctrl_l_ear_0Shape4" -p "ctrl_l_ear_04";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.3526634755506739 0.57815688920497788 -0.82034231387925305
		-0.31022069384961981 0.57615126680061279 -0.81762375893467698
		-0.42501001640590053 0.64945327019860233 -0.84816615344524848
		-0.51082659115377982 0.75065398005678929 -0.88685189961295097
		-0.55288290107384341 0.62546259294179096 -0.84609605927148945
		-0.63229200327523449 0.5157263467076969 -0.81240984714321973
		-0.59356804973411847 0.53295994300380334 -0.81644238500266142
		-0.4865915049392035 0.62527466596822923 -0.84285596618685765
		-0.3526634755506739 0.57815688920497788 -0.82034231387925305
		-0.31022069384961981 0.57615126680061279 -0.81762375893467698
		-0.42501001640590053 0.64945327019860233 -0.84816615344524848
		;
createNode transform -n "ctrl_l_ear_05" -p "ctrl_l_ear_04";
	setAttr ".rp" -type "double3" -0.45706161489769748 0.42752966715649393 -0.88724513796519122 ;
	setAttr ".sp" -type "double3" -0.45706161489769748 0.42752966715649393 -0.88724513796519122 ;
createNode nurbsCurve -n "ctrl_l_ear_0Shape5" -p "ctrl_l_ear_05";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.36296617225915695 0.43576543450706334 -0.91143077025384234
		-0.33035819376915398 0.43382234102971851 -0.90432649710952351
		-0.40975498569452135 0.45534176110393482 -0.97673768497203894
		-0.46310088123583809 0.48254763668481609 -1.0672370968176121
		-0.51188813600216732 0.45399968579309219 -0.9746039167260836
		-0.58759926204383661 0.43044207824895842 -0.89895221049065077
		-0.55537868526978673 0.43323704796037271 -0.90741088337920162
		-0.4605762381003905 0.45167033745746826 -0.9658155407150889
		-0.36296617225915695 0.43576543450706334 -0.91143077025384234
		-0.33035819376915398 0.43382234102971851 -0.90432649710952351
		-0.40975498569452135 0.45534176110393482 -0.97673768497203894
		;
createNode transform -n "ctrl_l_front_hip" -p "ctrl_backFront_01";
	setAttr ".rp" -type "double3" -0.4096720000000002 -0.25627499999999964 -0.18851100000000034 ;
	setAttr ".sp" -type "double3" -0.4096720000000002 -0.25627499999999964 -0.18851100000000034 ;
createNode nurbsCurve -n "ctrl_l_front_hipShape" -p "ctrl_l_front_hip";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.46450624180366873 -0.26495524779309049 -0.028686461010510481
		-0.45543697727992838 -0.26792546932051947 0.02853196796402924
		-0.57728229598561664 -0.26035634269418678 -0.11727989497904512
		-0.73489820377052528 -0.25501486528813472 -0.2201782622404744
		-0.5615474371904291 -0.25120225256715173 -0.29362453827361312
		-0.41580584993845476 -0.24486921465425254 -0.41562435433651218
		-0.43486274492208482 -0.24770951043589531 -0.36090881849252299
		-0.55160393169630662 -0.25586157331421383 -0.20386725560179222
		-0.46450624180366873 -0.26495524779309049 -0.028686461010510481
		-0.45543697727992838 -0.26792546932051947 0.02853196796402924
		-0.57728229598561664 -0.26035634269418678 -0.11727989497904512
		;
createNode transform -n "ctrl_l_front_thigh" -p "ctrl_l_front_hip";
	setAttr ".rp" -type "double3" -0.40967200000000042 -0.37320599999999965 -0.19071700000000028 ;
	setAttr ".sp" -type "double3" -0.40967200000000037 -0.37320599999999965 -0.19071700000000028 ;
createNode nurbsCurve -n "ctrl_l_front_thighShape" -p "ctrl_l_front_thigh";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.4605041169799583 -0.3870213288296695 -0.042947780891560407
		-0.45209163605071456 -0.39175061177136877 0.0099659039328033258
		-0.56507625186705313 -0.38000645086605184 -0.12489782671470222
		-0.71122511816799727 -0.37194187819011809 -0.22008599864620906
		-0.55049718716575113 -0.36529488962280859 -0.28796579142637124
		-0.41537158808475511 -0.35469684696727855 -0.40075066867317832
		-0.43303806439983361 -0.3593056609921888 -0.35015770036617738
		-0.54127217868828947 -0.37272695737608913 -0.20496221167377929
		-0.4605041169799583 -0.3870213288296695 -0.042947780891560407
		-0.45209163605071456 -0.39175061177136877 0.0099659039328033258
		-0.56507625186705313 -0.38000645086605184 -0.12489782671470222
		;
createNode transform -n "ctrl_l_front_knee" -p "ctrl_l_front_thigh";
	setAttr ".rp" -type "double3" -0.40967200000000054 -0.47689899999999968 -0.24587300000000034 ;
	setAttr ".sp" -type "double3" -0.40967200000000054 -0.47689899999999968 -0.24587300000000034 ;
createNode nurbsCurve -n "ctrl_l_front_kneeShape" -p "ctrl_l_front_knee";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.4527455357879529 -0.48860567475843525 -0.12065801534502861
		-0.4456170642644452 -0.49261312025044474 -0.075820624491263922
		-0.5413566710719272 -0.48266148799294728 -0.19009990447546152
		-0.66519861976480654 -0.47582782297151333 -0.27075936494802272
		-0.52900283057746178 -0.47019537409969075 -0.32827856456640392
		-0.41450165152606366 -0.46121492636848166 -0.42384891919762241
		-0.42947166743361637 -0.4651202902926373 -0.38097803046698842
		-0.5211858487870954 -0.47649307436024912 -0.25794394394828024
		-0.4527455357879529 -0.48860567475843525 -0.12065801534502861
		-0.4456170642644452 -0.49261312025044474 -0.075820624491263922
		-0.5413566710719272 -0.48266148799294728 -0.19009990447546152
		;
createNode transform -n "ctrl_l_front_foot" -p "ctrl_l_front_knee";
	setAttr ".rp" -type "double3" -0.40967200000000076 -0.55323999999999962 -0.23579000000000025 ;
	setAttr ".sp" -type "double3" -0.4096720000000007 -0.55323999999999962 -0.23579000000000025 ;
createNode nurbsCurve -n "ctrl_l_front_footShape" -p "ctrl_l_front_foot";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.44174998394463966 -0.56437035657915191 -0.14278977620287059
		-0.43643964645600264 -0.56834566772836803 -0.10949976694512109
		-0.50774677667879742 -0.55797178816485349 -0.19429912328646606
		-0.59998270327313175 -0.55047439937026144 -0.25411614873127297
		-0.49854994430085858 -0.54582777202625443 -0.29691285173646226
		-0.41327573759272435 -0.53775873610794589 -0.36795125939995671
		-0.42442372284090096 -0.54149178428180256 -0.33610766859119506
		-0.49272610164515973 -0.55205319350699611 -0.24469004074616515
		-0.44174998394463966 -0.56437035657915191 -0.14278977620287059
		-0.43643964645600264 -0.56834566772836803 -0.10949976694512109
		-0.50774677667879742 -0.55797178816485349 -0.19429912328646606
		;
createNode transform -n "ctrl_l_front_footEnd" -p "ctrl_l_front_foot";
	setAttr ".rp" -type "double3" -0.40967227965485209 -0.63578895559499193 -0.28561556308849784 ;
	setAttr ".sp" -type "double3" -0.40967227965485209 -0.63578895559499193 -0.28561556308849784 ;
createNode nurbsCurve -n "ctrl_l_front_footEndShape" -p "ctrl_l_front_footEnd";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.32158911917619853 -0.64653276340625265 -0.36379869641689705
		-0.40967227965485203 -0.64885579708418561 -0.40020990663497347
		-0.49775544013350542 -0.64653276340625265 -0.3637986964168971
		-0.53424067982044954 -0.64092446399513736 -0.2758942588859995
		-0.49775544013350553 -0.63531616458402218 -0.18798982135510175
		-0.4096722796548522 -0.63299313090608933 -0.15157861113702531
		-0.32158911917619876 -0.63531616458402229 -0.18798982135510162
		-0.28510387948925464 -0.64092446399513758 -0.27589425888599922
		-0.32158911917619853 -0.64653276340625265 -0.36379869641689705
		-0.40967227965485203 -0.64885579708418561 -0.40020990663497347
		-0.49775544013350542 -0.64653276340625265 -0.3637986964168971
		;
createNode transform -n "ctrl_r_front_hip" -p "ctrl_backFront_01";
	setAttr ".rp" -type "double3" 0.409672 -0.25627500000000053 -0.18851100000000018 ;
	setAttr ".sp" -type "double3" 0.409672 -0.25627500000000053 -0.18851100000000018 ;
createNode nurbsCurve -n "ctrl_r_front_hipShape" -p "ctrl_r_front_hip";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.46450624180366845 -0.26495524779311314 -0.02868646101051148
		0.45543697727992816 -0.26792546932054956 0.028531967964027877
		0.57728229598561642 -0.26035634269419916 -0.11727989497904555
		0.73489820377052506 -0.25501486528813566 -0.22017826224047415
		0.56154743719042877 -0.25120225256714079 -0.29362453827361235
		0.41580584993845449 -0.24486921465422373 -0.41562435433651046
		0.43486274492208454 -0.24770951043587397 -0.36090881849252165
		0.55160393169630639 -0.25586157331421455 -0.20386725560179206
		0.46450624180366845 -0.26495524779311314 -0.02868646101051148
		0.45543697727992816 -0.26792546932054956 0.028531967964027877
		0.57728229598561642 -0.26035634269419916 -0.11727989497904555
		;
createNode transform -n "ctrl_r_front_thigh" -p "ctrl_r_front_hip";
	setAttr ".rp" -type "double3" 0.40967199999999848 -0.3732060000000002 -0.19071700000001537 ;
	setAttr ".sp" -type "double3" 0.40967199999999843 -0.3732060000000002 -0.19071700000001537 ;
createNode nurbsCurve -n "ctrl_r_front_thighShape" -p "ctrl_r_front_thigh";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.4605041169799563 -0.38702132882969026 -0.042947780891577379
		0.45209163605071256 -0.39175061177139625 0.009965903932785701
		0.56507625186705124 -0.38000645086606305 -0.12489782671471829
		0.71122511816799561 -0.37194187819011876 -0.22008599864622411
		0.55049718716574936 -0.36529488962279821 -0.28796579142638534
		0.41537158808475333 -0.35469684696725162 -0.40075066867319098
		0.43303806439983195 -0.35930566099216871 -0.35015770036619065
		0.5412721786882877 -0.37272695737608957 -0.20496221167379439
		0.4605041169799563 -0.38702132882969026 -0.042947780891577379
		0.45209163605071256 -0.39175061177139625 0.009965903932785701
		0.56507625186705124 -0.38000645086606305 -0.12489782671471829
		;
createNode transform -n "ctrl_r_front_knee" -p "ctrl_r_front_thigh";
	setAttr ".rp" -type "double3" 0.40967199999999721 -0.47689899999999297 -0.24587300000002899 ;
	setAttr ".sp" -type "double3" 0.40967199999999721 -0.47689899999999297 -0.24587300000002899 ;
createNode nurbsCurve -n "ctrl_r_front_kneeShape" -p "ctrl_r_front_knee";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.45274553578794952 -0.48860567475844557 -0.12065801534505884
		0.4456170642644417 -0.49261312025046089 -0.075820624491294661
		0.54135667107192398 -0.48266148799294956 -0.19009990447549099
		0.66519861976480332 -0.47582782297150666 -0.27075936494805131
		0.52900283057745856 -0.47019537409967477 -0.32827856456643179
		0.41450165152606039 -0.46121492636845163 -0.423848919197649
		0.42947166743361309 -0.46512029029261309 -0.38097803046701556
		0.52118584878709218 -0.4764930743602423 -0.25794394394830883
		0.45274553578794952 -0.48860567475844557 -0.12065801534505884
		0.4456170642644417 -0.49261312025046089 -0.075820624491294661
		0.54135667107192398 -0.48266148799294956 -0.19009990447549099
		;
createNode transform -n "ctrl_r_front_foot" -p "ctrl_r_front_knee";
	setAttr ".rp" -type "double3" 0.40967199999999648 -0.55323999999999429 -0.23579000000003902 ;
	setAttr ".sp" -type "double3" 0.40967199999999648 -0.55323999999999429 -0.23579000000003902 ;
createNode nurbsCurve -n "ctrl_r_front_footShape" -p "ctrl_r_front_foot";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.44174998394463544 -0.56437035657915924 -0.14278977620291086
		0.43643964645599853 -0.56834566772837958 -0.10949976694516192
		0.5077467766787932 -0.55797178816485504 -0.19429912328650556
		0.59998270327312764 -0.55047439937025622 -0.25411614873131172
		0.49854994430085442 -0.54582777202624211 -0.29691285173650001
		0.41327573759272002 -0.53775873610792313 -0.36795125939999324
		0.42442372284089674 -0.54149178428178413 -0.3361076685912322
		0.49272610164515557 -0.55205319350699067 -0.24469004074620387
		0.44174998394463544 -0.56437035657915924 -0.14278977620291086
		0.43643964645599853 -0.56834566772837958 -0.10949976694516192
		0.5077467766787932 -0.55797178816485504 -0.19429912328650556
		;
createNode transform -n "ctrl_r_front_footEnd" -p "ctrl_r_front_foot";
	setAttr ".rp" -type "double3" 0.4096719999999956 -0.63578885357192971 -0.28561559327281549 ;
	setAttr ".sp" -type "double3" 0.4096719999999956 -0.63578885357192971 -0.28561559327281549 ;
createNode nurbsCurve -n "ctrl_r_front_footEndShape" -p "ctrl_r_front_footEnd";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.49775516047864943 -0.6465326654826099 -0.36379873801931695
		0.40967199999999609 -0.64885569916053698 -0.40020994823739403
		0.32158883952134248 -0.64653266548260779 -0.36379873801931778
		0.28510359983439804 -0.64092436607150371 -0.27589430048841956
		0.32158883952134176 -0.63531606666040052 -0.18798986295752099
		0.4096719999999951 -0.63299303298247322 -0.15157865273944385
		0.49775516047864871 -0.63531606666040252 -0.18798986295752021
		0.53424040016559315 -0.64092436607150649 -0.2758943004884184
		0.49775516047864943 -0.6465326654826099 -0.36379873801931695
		0.40967199999999609 -0.64885569916053698 -0.40020994823739403
		0.32158883952134248 -0.64653266548260779 -0.36379873801931778
		;
createNode transform -n "grp_geo" -p "samantha";
createNode transform -n "geo_pig" -p "grp_geo";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "geo_pigShape" -p "geo_pig";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.55361738801002502 0.49975598882883787 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".pt[568]" -type "float3"  1.4901161e-010 0 0;
	setAttr ".dr" 1;
	setAttr ".vcs" 2;
createNode mesh -n "geo_pigShapeOrig" -p "geo_pig";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 1228 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.125 0.5 0.125 0.75 0 0.75
		 0 0.5 0.25 0.5 0.25 0.75 0.375 0.5 0.375 0.75 0.5 0.5 0.5 0.75 0.625 0.5 0.625 0.75
		 0.75 0.5 0.75 0.75 0.875 0.5 0.875 0.75 1 0.5 1 0.75 0.0625 1 0.1875 1 0.3125 1 0.4375
		 1 0.5625 1 0.6875 1 0.8125 1 0.9375 1 0.5 0.3125 0.40625 0.3125 0.40625 0.42171299
		 0.375 0.42171299 0.28125 0.15625 0.5625 0.42171299 0.5625 0.42171299 0.28125 0.15625
		 0.59375 0.3125 0.59375 0.42171299 0.609375 0.3125 0.625 0.42171299 0.609375 0.42171299
		 0.5625 0.50586432 0.59375 0.50586432 0.59375 0.57154346 0.5625 0.57154346 0.5625
		 0.57154346 0.5625 0.50586432 0.59375 0.68843985 0.78125 0.34421992 0.78125 0.34421992
		 0.375 0.57154346 0.40625 0.57154346 0.40625 0.68843985 0.375 0.68843985 0.609375
		 0.57154346 0.625 0.57154346 0.625 0.68843985 0.609375 0.68843985 0.40625 0.50586432
		 0.375 0.50586432 0.625 0.50586432 0.609375 0.50586432 1 1 0.40625 0.68843985 1 1
		 1 1 1 0.5 1 0.5 1 0.75 1 0.5 1 0.25 1 0.5 0.78125 0.625 1 1 1 0.5 1 0.5 1 0 0.125
		 0.5 0.125 0.75 0 0.75 0 0.5 0.25 0.5 0.25 0.75 0.375 0.5 0.375 0.75 0.5 0.5 0.5 0.75
		 0.625 0.5 0.625 0.75 0.75 0.5 0.75 0.75 0.875 0.5 0.875 0.75 1 0.5 1 0.75 0.0625
		 1 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875 1 0.8125 1 0.9375 1 1 1 1 1 0.8125 0.59421992
		 0.7421875 0.59421992 0.1875 0.59421992 0.59375 0.68843985 0.609375 0.68843985 0.7421875
		 0.59421992 0.671875 0.59421992 0 0 1 0 1 1 0.5 1 0 0 1 0 0 1 0 0 1 0 1 1 0.5 1 0
		 0 1 0 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 0.5 1
		 1 0.78125 0.34421992 1 1 0.671875 0.59421992 0 1 0 1 0 0.5 0 0 0 0 0 0.5 0 0.5 0
		 0 0 0 0 0.5 0 1 0 1 0 1 0 0.5 0 0.5 0 1 0.296875 0.15625 0.3046875 0.40625 0 0 0
		 0 0 1 0 0.5 0 0.5 0 1 0.375 0.3125 0.40625 0.3125 0.40625 0.50046992 0.375 0.50046992
		 0.4375 0.3125 0.4375 0.50046992 0.5 0.50046992 0.5 0.3125 0.53125 0.3125 0.53125
		 0.50046992 0.5625 0.3125 0.5625 0.50046992 0.625 0.50046992 0.625 0.3125 0 0 1 0
		 1 1 0 1 0 0 1 0 1 1 0 1 0 1 0 0 1 0 1 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 1 0 0 1
		 0 1 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 1 0 0 1 0 1 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1
		 0 1 0 1 0 0 1 0 1 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 1 0 0 1 0 1 1 0 0 1 0 1 1 0
		 1 0 0 1 0 1 1;
	setAttr ".uvst[0].uvsp[250:499]" 0 1 0 1 0 0 1 0 1 1 0 0 1 0 1 1 0 1 0 0 1
		 0 1 1 0 1 0 1 0 0 1 0 1 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 1 0 0 1 0 1 1 0 0 1 0
		 0.5 1 0 0 1 0 0.5 1 0.5 1 0 0 1 0 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0.5 1 0 0 1 0 0.5625
		 0.68843985 0.53125 0.68843985 0.5 0.68843985 0.4375 0.68843985 0.40625 0.68843985
		 0.375 0.68843985 0.625 0.68843985 0.375 0.3125 0.40625 0.3125 0.40625 0.68843985
		 0.375 0.68843985 0.4375 0.3125 0.4375 0.68843985 0.46875 0.3125 0.46875 0.68843985
		 0.5 0.3125 0.5 0.68843985 0.53125 0.3125 0.53125 0.68843985 0.5625 0.3125 0.5625
		 0.68843985 0.59375 0.3125 0.59375 0.68843985 0.625 0.3125 0.625 0.68843985 0 0 1
		 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0
		 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1
		 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1
		 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0
		 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1
		 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0
		 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 0.5 1 0 0 1 0
		 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1;
	setAttr ".uvst[0].uvsp[500:749]" 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 1 1 0
		 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1
		 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0.609375 0.68843985 0.59375 0.68843985 0.7421875
		 0.59421992 0.671875 0.59421992 0.78125 0.34421992 1 1 0.609375 0.68843985 0.59375
		 0.68843985 0.7421875 0.59421992 0.671875 0.59421992 0.78125 0.34421992 1 1 0.609375
		 0.68843985 0.59375 0.68843985 0.7421875 0.59421992 0.671875 0.59421992 0.78125 0.34421992
		 1 1 0.609375 0.68843985 0.59375 0.68843985 0.7421875 0.59421992 0.671875 0.59421992
		 0.78125 0.34421992 1 1 0.609375 0.68843985 0.59375 0.68843985 0.7421875 0.59421992
		 0.671875 0.59421992 0.78125 0.34421992 1 1 0.609375 0.68843985 0.59375 0.68843985
		 0.7421875 0.59421992 0.671875 0.59421992 0.78125 0.34421992 1 1 0.5 0.3125 0.375
		 0.42171299 0.40625 0.42171299 0.40625 0.3125 0.59375 0.42171299 0.59375 0.3125 0.609375
		 0.3125 0.609375 0.42171299 0.625 0.42171299 0.59375 0.57154346 0.59375 0.50586432
		 0.59375 0.68843985 0.375 0.57154346 0.375 0.68843985 0.40625 0.57154346 0.609375
		 0.57154346 0.609375 0.68843985 0.625 0.68843985 0.625 0.57154346 0.375 0.50586432
		 0.40625 0.50586432 0.609375 0.50586432 0.625 0.50586432 1 1 1 0.5 1 0.5 1 0 1 0 1
		 0.5 1 0.5 1 0.5 1 1 1 1 1 0 1 0 1 1 1 0 1 0 1 1 1 1 1 0 1 0 1 0.5 1 0 1 1 1 0 1 0
		 1 0.75 1 0.5 1 0.25 1 0.5 0.78125 0.625 1 0.5 0.125 0.5 0 0.5 0 0.75 0.125 0.75 0.25
		 0.5 0.25 0.75 0.375 0.5 0.375 0.75 0.5 0.5 0.5 0.75 0.625 0.5 0.625 0.75 0.75 0.5
		 0.75 0.75 0.875 0.5 0.875 0.75 1 0.5 1 0.75 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625
		 1 0.6875 1 0.8125 1 0.9375 1 0.7421875 0.59421992 0.8125 0.59421992 0.1875 0.59421992
		 0.59375 0.68843985 0.671875 0.59421992 0.7421875 0.59421992 0.609375 0.68843985 0
		 0 0.5 1 1 1 1 0 0 0 0 1 1 0 0 0 0.5 1 1 1 1 0 0 0 0 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1
		 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 1 1 0.78125 0.34421992 0.671875 0.59421992
		 0.3046875 0.40625 0.296875 0.15625 0.375 0.3125 0.375 0.50046992 0.40625 0.50046992
		 0.40625 0.3125 0.4375 0.50046992 0.4375 0.3125 0.5 0.50046992 0.5 0.3125 0.53125
		 0.50046992 0.53125 0.3125 0.5625 0.50046992 0.5625 0.3125 0.625 0.50046992 0.625
		 0.3125 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 1 1 1 1 0 0 0 0 0 0 1 1 1 1 0 0 0 0 1 1
		 1 1 0 0 1 1 1 1 0 0 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 1 1 1 1 0 0 0 0 0 0 1 1 1
		 1 0 0 0;
	setAttr ".uvst[0].uvsp[750:999]" 0 1 1 1 1 0 0 1 1 1 1 0 0 0 0 0 0 1 1 1 1
		 0 0 0 0 1 1 1 1 0 0 1 1 1 1 0 0 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 1 1 1 1 0 0 0
		 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 1 1 1 1 0 0 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0
		 1 1 1 1 0 0 0 0 0 0.5 1 1 0 0 0 0.5 1 1 0 0.5 1 1 0 0 0 0 0 0.5 1 1 0 0 0 0.5 1 1
		 0 0.5 1 1 0 0 0 0.53125 0.68843985 0.5625 0.68843985 0.5 0.68843985 0.4375 0.68843985
		 0.40625 0.68843985 0.375 0.68843985 0.625 0.68843985 0.375 0.3125 0.375 0.68843985
		 0.40625 0.68843985 0.40625 0.3125 0.4375 0.68843985 0.4375 0.3125 0.46875 0.68843985
		 0.46875 0.3125 0.5 0.68843985 0.5 0.3125 0.53125 0.68843985 0.53125 0.3125 0.5625
		 0.68843985 0.5625 0.3125 0.59375 0.68843985 0.59375 0.3125 0.625 0.68843985 0.625
		 0.3125 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1
		 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1
		 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1
		 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0
		 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0
		 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0
		 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0
		 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0;
	setAttr ".uvst[0].uvsp[1000:1227]" 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0.5 1
		 1 0 0 0 0.5 1 1 0 0 0 0.5 1 1 0 0 0 0.5 1 1 0 0 0 0.5 1 1 0 0 0 0.5 1 1 0 0 0 0.5
		 1 1 0 0 0 0.5 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1
		 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0.59375 0.68843985
		 0.609375 0.68843985 0.7421875 0.59421992 0.671875 0.59421992 1 1 0.78125 0.34421992
		 0.59375 0.68843985 0.609375 0.68843985 0.7421875 0.59421992 0.671875 0.59421992 1
		 1 0.78125 0.34421992 0.59375 0.68843985 0.609375 0.68843985 0.7421875 0.59421992
		 0.671875 0.59421992 1 1 0.78125 0.34421992 0.59375 0.68843985 0.609375 0.68843985
		 0.7421875 0.59421992 0.671875 0.59421992 1 1 0.78125 0.34421992 0.59375 0.68843985
		 0.609375 0.68843985 0.7421875 0.59421992 0.671875 0.59421992 1 1 0.78125 0.34421992
		 0.59375 0.68843985 0.609375 0.68843985 0.7421875 0.59421992 0.671875 0.59421992 1
		 1 0.78125 0.34421992 0 1 0 0.5 0 1 0 0.5 0 1 0 1 0 0.5 0 1 0 0.5 0 1 0 0.5 0 1 0
		 0.5 0 1 0 0.5 0 1 0 0.5 0 1 0 0.5 0 1 0 0.5 0 1 0 0.5 0 1 0 0.5 0 1 0 0.5 0 1 0 0.5
		 0 1 0 0.5 0 1 0 0.5 0 1 0 0.5 0 1 0 0.5 0 1 0 0.5 0 1 0 0.5 0 1 0 0.5 0 1 0 0.5 0
		 1 0 0.5 0 1 0 0.5 0 1 1 0.5 1 0.5 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0
		 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 0.125 0.5
		 0 0.5 0 0.75 0.125 0.75 0.25 0.5 0.25 0.75 0.375 0.5 0.375 0.75 0.5 0.5 0.5 0.75
		 0.625 0.5 0.625 0.75 0.75 0.5 0.75 0.75 0.875 0.5 0.875 0.75 1 0.5 1 0.75 0.0625
		 1 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875 1 0.8125 1 0.9375 1 0 0 0 0.5 1 0.5
		 1 0 0.5 1 0 0 0 0.5 1 0.5 1 0 0.5 1 0 0 1 0 1 0.5 0 0.5 0.5 1 0 0 1 0 1 0.5 0 0.5
		 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 568 ".vt";
	setAttr ".vt[0:165]"  0.23457986 -0.012857769 -0.76439643 0.2426988 -0.00045700057 -0.77883995
		 0.27154168 0.011021893 -0.76220948 0.2731415 -0.002073061 -0.7423746 0.19561054 -0.0020731755 -0.78538322
		 0.21345164 0.011021512 -0.79443461 0.18922718 0.038266633 -0.7889232 0.21054609 0.038118571 -0.79604578
		 0.20245121 0.074811816 -0.78158736 0.21990401 0.063980117 -0.79085404 0.23437649 0.089948781 -0.76387787
		 0.24249466 0.074690737 -0.77832222 0.26630083 0.074810505 -0.7461682 0.26508647 0.063978665 -0.76578981
		 0.27952376 0.03826585 -0.73883319 0.27444452 0.038117602 -0.76059878 0.2466708 0.03800451 -0.78568959
		 0.4195576 -0.27587289 0.48193675 0.16073383 -0.47975704 0.49946743 0.16163322 0.48389763 0.56777227
		 0.37674001 0.37535581 0.5872317 0.35209882 -0.23786621 -0.49640504 0.12886003 -0.29426458 -0.51325721
		 0.12023459 0.47765073 -0.5089941 0.33745563 0.37967953 -0.47887689 0.38701606 0.34176251 0.00064966799
		 0.15812321 0.44533837 0.0018900752 0.14331232 -0.47040477 -0.01794913 0.3976402 -0.36340401 0.011206324
		 0.36890674 0.37131497 -0.2367432 0.14395535 0.46518466 -0.23988561 0.12885988 -0.40442124 -0.36543015
		 0.38716811 -0.26306784 -0.36413738 0.39084998 0.3709026 0.31006473 0.16438353 0.47692356 0.28394842
		 0.15935984 -0.47525516 0.34085259 0.43048337 -0.31425089 0.34085259 0.43859044 0.024716292 -0.50874239
		 0.48116195 -0.043674838 -0.2997624 0.52018189 -0.072962828 0.018635914 0.52524531 -0.039713372 0.32808194
		 0.5135296 -0.020463124 0.53769189 0.2020126 0.37027833 -0.7540285 0.1127333 0.18195127 -0.8652249
		 0.073301442 0.039948042 -0.85674149 0.051377755 -0.0022068128 -0.9323948 0.033927765 0.00034802675 -1.011103153
		 0.026025822 0.011259851 -1.043038726 0.12647744 -0.12853311 -1.0018848181 0.13728696 -0.19765192 -0.96639353
		 0.16562298 -0.18743256 -0.84808511 0.17990485 -0.21170352 -0.71494794 0.14743954 -0.28451642 -0.63447058
		 0.225936 -0.11768984 -0.76616758 0.16624349 -0.12601639 -0.87776124 0.2651805 0.0035298481 -0.74792063
		 0.23491654 -0.010820605 -0.76470953 0.20465253 0.0035303822 -0.78149801 0.1921168 0.038176194 -0.78845161
		 0.20465253 0.072821781 -0.78149694 0.23491654 0.08717224 -0.76470804 0.2651805 0.072821252 -0.74791956
		 0.27771628 0.038175441 -0.74096596 0.26182529 0.013677572 -0.76279604 0.24042544 0.0035302725 -0.77466756
		 0.21902557 0.013677949 -0.78653884 0.21016146 0.038176242 -0.79145575 0.21902557 0.062674373 -0.78653806
		 0.24042544 0.072821677 -0.77466655 0.26182532 0.062674001 -0.76279527 0.27068946 0.038175706 -0.75787836
		 0.24270731 0.038176041 -0.7787919 0.16941704 -0.025714349 -0.82205558 0.12644209 -0.042591713 -0.91131735
		 0.090937488 -0.052505191 -0.99249405 0.39415705 -0.12384102 -0.70028394 0.39493102 0.034295429 -0.65616435
		 0.32610616 0.26801133 -0.69299448 0.29116926 -0.017908601 -0.74480414 0.24217831 -0.041138921 -0.77198189
		 0.19318736 -0.017907731 -0.79915887 0.17289467 0.038176421 -0.81041521 0.19318736 0.094260238 -0.79915708
		 0.24217831 0.11749056 -0.77197945 0.29116926 0.094259366 -0.74480247 0.31146193 0.038175207 -0.73354608
		 0.13728699 0.44682723 0.74445421 0.12199409 0.16564839 0.98344338 0.19928028 -0.056261081 1.015589237
		 0.14230226 -0.31421757 0.96561152 0.12170274 -0.46804756 0.68321335 0.34005189 0.29871407 0.82290083
		 0.44894829 0.039319381 0.81657135 0.13466953 -0.42287484 0.85207784 0.10021747 0.33882949 0.90748698
		 0.4373655 -0.40543273 -0.24857104 0.38691607 -0.39917433 -0.27824691 0.33646739 -0.4054327 -0.24857104
		 0.33646739 -0.43393543 -0.16201244 0.38691607 -0.43845585 -0.13494344 0.4373655 -0.43393543 -0.16201244
		 0.41899818 -0.47510731 -0.26893723 0.38691625 -0.47260475 -0.28980872 0.35483447 -0.47510731 -0.26893723
		 0.35483447 -0.48299542 -0.2248901 0.38691625 -0.48376015 -0.20662545 0.41899818 -0.48299542 -0.2248901
		 0.41146547 -0.54348236 -0.27333623 0.38691631 -0.54097998 -0.29519895 0.36236727 -0.54348236 -0.27333623
		 0.36236727 -0.5513705 -0.22450289 0.38691631 -0.55213529 -0.20524698 0.41146547 -0.5513705 -0.22450289
		 0.41553399 -0.60078132 -0.29016474 0.38691628 -0.59552747 -0.30842832 0.35829872 -0.60078132 -0.29016474
		 0.35829872 -0.61038965 -0.24425407 0.38691628 -0.61192161 -0.22611713 0.41553399 -0.61038965 -0.24425407
		 0.41276771 -0.63515496 -0.30218971 0.38691631 -0.63445145 -0.32147515 0.361065 -0.63515496 -0.30218971
		 0.361065 -0.63658518 -0.26300994 0.38691631 -0.63716334 -0.2471699 0.41276771 -0.63658518 -0.26300994
		 0.3869164 -0.63582158 -0.28393373 0.49073017 -0.25030148 -0.080672741 0.37868389 -0.37411156 -0.066526681
		 0.25014487 -0.45970654 -0.10861333 0.24427384 -0.40914837 -0.29346851 0.39457989 -0.33112109 -0.30746156
		 0.48031193 -0.21741742 -0.24773927 0.44097632 -0.46856344 0.54032439 0.38307694 -0.47324795 0.51546305
		 0.32517803 -0.47894302 0.54343826 0.30119553 -0.47893548 0.60345876 0.32517803 -0.47828874 0.66347945
		 0.38307694 -0.47583869 0.68834078 0.44097632 -0.47445405 0.66475767 0.46495897 -0.47142947 0.60761064
		 0.50327653 -0.22368696 0.52854514 0.40690666 -0.31278989 0.50689715 0.26287764 -0.35508376 0.56707799
		 0.21308938 -0.4449921 0.67001462 0.23359008 -0.44758469 0.79552674 0.28675267 -0.37230206 0.8974402
		 0.39990422 -0.25856778 0.88501686 0.50188041 -0.18220598 0.76731896 0.40483516 -0.59463412 0.60602647
		 0.38307703 -0.5974794 0.59712523 0.36131912 -0.59463412 0.60602647 0.35230634 -0.58776522 0.62751603
		 0.36131912 -0.58089638 0.64900559 0.38307703 -0.57805109 0.65790677 0.40483516 -0.58089638 0.64900559
		 0.41384783 -0.58776522 0.62751603 0.41204762 -0.61564451 0.60714072 0.38307703 -0.61415029 0.59478837
		 0.35410663 -0.61564451 0.60714072 0.34210679 -0.6192522 0.63696218 0.35410663 -0.6228599 0.66678345
		 0.38307703 -0.62435424 0.67913598 0.41204762 -0.6228599 0.66678345 0.42404735 -0.6192522 0.63696218
		 0.40483516 -0.65590149 0.59567255 0.38307703 -0.6547792 0.58639532;
	setAttr ".vt[166:331]" 0.36131901 -0.65590149 0.59567255 0.35230634 -0.658611 0.61806989
		 0.36131901 -0.66132051 0.64046717 0.38307703 -0.66244292 0.64974457 0.40483516 -0.66132051 0.64046717
		 0.41384783 -0.658611 0.61806989 0.41660237 -0.72055894 0.55522114 0.38307703 -0.71882963 0.54092669
		 0.34955162 -0.72055894 0.55522114 0.33566502 -0.72473371 0.58973145 0.34955162 -0.72890884 0.62424159
		 0.38307703 -0.73063797 0.63853639 0.41660237 -0.72890884 0.62424159 0.4304893 -0.72473371 0.58973145
		 0.40445557 -0.74017656 0.56378901 0.38307703 -0.73907381 0.55467361 0.36169854 -0.74017656 0.56378901
		 0.35284314 -0.74283874 0.58579564 0.36169854 -0.74550116 0.60780215 0.38307703 -0.74660385 0.61691773
		 0.40445557 -0.74550116 0.60780215 0.413311 -0.74283874 0.58579564 0.38307706 -0.74283874 0.58579564
		 0.33485803 0.35889938 -0.57188976 0.40078753 0.18213356 -0.57384449 0.3879348 0.17512807 -0.63641375
		 0.33822814 0.32492325 -0.65496629 0.2136099 0.42171031 -0.59986371 0.25191516 0.37229294 -0.6826812
		 0.39050645 0.42190415 -0.54320472 0.47408947 0.23833725 -0.56381059 0.45668161 0.23213565 -0.62748951
		 0.39738247 0.38689479 -0.63790941 0.23286667 0.4732894 -0.5942682 0.2928564 0.42371705 -0.68123078
		 0.44783261 0.51176786 -0.59398508 0.57697541 0.36960551 -0.59399325 0.54095691 0.33544216 -0.6428746
		 0.44705647 0.43935749 -0.68992829 0.23798236 0.55673438 -0.60013044 0.30912793 0.49093217 -0.6973049
		 0.44587979 0.55598027 -0.7500875 0.6189642 0.52025676 -0.74307692 0.59520757 0.4724097 -0.74501824
		 0.44722623 0.47808444 -0.7648924 0.25609994 0.58778065 -0.73890227 0.3189849 0.52135772 -0.75698632
		 0.4493435 0.50675118 -0.85493124 0.58255625 0.47969848 -0.84401214 0.56476474 0.44486347 -0.83174706
		 0.44904643 0.45912582 -0.83978581 0.29447171 0.54069597 -0.84879392 0.33619827 0.49750739 -0.84189385
		 0.4598549 0.43784198 -0.9044956 0.55624658 0.43076363 -0.89550459 0.54334301 0.41836607 -0.87010759
		 0.46349025 0.42264506 -0.87339842 0.35343459 0.43255165 -0.90424538 0.36916247 0.42088962 -0.88119727
		 0.4583815 0.37037101 -0.91581696 0.5264495 0.38326001 -0.90818489 0.51733756 0.37450531 -0.89025044
		 0.46094865 0.35963944 -0.89385724 0.3832317 0.38452262 -0.91388428 0.39344516 0.37628737 -0.88911897
		 -0.4195576 -0.27587289 0.48193675 -0.16254801 -0.47975704 0.49946743 -0.16163322 0.48389763 0.56777227
		 -0.37674001 0.37535581 0.5872317 -0.35209882 -0.23786621 -0.49640504 -0.12886003 -0.29426458 -0.51325721
		 -0.12023459 0.47765073 -0.5089941 -0.33745563 0.37967953 -0.47887689 -0.38701606 0.34176251 0.00064966799
		 -0.15812321 0.44533837 0.0018900752 -0.14278956 -0.47040477 -0.01794913 -0.3976402 -0.36340401 0.011206324
		 -0.36890674 0.37131497 -0.2367432 -0.14395535 0.46518466 -0.23988561 -0.12885988 -0.40442124 -0.36543015
		 -0.38716811 -0.26306784 -0.36413738 -0.39084998 0.3709026 0.31006473 -0.16438353 0.47692356 0.28394842
		 -0.15935984 -0.47525516 0.34085259 -0.43048337 -0.31425089 0.34085259 -0.43859044 0.024716292 -0.50874239
		 -0.48116195 -0.043674838 -0.2997624 -0.52018189 -0.072962828 0.018635914 -0.52524531 -0.039713372 0.32808194
		 -0.5135296 -0.020463124 0.53769189 -0.2020126 0.37027833 -0.7540285 -0.1127333 0.18195127 -0.8652249
		 -0.073301442 0.039948042 -0.85674149 -0.051377755 -0.0022068128 -0.9323948 -0.033927765 0.00034802675 -1.011103153
		 -0.026025822 0.011259851 -1.043038726 -0.12647744 -0.12853311 -1.0018848181 -0.13728696 -0.19765192 -0.96639353
		 -0.16562298 -0.18743256 -0.84808511 -0.17990485 -0.21170352 -0.71494794 -0.14743954 -0.28451642 -0.63447058
		 -0.225936 -0.11768984 -0.76616758 -0.16624349 -0.12601639 -0.87776124 -0.2651805 0.0035298481 -0.74792063
		 -0.23491654 -0.010820605 -0.76470953 -0.20465253 0.0035303822 -0.78149801 -0.1921168 0.038176194 -0.78845161
		 -0.20465253 0.072821781 -0.78149694 -0.23491654 0.08717224 -0.76470804 -0.2651805 0.072821252 -0.74791956
		 -0.27771628 0.038175441 -0.74096596 -0.26182529 0.013677572 -0.76279604 -0.24042544 0.0035302725 -0.77466756
		 -0.21902557 0.013677949 -0.78653884 -0.21016146 0.038176242 -0.79145575 -0.21902557 0.062674373 -0.78653806
		 -0.24042544 0.072821677 -0.77466655 -0.26182532 0.062674001 -0.76279527 -0.27068946 0.038175706 -0.75787836
		 -0.24270731 0.038176041 -0.7787919 -0.16941704 -0.025714349 -0.82205558 -0.12644209 -0.042591713 -0.91131735
		 -0.090937488 -0.052505191 -0.99249405 -0.3955915 -0.12384102 -0.70028394 -0.39493102 0.034295429 -0.65616435
		 -0.32610616 0.26801133 -0.69299448 -0.29116926 -0.017908601 -0.74480414 -0.24217831 -0.041138921 -0.77198189
		 -0.19318736 -0.017907731 -0.79915887 -0.17289467 0.038176421 -0.81041521 -0.19318736 0.094260238 -0.79915708
		 -0.24217831 0.11749056 -0.77197945 -0.29116926 0.094259366 -0.74480247 -0.31146193 0.038175207 -0.73354608
		 -0.13728699 0.44682723 0.74445421 -0.12133659 0.16564839 0.98344338 -0.19928028 -0.056261081 1.015589237
		 -0.14586392 -0.31421757 0.96561152 -0.12433869 -0.46804756 0.68321335 -0.34005189 0.29871407 0.82290083
		 -0.44894829 0.039319381 0.81657135 -0.13920698 -0.42287484 0.85207784 -0.10021747 0.33882949 0.90748698
		 -0.4373655 -0.40543273 -0.24857104 -0.38691607 -0.39917433 -0.27824691 -0.33646739 -0.4054327 -0.24857104
		 -0.33646739 -0.43393543 -0.16201244 -0.38691607 -0.43845585 -0.13494344 -0.4373655 -0.43393543 -0.16201244
		 -0.41899818 -0.47510731 -0.26893723 -0.38691625 -0.47260475 -0.28980872 -0.35483447 -0.47510731 -0.26893723
		 -0.35483447 -0.48299542 -0.2248901 -0.38691625 -0.48376015 -0.20662545 -0.41899818 -0.48299542 -0.2248901
		 -0.41146547 -0.54348236 -0.27333623 -0.38691631 -0.54097998 -0.29519895 -0.36236727 -0.54348236 -0.27333623
		 -0.36236727 -0.5513705 -0.22450289 -0.38691631 -0.55213529 -0.20524698 -0.41146547 -0.5513705 -0.22450289
		 -0.41553399 -0.60078132 -0.29016474 -0.38691628 -0.59552747 -0.30842832 -0.35829872 -0.60078132 -0.29016474
		 -0.35829872 -0.61038965 -0.24425407 -0.38691628 -0.61192161 -0.22611713;
	setAttr ".vt[332:497]" -0.41553399 -0.61038965 -0.24425407 -0.41276771 -0.63515496 -0.30218971
		 -0.38691631 -0.63445145 -0.32147515 -0.361065 -0.63515496 -0.30218971 -0.361065 -0.63658518 -0.26300994
		 -0.38691631 -0.63716334 -0.2471699 -0.41276771 -0.63658518 -0.26300994 -0.3869164 -0.63582158 -0.28393373
		 -0.49073017 -0.25030148 -0.080672741 -0.37868389 -0.37411156 -0.066526681 -0.25014487 -0.45970654 -0.10861333
		 -0.24427384 -0.40914837 -0.29346851 -0.39457989 -0.33112109 -0.30746156 -0.48031193 -0.21741742 -0.24773927
		 -0.44097632 -0.46856344 0.54032439 -0.38307694 -0.47324795 0.51546305 -0.32517803 -0.47894302 0.54343826
		 -0.30119553 -0.47893548 0.60345876 -0.32517803 -0.47828874 0.66347945 -0.38307694 -0.47583869 0.68834078
		 -0.44097632 -0.47445405 0.66475767 -0.46495897 -0.47142947 0.60761064 -0.50327653 -0.22368696 0.52854514
		 -0.40690666 -0.31278989 0.50689715 -0.26287764 -0.35508376 0.56707799 -0.21308938 -0.4449921 0.67001462
		 -0.23489372 -0.44758469 0.79552674 -0.28805628 -0.37230206 0.8974402 -0.39990422 -0.25856778 0.88501686
		 -0.50188041 -0.18220598 0.76731896 -0.40483516 -0.59463412 0.60602647 -0.38307703 -0.5974794 0.59712523
		 -0.36131912 -0.59463412 0.60602647 -0.35230634 -0.58776522 0.62751603 -0.36131912 -0.58089638 0.64900559
		 -0.38307703 -0.57805109 0.65790677 -0.40483516 -0.58089638 0.64900559 -0.41384783 -0.58776522 0.62751603
		 -0.41204762 -0.61564451 0.60714072 -0.38307703 -0.61415029 0.59478837 -0.35410663 -0.61564451 0.60714072
		 -0.34210679 -0.6192522 0.63696218 -0.35410663 -0.6228599 0.66678345 -0.38307703 -0.62435424 0.67913598
		 -0.41204762 -0.6228599 0.66678345 -0.42404735 -0.6192522 0.63696218 -0.40483516 -0.65590149 0.59567255
		 -0.38307703 -0.6547792 0.58639532 -0.36131901 -0.65590149 0.59567255 -0.35230634 -0.658611 0.61806989
		 -0.36131901 -0.66132051 0.64046717 -0.38307703 -0.66244292 0.64974457 -0.40483516 -0.66132051 0.64046717
		 -0.41384783 -0.658611 0.61806989 -0.41660237 -0.72055894 0.55522114 -0.38307703 -0.71882963 0.54092669
		 -0.34955162 -0.72055894 0.55522114 -0.33566502 -0.72473371 0.58973145 -0.34955162 -0.72890884 0.62424159
		 -0.38307703 -0.73063797 0.63853639 -0.41660237 -0.72890884 0.62424159 -0.4304893 -0.72473371 0.58973145
		 -0.40445557 -0.74017656 0.56378901 -0.38307703 -0.73907381 0.55467361 -0.36169854 -0.74017656 0.56378901
		 -0.35284314 -0.74283874 0.58579564 -0.36169854 -0.74550116 0.60780215 -0.38307703 -0.74660385 0.61691773
		 -0.40445557 -0.74550116 0.60780215 -0.413311 -0.74283874 0.58579564 -0.38307706 -0.74283874 0.58579564
		 -0.33485803 0.35889938 -0.57188976 -0.40078753 0.18213356 -0.57384449 -0.3879348 0.17512807 -0.63641375
		 -0.33822814 0.32492325 -0.65496629 -0.2136099 0.42171031 -0.59986371 -0.25191516 0.37229294 -0.6826812
		 -0.39050645 0.42190415 -0.54320472 -0.47408947 0.23833725 -0.56381059 -0.45668161 0.23213565 -0.62748951
		 -0.39738247 0.38689479 -0.63790941 -0.23286667 0.4732894 -0.5942682 -0.2928564 0.42371705 -0.68123078
		 -0.44783261 0.51176786 -0.59398508 -0.57697541 0.36960551 -0.59399325 -0.54095691 0.33544216 -0.6428746
		 -0.44705647 0.43935749 -0.68992829 -0.23798236 0.55673438 -0.60013044 -0.30912793 0.49093217 -0.6973049
		 -0.44587979 0.55598027 -0.7500875 -0.6189642 0.52025676 -0.74307692 -0.59520757 0.4724097 -0.74501824
		 -0.44722623 0.47808444 -0.7648924 -0.25609994 0.58778065 -0.73890227 -0.3189849 0.52135772 -0.75698632
		 -0.4493435 0.50675118 -0.85493124 -0.58255625 0.47969848 -0.84401214 -0.56476474 0.44486347 -0.83174706
		 -0.44904643 0.45912582 -0.83978581 -0.29447171 0.54069597 -0.84879392 -0.33619827 0.49750739 -0.84189385
		 -0.4598549 0.43784198 -0.9044956 -0.55624658 0.43076363 -0.89550459 -0.54334301 0.41836607 -0.87010759
		 -0.46349025 0.42264506 -0.87339842 -0.35343459 0.43255165 -0.90424538 -0.36916247 0.42088962 -0.88119727
		 -0.4583815 0.37037101 -0.91581696 -0.5264495 0.38326001 -0.90818489 -0.51733756 0.37450531 -0.89025044
		 -0.46094865 0.35963944 -0.89385724 -0.3832317 0.38452262 -0.91388428 -0.39344516 0.37628737 -0.88911897
		 0.042624187 0.24477918 0.99030465 0.066086419 0.14299248 1.010414958 -0.047109213 0.24477918 0.99030465
		 -0.062753208 0.14299248 1.010414958 0.026773844 0.24351822 1.032540679 0.043387596 0.17774308 1.070169926
		 -0.030637613 0.24351822 1.032540679 -0.036574706 0.17774308 1.070169926 0.014021858 0.26777726 1.070598245
		 0.033253111 0.24481931 1.12040305 -0.030932514 0.26777726 1.070598245 -0.020924285 0.24481931 1.12040305
		 -0.020196252 0.31896159 1.07209909 -0.010907786 0.33609068 1.11242712 -0.056463137 0.31896159 1.07209909
		 -0.057846449 0.33609068 1.11242712 -0.043557901 0.34910306 1.050323844 -0.054944586 0.39271775 1.046138644
		 -0.084705926 0.34910306 1.050323844 -0.10080917 0.39271775 1.046138644 -0.060857445 0.32499158 1.043529749
		 -0.068828046 0.3274706 1.000009417534 -0.11285962 0.32499158 1.039607167 -0.12310369 0.3274706 0.995839
		 -0.081840254 0.30198234 1.066264749 -0.087445773 0.26759648 1.062258601 -0.11842836 0.30198234 1.05724144
		 -0.13406606 0.26759648 1.052213669 -0.084517486 0.31621704 1.10789633 -0.099080905 0.28883526 1.1212666
		 -0.11894573 0.31621704 1.098083973 -0.13658351 0.28883526 1.10963309 -0.087463796 0.33756056 1.12265432
		 -0.095338136 0.3364116 1.14526951 -0.11122961 0.33756056 1.12449205 -0.12189889 0.3364116 1.14728963
		 -0.082284085 0.38942945 1.11852825 -0.083434165 0.37474659 1.13509965 -0.10661197 0.38942945 1.12173176
		 -0.11006691 0.37474659 1.13921618 -0.07623338 0.40747344 1.15122592 -0.079411916 0.38937813 1.15369105
		 -0.096530408 0.40747344 1.15462017 -0.1021172 0.38937813 1.1580199 -0.07242202 0.38699242 1.17713809
		 -0.078740507 0.37908214 1.16752875 -0.087319024 0.38699242 1.18006945 -0.095396973 0.37908214 1.17096424
		 -0.076795362 0.35932457 1.1736114 -0.081358425 0.36268291 1.16544414 -0.087452181 0.35932457 1.1758678
		 -0.093294725 0.36268291 1.16797161 0.049878497 0.22769077 -0.85202384;
	setAttr ".vt[498:567]" -0.049878497 0.22769077 -0.85202384 -0.050285798 0.3077949 -0.79833031
		 0.050285798 0.3077949 -0.79833031 0.0075186365 0.32681647 -1.3375597 -0.0075186365 0.32681647 -1.3375597
		 -0.0075800298 0.34078807 -1.33390713 0.0075800298 0.34078807 -1.33390713 0.071441628 0.36304101 -0.8025254
		 -0.071441628 0.36304101 -0.8025254 0.058878455 0.31140339 -0.83293563 -0.058878455 0.31140339 -0.83293563
		 0.038535178 0.34389105 -0.85549414 -0.038535178 0.34389105 -0.85549414 0.031758692 0.31603804 -0.87189722
		 -0.031758692 0.31603804 -0.87189722 0.021245351 0.35993361 -0.87626517 -0.021245351 0.35993361 -0.87626517
		 0.017509313 0.34837991 -0.88983363 -0.017509313 0.34837991 -0.88983363 0.11165716 0.3177551 -0.84604937
		 0.094703935 0.2819289 -0.84589881 0.046926804 0.28480494 -0.84988451 0.056939792 0.32114556 -0.8516348
		 -0.11165716 0.3177551 -0.84604937 -0.094703935 0.2819289 -0.84589881 -0.056939792 0.32114556 -0.8516348
		 -0.046926804 0.28480494 -0.84988451 0.056485649 0.24334739 -0.85909581 0.052712526 0.24705954 -0.86805785
		 0.071502902 0.2441835 -0.87070405 -0.056485649 0.24334739 -0.85909581 -0.052712526 0.24705954 -0.86805785
		 -0.071502902 0.2441835 -0.87070405 -0.23457986 -0.012857769 -0.76439643 -0.24269882 -0.00045700057 -0.77883995
		 -0.27154168 0.011021893 -0.76220948 -0.2731415 -0.002073061 -0.7423746 -0.19561057 -0.0020731755 -0.78538322
		 -0.21345165 0.011021512 -0.79443461 -0.18922722 0.038266633 -0.7889232 -0.21054609 0.038118571 -0.79604578
		 -0.20245121 0.074811816 -0.78158736 -0.21990399 0.063980117 -0.79085404 -0.23437645 0.089948781 -0.76387787
		 -0.24249466 0.074690737 -0.77832222 -0.26630086 0.074810505 -0.7461682 -0.26508647 0.063978665 -0.76578981
		 -0.27952376 0.03826585 -0.73883319 -0.27444452 0.038117602 -0.76059878 -0.24667078 0.03800451 -0.78568959
		 -0.25979018 0.07352224 -0.7492801 -0.26825216 0.060608204 -0.74518579 -0.34122342 0.1046373 -0.80228418
		 -0.3029705 0.075061701 -0.77732629 -0.29521006 0.086905092 -0.78108126 -0.2639204 0.057816926 -0.74811119
		 -0.26778436 0.047016092 -0.74390662 -0.34421843 0.071241125 -0.77010679 -0.30420026 0.053663243 -0.76105714
		 -0.30065662 0.063568734 -0.76491308 0.25979018 0.07352224 -0.7492801 0.26825219 0.060608204 -0.74518579
		 0.34122333 0.1046373 -0.80228418 0.3029705 0.075061701 -0.77732629 0.29521003 0.086905092 -0.78108126
		 0.2639204 0.057816926 -0.74811119 0.26778436 0.047016092 -0.74390662 0.34421837 0.071241125 -0.77010679
		 0.30420029 0.053663243 -0.76105714 0.30065665 0.063568734 -0.76491308;
	setAttr -s 1136 ".ed";
	setAttr ".ed[0:165]"  0 1 1 2 1 1 3 2 1 3 0 0 4 5 1 1 5 1 0 4 0 6 7 1 5 7 1
		 4 6 0 8 9 1 7 9 1 6 8 0 10 11 1 9 11 1 8 10 0 12 13 1 11 13 1 10 12 0 14 15 1 13 15 1
		 12 14 0 15 2 1 14 3 0 1 16 1 2 16 1 5 16 1 7 16 1 9 16 1 11 16 1 13 16 1 15 16 1
		 17 18 1 19 20 1 20 41 1 21 22 1 23 24 1 24 37 1 17 36 1 18 35 1 19 34 1 20 33 1 25 29 1
		 26 30 1 25 26 1 27 31 1 27 28 1 28 39 1 29 24 1 30 23 1 29 30 1 31 22 1 32 21 1 31 32 1
		 32 38 1 33 25 1 34 26 1 33 34 1 35 27 1 36 28 1 35 36 1 36 40 1 37 21 1 38 29 1 37 38 1
		 39 25 1 38 39 1 40 33 1 39 40 1 41 17 1 40 41 1 23 42 1 42 43 1 43 44 1 44 45 1 45 46 1
		 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 22 52 1 45 73 1 46 74 1 44 72 1 53 51 1
		 54 50 1 53 54 1 54 48 1 21 51 1 55 56 1 56 57 1 57 58 1 58 59 1 59 60 1 60 61 1 61 62 1
		 62 55 1 63 64 1 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 63 1 55 63 1 56 64 1
		 57 65 1 58 66 1 59 67 1 60 68 1 61 69 1 62 70 1 63 71 1 64 71 1 65 71 1 66 71 1 67 71 1
		 68 71 1 69 71 1 70 71 1 72 53 1 73 54 1 72 73 1 74 48 1 73 74 1 37 76 1 21 75 1 53 75 1
		 75 76 1 76 77 1 55 78 1 56 79 1 78 79 1 57 80 1 79 80 1 58 81 1 80 81 1 59 82 1 81 82 1
		 60 83 1 82 83 1 61 84 1 83 84 1 62 85 1 84 85 1 85 78 1 44 81 1 53 79 1 72 80 1 76 85 1
		 75 78 1 43 82 1 42 77 1 83 42 1 84 77 1 19 86 1 86 94 1 87 88 1 88 89 1 89 93 1 18 90 1
		 41 92 1 20 91 1;
	setAttr ".ed[166:331]" 91 87 1 92 88 1 91 92 1 86 91 1 93 90 1 94 87 1 95 96 1
		 96 97 1 97 98 1 98 99 1 99 100 1 100 95 1 95 131 1 96 130 1 97 129 1 98 128 1 99 127 1
		 100 126 1 95 101 1 96 102 1 101 102 1 97 103 1 102 103 1 103 104 1 98 104 1 99 105 1
		 104 105 1 100 106 1 105 106 1 106 101 1 101 107 1 102 108 1 107 108 1 103 109 1 108 109 1
		 109 110 1 104 110 1 105 111 1 110 111 1 106 112 1 111 112 1 112 107 1 107 113 1 108 114 1
		 113 114 1 109 115 1 114 115 1 115 116 1 110 116 1 111 117 1 116 117 1 112 118 1 117 118 1
		 118 113 1 113 119 1 114 120 1 119 120 1 115 121 1 120 121 1 121 122 1 116 122 1 117 123 1
		 122 123 1 118 124 1 123 124 1 124 119 1 119 125 1 120 125 1 121 125 1 122 125 1 123 125 1
		 124 125 1 126 39 1 127 28 1 126 127 1 128 27 1 127 128 1 129 31 1 128 129 1 130 32 1
		 129 130 1 131 38 1 130 131 1 131 126 1 132 133 1 133 134 1 134 135 1 135 136 1 136 137 1
		 137 138 1 138 139 1 139 132 1 140 141 1 141 142 1 142 143 1 143 144 1 144 145 1 145 146 1
		 146 147 1 147 140 1 132 140 1 133 141 1 134 142 1 135 143 1 136 144 1 137 145 1 138 146 1
		 139 147 1 132 148 1 133 149 1 148 149 1 134 150 1 149 150 1 135 151 1 150 151 1 136 152 1
		 151 152 1 137 153 1 152 153 1 138 154 1 153 154 1 139 155 1 154 155 1 155 148 1 148 156 1
		 149 157 1 156 157 1 150 158 1 157 158 1 151 159 1 158 159 1 152 160 1 159 160 1 153 161 1
		 160 161 1 154 162 1 161 162 1 155 163 1 162 163 1 163 156 1 156 164 1 157 165 1 164 165 1
		 158 166 1 165 166 1 159 167 1 166 167 1 160 168 1 167 168 1 161 169 1 168 169 1 162 170 1
		 169 170 1 163 171 1 170 171 1 171 164 1 164 172 1 165 173 1 172 173 1 166 174 1 173 174 1
		 167 175 1 174 175 1 168 176 1 175 176 1 169 177 1;
	setAttr ".ed[332:497]" 176 177 1 170 178 1 177 178 1 171 179 1 178 179 1 179 172 1
		 172 180 1 173 181 1 180 181 1 174 182 1 181 182 1 175 183 1 182 183 1 176 184 1 183 184 1
		 177 185 1 184 185 1 178 186 1 185 186 1 179 187 1 186 187 1 187 180 1 180 188 1 181 188 1
		 182 188 1 183 188 1 184 188 1 185 188 1 186 188 1 187 188 1 140 41 1 141 17 1 142 18 1
		 143 90 1 144 93 1 145 89 1 146 88 1 147 92 1 24 189 1 37 190 1 189 190 1 76 191 1
		 190 191 1 77 192 1 191 192 1 23 193 1 42 194 1 193 194 1 193 189 1 194 192 1 189 195 1
		 190 196 1 195 196 1 191 197 1 196 197 1 192 198 1 197 198 1 193 199 1 194 200 1 199 200 1
		 199 195 1 200 198 1 195 201 1 196 202 1 201 202 1 197 203 1 202 203 1 198 204 1 203 204 1
		 199 205 1 200 206 1 205 206 1 205 201 1 206 204 1 201 207 1 202 208 1 207 208 1 203 209 1
		 208 209 1 204 210 1 209 210 1 205 211 1 206 212 1 211 212 1 211 207 1 212 210 1 207 213 1
		 208 214 1 213 214 1 209 215 1 214 215 1 210 216 1 215 216 1 211 217 1 212 218 1 217 218 1
		 217 213 1 218 216 1 213 219 1 214 220 1 219 220 1 215 221 1 220 221 1 216 222 1 221 222 1
		 217 223 1 218 224 1 223 224 1 223 219 1 224 222 1 219 225 1 220 226 1 225 226 1 221 227 1
		 226 227 1 222 228 1 227 228 1 225 228 1 223 229 1 224 230 1 229 230 1 229 225 1 230 228 1
		 231 232 1 232 18 1 233 234 1 234 255 1 235 236 1 236 22 1 237 238 1 238 251 1 231 250 1
		 232 249 1 233 248 1 234 247 1 239 243 1 240 244 1 239 240 1 240 26 1 241 245 1 241 242 1
		 242 253 1 243 238 1 244 237 1 243 244 1 244 30 1 245 236 1 246 235 1 245 246 1 246 252 1
		 247 239 1 248 240 1 247 248 1 248 34 1 249 241 1 250 242 1 249 250 1 250 254 1 251 235 1
		 252 243 1 251 252 1 253 239 1 252 253 1 254 247 1 253 254 1 255 231 1;
	setAttr ".ed[498:663]" 254 255 1 23 237 1 19 233 1 31 245 1 27 241 1 35 249 1
		 237 256 1 42 256 1 256 257 1 43 257 1 257 258 1 44 258 1 258 259 1 45 259 1 259 260 1
		 46 260 1 260 261 1 47 261 1 261 262 1 48 262 1 262 263 1 49 263 1 263 264 1 50 264 1
		 264 265 1 51 265 1 265 266 1 52 266 1 236 266 1 259 287 1 260 288 1 258 286 1 267 265 1
		 268 264 1 267 268 1 268 262 1 235 265 1 269 270 1 270 271 1 271 272 1 272 273 1 273 274 1
		 274 275 1 275 276 1 276 269 1 277 278 1 278 279 1 279 280 1 280 281 1 281 282 1 282 283 1
		 283 284 1 284 277 1 269 277 1 270 278 1 271 279 1 272 280 1 273 281 1 274 282 1 275 283 1
		 276 284 1 277 285 1 278 285 1 279 285 1 280 285 1 281 285 1 282 285 1 283 285 1 284 285 1
		 286 267 1 287 268 1 286 287 1 288 262 1 287 288 1 251 290 1 235 289 1 267 289 1 289 290 1
		 290 291 1 269 292 1 270 293 1 292 293 1 271 294 1 293 294 1 272 295 1 294 295 1 273 296 1
		 295 296 1 274 297 1 296 297 1 275 298 1 297 298 1 276 299 1 298 299 1 299 292 1 258 295 1
		 267 293 1 286 294 1 290 299 1 289 292 1 257 296 1 256 291 1 297 256 1 298 291 1 233 300 1
		 86 300 1 300 308 1 87 301 1 301 302 1 88 302 1 302 303 1 89 303 1 303 307 1 90 304 1
		 232 304 1 255 306 1 234 305 1 305 301 1 306 302 1 305 306 1 300 305 1 307 304 1 307 93 1
		 308 301 1 94 308 1 309 310 1 310 311 1 311 312 1 312 313 1 313 314 1 314 309 1 309 345 1
		 310 344 1 311 343 1 312 342 1 313 341 1 314 340 1 309 315 1 310 316 1 315 316 1 311 317 1
		 316 317 1 317 318 1 312 318 1 313 319 1 318 319 1 314 320 1 319 320 1 320 315 1 315 321 1
		 316 322 1 321 322 1 317 323 1 322 323 1 323 324 1 318 324 1 319 325 1 324 325 1 320 326 1
		 325 326 1 326 321 1 321 327 1 322 328 1 327 328 1 323 329 1 328 329 1;
	setAttr ".ed[664:829]" 329 330 1 324 330 1 325 331 1 330 331 1 326 332 1 331 332 1
		 332 327 1 327 333 1 328 334 1 333 334 1 329 335 1 334 335 1 335 336 1 330 336 1 331 337 1
		 336 337 1 332 338 1 337 338 1 338 333 1 333 339 1 334 339 1 335 339 1 336 339 1 337 339 1
		 338 339 1 340 253 1 341 242 1 340 341 1 342 241 1 341 342 1 343 245 1 342 343 1 344 246 1
		 343 344 1 345 252 1 344 345 1 345 340 1 346 347 1 347 348 1 348 349 1 349 350 1 350 351 1
		 351 352 1 352 353 1 353 346 1 354 355 1 355 356 1 356 357 1 357 358 1 358 359 1 359 360 1
		 360 361 1 361 354 1 346 354 1 347 355 1 348 356 1 349 357 1 350 358 1 351 359 1 352 360 1
		 353 361 1 346 362 1 347 363 1 362 363 1 348 364 1 363 364 1 349 365 1 364 365 1 350 366 1
		 365 366 1 351 367 1 366 367 1 352 368 1 367 368 1 353 369 1 368 369 1 369 362 1 362 370 1
		 363 371 1 370 371 1 364 372 1 371 372 1 365 373 1 372 373 1 366 374 1 373 374 1 367 375 1
		 374 375 1 368 376 1 375 376 1 369 377 1 376 377 1 377 370 1 370 378 1 371 379 1 378 379 1
		 372 380 1 379 380 1 373 381 1 380 381 1 374 382 1 381 382 1 375 383 1 382 383 1 376 384 1
		 383 384 1 377 385 1 384 385 1 385 378 1 378 386 1 379 387 1 386 387 1 380 388 1 387 388 1
		 381 389 1 388 389 1 382 390 1 389 390 1 383 391 1 390 391 1 384 392 1 391 392 1 385 393 1
		 392 393 1 393 386 1 386 394 1 387 395 1 394 395 1 388 396 1 395 396 1 389 397 1 396 397 1
		 390 398 1 397 398 1 391 399 1 398 399 1 392 400 1 399 400 1 393 401 1 400 401 1 401 394 1
		 394 402 1 395 402 1 396 402 1 397 402 1 398 402 1 399 402 1 400 402 1 401 402 1 354 255 1
		 355 231 1 356 232 1 357 304 1 358 307 1 359 303 1 360 302 1 361 306 1 238 403 1 251 404 1
		 403 404 1 290 405 1 404 405 1 291 406 1 405 406 1 237 407 1 256 408 1;
	setAttr ".ed[830:995]" 407 408 1 407 403 1 408 406 1 403 409 1 404 410 1 409 410 1
		 405 411 1 410 411 1 406 412 1 411 412 1 407 413 1 408 414 1 413 414 1 413 409 1 414 412 1
		 409 415 1 410 416 1 415 416 1 411 417 1 416 417 1 412 418 1 417 418 1 413 419 1 414 420 1
		 419 420 1 419 415 1 420 418 1 415 421 1 416 422 1 421 422 1 417 423 1 422 423 1 418 424 1
		 423 424 1 419 425 1 420 426 1 425 426 1 425 421 1 426 424 1 421 427 1 422 428 1 427 428 1
		 423 429 1 428 429 1 424 430 1 429 430 1 425 431 1 426 432 1 431 432 1 431 427 1 432 430 1
		 427 433 1 428 434 1 433 434 1 429 435 1 434 435 1 430 436 1 435 436 1 431 437 1 432 438 1
		 437 438 1 437 433 1 438 436 1 433 439 1 434 440 1 439 440 1 435 441 1 440 441 1 436 442 1
		 441 442 1 439 442 1 437 443 1 438 444 1 443 444 1 443 439 1 444 442 1 94 445 1 87 446 1
		 445 446 1 308 447 1 445 447 1 301 448 1 447 448 1 446 448 1 445 449 1 446 450 1 449 450 1
		 447 451 1 449 451 1 448 452 1 451 452 1 450 452 1 449 453 1 450 454 1 453 454 1 451 455 1
		 453 455 1 452 456 1 455 456 1 454 456 1 453 457 1 454 458 1 457 458 1 455 459 1 457 459 1
		 456 460 1 459 460 1 458 460 1 457 461 1 458 462 1 461 462 1 459 463 1 461 463 1 460 464 1
		 463 464 1 462 464 1 461 465 1 462 466 1 465 466 1 463 467 1 465 467 1 464 468 1 467 468 1
		 466 468 1 465 469 1 466 470 1 469 470 1 467 471 1 469 471 1 468 472 1 471 472 1 470 472 1
		 469 473 1 470 474 1 473 474 1 471 475 1 473 475 1 472 476 1 475 476 1 474 476 1 473 477 1
		 474 478 1 477 478 1 475 479 1 477 479 1 476 480 1 479 480 1 478 480 1 477 481 1 478 482 1
		 481 482 1 479 483 1 481 483 1 480 484 1 483 484 1 482 484 1 481 485 1 482 486 1 485 486 1
		 483 487 1 485 487 1 484 488 1 487 488 1 486 488 1 485 489 1 486 490 1;
	setAttr ".ed[996:1135]" 489 490 1 487 491 1 489 491 1 488 492 1 491 492 1 490 492 1
		 489 493 1 490 494 1 493 494 1 491 495 1 493 495 1 492 496 1 495 496 1 494 496 1 43 497 1
		 257 498 1 497 498 1 256 499 1 499 498 1 42 500 1 500 499 1 500 497 1 497 501 1 498 502 1
		 501 502 1 499 503 1 503 502 1 500 504 1 504 503 1 504 501 1 42 505 1 256 506 1 505 506 1
		 500 507 1 505 507 1 499 508 1 507 508 1 506 508 1 505 509 1 506 510 1 509 510 1 507 511 1
		 509 511 1 508 512 1 511 512 1 510 512 1 509 513 1 510 514 1 513 514 1 511 515 1 513 515 1
		 512 516 1 515 516 1 514 516 1 42 517 1 500 518 1 517 518 1 507 519 1 518 519 1 505 520 1
		 520 519 1 517 520 1 256 521 1 499 522 1 521 522 1 506 523 1 521 523 1 508 524 1 523 524 1
		 522 524 1 499 524 1 500 519 1 500 525 1 519 526 1 525 526 1 518 527 1 527 526 1 525 527 1
		 499 528 1 524 529 1 528 529 1 522 530 1 528 530 1 530 529 1 531 532 1 533 532 1 534 533 1
		 534 531 0 535 536 1 532 536 1 531 535 0 537 538 1 536 538 1 535 537 0 539 540 1 538 540 1
		 537 539 0 541 542 1 540 542 1 539 541 0 543 544 1 542 544 1 541 543 0 545 546 1 544 546 1
		 543 545 0 546 533 1 545 534 0 532 547 1 533 547 1 536 547 1 538 547 1 540 547 1 542 547 1
		 544 547 1 546 547 1 548 549 0 548 552 0 549 551 0 551 550 0 552 550 0 551 552 1 553 554 0
		 553 557 0 554 556 0 556 555 0 557 555 0 556 557 1 558 559 0 558 562 0 559 561 0 561 560 0
		 562 560 0 561 562 1 563 564 0 563 567 0 564 566 0 566 565 0 567 565 0 566 567 1;
	setAttr -s 576 -ch 2236 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 0 -2 -3 3
		mu 0 4 0 1 2 3
		f 4 4 -6 -1 6
		mu 0 4 4 5 1 0
		f 4 7 -9 -5 9
		mu 0 4 6 7 5 4
		f 4 10 -12 -8 12
		mu 0 4 8 9 7 6
		f 4 13 -15 -11 15
		mu 0 4 10 11 9 8
		f 4 16 -18 -14 18
		mu 0 4 12 13 11 10
		f 4 19 -21 -17 21
		mu 0 4 14 15 13 12
		f 4 2 -23 -20 23
		mu 0 4 16 17 15 14
		f 3 24 -26 1
		mu 0 3 1 18 2
		f 3 26 -25 5
		mu 0 3 5 19 1
		f 3 27 -27 8
		mu 0 3 7 20 5
		f 3 28 -28 11
		mu 0 3 9 21 7
		f 3 29 -29 14
		mu 0 3 11 22 9
		f 3 30 -30 17
		mu 0 3 13 23 11
		f 3 31 -31 20
		mu 0 3 15 24 13
		f 3 25 -32 22
		mu 0 3 17 25 15
		f 4 32 39 60 -39
		mu 0 4 26 27 28 29
		f 4 40 -486 -466 -501
		mu 0 4 30 31 32 33
		f 4 33 41 57 -41
		mu 0 4 30 34 35 31
		f 4 69 38 61 70
		mu 0 4 36 26 37 38
		f 4 -45 42 50 -44
		mu 0 4 39 40 41 42
		f 4 43 -478 -469 470
		mu 0 4 39 42 43 44
		f 4 -51 48 -37 -50
		mu 0 4 42 41 45 46
		f 4 49 499 -476 477
		mu 0 4 42 46 47 43
		f 4 -54 51 -36 -53
		mu 0 4 48 49 50 51
		f 4 -55 52 -63 64
		mu 0 4 52 53 54 55
		f 4 -58 55 44 -57
		mu 0 4 31 35 40 39
		f 4 56 -471 -484 485
		mu 0 4 31 39 44 32
		f 4 -61 58 46 -60
		mu 0 4 29 28 56 57
		f 4 -62 59 47 68
		mu 0 4 38 37 58 59
		f 4 -64 -65 -38 -49
		mu 0 4 41 52 55 45
		f 4 -66 -67 63 -43
		mu 0 4 40 59 52 41
		f 4 -68 -69 65 -56
		mu 0 4 35 38 59 40
		f 4 34 -71 67 -42
		mu 0 4 34 36 38 35
		f 4 -83 -461 526 -526
		mu 0 4 60 50 61 62
		f 4 -76 83 127 -85
		mu 0 4 63 64 65 66
		f 4 -75 85 125 -84
		mu 0 4 64 67 68 65
		f 4 -89 86 -81 -88
		mu 0 4 69 70 71 72
		f 4 -90 87 -80 -79
		mu 0 4 73 69 72 74
		f 4 82 -82 -91 35
		mu 0 4 50 60 71 51
		f 4 108 -100 -108 91
		mu 0 4 75 76 77 78
		f 4 109 -101 -109 92
		mu 0 4 79 80 76 75
		f 4 110 -102 -110 93
		mu 0 4 81 82 80 79
		f 4 111 -103 -111 94
		mu 0 4 83 84 82 81
		f 4 112 -104 -112 95
		mu 0 4 85 86 84 83
		f 4 113 -105 -113 96
		mu 0 4 87 88 86 85
		f 4 114 -106 -114 97
		mu 0 4 89 90 88 87
		f 4 107 -107 -115 98
		mu 0 4 91 92 90 89
		f 3 116 -116 99
		mu 0 3 76 93 77
		f 3 117 -117 100
		mu 0 3 80 94 76
		f 3 118 -118 101
		mu 0 3 82 95 80
		f 3 119 -119 102
		mu 0 3 84 96 82
		f 3 120 -120 103
		mu 0 3 86 97 84
		f 3 121 -121 104
		mu 0 3 88 98 86
		f 3 122 -122 105
		mu 0 3 90 99 88
		f 3 115 -123 106
		mu 0 3 92 100 90
		f 4 -126 123 88 -125
		mu 0 4 65 68 70 69
		f 4 -128 124 89 -127
		mu 0 4 66 65 69 73
		f 4 -77 84 126 -78
		mu 0 4 101 63 66 102
		f 4 62 129 131 -129
		mu 0 4 55 54 103 104
		f 4 90 -87 130 -130
		mu 0 4 51 71 70 105
		f 4 444 446 448 -450
		mu 0 4 106 107 108 109
		f 4 -92 133 135 -135
		mu 0 4 110 111 112 113
		f 4 -93 134 137 -137
		mu 0 4 114 115 113 116
		f 4 -94 136 139 -139
		mu 0 4 117 118 119 120
		f 4 -95 138 141 -141
		mu 0 4 121 122 120 123
		f 4 -96 140 143 -143
		mu 0 4 124 125 126 127
		f 4 -97 142 145 -145
		mu 0 4 128 129 130 131
		f 4 -98 144 147 -147
		mu 0 4 132 133 134 135
		f 4 -99 146 148 -134
		mu 0 4 136 137 138 139
		f 4 -124 151 -138 -151
		mu 0 4 70 68 116 113
		f 4 -86 149 -140 -152
		mu 0 4 68 67 120 119
		f 4 -132 153 -149 -153
		mu 0 4 104 103 139 138
		f 4 -131 150 -136 -154
		mu 0 4 105 70 113 112
		f 4 -74 154 -142 -150
		mu 0 4 67 140 123 120
		f 4 -453 453 449 -455
		mu 0 4 141 142 106 109
		f 4 -146 156 155 -158
		mu 0 4 131 130 143 144
		f 4 -73 -157 -144 -155
		mu 0 4 140 143 127 123
		f 4 -133 152 -148 157
		mu 0 4 144 104 135 131
		f 4 -159 500 602 -604
		mu 0 4 145 30 33 146
		f 4 -160 603 604 -623
		mu 0 4 147 148 149 150
		f 4 -161 605 606 -608
		mu 0 4 151 152 153 154
		f 4 -162 607 608 -610
		mu 0 4 155 151 154 156
		f 4 -171 -621 619 -612
		mu 0 4 157 158 159 160
		f 4 -35 165 168 -165
		mu 0 4 36 34 161 162
		f 4 -169 166 160 -168
		mu 0 4 162 161 152 151
		f 4 158 169 -166 -34
		mu 0 4 30 145 161 34
		f 4 -163 609 610 620
		mu 0 4 158 163 164 159
		f 4 -1005 1006 1008 -1010
		mu 0 4 165 166 167 168
		f 4 171 -167 -170 159
		mu 0 4 147 152 161 148
		f 4 172 179 248 -179
		mu 0 4 169 170 171 172
		f 4 173 180 246 -180
		mu 0 4 170 173 174 171
		f 4 244 -181 174 181
		mu 0 4 175 174 173 176
		f 4 175 182 242 -182
		mu 0 4 176 177 178 175
		f 4 176 183 240 -183
		mu 0 4 177 179 180 178
		f 4 249 -184 177 178
		mu 0 4 181 180 179 182
		f 4 -173 184 186 -186
		mu 0 4 183 184 185 186
		f 4 -174 185 188 -188
		mu 0 4 187 188 189 190
		f 4 -191 -175 187 189
		mu 0 4 191 192 193 194
		f 4 -176 190 192 -192
		mu 0 4 195 196 197 198
		f 4 -177 191 194 -194
		mu 0 4 199 200 201 202
		f 4 -185 -178 193 195
		mu 0 4 203 204 205 206
		f 4 -187 196 198 -198
		mu 0 4 207 208 209 210
		f 4 -189 197 200 -200
		mu 0 4 211 212 213 214
		f 4 -203 -190 199 201
		mu 0 4 215 216 217 218
		f 4 -193 202 204 -204
		mu 0 4 219 220 221 222
		f 4 -195 203 206 -206
		mu 0 4 223 224 225 226
		f 4 -197 -196 205 207
		mu 0 4 227 228 229 230
		f 4 -199 208 210 -210
		mu 0 4 231 232 233 234
		f 4 -201 209 212 -212
		mu 0 4 235 236 237 238
		f 4 -215 -202 211 213
		mu 0 4 239 240 241 242
		f 4 -205 214 216 -216
		mu 0 4 243 244 245 246
		f 4 -207 215 218 -218
		mu 0 4 247 248 249 250
		f 4 -209 -208 217 219
		mu 0 4 251 252 253 254
		f 4 -211 220 222 -222
		mu 0 4 255 256 257 258
		f 4 -213 221 224 -224
		mu 0 4 259 260 261 262
		f 4 -227 -214 223 225
		mu 0 4 263 264 265 266
		f 4 -217 226 228 -228
		mu 0 4 267 268 269 270
		f 4 -219 227 230 -230
		mu 0 4 271 272 273 274
		f 4 -221 -220 229 231
		mu 0 4 275 276 277 278
		f 3 -223 232 -234
		mu 0 3 279 280 281
		f 3 -225 233 -235
		mu 0 3 282 283 284
		f 3 -236 -226 234
		mu 0 3 285 286 287
		f 3 -229 235 -237
		mu 0 3 288 289 290
		f 3 -231 236 -238
		mu 0 3 291 292 293
		f 3 -233 -232 237
		mu 0 3 294 295 296
		f 4 -241 238 -48 -240
		mu 0 4 178 180 297 298
		f 4 -243 239 -47 -242
		mu 0 4 175 178 298 299
		f 4 45 -244 -245 241
		mu 0 4 299 300 174 175
		f 4 -247 243 53 -246
		mu 0 4 171 174 300 301
		f 4 -249 245 54 -248
		mu 0 4 172 171 301 302
		f 4 66 -239 -250 247
		mu 0 4 303 297 180 181
		f 4 250 267 -259 -267
		mu 0 4 304 305 306 307
		f 4 251 268 -260 -268
		mu 0 4 305 308 309 306
		f 4 252 269 -261 -269
		mu 0 4 308 310 311 309
		f 4 253 270 -262 -270
		mu 0 4 310 312 313 311
		f 4 254 271 -263 -271
		mu 0 4 312 314 315 313
		f 4 255 272 -264 -272
		mu 0 4 314 316 317 315
		f 4 256 273 -265 -273
		mu 0 4 316 318 319 317
		f 4 257 266 -266 -274
		mu 0 4 318 320 321 319
		f 4 -251 274 276 -276
		mu 0 4 322 323 324 325
		f 4 -252 275 278 -278
		mu 0 4 326 327 328 329
		f 4 -253 277 280 -280
		mu 0 4 330 331 332 333
		f 4 -254 279 282 -282
		mu 0 4 334 335 336 337
		f 4 -255 281 284 -284
		mu 0 4 338 339 340 341
		f 4 -256 283 286 -286
		mu 0 4 342 343 344 345
		f 4 -257 285 288 -288
		mu 0 4 346 347 348 349
		f 4 -258 287 289 -275
		mu 0 4 350 351 352 353
		f 4 -277 290 292 -292
		mu 0 4 354 355 356 357
		f 4 -279 291 294 -294
		mu 0 4 358 359 360 361
		f 4 -281 293 296 -296
		mu 0 4 362 363 364 365
		f 4 -283 295 298 -298
		mu 0 4 366 367 368 369
		f 4 -285 297 300 -300
		mu 0 4 370 371 372 373
		f 4 -287 299 302 -302
		mu 0 4 374 375 376 377
		f 4 -289 301 304 -304
		mu 0 4 378 379 380 381
		f 4 -290 303 305 -291
		mu 0 4 382 383 384 385
		f 4 -293 306 308 -308
		mu 0 4 386 387 388 389
		f 4 -295 307 310 -310
		mu 0 4 390 391 392 393
		f 4 -297 309 312 -312
		mu 0 4 394 395 396 397
		f 4 -299 311 314 -314
		mu 0 4 398 399 400 401
		f 4 -301 313 316 -316
		mu 0 4 402 403 404 405
		f 4 -303 315 318 -318
		mu 0 4 406 407 408 409
		f 4 -305 317 320 -320
		mu 0 4 410 411 412 413
		f 4 -306 319 321 -307
		mu 0 4 414 415 416 417
		f 4 -309 322 324 -324
		mu 0 4 418 419 420 421
		f 4 -311 323 326 -326
		mu 0 4 422 423 424 425
		f 4 -313 325 328 -328
		mu 0 4 426 427 428 429
		f 4 -315 327 330 -330
		mu 0 4 430 431 432 433
		f 4 -317 329 332 -332
		mu 0 4 434 435 436 437
		f 4 -319 331 334 -334
		mu 0 4 438 439 440 441
		f 4 -321 333 336 -336
		mu 0 4 442 443 444 445
		f 4 -322 335 337 -323
		mu 0 4 446 447 448 449
		f 4 -325 338 340 -340
		mu 0 4 450 451 452 453
		f 4 -327 339 342 -342
		mu 0 4 454 455 456 457
		f 4 -329 341 344 -344
		mu 0 4 458 459 460 461
		f 4 -331 343 346 -346
		mu 0 4 462 463 464 465
		f 4 -333 345 348 -348
		mu 0 4 466 467 468 469
		f 4 -335 347 350 -350
		mu 0 4 470 471 472 473
		f 4 -337 349 352 -352
		mu 0 4 474 475 476 477
		f 4 -338 351 353 -339
		mu 0 4 478 479 480 481
		f 3 -341 354 -356
		mu 0 3 482 483 484
		f 3 -343 355 -357
		mu 0 3 485 486 487
		f 3 -345 356 -358
		mu 0 3 488 489 490
		f 3 -347 357 -359
		mu 0 3 491 492 493
		f 3 -349 358 -360
		mu 0 3 494 495 496
		f 3 -351 359 -361
		mu 0 3 497 498 499
		f 3 -353 360 -362
		mu 0 3 500 501 502
		f 3 -354 361 -355
		mu 0 3 503 504 505
		f 4 258 363 -70 -363
		mu 0 4 506 507 508 509
		f 4 259 364 -33 -364
		mu 0 4 510 511 512 513
		f 4 260 365 -164 -365
		mu 0 4 514 515 516 517
		f 4 261 366 170 -366
		mu 0 4 518 519 520 521
		f 4 262 367 162 -367
		mu 0 4 522 523 524 525
		f 4 263 368 161 -368
		mu 0 4 526 527 528 529
		f 4 264 369 167 -369
		mu 0 4 530 531 532 533
		f 4 265 362 164 -370
		mu 0 4 534 535 536 537
		f 4 37 371 -373 -371
		mu 0 4 45 55 538 539
		f 4 128 373 -375 -372
		mu 0 4 55 104 540 538
		f 4 132 375 -377 -374
		mu 0 4 104 144 541 540
		f 4 -72 377 379 -379
		mu 0 4 143 46 542 543
		f 4 36 370 -381 -378
		mu 0 4 46 45 539 542
		f 4 -156 378 381 -376
		mu 0 4 144 143 543 541
		f 4 372 383 -385 -383
		mu 0 4 539 538 544 545
		f 4 374 385 -387 -384
		mu 0 4 538 540 546 544
		f 4 376 387 -389 -386
		mu 0 4 540 541 547 546
		f 4 -380 389 391 -391
		mu 0 4 543 542 548 549
		f 4 380 382 -393 -390
		mu 0 4 542 539 545 548
		f 4 -382 390 393 -388
		mu 0 4 541 543 549 547
		f 4 384 395 -397 -395
		mu 0 4 545 544 550 551
		f 4 386 397 -399 -396
		mu 0 4 544 546 552 550
		f 4 388 399 -401 -398
		mu 0 4 546 547 553 552
		f 4 -392 401 403 -403
		mu 0 4 549 548 554 555
		f 4 392 394 -405 -402
		mu 0 4 548 545 551 554
		f 4 -394 402 405 -400
		mu 0 4 547 549 555 553
		f 4 396 407 -409 -407
		mu 0 4 551 550 556 557
		f 4 398 409 -411 -408
		mu 0 4 550 552 558 556
		f 4 400 411 -413 -410
		mu 0 4 552 553 559 558
		f 4 -404 413 415 -415
		mu 0 4 555 554 560 561
		f 4 404 406 -417 -414
		mu 0 4 554 551 557 560
		f 4 -406 414 417 -412
		mu 0 4 553 555 561 559
		f 4 408 419 -421 -419
		mu 0 4 557 556 562 563
		f 4 410 421 -423 -420
		mu 0 4 556 558 564 562
		f 4 412 423 -425 -422
		mu 0 4 558 559 565 564
		f 4 -416 425 427 -427
		mu 0 4 561 560 566 567
		f 4 416 418 -429 -426
		mu 0 4 560 557 563 566
		f 4 -418 426 429 -424
		mu 0 4 559 561 567 565
		f 4 420 431 -433 -431
		mu 0 4 563 562 568 569
		f 4 422 433 -435 -432
		mu 0 4 562 564 570 568
		f 4 424 435 -437 -434
		mu 0 4 564 565 571 570
		f 4 -428 437 439 -439
		mu 0 4 567 566 572 573
		f 4 428 430 -441 -438
		mu 0 4 566 563 569 572
		f 4 -430 438 441 -436
		mu 0 4 565 567 573 571
		f 4 432 443 -445 -443
		mu 0 4 569 568 107 106
		f 4 434 445 -447 -444
		mu 0 4 568 570 108 107
		f 4 436 447 -449 -446
		mu 0 4 570 571 109 108
		f 4 -440 450 452 -452
		mu 0 4 573 572 142 141
		f 4 440 442 -454 -451
		mu 0 4 572 569 106 142
		f 4 -442 451 454 -448
		mu 0 4 571 573 141 109
		f 4 463 -489 -465 -456
		mu 0 4 574 575 576 577
		f 4 465 -485 -467 -458
		mu 0 4 33 32 578 579
		f 4 -499 -490 -464 -498
		mu 0 4 580 581 582 574
		f 4 468 -477 -468 469
		mu 0 4 44 43 583 584
		f 4 475 461 -475 476
		mu 0 4 43 47 585 583
		f 4 479 459 -479 480
		mu 0 4 586 587 61 588
		f 4 -493 490 -480 481
		mu 0 4 589 590 591 592
		f 4 483 -470 -483 484
		mu 0 4 32 44 584 578
		f 4 487 -473 -487 488
		mu 0 4 575 593 594 576
		f 4 -497 -474 -488 489
		mu 0 4 581 595 596 582
		f 4 474 462 492 491
		mu 0 4 583 585 590 589
		f 4 467 -492 494 493
		mu 0 4 584 583 589 595
		f 4 482 -494 496 495
		mu 0 4 578 584 595 581
		f 4 466 -496 498 -459
		mu 0 4 579 578 581 580
		f 4 501 478 460 -52
		mu 0 4 49 588 61 50
		f 4 502 471 -502 -46
		mu 0 4 56 594 588 49
		f 4 503 486 -503 -59
		mu 0 4 28 576 594 56
		f 4 -457 464 -504 -40
		mu 0 4 27 577 576 28
		f 4 505 -505 -500 71
		mu 0 4 143 597 47 46
		f 4 1020 -1023 -1025 1025
		mu 0 4 598 599 600 601
		f 4 509 -509 -508 73
		mu 0 4 67 602 603 140
		f 4 511 -511 -510 74
		mu 0 4 64 604 602 67
		f 4 513 -513 -512 75
		mu 0 4 63 605 604 64
		f 4 515 -515 -514 76
		mu 0 4 101 606 607 608
		f 4 517 -517 -516 77
		mu 0 4 102 609 610 611
		f 4 519 -519 -518 78
		mu 0 4 612 613 614 615
		f 4 521 -521 -520 79
		mu 0 4 72 616 617 74
		f 4 523 -523 -522 80
		mu 0 4 71 618 616 72
		f 4 525 -525 -524 81
		mu 0 4 60 62 619 620
		f 4 528 -572 -528 512
		mu 0 4 605 621 622 604
		f 4 527 -570 -530 510
		mu 0 4 604 622 623 602
		f 4 531 522 -531 532
		mu 0 4 624 616 618 625
		f 4 518 520 -532 533
		mu 0 4 626 617 616 624
		f 4 -460 534 524 -527
		mu 0 4 61 587 618 62
		f 4 -536 551 543 -553
		mu 0 4 627 628 629 630
		f 4 -537 552 544 -554
		mu 0 4 631 627 630 632
		f 4 -538 553 545 -555
		mu 0 4 633 631 632 634
		f 4 -539 554 546 -556
		mu 0 4 635 633 634 636
		f 4 -540 555 547 -557
		mu 0 4 637 635 636 638
		f 4 -541 556 548 -558
		mu 0 4 639 637 638 640
		f 4 -542 557 549 -559
		mu 0 4 641 639 640 642
		f 4 -543 558 550 -552
		mu 0 4 643 641 642 644
		f 3 -544 559 -561
		mu 0 3 630 629 645
		f 3 -545 560 -562
		mu 0 3 632 630 646
		f 3 -546 561 -563
		mu 0 3 634 632 647
		f 3 -547 562 -564
		mu 0 3 636 634 648
		f 3 -548 563 -565
		mu 0 3 638 636 649
		f 3 -549 564 -566
		mu 0 3 640 638 650
		f 3 -550 565 -567
		mu 0 3 642 640 651
		f 3 -551 566 -560
		mu 0 3 644 642 652
		f 4 568 -533 -568 569
		mu 0 4 622 624 625 623
		f 4 570 -534 -569 571
		mu 0 4 621 626 624 622
		f 4 516 -571 -529 514
		mu 0 4 606 609 621 605
		f 4 572 -576 -574 -491
		mu 0 4 590 653 654 591
		f 4 573 -575 530 -535
		mu 0 4 587 655 625 618
		f 4 900 -900 -898 -896
		mu 0 4 656 657 658 659
		f 4 578 -580 -578 535
		mu 0 4 660 661 662 663
		f 4 580 -582 -579 536
		mu 0 4 664 665 661 666
		f 4 582 -584 -581 537
		mu 0 4 667 668 669 670
		f 4 584 -586 -583 538
		mu 0 4 671 672 668 673
		f 4 586 -588 -585 539
		mu 0 4 674 675 676 677
		f 4 588 -590 -587 540
		mu 0 4 678 679 680 681
		f 4 590 -592 -589 541
		mu 0 4 682 683 684 685
		f 4 577 -593 -591 542
		mu 0 4 686 687 688 689
		f 4 594 581 -596 567
		mu 0 4 625 661 665 623
		f 4 595 583 -594 529
		mu 0 4 623 669 668 602
		f 4 596 592 -598 575
		mu 0 4 653 688 687 654
		f 4 597 579 -595 574
		mu 0 4 655 662 661 625
		f 4 593 585 -599 508
		mu 0 4 602 668 672 603
		f 4 905 -901 -905 903
		mu 0 4 690 657 656 691
		f 4 601 -600 -601 589
		mu 0 4 679 692 597 680
		f 4 598 587 600 506
		mu 0 4 603 672 675 597
		f 4 -602 591 -597 576
		mu 0 4 692 679 683 653
		f 4 611 -613 456 163
		mu 0 4 157 160 577 27
		f 4 613 -618 -615 458
		mu 0 4 580 693 694 579
		f 4 616 -607 -616 617
		mu 0 4 693 154 153 694
		f 4 457 614 -619 -603
		mu 0 4 33 579 694 146
		f 4 -605 618 615 -622
		mu 0 4 150 149 694 153
		f 4 629 -700 -631 -624
		mu 0 4 695 696 697 698
		f 4 630 -698 -632 -625
		mu 0 4 698 697 699 700
		f 4 -633 -626 631 -696
		mu 0 4 701 702 700 699
		f 4 632 -694 -634 -627
		mu 0 4 702 701 703 704
		f 4 633 -692 -635 -628
		mu 0 4 704 703 705 706
		f 4 -630 -629 634 -701
		mu 0 4 707 708 706 705
		f 4 636 -638 -636 623
		mu 0 4 709 710 711 712
		f 4 638 -640 -637 624
		mu 0 4 713 714 715 716
		f 4 -641 -639 625 641
		mu 0 4 717 718 719 720
		f 4 642 -644 -642 626
		mu 0 4 721 722 723 724
		f 4 644 -646 -643 627
		mu 0 4 725 726 727 728
		f 4 -647 -645 628 635
		mu 0 4 729 730 731 732
		f 4 648 -650 -648 637
		mu 0 4 733 734 735 736
		f 4 650 -652 -649 639
		mu 0 4 737 738 739 740
		f 4 -653 -651 640 653
		mu 0 4 741 742 743 744
		f 4 654 -656 -654 643
		mu 0 4 745 746 747 748
		f 4 656 -658 -655 645
		mu 0 4 749 750 751 752
		f 4 -659 -657 646 647
		mu 0 4 753 754 755 756
		f 4 660 -662 -660 649
		mu 0 4 757 758 759 760
		f 4 662 -664 -661 651
		mu 0 4 761 762 763 764
		f 4 -665 -663 652 665
		mu 0 4 765 766 767 768
		f 4 666 -668 -666 655
		mu 0 4 769 770 771 772
		f 4 668 -670 -667 657
		mu 0 4 773 774 775 776
		f 4 -671 -669 658 659
		mu 0 4 777 778 779 780
		f 4 672 -674 -672 661
		mu 0 4 781 782 783 784
		f 4 674 -676 -673 663
		mu 0 4 785 786 787 788
		f 4 -677 -675 664 677
		mu 0 4 789 790 791 792
		f 4 678 -680 -678 667
		mu 0 4 793 794 795 796
		f 4 680 -682 -679 669
		mu 0 4 797 798 799 800
		f 4 -683 -681 670 671
		mu 0 4 801 802 803 804
		f 3 684 -684 673
		mu 0 3 805 806 807
		f 3 685 -685 675
		mu 0 3 808 809 810
		f 3 -686 676 686
		mu 0 3 811 812 813
		f 3 687 -687 679
		mu 0 3 814 815 816
		f 3 688 -688 681
		mu 0 3 817 818 819
		f 3 -689 682 683
		mu 0 3 820 821 822
		f 4 690 473 -690 691
		mu 0 4 703 823 824 705
		f 4 692 472 -691 693
		mu 0 4 701 825 823 703
		f 4 -693 695 694 -472
		mu 0 4 825 701 699 826
		f 4 696 -481 -695 697
		mu 0 4 697 827 826 699
		f 4 698 -482 -697 699
		mu 0 4 696 828 827 697
		f 4 -699 700 689 -495
		mu 0 4 829 707 705 824
		f 4 717 709 -719 -702
		mu 0 4 830 831 832 833
		f 4 718 710 -720 -703
		mu 0 4 833 832 834 835
		f 4 719 711 -721 -704
		mu 0 4 835 834 836 837
		f 4 720 712 -722 -705
		mu 0 4 837 836 838 839
		f 4 721 713 -723 -706
		mu 0 4 839 838 840 841
		f 4 722 714 -724 -707
		mu 0 4 841 840 842 843
		f 4 723 715 -725 -708
		mu 0 4 843 842 844 845
		f 4 724 716 -718 -709
		mu 0 4 845 844 846 847
		f 4 726 -728 -726 701
		mu 0 4 848 849 850 851
		f 4 728 -730 -727 702
		mu 0 4 852 853 854 855
		f 4 730 -732 -729 703
		mu 0 4 856 857 858 859
		f 4 732 -734 -731 704
		mu 0 4 860 861 862 863
		f 4 734 -736 -733 705
		mu 0 4 864 865 866 867
		f 4 736 -738 -735 706
		mu 0 4 868 869 870 871
		f 4 738 -740 -737 707
		mu 0 4 872 873 874 875
		f 4 725 -741 -739 708
		mu 0 4 876 877 878 879
		f 4 742 -744 -742 727
		mu 0 4 880 881 882 883
		f 4 744 -746 -743 729
		mu 0 4 884 885 886 887
		f 4 746 -748 -745 731
		mu 0 4 888 889 890 891
		f 4 748 -750 -747 733
		mu 0 4 892 893 894 895
		f 4 750 -752 -749 735
		mu 0 4 896 897 898 899
		f 4 752 -754 -751 737
		mu 0 4 900 901 902 903
		f 4 754 -756 -753 739
		mu 0 4 904 905 906 907
		f 4 741 -757 -755 740
		mu 0 4 908 909 910 911
		f 4 758 -760 -758 743
		mu 0 4 912 913 914 915
		f 4 760 -762 -759 745
		mu 0 4 916 917 918 919
		f 4 762 -764 -761 747
		mu 0 4 920 921 922 923
		f 4 764 -766 -763 749
		mu 0 4 924 925 926 927
		f 4 766 -768 -765 751
		mu 0 4 928 929 930 931
		f 4 768 -770 -767 753
		mu 0 4 932 933 934 935
		f 4 770 -772 -769 755
		mu 0 4 936 937 938 939
		f 4 757 -773 -771 756
		mu 0 4 940 941 942 943
		f 4 774 -776 -774 759
		mu 0 4 944 945 946 947
		f 4 776 -778 -775 761
		mu 0 4 948 949 950 951
		f 4 778 -780 -777 763
		mu 0 4 952 953 954 955
		f 4 780 -782 -779 765
		mu 0 4 956 957 958 959
		f 4 782 -784 -781 767
		mu 0 4 960 961 962 963
		f 4 784 -786 -783 769
		mu 0 4 964 965 966 967
		f 4 786 -788 -785 771
		mu 0 4 968 969 970 971
		f 4 773 -789 -787 772
		mu 0 4 972 973 974 975
		f 4 790 -792 -790 775
		mu 0 4 976 977 978 979
		f 4 792 -794 -791 777
		mu 0 4 980 981 982 983
		f 4 794 -796 -793 779
		mu 0 4 984 985 986 987
		f 4 796 -798 -795 781
		mu 0 4 988 989 990 991
		f 4 798 -800 -797 783
		mu 0 4 992 993 994 995
		f 4 800 -802 -799 785
		mu 0 4 996 997 998 999
		f 4 802 -804 -801 787
		mu 0 4 1000 1001 1002 1003
		f 4 789 -805 -803 788
		mu 0 4 1004 1005 1006 1007
		f 3 806 -806 791
		mu 0 3 1008 1009 1010
		f 3 807 -807 793
		mu 0 3 1011 1012 1013
		f 3 808 -808 795
		mu 0 3 1014 1015 1016
		f 3 809 -809 797
		mu 0 3 1017 1018 1019
		f 3 810 -810 799
		mu 0 3 1020 1021 1022
		f 3 811 -811 801
		mu 0 3 1023 1024 1025
		f 3 812 -812 803
		mu 0 3 1026 1027 1028
		f 3 805 -813 804
		mu 0 3 1029 1030 1031
		f 4 813 497 -815 -710
		mu 0 4 1032 1033 1034 1035
		f 4 814 455 -816 -711
		mu 0 4 1036 1037 1038 1039
		f 4 815 612 -817 -712
		mu 0 4 1040 1041 1042 1043
		f 4 816 -620 -818 -713
		mu 0 4 1044 1045 1046 1047
		f 4 817 -611 -819 -714
		mu 0 4 1048 1049 1050 1051
		f 4 818 -609 -820 -715
		mu 0 4 1052 1053 1054 1055
		f 4 819 -617 -821 -716
		mu 0 4 1056 1057 1058 1059
		f 4 820 -614 -814 -717
		mu 0 4 1060 1061 1062 1063
		f 4 821 823 -823 -463
		mu 0 4 585 1064 1065 590
		f 4 822 825 -825 -573
		mu 0 4 590 1065 1066 653
		f 4 824 827 -827 -577
		mu 0 4 653 1066 1067 692
		f 4 829 -831 -829 504
		mu 0 4 597 1068 1069 47
		f 4 828 831 -822 -462
		mu 0 4 47 1069 1064 585
		f 4 826 -833 -830 599
		mu 0 4 692 1067 1068 597
		f 4 833 835 -835 -824
		mu 0 4 1064 1070 1071 1065
		f 4 834 837 -837 -826
		mu 0 4 1065 1071 1072 1066
		f 4 836 839 -839 -828
		mu 0 4 1066 1072 1073 1067
		f 4 841 -843 -841 830
		mu 0 4 1068 1074 1075 1069
		f 4 840 843 -834 -832
		mu 0 4 1069 1075 1070 1064
		f 4 838 -845 -842 832
		mu 0 4 1067 1073 1074 1068
		f 4 845 847 -847 -836
		mu 0 4 1070 1076 1077 1071
		f 4 846 849 -849 -838
		mu 0 4 1071 1077 1078 1072
		f 4 848 851 -851 -840
		mu 0 4 1072 1078 1079 1073
		f 4 853 -855 -853 842
		mu 0 4 1074 1080 1081 1075
		f 4 852 855 -846 -844
		mu 0 4 1075 1081 1076 1070
		f 4 850 -857 -854 844
		mu 0 4 1073 1079 1080 1074
		f 4 857 859 -859 -848
		mu 0 4 1076 1082 1083 1077
		f 4 858 861 -861 -850
		mu 0 4 1077 1083 1084 1078
		f 4 860 863 -863 -852
		mu 0 4 1078 1084 1085 1079
		f 4 865 -867 -865 854
		mu 0 4 1080 1086 1087 1081
		f 4 864 867 -858 -856
		mu 0 4 1081 1087 1082 1076
		f 4 862 -869 -866 856
		mu 0 4 1079 1085 1086 1080
		f 4 869 871 -871 -860
		mu 0 4 1082 1088 1089 1083
		f 4 870 873 -873 -862
		mu 0 4 1083 1089 1090 1084
		f 4 872 875 -875 -864
		mu 0 4 1084 1090 1091 1085
		f 4 877 -879 -877 866
		mu 0 4 1086 1092 1093 1087
		f 4 876 879 -870 -868
		mu 0 4 1087 1093 1088 1082
		f 4 874 -881 -878 868
		mu 0 4 1085 1091 1092 1086
		f 4 881 883 -883 -872
		mu 0 4 1088 1094 1095 1089
		f 4 882 885 -885 -874
		mu 0 4 1089 1095 1096 1090
		f 4 884 887 -887 -876
		mu 0 4 1090 1096 1097 1091
		f 4 889 -891 -889 878
		mu 0 4 1092 1098 1099 1093
		f 4 888 891 -882 -880
		mu 0 4 1093 1099 1094 1088
		f 4 886 -893 -890 880
		mu 0 4 1091 1097 1098 1092
		f 4 893 895 -895 -884
		mu 0 4 1094 656 659 1095
		f 4 894 897 -897 -886
		mu 0 4 1095 659 658 1096
		f 4 896 899 -899 -888
		mu 0 4 1096 658 657 1097
		f 4 902 -904 -902 890
		mu 0 4 1098 690 691 1099
		f 4 901 904 -894 -892
		mu 0 4 1099 691 656 1094
		f 4 898 -906 -903 892
		mu 0 4 1097 657 690 1098
		f 4 -172 906 908 -908
		mu 0 4 1100 147 1101 1102
		f 4 622 909 -911 -907
		mu 0 4 147 150 1103 1101
		f 4 621 911 -913 -910
		mu 0 4 150 1104 1105 1103
		f 4 -606 907 913 -912
		mu 0 4 1104 1100 1102 1105
		f 4 -909 914 916 -916
		mu 0 4 1102 1101 1106 1107
		f 4 910 917 -919 -915
		mu 0 4 1101 1103 1108 1106
		f 4 912 919 -921 -918
		mu 0 4 1103 1105 1109 1108
		f 4 -914 915 921 -920
		mu 0 4 1105 1102 1107 1109
		f 4 -917 922 924 -924
		mu 0 4 1107 1106 1110 1111
		f 4 918 925 -927 -923
		mu 0 4 1106 1108 1112 1110
		f 4 920 927 -929 -926
		mu 0 4 1108 1109 1113 1112
		f 4 -922 923 929 -928
		mu 0 4 1109 1107 1111 1113
		f 4 -925 930 932 -932
		mu 0 4 1111 1110 1114 1115
		f 4 926 933 -935 -931
		mu 0 4 1110 1112 1116 1114
		f 4 928 935 -937 -934
		mu 0 4 1112 1113 1117 1116
		f 4 -930 931 937 -936
		mu 0 4 1113 1111 1115 1117
		f 4 -933 938 940 -940
		mu 0 4 1115 1114 1118 1119
		f 4 934 941 -943 -939
		mu 0 4 1114 1116 1120 1118
		f 4 936 943 -945 -942
		mu 0 4 1116 1117 1121 1120
		f 4 -938 939 945 -944
		mu 0 4 1117 1115 1119 1121
		f 4 -941 946 948 -948
		mu 0 4 1119 1118 1122 1123
		f 4 942 949 -951 -947
		mu 0 4 1118 1120 1124 1122
		f 4 944 951 -953 -950
		mu 0 4 1120 1121 1125 1124
		f 4 -946 947 953 -952
		mu 0 4 1121 1119 1123 1125
		f 4 -949 954 956 -956
		mu 0 4 1123 1122 1126 1127
		f 4 950 957 -959 -955
		mu 0 4 1122 1124 1128 1126
		f 4 952 959 -961 -958
		mu 0 4 1124 1125 1129 1128
		f 4 -954 955 961 -960
		mu 0 4 1125 1123 1127 1129
		f 4 -957 962 964 -964
		mu 0 4 1127 1126 1130 1131
		f 4 958 965 -967 -963
		mu 0 4 1126 1128 1132 1130
		f 4 960 967 -969 -966
		mu 0 4 1128 1129 1133 1132
		f 4 -962 963 969 -968
		mu 0 4 1129 1127 1131 1133
		f 4 -965 970 972 -972
		mu 0 4 1131 1130 1134 1135
		f 4 966 973 -975 -971
		mu 0 4 1130 1132 1136 1134
		f 4 968 975 -977 -974
		mu 0 4 1132 1133 1137 1136
		f 4 -970 971 977 -976
		mu 0 4 1133 1131 1135 1137;
	setAttr ".fc[500:575]"
		f 4 -973 978 980 -980
		mu 0 4 1135 1134 1138 1139
		f 4 974 981 -983 -979
		mu 0 4 1134 1136 1140 1138
		f 4 976 983 -985 -982
		mu 0 4 1136 1137 1141 1140
		f 4 -978 979 985 -984
		mu 0 4 1137 1135 1139 1141
		f 4 -981 986 988 -988
		mu 0 4 1139 1138 1142 1143
		f 4 982 989 -991 -987
		mu 0 4 1138 1140 1144 1142
		f 4 984 991 -993 -990
		mu 0 4 1140 1141 1145 1144
		f 4 -986 987 993 -992
		mu 0 4 1141 1139 1143 1145
		f 4 -989 994 996 -996
		mu 0 4 1143 1142 1146 1147
		f 4 990 997 -999 -995
		mu 0 4 1142 1144 1148 1146
		f 4 992 999 -1001 -998
		mu 0 4 1144 1145 1149 1148
		f 4 -994 995 1001 -1000
		mu 0 4 1145 1143 1147 1149
		f 4 -997 1002 1004 -1004
		mu 0 4 1147 1146 166 165
		f 4 998 1005 -1007 -1003
		mu 0 4 1146 1148 167 166
		f 4 1000 1007 -1009 -1006
		mu 0 4 1148 1149 168 167
		f 4 -1002 1003 1009 -1008
		mu 0 4 1149 1147 165 168
		f 4 507 1011 -1013 -1011
		mu 0 4 140 603 1150 1151
		f 4 -507 1013 1014 -1012
		mu 0 4 603 1152 1153 1150
		f 4 -1045 1046 1048 -1050
		mu 0 4 1154 1155 1156 1157
		f 4 72 1010 -1018 -1016
		mu 0 4 1158 140 1151 1159
		f 4 1012 1019 -1021 -1019
		mu 0 4 1151 1150 599 598
		f 4 -1015 1021 1022 -1020
		mu 0 4 1150 1153 600 599
		f 4 -1017 1023 1024 -1022
		mu 0 4 1153 1159 601 600
		f 4 1017 1018 -1026 -1024
		mu 0 4 1159 1151 598 601
		f 4 -506 1026 1028 -1028
		mu 0 4 1152 1158 1160 1161
		f 4 1052 1054 -1057 -1058
		mu 0 4 1162 1163 1164 1165
		f 4 1016 1031 -1033 -1030
		mu 0 4 1159 1153 1166 1167
		f 4 -1061 1062 1064 -1066
		mu 0 4 1168 1169 1170 1171
		f 4 -1029 1034 1036 -1036
		mu 0 4 1161 1160 1172 1173
		f 4 1030 1037 -1039 -1035
		mu 0 4 1160 1167 1174 1172
		f 4 1032 1039 -1041 -1038
		mu 0 4 1167 1166 1175 1174
		f 4 -1034 1035 1041 -1040
		mu 0 4 1166 1161 1173 1175
		f 4 -1037 1042 1044 -1044
		mu 0 4 1173 1172 1155 1154
		f 4 1038 1045 -1047 -1043
		mu 0 4 1172 1174 1156 1155
		f 4 1040 1047 -1049 -1046
		mu 0 4 1174 1175 1157 1156
		f 4 -1042 1043 1049 -1048
		mu 0 4 1175 1173 1154 1157
		f 4 1015 1051 -1053 -1051
		mu 0 4 1158 1159 1163 1162
		f 3 1070 -1073 -1074
		mu 0 3 1176 1177 1178
		f 4 -1031 1055 1056 -1054
		mu 0 4 1167 1160 1165 1164
		f 4 -1027 1050 1057 -1056
		mu 0 4 1160 1158 1162 1165
		f 4 -1014 1058 1060 -1060
		mu 0 4 1153 1152 1169 1168
		f 4 1027 1061 -1063 -1059
		mu 0 4 1152 1161 1170 1169
		f 4 1033 1063 -1065 -1062
		mu 0 4 1161 1166 1171 1170
		f 3 -1032 1066 -1064
		mu 0 3 1166 1153 1171
		f 3 -1077 1078 1079
		mu 0 3 1179 1180 1181
		f 3 1029 1053 -1068
		mu 0 3 1159 1167 1164
		f 4 1067 1069 -1071 -1069
		mu 0 4 1159 1164 1177 1176
		f 4 -1055 1071 1072 -1070
		mu 0 4 1164 1163 1178 1177
		f 4 -1052 1068 1073 -1072
		mu 0 4 1163 1159 1176 1178
		f 4 -1067 1074 1076 -1076
		mu 0 4 1171 1153 1180 1179
		f 4 1059 1077 -1079 -1075
		mu 0 4 1153 1168 1181 1180
		f 4 1065 1075 -1080 -1078
		mu 0 4 1168 1171 1179 1181
		f 4 -1084 1082 1081 -1081
		mu 0 4 1182 1183 1184 1185
		f 4 -1087 1080 1085 -1085
		mu 0 4 1186 1182 1185 1187
		f 4 -1090 1084 1088 -1088
		mu 0 4 1188 1186 1187 1189
		f 4 -1093 1087 1091 -1091
		mu 0 4 1190 1188 1189 1191
		f 4 -1096 1090 1094 -1094
		mu 0 4 1192 1190 1191 1193
		f 4 -1099 1093 1097 -1097
		mu 0 4 1194 1192 1193 1195
		f 4 -1102 1096 1100 -1100
		mu 0 4 1196 1194 1195 1197
		f 4 -1104 1099 1102 -1083
		mu 0 4 1198 1196 1197 1199
		f 3 -1082 1105 -1105
		mu 0 3 1185 1184 1200
		f 3 -1086 1104 -1107
		mu 0 3 1187 1185 1201
		f 3 -1089 1106 -1108
		mu 0 3 1189 1187 1202
		f 3 -1092 1107 -1109
		mu 0 3 1191 1189 1203
		f 3 -1095 1108 -1110
		mu 0 3 1193 1191 1204
		f 3 -1098 1109 -1111
		mu 0 3 1195 1193 1205
		f 3 -1101 1110 -1112
		mu 0 3 1197 1195 1206
		f 3 -1103 1111 -1106
		mu 0 3 1199 1197 1207
		f 4 1113 -1118 -1115 -1113
		mu 0 4 1208 1209 1210 1211
		f 3 1116 -1116 1117
		mu 0 3 1209 1212 1210
		f 4 1119 -1124 -1121 -1119
		mu 0 4 1213 1214 1215 1216
		f 3 1122 -1122 1123
		mu 0 3 1214 1217 1215
		f 4 1124 1126 1129 -1126
		mu 0 4 1218 1219 1220 1221
		f 3 -1130 1127 -1129
		mu 0 3 1221 1220 1222
		f 4 1130 1132 1135 -1132
		mu 0 4 1223 1224 1225 1226
		f 3 -1136 1133 -1135
		mu 0 3 1226 1225 1227;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vcs" 2;
createNode mesh -n "geo_pigShapeOrig1" -p "geo_pig";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 748 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.92317182 0.49146676 0.9231717
		 0.51431179 0.90498716 0.51714873 0.88274914 0.49736667 0.9635945 0.49736655 0.9413566
		 0.51714873 0.96886188 0.53715682 0.94601685 0.53715682 0.95685965 0.57084477 0.94001585
		 0.55400074 0.92317182 0.58284688 0.9231717 0.56000173 0.88948387 0.57084477 0.90632802
		 0.55400074 0.87748164 0.53715682 0.90032703 0.53715682 0.9231717 0.53715682 0.78500098
		 0.14977482 0.66637671 0.057210341 0.018584821 0.17452332 0.018584821 0.074395031
		 0.097262889 0.027027011 0.097262889 0.17440364 0.018584821 0.52465761 0.097262889
		 0.52465761 0.097262889 0.45764452 0.55096281 0.4553369 0.74167496 0.40550092 0.018584821
		 0.38770923 0.097262889 0.38770923 0.018584821 0.27643636 0.097262889 0.27643636 0.20015863
		 0.52465749 0.20015863 0.38770923 0.23273039 0.6168977 0.22677147 0.58802253 0.14955318
		 0.58802253 0.31462756 0.38770911 0.31462756 0.52465761 0.31462756 0.45764452 0.14289701
		 0.6168977 0.19620776 0.72352052 0.39999679 0.38770911 0.39999679 0.45764452 0.39999679
		 0.45764458 0.20083606 0.73613185 0.21986258 0.72093928 0.80894655 0.51431179 0.79246634
		 0.52067661 0.20440245 0.71178901 0.2105571 0.75301403 0.82542688 0.52067661 0.2403791
		 0.72986245 0.8317917 0.53715682 0.22995067 0.69691032 0.82542688 0.55363715 0.25791526
		 0.69743335 0.80894655 0.56000173 0.24052274 0.64257026 0.79246634 0.55363703 0.22678602
		 0.67922056 0.78610152 0.53715682 0.80894655 0.53715682 0.21157002 0.96052039 0.20443439
		 0.6904099 0.34113061 0.62551063 0.86435527 0.82090169 0.84143466 0.82090169 0.95591432
		 0.84374672 0.93306941 0.84374672 0.19291985 0.98907524 0.36408615 0.75256389 0.31010985
		 0.69526458 0.31034982 0.75102103 0.26070178 0.73511374 0.27009189 0.74017358 0.27815568
		 0.73261464 0.26295495 0.724424 0.25131178 0.7401737 0.91022164 0.84374672 0.88718289
		 0.82090169 0.2477541 0.73261499 0.24742222 0.75238925 0.24145794 0.75238943 0.25131178
		 0.76460475 0.2477541 0.77216369 0.42431656 0.55942315 0.40147153 0.55942315 0.26070178
		 0.76966459 0.26295495 0.78035426 0.27009189 0.76460463 0.27815568 0.77216327 0.27398133
		 0.75238901 0.28445172 0.75238901 0.42431656 0.94780594 0.40147153 0.94780594 0.22279167
		 0.80308211 0.92474031 0.37687659 0.2889955 0.83342564 0.31806731 0.90486008 0.33488989
		 0.80412871 0.77984166 0.26542369 0.31462756 0.17456326 0.63700318 0.40869376 0.566513
		 0.40869376 0.62748647 0.36410958 0.5760296 0.36410958 0.65291846 0.26303554 0.63307714
		 0.31980553 0.57060784 0.31980553 0.55059767 0.26303554 0.63829076 0.19704378 0.56431097
		 0.19704378 0.6421721 0.094594434 0.63688576 0.14286467 0.56520438 0.14286467 0.56032991
		 0.094594434 0.31462756 0.027027011 0.39999679 0.027027071 0.39999679 0.17464182 0.31462756
		 0.27643636 0.39999679 0.27643636 0.20015863 0.027027071 0.20015863 0.17425039 0.20015863
		 0.27643636 0.2773101 0.14159444 0.28678665 0.14355633 0.2773101 0.1415945 0.25784639
		 0.13265952 0.24920218 0.13124248 0.25784639 0.13265952 0.23187163 0.19022456 0.28381374
		 0.11975311 0.29047886 0.12053761 0.28381374 0.11975311 0.27792558 0.11728039 0.27209297
		 0.11704072 0.27792558 0.11728039 0.49190909 0.043981344 0.50728166 0.043981329 0.49190909
		 0.043981344 0.47631478 0.043981344 0.46239597 0.043981284 0.47631478 0.043981344
		 0.49190909 0.026881978 0.50728166 0.026881993 0.49190909 0.026881978 0.47631478 0.026882
		 0.46239597 0.026881926 0.68905818 0.353847 0.71150988 0.28025249 0.72466117 0.89378047
		 0.75664079 0.89378047 0.7358638 0.15597604 0.73725712 0.19978055 0.75664079 0.98971963
		 0.70104069 0.124853 0.72466111 0.98971939 0.67198676 0.11255859 0.78862047 0.89378047
		 0.66464847 0.13971129 0.53278315 0.98971939 0.66482687 0.18002641 0.56476283 0.89378047
		 0.69321418 0.20495358 0.56476283 0.98971927 0.71565706 0.22168967 0.59674263 0.89378047
		 0.59674251 0.98971963 0.62872219 0.89378047 0.62872219 0.98971963 0.66070181 0.89378047
		 0.84143466 0.68383157 0.86435527 0.68383157 0.95591432 0.68383157 0.93306941 0.68383157
		 0.91022164 0.68383157 0.84143466 0.70667654 0.86435527 0.70667654 0.95591432 0.70667654
		 0.93306941 0.70667654 0.91022259 0.70667654 0.84143466 0.72952163 0.86435527 0.72952163
		 0.95591432 0.72952163 0.93306917 0.72952157 0.91022259 0.72952163 0.84143466 0.7523666
		 0.86435527 0.7523666 0.95591432 0.75236666 0.93306941 0.75236666 0.91022247 0.7523666
		 0.84143466 0.77521163 0.86435527 0.77521169 0.95591432 0.77521169 0.93306941 0.77521169
		 0.91022247 0.77521169 0.84143466 0.7980566 0.86435527 0.79805666 0.95591432 0.7980566
		 0.93306941 0.79805672 0.91022259 0.7980566 0.66070175 0.98971963 0.69268143 0.89378047
		 0.69268143 0.98971927 0.72466111 0.82982147 0.75664079 0.82982147 0.78862029 0.82982099
		 0.56476283 0.82982135 0.59674251 0.82982135 0.62872219 0.82982099 0.66070175 0.82982147
		 0.69268143 0.82982099 0.72466111 0.79784167 0.75664079 0.79784143 0.78862035 0.79784143
		 0.56476283 0.79784143 0.59674251 0.79784143 0.66445953 0.61544335 0.61871475 0.59280765
		 0.64178282 0.59280825 0.66445953 0.59281123 0.62872219 0.79784143 0.66070181 0.79784167
		 0.69268143 0.79784143 0.72466111 0.76586187 0.75664067 0.76586199 0.78862035 0.76586187
		 0.56476283 0.76586199 0.59674251 0.76586199 0.62872219 0.76586199 0.66070175 0.76586187
		 0.69268143 0.76586187 0.72466111 0.73388231 0.75664067 0.73388231 0.79246634 0.52067661
		 0.80894655 0.51431179 0.78862047 0.73388231 0.82542688 0.52067661 0.56476277 0.73388231
		 0.8317917 0.53715682 0.59674245 0.73388231 0.82542688 0.55363715 0.62872219 0.73388231
		 0.80894655 0.56000173 0.66070181 0.73388231 0.79246634 0.55363703 0.3024621 0.88304371
		 0.78610152 0.53715682 0.80894655 0.53715682;
	setAttr ".uvst[0].uvsp[250:499]" 0.31967664 0.80165875 0.29860425 0.85841197
		 0.86435527 0.82090169 0.86435527 0.84374672 0.81867403 0.84374672 0.84143466 0.82090169
		 0.22897947 0.93327755 0.25862086 0.90518993 0.27157569 0.87651962 0.69268143 0.73388231
		 0.47631478 0.026882 0.41851512 0.14977482 0.49190909 0.014459632 0.88718289 0.82090169
		 0.50728166 0.014680177 0.49190909 0.014459632 0.53633964 0.057210341 0.47631478 0.014011286
		 0.46239597 0.013830073 0.92474031 0.37687659 0.47631478 0.014011286 0.14664769 0.93327755
		 0.49190909 0.014250666 0.018584821 0.17452332 0.16507018 0.75301403 0.097262889 0.17440364
		 0.15283549 0.80308211 0.1747911 0.73613185 0.1794194 0.72352052 0.18325567 0.98907524
		 0.17250133 0.69991899 0.17119288 0.6904099 0.14884114 0.67922056 0.13510454 0.64257026
		 0.17122459 0.71178901 0.15576482 0.72093928 0.13524818 0.72986245 0.14567661 0.69691032
		 0.11771166 0.69743335 0.034496665 0.62551063 0.011541009 0.75256389 0.065277219 0.75102103
		 0.065072417 0.69526458 0.1149255 0.73511374 0.11267221 0.724424 0.097471714 0.73261464
		 0.10553551 0.74017358 0.1243155 0.7401737 0.12787271 0.73261499 0.12820494 0.75238925
		 0.1341691 0.75238943 0.1243155 0.76460475 0.12787271 0.77216369 0.1149255 0.76966459
		 0.11267221 0.78035426 0.10553551 0.76460463 0.097471714 0.77216327 0.10164583 0.75238901
		 0.091175556 0.75238901 0.086631775 0.83342564 0.097262889 0.38770923 0.46184102 0.40550092
		 0.018584821 0.38770923 0.018584821 0.27643636 0.097262889 0.27643636 0.31462756 0.38770911
		 0.20015863 0.38770923 0.39999679 0.38770911 0.31462756 0.17456326 0.39999679 0.17464182
		 0.39999679 0.074395031 0.31462756 0.074394971 0.31462756 0.27643636 0.39999679 0.27643636
		 0.20015863 0.17425039 0.20015863 0.074395038 0.20015863 0.27643636 0.2773101 0.14159444
		 0.2770445 0.20053294 0.29611614 0.16488948 0.28678676 0.14355633 0.29164752 0.14042971
		 0.2773101 0.1415945 0.24079409 0.12458092 0.25784639 0.13265952 0.22735426 0.15141299
		 0.2492023 0.13124248 0.25784639 0.13265952 0.86435527 0.68383157 0.84143466 0.68383157
		 0.81867403 0.68383157 0.93306941 0.68383157 0.88718289 0.68383157 0.86435527 0.70667654
		 0.84143466 0.70667654 0.81867403 0.70667654 0.93306941 0.70667654 0.88718289 0.70667654
		 0.86435527 0.72952163 0.84143466 0.72952163 0.81867403 0.72952163 0.93306941 0.72952157
		 0.88718289 0.72952163 0.86435527 0.7523666 0.84143466 0.7523666 0.81867403 0.7523666
		 0.93306941 0.75236666 0.88718289 0.7523666 0.86435527 0.77521169 0.84143466 0.77521163
		 0.81867403 0.77521163 0.93306941 0.77521169 0.88718289 0.77521169 0.86435527 0.79805666
		 0.84143466 0.7980566 0.81867403 0.7980566 0.93306941 0.79805672 0.88718289 0.7980566
		 0.42431656 0.58226818 0.40147153 0.58226818 0.42431656 0.60511321 0.40147153 0.60511321
		 0.42431656 0.62795824 0.40147153 0.62795824 0.42431656 0.65080327 0.40147153 0.65080327
		 0.42431656 0.69649333 0.40147153 0.69649333 0.42435685 0.74218339 0.40151179 0.74218339
		 0.42431656 0.78787345 0.40147153 0.78787345 0.42431656 0.83356923 0.40147153 0.83356923
		 0.42431656 0.85641426 0.40147153 0.85641426 0.42431656 0.87927085 0.40147153 0.87927085
		 0.42431656 0.90211588 0.40147153 0.90211588 0.42431656 0.92496091 0.40147153 0.92496103
		 0.61871481 0.47818941 0.68707579 0.47818941 0.29047886 0.12053761 0.2838138 0.11975311
		 0.2838138 0.11975311 0.27792558 0.11728039 0.27209303 0.11704072 0.27792558 0.11728039
		 0.50728166 0.043981329 0.49190909 0.043981344 0.49190909 0.043981344 0.47631478 0.043981344
		 0.42367443 0.26542369 0.46239597 0.043981284 0.49200603 0.28025249 0.51445776 0.353847
		 0.75664079 0.66992307 0.46625885 0.19978055 0.46765214 0.15597604 0.5024755 0.124853
		 0.56476283 0.66992295 0.53152943 0.11255859 0.59674251 0.66992307 0.53851664 0.13971129
		 0.62872219 0.66992307 0.53840256 0.18002641 0.66070187 0.66992307 0.51030183 0.20495358
		 0.69268143 0.66992307 0.9231717 0.49146676 0.88274902 0.49736667 0.90498692 0.51714873
		 0.9231717 0.51431179 0.9635945 0.49736655 0.94135636 0.51714873 0.96886188 0.53715682
		 0.94601685 0.53715682 0.95685965 0.57084477 0.94001585 0.55400074 0.9231717 0.582847
		 0.9231717 0.56000185 0.88948375 0.57084477 0.90632766 0.55400074 0.87748164 0.53715694
		 0.90032655 0.53715682 0.92317182 0.53715682 0.48785907 0.22168967 0.66070181 0.63794339
		 0.72466117 0.89378047 0.72466111 0.98971939 0.75664079 0.98971963 0.75664079 0.89378047
		 0.78862047 0.98971927 0.53278315 0.89378047 0.56476283 0.98971927 0.56476283 0.89378047
		 0.59674251 0.98971963 0.59674263 0.89378047 0.62872219 0.98971963 0.62872219 0.89378047
		 0.66070175 0.98971963 0.66070181 0.89378047 0.69268143 0.98971927 0.69268143 0.89378047
		 0.75664079 0.82982147 0.72466111 0.82982147 0.66445953 0.47818941 0.53278315 0.82982135
		 0.64178282 0.47818941 0.56476283 0.82982135 0.71054667 0.59280956 0.64178282 0.61544335
		 0.71054667 0.47818941 0.68707579 0.59280646 0.76325661 0.53715682 0.77598614 0.50419629
		 0.77598614 0.57011735 0.80894667 0.58284688 0.84190714 0.57011735 0.85463673 0.53715682
		 0.84190714 0.50419629 0.80894655 0.49146676 0.76325661 0.53715682 0.77598614 0.50419629
		 0.77598614 0.57011735 0.80894667 0.58284688 0.84190714 0.57011735 0.85463673 0.53715682
		 0.84190714 0.50419629 0.80894655 0.49146676 0.59674251 0.82982135 0.62872219 0.82982099
		 0.66070175 0.82982147 0.69268143 0.82982099 0.75664079 0.79784143 0.72466111 0.79784167
		 0.53278315 0.79784143 0.56476283 0.79784143 0.59674251 0.79784143 0.62872219 0.79784143
		 0.66070181 0.79784167 0.69268143 0.79784143 0.75664067 0.76586199 0.72466111 0.76586187
		 0.53278315 0.76586199 0.56476283 0.76586199 0.59674251 0.76586199 0.057560325 0.90486008;
	setAttr ".uvst[0].uvsp[500:747]" 0.073164701 0.88304371 0.040737391 0.80412871
		 0.055950522 0.80165875 0.077023029 0.85841197 0.10405159 0.87651962 0.11700654 0.90518993
		 0.49293223 0.92496091 0.49293223 0.90211588 0.49293223 0.87927085 0.49293223 0.85641426
		 0.49293223 0.83356923 0.49293223 0.78787345 0.49297246 0.74218339 0.49293223 0.69649333
		 0.49293223 0.65080327 0.49293223 0.62795824 0.49293223 0.60511321 0.49293223 0.58226818
		 0.49293223 0.55942315 0.49293223 0.94780594 0.42431656 0.97062784 0.44716159 0.97062796
		 0.17233777 0.81920922 0.20328975 0.81920922 0.9247402 0.28549659 0.90416116 0.1239599
		 0.88247555 0.1239599 0.88247555 0.11311698 0.90416116 0.11311698 0.82258534 0.28549659
		 0.82258558 0.37687683 0.82258534 0.37687683 0.93306941 0.84374672 0.95591432 0.84374672
		 0.95591432 0.79805678 0.95591432 0.77521169 0.95591432 0.75236666 0.95591432 0.72952163
		 0.95591444 0.70667654 0.95591432 0.68383157 0.86435527 0.84374672 0.81867403 0.84374672
		 0.81867403 0.7980566 0.81867403 0.77521163 0.81867403 0.7523666 0.81867403 0.72952163
		 0.81867403 0.70667654 0.81867403 0.68383157 0.88718289 0.7980566 0.88718289 0.77521169
		 0.88718289 0.7523666 0.88718289 0.72952163 0.88718289 0.70667654 0.89068854 0.33118677
		 0.88718289 0.68383157 0.91022259 0.7980566 0.91022164 0.84374672 0.91022247 0.77521169
		 0.91022259 0.7523666 0.91022259 0.72952163 0.91022259 0.70667654 0.89068854 0.28549659
		 0.91022164 0.68383157 0.85663688 0.28549659 0.856637 0.33118677 0.82258546 0.30836272
		 0.82258523 0.30832052 0.89068854 0.28549659 0.89068854 0.33118677 0.856637 0.33118677
		 0.85663688 0.28549659 0.86078972 0.14564562 0.92584699 0.14564562 0.9247402 0.26265168
		 0.856637 0.26263559 0.89068866 0.26263499 0.89068854 0.23980653 0.9247402 0.26265168
		 0.89068842 0.26266813 0.80179411 0.62447536 0.78334492 0.6323967 0.77930254 0.6253866
		 0.79738647 0.61683154 0.75937766 0.6428926 0.79964274 0.6151793 0.78050774 0.6185838
		 0.77866203 0.61272073 0.79763013 0.60878623 0.75781757 0.6231252 0.81455618 0.62447536
		 0.81896383 0.61683154 0.83704776 0.6253866 0.83300555 0.6323967 0.85697275 0.6428926
		 0.81670767 0.6151793 0.81872016 0.60878623 0.83768839 0.61272073 0.83584249 0.6185838
		 0.47631478 0.043981344 0.62872219 0.76586199 0.50728166 0.026881993 0.66070175 0.76586187
		 0.49190909 0.026881978 0.49190909 0.026881978 0.69268143 0.76586187 0.47631478 0.026882
		 0.46239597 0.026881926 0.75664067 0.73388231 0.47631478 0.026882 0.50728166 0.014680177
		 0.49190909 0.014459632 0.49190909 0.014459632 0.47631478 0.014011286 0.46239597 0.013830073
		 0.85853273 0.6231252 0.47631478 0.014011286 0.49190909 0.014250666 0.65255326 0.4553369
		 0.25049245 0.86948317 0.20341587 0.84745252 0.12513483 0.86948317 0.17221117 0.84745252
		 0.82258523 0.26265156 0.99090403 0.026374102 0.82258546 0.26265156 0.9247402 0.28549659
		 0.92584699 0.091431141 0.86078972 0.091431141 0.856637 0.26266754 0.89068854 0.23980653
		 0.95837551 0.17817402 0.95837539 0.058902502 0.82258558 0.28549659 0.82826132 0.17817402
		 0.82826132 0.058902502 0.79573244 0.026374102 0.99090415 0.21070266 0.79573244 0.21070266
		 0.21357679 0.94640177 0.16259849 0.94640177 0.16460526 0.96052039 0.18466282 0.7191512
		 0.19096446 0.7191512 0.20312572 0.69991899 0.72466111 0.73388231 0.53278315 0.73388231
		 0.56476277 0.73388231 0.59674245 0.73388231 0.62872219 0.73388231 0.66070181 0.73388231
		 0.69268143 0.73388231 0.75664079 0.66992307 0.56476283 0.66992295 0.59674251 0.66992307
		 0.62872219 0.66992307 0.66070187 0.66992307 0.69268143 0.66992307 0.66070181 0.63794339
		 0.23187163 0.19022456 0.27704445 0.20053294 0.29611596 0.16488948 0.29164752 0.14042971
		 0.24079403 0.12458092 0.22735426 0.15141299 0.097262889 0.074394971 0.20015863 0.074395031
		 0.097262889 0.45764452 0.20015863 0.45764443 0.31462756 0.074394971 0.39999679 0.074395031
		 0.31462756 0.45764452 0.39999679 0.52465761 0.018584821 0.45764452 0.018584821 0.027027071
		 0.47000661 0.92496085 0.47000661 0.94780594 0.44716159 0.92496085 0.44716159 0.94780606
		 0.47000661 0.90211576 0.44716159 0.90211576 0.47000661 0.87927079 0.44716159 0.87927079
		 0.47000661 0.85641426 0.44716159 0.85641426 0.47000661 0.83356923 0.44716159 0.83356923
		 0.47000661 0.78787345 0.44716159 0.78787345 0.47004691 0.74218339 0.44720188 0.74218339
		 0.47000661 0.69649333 0.44716159 0.69649333 0.47000661 0.65080327 0.44716159 0.65080327
		 0.47000661 0.62795824 0.44716159 0.62795824 0.47000661 0.60511321 0.44716159 0.60511321
		 0.47000661 0.58226818 0.44716159 0.58226818 0.47000661 0.55942315 0.44716159 0.55942315
		 0.20015863 0.45764437 0.018584821 0.45764458 0.097262889 0.074394971 0.018584821
		 0.074395031 0.78862047 0.66992307 0.78862047 0.73388231 0.78862035 0.76586199 0.78862035
		 0.79784143 0.78862029 0.82982099 0.78862047 0.89378047 0.53278315 0.98971939 0.53278315
		 0.66992307 0.53278315 0.73388231 0.53278315 0.76586199 0.53278315 0.79784143 0.53278315
		 0.82982135 0.53278315 0.89378047 0.78862047 0.98971927 0.69268143 0.66992307 0.72466099
		 0.66992307 0.66070187 0.66992307 0.62872219 0.66992307 0.59674251 0.66992307 0.56476283
		 0.66992295 0.53278315 0.66992307 0.75664079 0.66992307 0.69268143 0.66992307 0.72466099
		 0.66992307 0.66070187 0.66992307 0.62872219 0.66992307 0.59674251 0.66992307 0.56476283
		 0.66992295 0.78862047 0.66992307 0.75664079 0.66992307 0.2778019 0.095846355 0.28521857
		 0.098319113 0.27165285 0.095606536 0.2778019 0.095846355 0.28521857 0.098319113 0.29220012
		 0.099103525 0.2778019 0.095846355 0.28521857 0.098319113 0.27165285 0.095606536 0.2778019
		 0.095846355 0.28521857 0.098319113 0.29220012 0.099103525;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 568 ".vt";
	setAttr ".vt[0:165]"  0.23457992 -0.012857769 -0.76439643 0.24269882 -0.00045700057 -0.77883995
		 0.2715416 0.011021893 -0.76220948 0.27314147 -0.002073061 -0.7423746 0.19561051 -0.0020731755 -0.78538322
		 0.21345167 0.011021512 -0.79443461 0.18922715 0.038266633 -0.7889232 0.21054611 0.038118571 -0.79604578
		 0.20245117 0.074811816 -0.78158736 0.21990402 0.063980117 -0.79085404 0.23437652 0.089948781 -0.76387787
		 0.24249466 0.074690737 -0.77832222 0.2663008 0.074810505 -0.7461682 0.26508653 0.063978665 -0.76578981
		 0.27952376 0.03826585 -0.73883319 0.27444458 0.038117602 -0.76059878 0.24667084 0.03800451 -0.78568959
		 0.41955766 -0.27587289 0.48193675 0.16073379 -0.47975704 0.49946743 0.16163315 0.48389763 0.56777227
		 0.37673995 0.37535581 0.5872317 0.35209885 -0.23786621 -0.49640504 0.12886001 -0.29426458 -0.51325721
		 0.12023453 0.47765073 -0.5089941 0.3374556 0.37967953 -0.47887689 0.38701615 0.34176251 0.00064966799
		 0.15812317 0.44533837 0.0018900752 0.14331238 -0.47040477 -0.01794913 0.39764023 -0.36340401 0.011206324
		 0.36890671 0.37131497 -0.2367432 0.14395538 0.46518466 -0.23988561 0.12885986 -0.40442124 -0.36543015
		 0.38716811 -0.26306784 -0.36413738 0.39085007 0.3709026 0.31006473 0.16438355 0.47692356 0.28394842
		 0.15935989 -0.47525516 0.34085259 0.4304834 -0.31425089 0.34085259 0.43859041 0.024716292 -0.50874239
		 0.48116195 -0.043674838 -0.2997624 0.52018189 -0.072962828 0.018635914 0.52524537 -0.039713372 0.32808194
		 0.51352954 -0.020463124 0.53769189 0.20201263 0.37027833 -0.7540285 0.1127333 0.18195127 -0.8652249
		 0.07330139 0.039948042 -0.85674149 0.051377717 -0.0022068128 -0.9323948 0.033927765 0.00034802675 -1.011103153
		 0.026025848 0.011259851 -1.043038726 0.12647751 -0.12853311 -1.0018848181 0.13728699 -0.19765192 -0.96639353
		 0.16562301 -0.18743256 -0.84808511 0.17990479 -0.21170352 -0.71494794 0.14743957 -0.28451642 -0.63447058
		 0.22593598 -0.11768984 -0.76616758 0.16624343 -0.12601639 -0.87776124 0.2651805 0.0035298481 -0.74792063
		 0.23491654 -0.010820605 -0.76470953 0.20465256 0.0035303822 -0.78149801 0.19211686 0.038176194 -0.78845161
		 0.20465256 0.072821781 -0.78149694 0.23491654 0.08717224 -0.76470804 0.2651805 0.072821252 -0.74791956
		 0.27771622 0.038175441 -0.74096596 0.26182526 0.013677572 -0.76279604 0.24042541 0.0035302725 -0.77466756
		 0.21902557 0.013677949 -0.78653884 0.21016143 0.038176242 -0.79145575 0.21902557 0.062674373 -0.78653806
		 0.24042541 0.072821677 -0.77466655 0.26182526 0.062674001 -0.76279527 0.27068955 0.038175706 -0.75787836
		 0.24270737 0.038176041 -0.7787919 0.16941696 -0.025714349 -0.82205558 0.1264421 -0.042591713 -0.91131735
		 0.090937503 -0.052505191 -0.99249405 0.39415711 -0.12384102 -0.70028394 0.39493102 0.034295429 -0.65616435
		 0.3261061 0.26801133 -0.69299448 0.29116929 -0.017908601 -0.74480414 0.24217835 -0.041138921 -0.77198189
		 0.19318743 -0.017907731 -0.79915887 0.17289475 0.038176421 -0.81041521 0.19318743 0.094260238 -0.79915708
		 0.24217835 0.11749056 -0.77197945 0.29116929 0.094259366 -0.74480247 0.31146196 0.038175207 -0.73354608
		 0.13728699 0.44682723 0.74445421 0.12199402 0.16564839 0.98344338 0.19928025 -0.056261081 1.015589237
		 0.14230223 -0.31421757 0.96561152 0.12170273 -0.46804756 0.68321335 0.34005189 0.29871407 0.82290083
		 0.4489482 0.039319381 0.81657135 0.1346695 -0.42287484 0.85207784 0.10021744 0.33882949 0.90748698
		 0.43736556 -0.40543273 -0.24857104 0.38691604 -0.39917433 -0.27824691 0.33646744 -0.4054327 -0.24857104
		 0.33646744 -0.43393543 -0.16201244 0.38691604 -0.43845585 -0.13494344 0.43736556 -0.43393543 -0.16201244
		 0.41899827 -0.47510731 -0.26893723 0.38691619 -0.47260475 -0.28980872 0.35483444 -0.47510731 -0.26893723
		 0.35483444 -0.48299542 -0.2248901 0.38691619 -0.48376015 -0.20662545 0.41899827 -0.48299542 -0.2248901
		 0.41146547 -0.54348236 -0.27333623 0.38691634 -0.54097998 -0.29519895 0.36236724 -0.54348236 -0.27333623
		 0.36236724 -0.5513705 -0.22450289 0.38691634 -0.55213529 -0.20524698 0.41146547 -0.5513705 -0.22450289
		 0.4155339 -0.60078132 -0.29016474 0.38691634 -0.59552747 -0.30842832 0.35829881 -0.60078132 -0.29016474
		 0.35829881 -0.61038965 -0.24425407 0.38691634 -0.61192161 -0.22611713 0.4155339 -0.61038965 -0.24425407
		 0.4127678 -0.63515496 -0.30218971 0.38691634 -0.63445145 -0.32147515 0.36106491 -0.63515496 -0.30218971
		 0.36106491 -0.63658518 -0.26300994 0.38691634 -0.63716334 -0.2471699 0.4127678 -0.63658518 -0.26300994
		 0.38691634 -0.63582158 -0.28393373 0.49073014 -0.25030148 -0.080672741 0.37868392 -0.37411156 -0.066526681
		 0.25014481 -0.45970654 -0.10861333 0.24427384 -0.40914837 -0.29346851 0.39457992 -0.33112109 -0.30746156
		 0.4803119 -0.21741742 -0.24773927 0.44097641 -0.46856344 0.54032439 0.38307694 -0.47324795 0.51546305
		 0.32517806 -0.47894302 0.54343826 0.30119553 -0.47893548 0.60345876 0.32517806 -0.47828874 0.66347945
		 0.38307694 -0.47583869 0.68834078 0.44097641 -0.47445405 0.66475767 0.46495897 -0.47142947 0.60761064
		 0.50327653 -0.22368696 0.52854514 0.40690657 -0.31278989 0.50689715 0.26287764 -0.35508376 0.56707799
		 0.21308945 -0.4449921 0.67001462 0.23359008 -0.44758469 0.79552674 0.28675261 -0.37230206 0.8974402
		 0.39990416 -0.25856778 0.88501686 0.50188035 -0.18220598 0.76731896 0.40483519 -0.59463412 0.60602647
		 0.38307694 -0.5974794 0.59712523 0.36131912 -0.59463412 0.60602647 0.35230637 -0.58776522 0.62751603
		 0.36131912 -0.58089638 0.64900559 0.38307694 -0.57805109 0.65790677 0.40483519 -0.58089638 0.64900559
		 0.4138478 -0.58776522 0.62751603 0.41204756 -0.61564451 0.60714072 0.38307694 -0.61415029 0.59478837
		 0.35410661 -0.61564451 0.60714072 0.34210679 -0.6192522 0.63696218 0.35410661 -0.6228599 0.66678345
		 0.38307694 -0.62435424 0.67913598 0.41204756 -0.6228599 0.66678345 0.42404738 -0.6192522 0.63696218
		 0.40483519 -0.65590149 0.59567255 0.38307694 -0.6547792 0.58639532;
	setAttr ".vt[166:331]" 0.36131898 -0.65590149 0.59567255 0.35230637 -0.658611 0.61806989
		 0.36131898 -0.66132051 0.64046717 0.38307694 -0.66244292 0.64974457 0.40483519 -0.66132051 0.64046717
		 0.4138478 -0.658611 0.61806989 0.41660231 -0.72055894 0.55522114 0.38307694 -0.71882963 0.54092669
		 0.34955156 -0.72055894 0.55522114 0.33566499 -0.72473371 0.58973145 0.34955156 -0.72890884 0.62424159
		 0.38307694 -0.73063797 0.63853639 0.41660231 -0.72890884 0.62424159 0.43048936 -0.72473371 0.58973145
		 0.40445557 -0.74017656 0.56378901 0.38307694 -0.73907381 0.55467361 0.36169845 -0.74017656 0.56378901
		 0.35284317 -0.74283874 0.58579564 0.36169845 -0.74550116 0.60780215 0.38307694 -0.74660385 0.61691773
		 0.40445557 -0.74550116 0.60780215 0.413311 -0.74283874 0.58579564 0.38307709 -0.74283874 0.58579564
		 0.33485794 0.35889938 -0.57188976 0.4007875 0.18213356 -0.57384449 0.38793471 0.17512807 -0.63641375
		 0.33822814 0.32492325 -0.65496629 0.21360992 0.42171031 -0.59986371 0.25191513 0.37229294 -0.6826812
		 0.39050645 0.42190415 -0.54320472 0.4740895 0.23833725 -0.56381059 0.45668167 0.23213565 -0.62748951
		 0.3973825 0.38689479 -0.63790941 0.23286667 0.4732894 -0.5942682 0.29285645 0.42371705 -0.68123078
		 0.44783264 0.51176786 -0.59398508 0.57697541 0.36960551 -0.59399325 0.54095685 0.33544216 -0.6428746
		 0.44705641 0.43935749 -0.68992829 0.23798233 0.55673438 -0.60013044 0.30912796 0.49093217 -0.6973049
		 0.44587982 0.55598027 -0.7500875 0.61896425 0.52025676 -0.74307692 0.59520751 0.4724097 -0.74501824
		 0.44722626 0.47808444 -0.7648924 0.2561 0.58778065 -0.73890227 0.31898484 0.52135772 -0.75698632
		 0.44934341 0.50675118 -0.85493124 0.58255631 0.47969848 -0.84401214 0.56476474 0.44486347 -0.83174706
		 0.44904649 0.45912582 -0.83978581 0.29447174 0.54069597 -0.84879392 0.33619827 0.49750739 -0.84189385
		 0.4598549 0.43784198 -0.9044956 0.55624652 0.43076363 -0.89550459 0.54334307 0.41836607 -0.87010759
		 0.46349031 0.42264506 -0.87339842 0.35343459 0.43255165 -0.90424538 0.36916244 0.42088962 -0.88119727
		 0.4583815 0.37037101 -0.91581696 0.52644944 0.38326001 -0.90818489 0.5173375 0.37450531 -0.89025044
		 0.46094865 0.35963944 -0.89385724 0.38323167 0.38452262 -0.91388428 0.39344513 0.37628737 -0.88911897
		 -0.41955766 -0.27587289 0.48193675 -0.16254807 -0.47975704 0.49946743 -0.16163315 0.48389763 0.56777227
		 -0.37673995 0.37535581 0.5872317 -0.35209885 -0.23786621 -0.49640504 -0.12886001 -0.29426458 -0.51325721
		 -0.12023453 0.47765073 -0.5089941 -0.3374556 0.37967953 -0.47887689 -0.38701606 0.34176251 0.00064966799
		 -0.15812317 0.44533837 0.0018900752 -0.14278962 -0.47040477 -0.01794913 -0.39764023 -0.36340401 0.011206324
		 -0.36890671 0.37131497 -0.2367432 -0.14395538 0.46518466 -0.23988561 -0.12885986 -0.40442124 -0.36543015
		 -0.38716811 -0.26306784 -0.36413738 -0.39084998 0.3709026 0.31006473 -0.16438355 0.47692356 0.28394842
		 -0.15935989 -0.47525516 0.34085259 -0.4304834 -0.31425089 0.34085259 -0.43859041 0.024716292 -0.50874239
		 -0.48116195 -0.043674838 -0.2997624 -0.52018189 -0.072962828 0.018635914 -0.52524537 -0.039713372 0.32808194
		 -0.5135296 -0.020463124 0.53769189 -0.20201263 0.37027833 -0.7540285 -0.1127333 0.18195127 -0.8652249
		 -0.07330139 0.039948042 -0.85674149 -0.051377717 -0.0022068128 -0.9323948 -0.033927765 0.00034802675 -1.011103153
		 -0.026025848 0.011259851 -1.043038726 -0.12647751 -0.12853311 -1.0018848181 -0.13728699 -0.19765192 -0.96639353
		 -0.16562301 -0.18743256 -0.84808511 -0.17990479 -0.21170352 -0.71494794 -0.14743957 -0.28451642 -0.63447058
		 -0.22593598 -0.11768984 -0.76616758 -0.16624343 -0.12601639 -0.87776124 -0.2651805 0.0035298481 -0.74792063
		 -0.23491654 -0.010820605 -0.76470953 -0.20465256 0.0035303822 -0.78149801 -0.19211686 0.038176194 -0.78845161
		 -0.20465256 0.072821781 -0.78149694 -0.23491654 0.08717224 -0.76470804 -0.2651805 0.072821252 -0.74791956
		 -0.27771622 0.038175441 -0.74096596 -0.26182526 0.013677572 -0.76279604 -0.24042541 0.0035302725 -0.77466756
		 -0.21902557 0.013677949 -0.78653884 -0.21016143 0.038176242 -0.79145575 -0.21902557 0.062674373 -0.78653806
		 -0.24042541 0.072821677 -0.77466655 -0.26182526 0.062674001 -0.76279527 -0.27068955 0.038175706 -0.75787836
		 -0.24270737 0.038176041 -0.7787919 -0.16941696 -0.025714349 -0.82205558 -0.1264421 -0.042591713 -0.91131735
		 -0.090937503 -0.052505191 -0.99249405 -0.3955915 -0.12384102 -0.70028394 -0.39493102 0.034295429 -0.65616435
		 -0.3261061 0.26801133 -0.69299448 -0.29116929 -0.017908601 -0.74480414 -0.24217835 -0.041138921 -0.77198189
		 -0.19318743 -0.017907731 -0.79915887 -0.17289475 0.038176421 -0.81041521 -0.19318743 0.094260238 -0.79915708
		 -0.24217835 0.11749056 -0.77197945 -0.29116929 0.094259366 -0.74480247 -0.31146196 0.038175207 -0.73354608
		 -0.13728699 0.44682723 0.74445421 -0.12133652 0.16564839 0.98344338 -0.19928025 -0.056261081 1.015589237
		 -0.14586395 -0.31421757 0.96561152 -0.12433869 -0.46804756 0.68321335 -0.34005189 0.29871407 0.82290083
		 -0.44894829 0.039319381 0.81657135 -0.13920701 -0.42287484 0.85207784 -0.10021744 0.33882949 0.90748698
		 -0.4373655 -0.40543273 -0.24857104 -0.38691604 -0.39917433 -0.27824691 -0.33646744 -0.4054327 -0.24857104
		 -0.33646744 -0.43393543 -0.16201244 -0.38691604 -0.43845585 -0.13494344 -0.4373655 -0.43393543 -0.16201244
		 -0.41899818 -0.47510731 -0.26893723 -0.38691619 -0.47260475 -0.28980872 -0.35483444 -0.47510731 -0.26893723
		 -0.35483444 -0.48299542 -0.2248901 -0.38691619 -0.48376015 -0.20662545 -0.41899818 -0.48299542 -0.2248901
		 -0.41146547 -0.54348236 -0.27333623 -0.38691634 -0.54097998 -0.29519895 -0.36236724 -0.54348236 -0.27333623
		 -0.36236724 -0.5513705 -0.22450289 -0.38691634 -0.55213529 -0.20524698 -0.41146547 -0.5513705 -0.22450289
		 -0.41553399 -0.60078132 -0.29016474 -0.38691628 -0.59552747 -0.30842832 -0.35829872 -0.60078132 -0.29016474
		 -0.35829872 -0.61038965 -0.24425407 -0.38691628 -0.61192161 -0.22611713;
	setAttr ".vt[332:497]" -0.41553399 -0.61038965 -0.24425407 -0.41276771 -0.63515496 -0.30218971
		 -0.38691634 -0.63445145 -0.32147515 -0.361065 -0.63515496 -0.30218971 -0.361065 -0.63658518 -0.26300994
		 -0.38691634 -0.63716334 -0.2471699 -0.41276771 -0.63658518 -0.26300994 -0.38691634 -0.63582158 -0.28393373
		 -0.49073014 -0.25030148 -0.080672741 -0.37868392 -0.37411156 -0.066526681 -0.25014481 -0.45970654 -0.10861333
		 -0.24427384 -0.40914837 -0.29346851 -0.39457992 -0.33112109 -0.30746156 -0.4803119 -0.21741742 -0.24773927
		 -0.44097632 -0.46856344 0.54032439 -0.38307694 -0.47324795 0.51546305 -0.32517806 -0.47894302 0.54343826
		 -0.30119553 -0.47893548 0.60345876 -0.32517806 -0.47828874 0.66347945 -0.38307694 -0.47583869 0.68834078
		 -0.44097632 -0.47445405 0.66475767 -0.46495897 -0.47142947 0.60761064 -0.50327653 -0.22368696 0.52854514
		 -0.40690666 -0.31278989 0.50689715 -0.26287764 -0.35508376 0.56707799 -0.21308945 -0.4449921 0.67001462
		 -0.23489365 -0.44758469 0.79552674 -0.28805634 -0.37230206 0.8974402 -0.39990416 -0.25856778 0.88501686
		 -0.50188041 -0.18220598 0.76731896 -0.40483519 -0.59463412 0.60602647 -0.38307703 -0.5974794 0.59712523
		 -0.36131912 -0.59463412 0.60602647 -0.35230637 -0.58776522 0.62751603 -0.36131912 -0.58089638 0.64900559
		 -0.38307703 -0.57805109 0.65790677 -0.40483519 -0.58089638 0.64900559 -0.4138478 -0.58776522 0.62751603
		 -0.41204756 -0.61564451 0.60714072 -0.38307703 -0.61415029 0.59478837 -0.35410661 -0.61564451 0.60714072
		 -0.34210679 -0.6192522 0.63696218 -0.35410661 -0.6228599 0.66678345 -0.38307703 -0.62435424 0.67913598
		 -0.41204756 -0.6228599 0.66678345 -0.42404738 -0.6192522 0.63696218 -0.40483519 -0.65590149 0.59567255
		 -0.38307703 -0.6547792 0.58639532 -0.36131898 -0.65590149 0.59567255 -0.35230637 -0.658611 0.61806989
		 -0.36131898 -0.66132051 0.64046717 -0.38307703 -0.66244292 0.64974457 -0.40483519 -0.66132051 0.64046717
		 -0.4138478 -0.658611 0.61806989 -0.41660231 -0.72055894 0.55522114 -0.38307703 -0.71882963 0.54092669
		 -0.34955162 -0.72055894 0.55522114 -0.33566499 -0.72473371 0.58973145 -0.34955162 -0.72890884 0.62424159
		 -0.38307703 -0.73063797 0.63853639 -0.41660231 -0.72890884 0.62424159 -0.43048936 -0.72473371 0.58973145
		 -0.40445557 -0.74017656 0.56378901 -0.38307703 -0.73907381 0.55467361 -0.36169854 -0.74017656 0.56378901
		 -0.35284317 -0.74283874 0.58579564 -0.36169854 -0.74550116 0.60780215 -0.38307703 -0.74660385 0.61691773
		 -0.40445557 -0.74550116 0.60780215 -0.413311 -0.74283874 0.58579564 -0.38307709 -0.74283874 0.58579564
		 -0.33485803 0.35889938 -0.57188976 -0.4007875 0.18213356 -0.57384449 -0.3879348 0.17512807 -0.63641375
		 -0.33822814 0.32492325 -0.65496629 -0.21360992 0.42171031 -0.59986371 -0.25191513 0.37229294 -0.6826812
		 -0.39050645 0.42190415 -0.54320472 -0.4740895 0.23833725 -0.56381059 -0.45668161 0.23213565 -0.62748951
		 -0.3973825 0.38689479 -0.63790941 -0.23286667 0.4732894 -0.5942682 -0.29285645 0.42371705 -0.68123078
		 -0.44783264 0.51176786 -0.59398508 -0.57697541 0.36960551 -0.59399325 -0.54095685 0.33544216 -0.6428746
		 -0.44705641 0.43935749 -0.68992829 -0.23798233 0.55673438 -0.60013044 -0.30912796 0.49093217 -0.6973049
		 -0.44587982 0.55598027 -0.7500875 -0.61896425 0.52025676 -0.74307692 -0.59520751 0.4724097 -0.74501824
		 -0.44722626 0.47808444 -0.7648924 -0.2561 0.58778065 -0.73890227 -0.3189849 0.52135772 -0.75698632
		 -0.4493435 0.50675118 -0.85493124 -0.58255631 0.47969848 -0.84401214 -0.56476474 0.44486347 -0.83174706
		 -0.44904649 0.45912582 -0.83978581 -0.29447174 0.54069597 -0.84879392 -0.33619827 0.49750739 -0.84189385
		 -0.4598549 0.43784198 -0.9044956 -0.55624658 0.43076363 -0.89550459 -0.54334307 0.41836607 -0.87010759
		 -0.46349031 0.42264506 -0.87339842 -0.35343459 0.43255165 -0.90424538 -0.36916244 0.42088962 -0.88119727
		 -0.4583815 0.37037101 -0.91581696 -0.5264495 0.38326001 -0.90818489 -0.51733756 0.37450531 -0.89025044
		 -0.46094865 0.35963944 -0.89385724 -0.38323167 0.38452262 -0.91388428 -0.39344513 0.37628737 -0.88911897
		 0.042624205 0.24477918 0.99030465 0.066086426 0.14299248 1.010414958 -0.047109224 0.24477918 0.99030465
		 -0.062753141 0.14299248 1.010414958 0.026773835 0.24351822 1.032540679 0.043387603 0.17774308 1.070169926
		 -0.030637665 0.24351822 1.032540679 -0.036574706 0.17774308 1.070169926 0.014021912 0.26777726 1.070598245
		 0.033253174 0.24481931 1.12040305 -0.030932464 0.26777726 1.070598245 -0.020924225 0.24481931 1.12040305
		 -0.020196227 0.31896159 1.07209909 -0.010907745 0.33609068 1.11242712 -0.056463167 0.31896159 1.07209909
		 -0.057846528 0.33609068 1.11242712 -0.043557893 0.34910306 1.050323844 -0.054944612 0.39271775 1.046138644
		 -0.084705964 0.34910306 1.050323844 -0.10080917 0.39271775 1.046138644 -0.060857393 0.32499158 1.043529749
		 -0.068827972 0.3274706 1.000009417534 -0.11285965 0.32499158 1.039607167 -0.12310364 0.3274706 0.995839
		 -0.08184021 0.30198234 1.066264749 -0.087445833 0.26759648 1.062258601 -0.11842834 0.30198234 1.05724144
		 -0.13406602 0.26759648 1.052213669 -0.084517516 0.31621704 1.10789633 -0.099080965 0.28883526 1.1212666
		 -0.11894577 0.31621704 1.098083973 -0.13658355 0.28883526 1.10963309 -0.087463833 0.33756056 1.12265432
		 -0.095338136 0.3364116 1.14526951 -0.11122955 0.33756056 1.12449205 -0.12189896 0.3364116 1.14728963
		 -0.082284085 0.38942945 1.11852825 -0.083434142 0.37474659 1.13509965 -0.10661194 0.38942945 1.12173176
		 -0.11006699 0.37474659 1.13921618 -0.076233365 0.40747344 1.15122592 -0.079411924 0.38937813 1.15369105
		 -0.09653046 0.40747344 1.15462017 -0.10211716 0.38937813 1.1580199 -0.072422028 0.38699242 1.17713809
		 -0.078740537 0.37908214 1.16752875 -0.087319031 0.38699242 1.18006945 -0.095397033 0.37908214 1.17096424
		 -0.076795347 0.35932457 1.1736114 -0.081358492 0.36268291 1.16544414 -0.08745224 0.35932457 1.1758678
		 -0.09329468 0.36268291 1.16797161 0.049878541 0.22769077 -0.85202384;
	setAttr ".vt[498:567]" -0.049878541 0.22769077 -0.85202384 -0.050285798 0.3077949 -0.79833031
		 0.050285798 0.3077949 -0.79833031 0.0075186156 0.32681647 -1.3375597 -0.0075186156 0.32681647 -1.3375597
		 -0.0075799562 0.34078807 -1.33390713 0.0075799562 0.34078807 -1.33390713 0.07144165 0.36304101 -0.8025254
		 -0.07144165 0.36304101 -0.8025254 0.058878478 0.31140339 -0.83293563 -0.058878478 0.31140339 -0.83293563
		 0.038535155 0.34389105 -0.85549414 -0.038535155 0.34389105 -0.85549414 0.031758729 0.31603804 -0.87189722
		 -0.031758729 0.31603804 -0.87189722 0.021245422 0.35993361 -0.87626517 -0.021245422 0.35993361 -0.87626517
		 0.017509308 0.34837991 -0.88983363 -0.017509308 0.34837991 -0.88983363 0.11165711 0.3177551 -0.84604937
		 0.09470398 0.2819289 -0.84589881 0.046926726 0.28480494 -0.84988451 0.056939851 0.32114556 -0.8516348
		 -0.11165711 0.3177551 -0.84604937 -0.09470398 0.2819289 -0.84589881 -0.056939851 0.32114556 -0.8516348
		 -0.046926726 0.28480494 -0.84988451 0.056485597 0.24334739 -0.85909581 0.052712556 0.24705954 -0.86805785
		 0.071502835 0.2441835 -0.87070405 -0.056485597 0.24334739 -0.85909581 -0.052712556 0.24705954 -0.86805785
		 -0.071502835 0.2441835 -0.87070405 -0.23457992 -0.012857769 -0.76439643 -0.24269882 -0.00045700057 -0.77883995
		 -0.2715416 0.011021893 -0.76220948 -0.27314147 -0.002073061 -0.7423746 -0.19561051 -0.0020731755 -0.78538322
		 -0.21345167 0.011021512 -0.79443461 -0.18922715 0.038266633 -0.7889232 -0.21054611 0.038118571 -0.79604578
		 -0.20245117 0.074811816 -0.78158736 -0.21990402 0.063980117 -0.79085404 -0.23437637 0.089948781 -0.76387787
		 -0.24249466 0.074690737 -0.77832222 -0.2663008 0.074810505 -0.7461682 -0.26508653 0.063978665 -0.76578981
		 -0.27952376 0.03826585 -0.73883319 -0.27444458 0.038117602 -0.76059878 -0.24667084 0.03800451 -0.78568959
		 -0.25979018 0.07352224 -0.7492801 -0.2682521 0.060608204 -0.74518579 -0.34122345 0.1046373 -0.80228418
		 -0.3029705 0.075061701 -0.77732629 -0.29521003 0.086905092 -0.78108126 -0.26392043 0.057816926 -0.74811119
		 -0.26778442 0.047016092 -0.74390662 -0.34421843 0.071241125 -0.77010679 -0.30420029 0.053663243 -0.76105714
		 -0.30065659 0.063568734 -0.76491308 0.25979018 0.07352224 -0.7492801 0.2682521 0.060608204 -0.74518579
		 0.3412233 0.1046373 -0.80228418 0.30297044 0.075061701 -0.77732629 0.29521012 0.086905092 -0.78108126
		 0.26392043 0.057816926 -0.74811119 0.26778442 0.047016092 -0.74390662 0.34421828 0.071241125 -0.77010679
		 0.30420029 0.053663243 -0.76105714 0.30065659 0.063568734 -0.76491308;
	setAttr -s 1136 ".ed";
	setAttr ".ed[0:165]"  0 1 1 2 1 1 3 2 1 3 0 0 4 5 1 1 5 1 0 4 0 6 7 1 5 7 1
		 4 6 0 8 9 1 7 9 1 6 8 0 10 11 1 9 11 1 8 10 0 12 13 1 11 13 1 10 12 0 14 15 1 13 15 1
		 12 14 0 15 2 1 14 3 0 1 16 1 2 16 1 5 16 1 7 16 1 9 16 1 11 16 1 13 16 1 15 16 1
		 17 18 1 19 20 1 20 41 1 21 22 1 23 24 1 24 37 1 17 36 1 18 35 1 19 34 1 20 33 1 25 29 1
		 26 30 1 25 26 1 27 31 1 27 28 1 28 39 1 29 24 1 30 23 1 29 30 1 31 22 1 32 21 1 31 32 1
		 32 38 1 33 25 1 34 26 1 33 34 1 35 27 1 36 28 1 35 36 1 36 40 1 37 21 1 38 29 1 37 38 1
		 39 25 1 38 39 1 40 33 1 39 40 1 41 17 1 40 41 1 23 42 1 42 43 1 43 44 1 44 45 1 45 46 1
		 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 22 52 1 45 73 1 46 74 1 44 72 1 53 51 1
		 54 50 1 53 54 1 54 48 1 21 51 1 55 56 1 56 57 1 57 58 1 58 59 1 59 60 1 60 61 1 61 62 1
		 62 55 1 63 64 1 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 63 1 55 63 1 56 64 1
		 57 65 1 58 66 1 59 67 1 60 68 1 61 69 1 62 70 1 63 71 1 64 71 1 65 71 1 66 71 1 67 71 1
		 68 71 1 69 71 1 70 71 1 72 53 1 73 54 1 72 73 1 74 48 1 73 74 1 37 76 1 21 75 1 53 75 1
		 75 76 1 76 77 1 55 78 1 56 79 1 78 79 1 57 80 1 79 80 1 58 81 1 80 81 1 59 82 1 81 82 1
		 60 83 1 82 83 1 61 84 1 83 84 1 62 85 1 84 85 1 85 78 1 44 81 1 53 79 1 72 80 1 76 85 1
		 75 78 1 43 82 1 42 77 1 83 42 1 84 77 1 19 86 1 86 94 1 87 88 1 88 89 1 89 93 1 18 90 1
		 41 92 1 20 91 1;
	setAttr ".ed[166:331]" 91 87 1 92 88 1 91 92 1 86 91 1 93 90 1 94 87 1 95 96 1
		 96 97 1 97 98 1 98 99 1 99 100 1 100 95 1 95 131 1 96 130 1 97 129 1 98 128 1 99 127 1
		 100 126 1 95 101 1 96 102 1 101 102 1 97 103 1 102 103 1 103 104 1 98 104 1 99 105 1
		 104 105 1 100 106 1 105 106 1 106 101 1 101 107 1 102 108 1 107 108 1 103 109 1 108 109 1
		 109 110 1 104 110 1 105 111 1 110 111 1 106 112 1 111 112 1 112 107 1 107 113 1 108 114 1
		 113 114 1 109 115 1 114 115 1 115 116 1 110 116 1 111 117 1 116 117 1 112 118 1 117 118 1
		 118 113 1 113 119 1 114 120 1 119 120 1 115 121 1 120 121 1 121 122 1 116 122 1 117 123 1
		 122 123 1 118 124 1 123 124 1 124 119 1 119 125 1 120 125 1 121 125 1 122 125 1 123 125 1
		 124 125 1 126 39 1 127 28 1 126 127 1 128 27 1 127 128 1 129 31 1 128 129 1 130 32 1
		 129 130 1 131 38 1 130 131 1 131 126 1 132 133 1 133 134 1 134 135 1 135 136 1 136 137 1
		 137 138 1 138 139 1 139 132 1 140 141 1 141 142 1 142 143 1 143 144 1 144 145 1 145 146 1
		 146 147 1 147 140 1 132 140 1 133 141 1 134 142 1 135 143 1 136 144 1 137 145 1 138 146 1
		 139 147 1 132 148 1 133 149 1 148 149 1 134 150 1 149 150 1 135 151 1 150 151 1 136 152 1
		 151 152 1 137 153 1 152 153 1 138 154 1 153 154 1 139 155 1 154 155 1 155 148 1 148 156 1
		 149 157 1 156 157 1 150 158 1 157 158 1 151 159 1 158 159 1 152 160 1 159 160 1 153 161 1
		 160 161 1 154 162 1 161 162 1 155 163 1 162 163 1 163 156 1 156 164 1 157 165 1 164 165 1
		 158 166 1 165 166 1 159 167 1 166 167 1 160 168 1 167 168 1 161 169 1 168 169 1 162 170 1
		 169 170 1 163 171 1 170 171 1 171 164 1 164 172 1 165 173 1 172 173 1 166 174 1 173 174 1
		 167 175 1 174 175 1 168 176 1 175 176 1 169 177 1;
	setAttr ".ed[332:497]" 176 177 1 170 178 1 177 178 1 171 179 1 178 179 1 179 172 1
		 172 180 1 173 181 1 180 181 1 174 182 1 181 182 1 175 183 1 182 183 1 176 184 1 183 184 1
		 177 185 1 184 185 1 178 186 1 185 186 1 179 187 1 186 187 1 187 180 1 180 188 1 181 188 1
		 182 188 1 183 188 1 184 188 1 185 188 1 186 188 1 187 188 1 140 41 1 141 17 1 142 18 1
		 143 90 1 144 93 1 145 89 1 146 88 1 147 92 1 24 189 1 37 190 1 189 190 1 76 191 1
		 190 191 1 77 192 1 191 192 1 23 193 1 42 194 1 193 194 1 193 189 1 194 192 1 189 195 1
		 190 196 1 195 196 1 191 197 1 196 197 1 192 198 1 197 198 1 193 199 1 194 200 1 199 200 1
		 199 195 1 200 198 1 195 201 1 196 202 1 201 202 1 197 203 1 202 203 1 198 204 1 203 204 1
		 199 205 1 200 206 1 205 206 1 205 201 1 206 204 1 201 207 1 202 208 1 207 208 1 203 209 1
		 208 209 1 204 210 1 209 210 1 205 211 1 206 212 1 211 212 1 211 207 1 212 210 1 207 213 1
		 208 214 1 213 214 1 209 215 1 214 215 1 210 216 1 215 216 1 211 217 1 212 218 1 217 218 1
		 217 213 1 218 216 1 213 219 1 214 220 1 219 220 1 215 221 1 220 221 1 216 222 1 221 222 1
		 217 223 1 218 224 1 223 224 1 223 219 1 224 222 1 219 225 1 220 226 1 225 226 1 221 227 1
		 226 227 1 222 228 1 227 228 1 225 228 1 223 229 1 224 230 1 229 230 1 229 225 1 230 228 1
		 231 232 1 232 18 1 233 234 1 234 255 1 235 236 1 236 22 1 237 238 1 238 251 1 231 250 1
		 232 249 1 233 248 1 234 247 1 239 243 1 240 244 1 239 240 1 240 26 1 241 245 1 241 242 1
		 242 253 1 243 238 1 244 237 1 243 244 1 244 30 1 245 236 1 246 235 1 245 246 1 246 252 1
		 247 239 1 248 240 1 247 248 1 248 34 1 249 241 1 250 242 1 249 250 1 250 254 1 251 235 1
		 252 243 1 251 252 1 253 239 1 252 253 1 254 247 1 253 254 1 255 231 1;
	setAttr ".ed[498:663]" 254 255 1 23 237 1 19 233 1 31 245 1 27 241 1 35 249 1
		 237 256 1 42 256 1 256 257 1 43 257 1 257 258 1 44 258 1 258 259 1 45 259 1 259 260 1
		 46 260 1 260 261 1 47 261 1 261 262 1 48 262 1 262 263 1 49 263 1 263 264 1 50 264 1
		 264 265 1 51 265 1 265 266 1 52 266 1 236 266 1 259 287 1 260 288 1 258 286 1 267 265 1
		 268 264 1 267 268 1 268 262 1 235 265 1 269 270 1 270 271 1 271 272 1 272 273 1 273 274 1
		 274 275 1 275 276 1 276 269 1 277 278 1 278 279 1 279 280 1 280 281 1 281 282 1 282 283 1
		 283 284 1 284 277 1 269 277 1 270 278 1 271 279 1 272 280 1 273 281 1 274 282 1 275 283 1
		 276 284 1 277 285 1 278 285 1 279 285 1 280 285 1 281 285 1 282 285 1 283 285 1 284 285 1
		 286 267 1 287 268 1 286 287 1 288 262 1 287 288 1 251 290 1 235 289 1 267 289 1 289 290 1
		 290 291 1 269 292 1 270 293 1 292 293 1 271 294 1 293 294 1 272 295 1 294 295 1 273 296 1
		 295 296 1 274 297 1 296 297 1 275 298 1 297 298 1 276 299 1 298 299 1 299 292 1 258 295 1
		 267 293 1 286 294 1 290 299 1 289 292 1 257 296 1 256 291 1 297 256 1 298 291 1 233 300 1
		 86 300 1 300 308 1 87 301 1 301 302 1 88 302 1 302 303 1 89 303 1 303 307 1 90 304 1
		 232 304 1 255 306 1 234 305 1 305 301 1 306 302 1 305 306 1 300 305 1 307 304 1 307 93 1
		 308 301 1 94 308 1 309 310 1 310 311 1 311 312 1 312 313 1 313 314 1 314 309 1 309 345 1
		 310 344 1 311 343 1 312 342 1 313 341 1 314 340 1 309 315 1 310 316 1 315 316 1 311 317 1
		 316 317 1 317 318 1 312 318 1 313 319 1 318 319 1 314 320 1 319 320 1 320 315 1 315 321 1
		 316 322 1 321 322 1 317 323 1 322 323 1 323 324 1 318 324 1 319 325 1 324 325 1 320 326 1
		 325 326 1 326 321 1 321 327 1 322 328 1 327 328 1 323 329 1 328 329 1;
	setAttr ".ed[664:829]" 329 330 1 324 330 1 325 331 1 330 331 1 326 332 1 331 332 1
		 332 327 1 327 333 1 328 334 1 333 334 1 329 335 1 334 335 1 335 336 1 330 336 1 331 337 1
		 336 337 1 332 338 1 337 338 1 338 333 1 333 339 1 334 339 1 335 339 1 336 339 1 337 339 1
		 338 339 1 340 253 1 341 242 1 340 341 1 342 241 1 341 342 1 343 245 1 342 343 1 344 246 1
		 343 344 1 345 252 1 344 345 1 345 340 1 346 347 1 347 348 1 348 349 1 349 350 1 350 351 1
		 351 352 1 352 353 1 353 346 1 354 355 1 355 356 1 356 357 1 357 358 1 358 359 1 359 360 1
		 360 361 1 361 354 1 346 354 1 347 355 1 348 356 1 349 357 1 350 358 1 351 359 1 352 360 1
		 353 361 1 346 362 1 347 363 1 362 363 1 348 364 1 363 364 1 349 365 1 364 365 1 350 366 1
		 365 366 1 351 367 1 366 367 1 352 368 1 367 368 1 353 369 1 368 369 1 369 362 1 362 370 1
		 363 371 1 370 371 1 364 372 1 371 372 1 365 373 1 372 373 1 366 374 1 373 374 1 367 375 1
		 374 375 1 368 376 1 375 376 1 369 377 1 376 377 1 377 370 1 370 378 1 371 379 1 378 379 1
		 372 380 1 379 380 1 373 381 1 380 381 1 374 382 1 381 382 1 375 383 1 382 383 1 376 384 1
		 383 384 1 377 385 1 384 385 1 385 378 1 378 386 1 379 387 1 386 387 1 380 388 1 387 388 1
		 381 389 1 388 389 1 382 390 1 389 390 1 383 391 1 390 391 1 384 392 1 391 392 1 385 393 1
		 392 393 1 393 386 1 386 394 1 387 395 1 394 395 1 388 396 1 395 396 1 389 397 1 396 397 1
		 390 398 1 397 398 1 391 399 1 398 399 1 392 400 1 399 400 1 393 401 1 400 401 1 401 394 1
		 394 402 1 395 402 1 396 402 1 397 402 1 398 402 1 399 402 1 400 402 1 401 402 1 354 255 1
		 355 231 1 356 232 1 357 304 1 358 307 1 359 303 1 360 302 1 361 306 1 238 403 1 251 404 1
		 403 404 1 290 405 1 404 405 1 291 406 1 405 406 1 237 407 1 256 408 1;
	setAttr ".ed[830:995]" 407 408 1 407 403 1 408 406 1 403 409 1 404 410 1 409 410 1
		 405 411 1 410 411 1 406 412 1 411 412 1 407 413 1 408 414 1 413 414 1 413 409 1 414 412 1
		 409 415 1 410 416 1 415 416 1 411 417 1 416 417 1 412 418 1 417 418 1 413 419 1 414 420 1
		 419 420 1 419 415 1 420 418 1 415 421 1 416 422 1 421 422 1 417 423 1 422 423 1 418 424 1
		 423 424 1 419 425 1 420 426 1 425 426 1 425 421 1 426 424 1 421 427 1 422 428 1 427 428 1
		 423 429 1 428 429 1 424 430 1 429 430 1 425 431 1 426 432 1 431 432 1 431 427 1 432 430 1
		 427 433 1 428 434 1 433 434 1 429 435 1 434 435 1 430 436 1 435 436 1 431 437 1 432 438 1
		 437 438 1 437 433 1 438 436 1 433 439 1 434 440 1 439 440 1 435 441 1 440 441 1 436 442 1
		 441 442 1 439 442 1 437 443 1 438 444 1 443 444 1 443 439 1 444 442 1 94 445 1 87 446 1
		 445 446 1 308 447 1 445 447 1 301 448 1 447 448 1 446 448 1 445 449 1 446 450 1 449 450 1
		 447 451 1 449 451 1 448 452 1 451 452 1 450 452 1 449 453 1 450 454 1 453 454 1 451 455 1
		 453 455 1 452 456 1 455 456 1 454 456 1 453 457 1 454 458 1 457 458 1 455 459 1 457 459 1
		 456 460 1 459 460 1 458 460 1 457 461 1 458 462 1 461 462 1 459 463 1 461 463 1 460 464 1
		 463 464 1 462 464 1 461 465 1 462 466 1 465 466 1 463 467 1 465 467 1 464 468 1 467 468 1
		 466 468 1 465 469 1 466 470 1 469 470 1 467 471 1 469 471 1 468 472 1 471 472 1 470 472 1
		 469 473 1 470 474 1 473 474 1 471 475 1 473 475 1 472 476 1 475 476 1 474 476 1 473 477 1
		 474 478 1 477 478 1 475 479 1 477 479 1 476 480 1 479 480 1 478 480 1 477 481 1 478 482 1
		 481 482 1 479 483 1 481 483 1 480 484 1 483 484 1 482 484 1 481 485 1 482 486 1 485 486 1
		 483 487 1 485 487 1 484 488 1 487 488 1 486 488 1 485 489 1 486 490 1;
	setAttr ".ed[996:1135]" 489 490 1 487 491 1 489 491 1 488 492 1 491 492 1 490 492 1
		 489 493 1 490 494 1 493 494 1 491 495 1 493 495 1 492 496 1 495 496 1 494 496 1 43 497 1
		 257 498 1 497 498 1 256 499 1 499 498 1 42 500 1 500 499 1 500 497 1 497 501 1 498 502 1
		 501 502 1 499 503 1 503 502 1 500 504 1 504 503 1 504 501 1 42 505 1 256 506 1 505 506 1
		 500 507 1 505 507 1 499 508 1 507 508 1 506 508 1 505 509 1 506 510 1 509 510 1 507 511 1
		 509 511 1 508 512 1 511 512 1 510 512 1 509 513 1 510 514 1 513 514 1 511 515 1 513 515 1
		 512 516 1 515 516 1 514 516 1 42 517 1 500 518 1 517 518 1 507 519 1 518 519 1 505 520 1
		 520 519 1 517 520 1 256 521 1 499 522 1 521 522 1 506 523 1 521 523 1 508 524 1 523 524 1
		 522 524 1 499 524 1 500 519 1 500 525 1 519 526 1 525 526 1 518 527 1 527 526 1 525 527 1
		 499 528 1 524 529 1 528 529 1 522 530 1 528 530 1 530 529 1 531 532 1 533 532 1 534 533 1
		 534 531 0 535 536 1 532 536 1 531 535 0 537 538 1 536 538 1 535 537 0 539 540 1 538 540 1
		 537 539 0 541 542 1 540 542 1 539 541 0 543 544 1 542 544 1 541 543 0 545 546 1 544 546 1
		 543 545 0 546 533 1 545 534 0 532 547 1 533 547 1 536 547 1 538 547 1 540 547 1 542 547 1
		 544 547 1 546 547 1 548 549 0 548 552 0 549 551 0 551 550 0 552 550 0 551 552 1 553 554 0
		 553 557 0 554 556 0 556 555 0 557 555 0 556 557 1 558 559 0 558 562 0 559 561 0 561 560 0
		 562 560 0 561 562 1 563 564 0 563 567 0 564 566 0 566 565 0 567 565 0 566 567 1;
	setAttr -s 576 -ch 2236 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 0 -2 -3 3
		mu 0 4 0 1 2 3
		f 4 4 -6 -1 6
		mu 0 4 4 5 1 0
		f 4 7 -9 -5 9
		mu 0 4 6 7 5 4
		f 4 10 -12 -8 12
		mu 0 4 8 9 7 6
		f 4 13 -15 -11 15
		mu 0 4 10 11 9 8
		f 4 16 -18 -14 18
		mu 0 4 12 13 11 10
		f 4 19 -21 -17 21
		mu 0 4 14 15 13 12
		f 4 2 -23 -20 23
		mu 0 4 3 2 15 14
		f 3 24 -26 1
		mu 0 3 1 16 2
		f 3 26 -25 5
		mu 0 3 5 16 1
		f 3 27 -27 8
		mu 0 3 7 16 5
		f 3 28 -28 11
		mu 0 3 9 16 7
		f 3 29 -29 14
		mu 0 3 11 16 9
		f 3 30 -30 17
		mu 0 3 13 16 11
		f 3 31 -31 20
		mu 0 3 15 16 13
		f 3 25 -32 22
		mu 0 3 2 16 15
		f 4 32 39 60 -39
		mu 0 4 19 20 664 22
		f 4 40 -486 -466 -501
		mu 0 4 23 24 25 703
		f 4 33 41 57 -41
		mu 0 4 672 28 29 666
		f 4 69 38 61 70
		mu 0 4 30 19 22 31
		f 4 -45 42 50 -44
		mu 0 4 667 33 37 670
		f 4 43 -478 -469 470
		mu 0 4 32 38 39 702
		f 4 -51 48 -37 -50
		mu 0 4 670 37 42 43
		f 4 49 499 -476 477
		mu 0 4 38 671 44 39
		f 4 -54 51 -36 -53
		mu 0 4 102 668 669 119
		f 4 -55 52 -63 64
		mu 0 4 120 102 119 121
		f 4 -58 55 44 -57
		mu 0 4 666 29 33 667
		f 4 56 -471 -484 485
		mu 0 4 24 32 702 25
		f 4 -61 58 46 -60
		mu 0 4 22 664 665 123
		f 4 -62 59 47 68
		mu 0 4 31 22 123 124
		f 4 -64 -65 -38 -49
		mu 0 4 37 120 121 42
		f 4 -66 -67 63 -43
		mu 0 4 33 124 120 37
		f 4 -68 -69 65 -56
		mu 0 4 29 31 124 33
		f 4 34 -71 67 -42
		mu 0 4 28 30 31 29
		f 4 -83 -461 526 -526
		mu 0 4 34 35 36 40
		f 4 -76 83 127 -85
		mu 0 4 41 45 46 49
		f 4 -75 85 125 -84
		mu 0 4 45 50 52 46
		f 4 -89 86 -81 -88
		mu 0 4 54 56 58 60
		f 4 -90 87 -80 -79
		mu 0 4 643 54 60 64
		f 4 82 -82 -91 35
		mu 0 4 35 34 58 65
		f 4 108 -100 -108 91
		mu 0 4 481 47 48 475
		f 4 109 -101 -109 92
		mu 0 4 480 51 47 481
		f 4 110 -102 -110 93
		mu 0 4 479 53 51 480
		f 4 111 -103 -111 94
		mu 0 4 478 55 53 479
		f 4 112 -104 -112 95
		mu 0 4 477 57 55 478
		f 4 113 -105 -113 96
		mu 0 4 476 59 57 477
		f 4 114 -106 -114 97
		mu 0 4 474 61 59 476
		f 4 107 -107 -115 98
		mu 0 4 475 48 61 474
		f 3 116 -116 99
		mu 0 3 47 62 48
		f 3 117 -117 100
		mu 0 3 51 62 47
		f 3 118 -118 101
		mu 0 3 53 62 51
		f 3 119 -119 102
		mu 0 3 55 62 53
		f 3 120 -120 103
		mu 0 3 57 62 55
		f 3 121 -121 104
		mu 0 3 59 62 57
		f 3 122 -122 105
		mu 0 3 61 62 59
		f 3 115 -123 106
		mu 0 3 48 62 61
		f 4 -126 123 88 -125
		mu 0 4 46 52 56 54
		f 4 -128 124 89 -127
		mu 0 4 49 46 54 643
		f 4 -77 84 126 -78
		mu 0 4 642 41 49 643
		f 4 62 129 131 -129
		mu 0 4 71 65 72 73
		f 4 90 -87 130 -130
		mu 0 4 65 58 56 72
		f 4 444 446 448 -450
		mu 0 4 66 67 541 540
		f 4 -92 133 135 -135
		mu 0 4 74 75 76 77
		f 4 -93 134 137 -137
		mu 0 4 78 74 77 81
		f 4 -94 136 139 -139
		mu 0 4 82 78 81 83
		f 4 -95 138 141 -141
		mu 0 4 84 82 83 85
		f 4 -96 140 143 -143
		mu 0 4 88 84 85 89
		f 4 -97 142 145 -145
		mu 0 4 90 88 89 91
		f 4 -98 144 147 -147
		mu 0 4 92 90 91 93
		f 4 -99 146 148 -134
		mu 0 4 75 92 93 76
		f 4 -124 151 -138 -151
		mu 0 4 56 52 81 77
		f 4 -86 149 -140 -152
		mu 0 4 52 50 83 81
		f 4 -132 153 -149 -153
		mu 0 4 73 72 76 93
		f 4 -131 150 -136 -154
		mu 0 4 72 56 77 76
		f 4 -74 154 -142 -150
		mu 0 4 50 96 85 83
		f 4 -453 453 449 -455
		mu 0 4 79 80 66 540
		f 4 -146 156 155 -158
		mu 0 4 91 89 618 98
		f 4 -73 -157 -144 -155
		mu 0 4 96 618 89 85
		f 4 -133 152 -148 157
		mu 0 4 98 73 93 91
		f 4 -159 500 602 -604
		mu 0 4 103 617 26 104
		f 4 -160 603 604 -623
		mu 0 4 105 103 104 106
		f 4 -161 605 606 -608
		mu 0 4 107 108 109 110
		f 4 -162 607 608 -610
		mu 0 4 111 107 110 112
		f 4 -171 -621 619 -612
		mu 0 4 113 114 115 116
		f 4 -35 165 168 -165
		mu 0 4 101 27 149 150
		f 4 -169 166 160 -168
		mu 0 4 150 149 108 107
		f 4 158 169 -166 -34
		mu 0 4 617 103 149 27
		f 4 -163 609 610 620
		mu 0 4 114 111 112 115
		f 4 -1005 1006 1008 -1010
		mu 0 4 94 677 521 520
		f 4 171 -167 -170 159
		mu 0 4 105 108 149 103
		f 4 172 179 248 -179
		mu 0 4 125 126 660 659
		f 4 173 180 246 -180
		mu 0 4 126 127 661 660
		f 4 244 -181 174 181
		mu 0 4 662 661 127 128
		f 4 175 182 242 -182
		mu 0 4 128 129 663 662
		f 4 176 183 240 -183
		mu 0 4 129 130 131 663
		f 4 249 -184 177 178
		mu 0 4 659 131 130 125
		f 4 -173 184 186 -186
		mu 0 4 126 125 132 133
		f 4 -174 185 188 -188
		mu 0 4 127 126 133 134
		f 4 -191 -175 187 189
		mu 0 4 135 128 127 134
		f 4 -176 190 192 -192
		mu 0 4 129 128 135 136
		f 4 -177 191 194 -194
		mu 0 4 130 129 136 137
		f 4 -185 -178 193 195
		mu 0 4 132 125 130 137
		f 4 -187 196 198 -198
		mu 0 4 133 132 743 747
		f 4 -189 197 200 -200
		mu 0 4 134 133 747 746
		f 4 -203 -190 199 201
		mu 0 4 745 135 134 746
		f 4 -193 202 204 -204
		mu 0 4 136 135 745 744
		f 4 -195 203 206 -206
		mu 0 4 137 136 744 742
		f 4 -197 -196 205 207
		mu 0 4 743 132 137 742
		f 4 -199 208 210 -210
		mu 0 4 139 138 144 145
		f 4 -201 209 212 -212
		mu 0 4 140 139 145 146
		f 4 -215 -202 211 213
		mu 0 4 147 141 140 146
		f 4 -205 214 216 -216
		mu 0 4 142 141 147 148
		f 4 -207 215 218 -218
		mu 0 4 143 142 148 260
		f 4 -209 -208 217 219
		mu 0 4 144 138 143 260
		f 4 -211 220 222 -222
		mu 0 4 145 144 262 264
		f 4 -213 221 224 -224
		mu 0 4 146 145 264 265
		f 4 -227 -214 223 225
		mu 0 4 267 147 146 265
		f 4 -217 226 228 -228
		mu 0 4 148 147 267 268
		f 4 -219 227 230 -230
		mu 0 4 260 148 268 270
		f 4 -221 -220 229 231
		mu 0 4 262 144 260 270
		f 3 -223 232 -234
		mu 0 3 264 262 272
		f 3 -225 233 -235
		mu 0 3 265 264 272
		f 3 -236 -226 234
		mu 0 3 272 267 265
		f 3 -229 235 -237
		mu 0 3 268 267 272
		f 3 -231 236 -238
		mu 0 3 270 268 272
		f 3 -233 -232 237
		mu 0 3 272 262 270
		f 4 -241 238 -48 -240
		mu 0 4 663 131 124 123
		f 4 -243 239 -47 -242
		mu 0 4 662 663 123 665
		f 4 45 -244 -245 241
		mu 0 4 665 668 661 662
		f 4 -247 243 53 -246
		mu 0 4 660 661 668 102
		f 4 -249 245 54 -248
		mu 0 4 659 660 102 120
		f 4 66 -239 -250 247
		mu 0 4 120 124 131 659
		f 4 250 267 -259 -267
		mu 0 4 151 152 155 157
		f 4 251 268 -260 -268
		mu 0 4 152 159 719 155
		f 4 252 269 -261 -269
		mu 0 4 718 163 165 161
		f 4 253 270 -262 -270
		mu 0 4 163 167 168 165
		f 4 254 271 -263 -271
		mu 0 4 167 169 170 168
		f 4 255 272 -264 -272
		mu 0 4 169 171 202 170
		f 4 256 273 -265 -273
		mu 0 4 171 203 204 202
		f 4 257 266 -266 -274
		mu 0 4 203 151 157 204
		f 4 -251 274 276 -276
		mu 0 4 152 151 205 206
		f 4 -252 275 278 -278
		mu 0 4 159 152 206 207
		f 4 -253 277 280 -280
		mu 0 4 163 718 717 208
		f 4 -254 279 282 -282
		mu 0 4 167 163 208 209
		f 4 -255 281 284 -284
		mu 0 4 169 167 209 210
		f 4 -256 283 286 -286
		mu 0 4 171 169 210 211
		f 4 -257 285 288 -288
		mu 0 4 203 171 211 212
		f 4 -258 287 289 -275
		mu 0 4 151 203 212 205
		f 4 -277 290 292 -292
		mu 0 4 206 205 213 214
		f 4 -279 291 294 -294
		mu 0 4 207 206 214 215
		f 4 -281 293 296 -296
		mu 0 4 208 717 716 216
		f 4 -283 295 298 -298
		mu 0 4 209 208 216 217
		f 4 -285 297 300 -300
		mu 0 4 210 209 217 222
		f 4 -287 299 302 -302
		mu 0 4 211 210 222 223
		f 4 -289 301 304 -304
		mu 0 4 212 211 223 224
		f 4 -290 303 305 -291
		mu 0 4 205 212 224 213
		f 4 -293 306 308 -308
		mu 0 4 214 213 225 226
		f 4 -295 307 310 -310
		mu 0 4 215 214 226 227
		f 4 -297 309 312 -312
		mu 0 4 216 716 715 228
		f 4 -299 311 314 -314
		mu 0 4 217 216 228 229
		f 4 -301 313 316 -316
		mu 0 4 222 217 229 230
		f 4 -303 315 318 -318
		mu 0 4 223 222 230 231
		f 4 -305 317 320 -320
		mu 0 4 224 223 231 232
		f 4 -306 319 321 -307
		mu 0 4 213 224 232 225
		f 4 -309 322 324 -324
		mu 0 4 226 225 233 234
		f 4 -311 323 326 -326
		mu 0 4 227 226 234 237
		f 4 -313 325 328 -328
		mu 0 4 228 715 714 239
		f 4 -315 327 330 -330
		mu 0 4 229 228 239 241
		f 4 -317 329 332 -332
		mu 0 4 230 229 241 243
		f 4 -319 331 334 -334
		mu 0 4 231 230 243 245
		f 4 -321 333 336 -336
		mu 0 4 232 231 245 259
		f 4 -322 335 337 -323
		mu 0 4 225 232 259 233
		f 4 -325 338 340 -340
		mu 0 4 234 233 729 735
		f 4 -327 339 342 -342
		mu 0 4 237 234 735 734
		f 4 -329 341 344 -344
		mu 0 4 239 714 713 733
		f 4 -331 343 346 -346
		mu 0 4 241 239 733 732
		f 4 -333 345 348 -348
		mu 0 4 243 241 732 731
		f 4 -335 347 350 -350
		mu 0 4 245 243 731 730
		f 4 -337 349 352 -352
		mu 0 4 259 245 730 728
		f 4 -338 351 353 -339
		mu 0 4 233 259 728 729
		f 3 -341 354 -356
		mu 0 3 408 729 439
		f 3 -343 355 -357
		mu 0 3 734 408 439
		f 3 -345 356 -358
		mu 0 3 412 713 439
		f 3 -347 357 -359
		mu 0 3 414 412 439
		f 3 -349 358 -360
		mu 0 3 416 414 439
		f 3 -351 359 -361
		mu 0 3 418 416 439
		f 3 -353 360 -362
		mu 0 3 420 418 439
		f 3 -354 361 -355
		mu 0 3 729 420 439
		f 4 258 363 -70 -363
		mu 0 4 154 153 17 101
		f 4 259 364 -33 -364
		mu 0 4 153 156 18 17
		f 4 260 365 -164 -365
		mu 0 4 156 158 113 18
		f 4 261 366 170 -366
		mu 0 4 158 160 114 113
		f 4 262 367 162 -367
		mu 0 4 160 162 111 114
		f 4 263 368 161 -368
		mu 0 4 162 164 107 111
		f 4 264 369 167 -369
		mu 0 4 164 166 150 107
		f 4 265 362 164 -370
		mu 0 4 166 154 101 150
		f 4 37 371 -373 -371
		mu 0 4 99 71 100 247
		f 4 128 373 -375 -372
		mu 0 4 71 73 250 100
		f 4 132 375 -377 -374
		mu 0 4 73 98 251 250
		f 4 -72 377 379 -379
		mu 0 4 618 256 257 258
		f 4 36 370 -381 -378
		mu 0 4 256 99 247 257
		f 4 -156 378 381 -376
		mu 0 4 98 618 258 251
		f 4 372 383 -385 -383
		mu 0 4 173 172 177 178
		f 4 374 385 -387 -384
		mu 0 4 172 547 546 177
		f 4 376 387 -389 -386
		mu 0 4 174 175 180 179
		f 4 -380 389 391 -391
		mu 0 4 176 554 552 181
		f 4 380 382 -393 -390
		mu 0 4 554 173 178 552
		f 4 -382 390 393 -388
		mu 0 4 175 176 181 180
		f 4 384 395 -397 -395
		mu 0 4 178 177 182 183
		f 4 386 397 -399 -396
		mu 0 4 177 546 545 182
		f 4 388 399 -401 -398
		mu 0 4 179 180 185 184
		f 4 -392 401 403 -403
		mu 0 4 181 552 551 186
		f 4 392 394 -405 -402
		mu 0 4 552 178 183 551
		f 4 -394 402 405 -400
		mu 0 4 180 181 186 185
		f 4 396 407 -409 -407
		mu 0 4 183 182 187 188
		f 4 398 409 -411 -408
		mu 0 4 182 545 544 187
		f 4 400 411 -413 -410
		mu 0 4 184 185 190 189
		f 4 -404 413 415 -415
		mu 0 4 186 551 550 191
		f 4 404 406 -417 -414
		mu 0 4 551 183 188 550
		f 4 -406 414 417 -412
		mu 0 4 185 186 191 190
		f 4 408 419 -421 -419
		mu 0 4 188 187 192 193
		f 4 410 421 -423 -420
		mu 0 4 187 544 543 192
		f 4 412 423 -425 -422
		mu 0 4 189 190 195 194
		f 4 -416 425 427 -427
		mu 0 4 191 550 549 196
		f 4 416 418 -429 -426
		mu 0 4 550 188 193 549
		f 4 -418 426 429 -424
		mu 0 4 190 191 196 195
		f 4 420 431 -433 -431
		mu 0 4 193 192 197 198
		f 4 422 433 -435 -432
		mu 0 4 192 543 542 197
		f 4 424 435 -437 -434
		mu 0 4 194 195 200 199
		f 4 -428 437 439 -439
		mu 0 4 196 549 548 201
		f 4 428 430 -441 -438
		mu 0 4 549 193 198 548
		f 4 -430 438 441 -436
		mu 0 4 195 196 201 200
		f 4 432 443 -445 -443
		mu 0 4 198 197 67 66
		f 4 434 445 -447 -444
		mu 0 4 197 542 541 67
		f 4 436 447 -449 -446
		mu 0 4 199 200 69 68
		f 4 -440 450 452 -452
		mu 0 4 201 548 80 79
		f 4 440 442 -454 -451
		mu 0 4 548 198 66 80
		f 4 -442 451 454 -448
		mu 0 4 200 201 79 69
		f 4 463 -489 -465 -456
		mu 0 4 273 275 704 705
		f 4 465 -485 -467 -458
		mu 0 4 703 25 310 312
		f 4 -499 -490 -464 -498
		mu 0 4 313 314 275 273
		f 4 468 -477 -468 469
		mu 0 4 702 39 315 316
		f 4 475 461 -475 476
		mu 0 4 39 44 317 315
		f 4 479 459 -479 480
		mu 0 4 318 319 320 321
		f 4 -493 490 -480 481
		mu 0 4 322 323 319 318
		f 4 483 -470 -483 484
		mu 0 4 25 702 316 310
		f 4 487 -473 -487 488
		mu 0 4 275 324 325 704
		f 4 -497 -474 -488 489
		mu 0 4 314 326 324 275
		f 4 474 462 492 491
		mu 0 4 315 317 323 322
		f 4 467 -492 494 493
		mu 0 4 316 315 322 326
		f 4 482 -494 496 495
		mu 0 4 310 316 326 314
		f 4 466 -496 498 -459
		mu 0 4 312 310 314 313
		f 4 501 478 460 -52
		mu 0 4 117 321 320 118
		f 4 502 471 -502 -46
		mu 0 4 122 325 321 117
		f 4 503 486 -503 -59
		mu 0 4 21 704 325 122
		f 4 -457 464 -504 -40
		mu 0 4 673 705 704 21
		f 4 505 -505 -500 71
		mu 0 4 618 620 271 256
		f 4 1020 -1023 -1025 1025
		mu 0 4 218 463 220 221
		f 4 509 -509 -508 73
		mu 0 4 50 274 276 96
		f 4 511 -511 -510 74
		mu 0 4 45 277 274 50
		f 4 513 -513 -512 75
		mu 0 4 41 278 277 45
		f 4 515 -515 -514 76
		mu 0 4 642 641 278 41
		f 4 517 -517 -516 77
		mu 0 4 63 640 279 70
		f 4 519 -519 -518 78
		mu 0 4 638 639 640 63
		f 4 521 -521 -520 79
		mu 0 4 60 282 281 64
		f 4 523 -523 -522 80
		mu 0 4 58 283 282 60
		f 4 525 -525 -524 81
		mu 0 4 34 40 283 58
		f 4 528 -572 -528 512
		mu 0 4 278 284 285 277
		f 4 527 -570 -530 510
		mu 0 4 277 285 286 274
		f 4 531 522 -531 532
		mu 0 4 287 282 283 288
		f 4 518 520 -532 533
		mu 0 4 280 281 282 287
		f 4 -460 534 524 -527
		mu 0 4 36 289 283 40
		f 4 -536 551 543 -553
		mu 0 4 473 467 235 236
		f 4 -537 552 544 -554
		mu 0 4 472 473 236 238
		f 4 -538 553 545 -555
		mu 0 4 471 472 238 240
		f 4 -539 554 546 -556
		mu 0 4 470 471 240 242
		f 4 -540 555 547 -557
		mu 0 4 469 470 242 244
		f 4 -541 556 548 -558
		mu 0 4 468 469 244 246
		f 4 -542 557 549 -559
		mu 0 4 466 468 246 248
		f 4 -543 558 550 -552
		mu 0 4 467 466 248 235
		f 3 -544 559 -561
		mu 0 3 236 235 249
		f 3 -545 560 -562
		mu 0 3 238 236 249
		f 3 -546 561 -563
		mu 0 3 240 238 249
		f 3 -547 562 -564
		mu 0 3 242 240 249
		f 3 -548 563 -565
		mu 0 3 244 242 249
		f 3 -549 564 -566
		mu 0 3 246 244 249
		f 3 -550 565 -567
		mu 0 3 248 246 249
		f 3 -551 566 -560
		mu 0 3 235 248 249
		f 4 568 -533 -568 569
		mu 0 4 285 287 288 286
		f 4 570 -534 -569 571
		mu 0 4 284 280 287 285
		f 4 516 -571 -529 514
		mu 0 4 641 280 284 278
		f 4 572 -576 -574 -491
		mu 0 4 290 291 292 289
		f 4 573 -575 530 -535
		mu 0 4 289 292 288 283
		f 4 900 -900 -898 -896
		mu 0 4 252 253 254 255
		f 4 578 -580 -578 535
		mu 0 4 293 294 295 296
		f 4 580 -582 -579 536
		mu 0 4 297 298 294 293
		f 4 582 -584 -581 537
		mu 0 4 299 300 298 297
		f 4 584 -586 -583 538
		mu 0 4 301 302 300 299
		f 4 586 -588 -585 539
		mu 0 4 303 304 302 301
		f 4 588 -590 -587 540
		mu 0 4 305 306 304 303
		f 4 590 -592 -589 541
		mu 0 4 307 308 306 305
		f 4 577 -593 -591 542
		mu 0 4 296 295 308 307
		f 4 594 581 -596 567
		mu 0 4 288 294 298 286
		f 4 595 583 -594 529
		mu 0 4 286 298 300 274
		f 4 596 592 -598 575
		mu 0 4 291 308 295 292
		f 4 597 579 -595 574
		mu 0 4 292 295 294 288
		f 4 593 585 -599 508
		mu 0 4 274 300 302 276
		f 4 905 -901 -905 903
		mu 0 4 556 253 252 263
		f 4 601 -600 -601 589
		mu 0 4 306 309 620 304
		f 4 598 587 600 506
		mu 0 4 276 302 304 620
		f 4 -602 591 -597 576
		mu 0 4 309 306 308 291
		f 4 611 -613 456 163
		mu 0 4 113 116 266 18
		f 4 613 -618 -615 458
		mu 0 4 404 406 407 311
		f 4 616 -607 -616 617
		mu 0 4 406 110 109 407
		f 4 457 614 -619 -603
		mu 0 4 26 311 407 104
		f 4 -605 618 615 -622
		mu 0 4 106 104 407 109
		f 4 629 -700 -631 -624
		mu 0 4 327 328 329 330
		f 4 630 -698 -632 -625
		mu 0 4 330 329 331 332
		f 4 -633 -626 631 -696
		mu 0 4 333 334 332 331
		f 4 632 -694 -634 -627
		mu 0 4 334 333 335 336
		f 4 633 -692 -635 -628
		mu 0 4 336 335 658 337
		f 4 -630 -629 634 -701
		mu 0 4 328 327 337 658
		f 4 636 -638 -636 623
		mu 0 4 330 394 395 327
		f 4 638 -640 -637 624
		mu 0 4 332 396 394 330
		f 4 -641 -639 625 641
		mu 0 4 397 396 332 334
		f 4 642 -644 -642 626
		mu 0 4 336 398 397 334
		f 4 644 -646 -643 627
		mu 0 4 337 399 398 336
		f 4 -647 -645 628 635
		mu 0 4 395 399 337 327
		f 4 648 -650 -648 637
		mu 0 4 394 741 737 395
		f 4 650 -652 -649 639
		mu 0 4 396 740 741 394
		f 4 -653 -651 640 653
		mu 0 4 739 740 396 397
		f 4 654 -656 -654 643
		mu 0 4 398 738 739 397
		f 4 656 -658 -655 645
		mu 0 4 399 736 738 398
		f 4 -659 -657 646 647
		mu 0 4 737 736 399 395
		f 4 660 -662 -660 649
		mu 0 4 400 600 602 401
		f 4 662 -664 -661 651
		mu 0 4 402 603 600 400
		f 4 -665 -663 652 665
		mu 0 4 605 603 402 403
		f 4 666 -668 -666 655
		mu 0 4 405 606 605 403
		f 4 668 -670 -667 657
		mu 0 4 598 608 606 405
		f 4 -671 -669 658 659
		mu 0 4 602 608 598 401
		f 4 672 -674 -672 661
		mu 0 4 600 609 610 602
		f 4 674 -676 -673 663
		mu 0 4 603 611 609 600
		f 4 -677 -675 664 677
		mu 0 4 612 611 603 605
		f 4 678 -680 -678 667
		mu 0 4 606 613 612 605
		f 4 680 -682 -679 669
		mu 0 4 608 615 613 606
		f 4 -683 -681 670 671
		mu 0 4 610 615 608 602
		f 3 684 -684 673
		mu 0 3 609 616 610
		f 3 685 -685 675
		mu 0 3 611 616 609
		f 3 -686 676 686
		mu 0 3 616 611 612
		f 3 687 -687 679
		mu 0 3 613 616 612
		f 3 688 -688 681
		mu 0 3 615 616 613
		f 3 -689 682 683
		mu 0 3 616 615 610
		f 4 690 473 -690 691
		mu 0 4 335 324 326 658
		f 4 692 472 -691 693
		mu 0 4 333 325 324 335
		f 4 -693 695 694 -472
		mu 0 4 325 333 331 321
		f 4 696 -481 -695 697
		mu 0 4 329 318 321 331
		f 4 698 -482 -697 699
		mu 0 4 328 322 318 329
		f 4 -699 700 689 -495
		mu 0 4 322 328 658 326
		f 4 717 709 -719 -702
		mu 0 4 440 441 442 443
		f 4 718 710 -720 -703
		mu 0 4 443 442 444 711
		f 4 719 711 -721 -704
		mu 0 4 445 712 446 447
		f 4 720 712 -722 -705
		mu 0 4 447 446 448 449
		f 4 721 713 -723 -706
		mu 0 4 449 448 450 451
		f 4 722 714 -724 -707
		mu 0 4 451 450 452 453
		f 4 723 715 -725 -708
		mu 0 4 453 452 454 455
		f 4 724 716 -718 -709
		mu 0 4 455 454 441 440
		f 4 726 -728 -726 701
		mu 0 4 443 456 457 440
		f 4 728 -730 -727 702
		mu 0 4 711 710 456 443
		f 4 730 -732 -729 703
		mu 0 4 447 461 459 445
		f 4 732 -734 -731 704
		mu 0 4 449 482 461 447
		f 4 734 -736 -733 705
		mu 0 4 451 483 482 449
		f 4 736 -738 -735 706
		mu 0 4 453 484 483 451
		f 4 738 -740 -737 707
		mu 0 4 455 485 484 453
		f 4 725 -741 -739 708
		mu 0 4 440 457 485 455
		f 4 742 -744 -742 727
		mu 0 4 456 486 487 457
		f 4 744 -746 -743 729
		mu 0 4 710 709 486 456
		f 4 746 -748 -745 731
		mu 0 4 461 489 488 459
		f 4 748 -750 -747 733
		mu 0 4 482 490 489 461
		f 4 750 -752 -749 735
		mu 0 4 483 491 490 482
		f 4 752 -754 -751 737
		mu 0 4 484 492 491 483
		f 4 754 -756 -753 739
		mu 0 4 485 493 492 484
		f 4 741 -757 -755 740
		mu 0 4 457 487 493 485
		f 4 758 -760 -758 743
		mu 0 4 486 494 495 487
		f 4 760 -762 -759 745
		mu 0 4 709 708 494 486
		f 4 762 -764 -761 747
		mu 0 4 489 497 496 488
		f 4 764 -766 -763 749
		mu 0 4 490 498 497 489
		f 4 766 -768 -765 751
		mu 0 4 491 599 498 490
		f 4 768 -770 -767 753
		mu 0 4 492 601 599 491
		f 4 770 -772 -769 755
		mu 0 4 493 604 601 492
		f 4 757 -773 -771 756
		mu 0 4 487 495 604 493
		f 4 774 -776 -774 759
		mu 0 4 494 607 644 495
		f 4 776 -778 -775 761
		mu 0 4 708 707 607 494
		f 4 778 -780 -777 763
		mu 0 4 497 646 645 496
		f 4 780 -782 -779 765
		mu 0 4 498 647 646 497
		f 4 782 -784 -781 767
		mu 0 4 599 648 647 498
		f 4 784 -786 -783 769
		mu 0 4 601 649 648 599
		f 4 786 -788 -785 771
		mu 0 4 604 650 649 601
		f 4 773 -789 -787 772
		mu 0 4 495 644 650 604
		f 4 790 -792 -790 775
		mu 0 4 607 727 721 644
		f 4 792 -794 -791 777
		mu 0 4 707 706 727 607
		f 4 794 -796 -793 779
		mu 0 4 646 725 726 645
		f 4 796 -798 -795 781
		mu 0 4 647 724 725 646
		f 4 798 -800 -797 783
		mu 0 4 648 723 724 647
		f 4 800 -802 -799 785
		mu 0 4 649 722 723 648
		f 4 802 -804 -801 787
		mu 0 4 650 720 722 649
		f 4 789 -805 -803 788
		mu 0 4 644 721 720 650
		f 3 806 -806 791
		mu 0 3 651 657 721
		f 3 807 -807 793
		mu 0 3 706 657 651
		f 3 808 -808 795
		mu 0 3 652 657 726
		f 3 809 -809 797
		mu 0 3 653 657 652
		f 3 810 -810 799
		mu 0 3 654 657 653
		f 3 811 -811 801
		mu 0 3 655 657 654
		f 3 812 -812 803
		mu 0 3 656 657 655
		f 3 805 -813 804
		mu 0 3 721 657 656
		f 4 813 497 -815 -710
		mu 0 4 409 404 261 410
		f 4 814 455 -816 -711
		mu 0 4 410 261 266 411
		f 4 815 612 -817 -712
		mu 0 4 411 266 116 413
		f 4 816 -620 -818 -713
		mu 0 4 413 116 115 415
		f 4 817 -611 -819 -714
		mu 0 4 415 115 112 417
		f 4 818 -609 -820 -715
		mu 0 4 417 112 110 419
		f 4 819 -617 -821 -716
		mu 0 4 419 110 406 438
		f 4 820 -614 -814 -717
		mu 0 4 438 406 404 409
		f 4 821 823 -823 -463
		mu 0 4 499 500 501 290
		f 4 822 825 -825 -573
		mu 0 4 290 501 502 291
		f 4 824 827 -827 -577
		mu 0 4 291 502 503 309
		f 4 829 -831 -829 504
		mu 0 4 620 504 505 271
		f 4 828 831 -822 -462
		mu 0 4 271 505 500 499
		f 4 826 -833 -830 599
		mu 0 4 309 503 504 620
		f 4 833 835 -835 -824
		mu 0 4 338 343 344 339
		f 4 834 837 -837 -826
		mu 0 4 339 344 345 340
		f 4 836 839 -839 -828
		mu 0 4 539 538 346 341
		f 4 841 -843 -841 830
		mu 0 4 562 560 347 342
		f 4 840 843 -834 -832
		mu 0 4 342 347 343 338
		f 4 838 -845 -842 832
		mu 0 4 341 346 560 562
		f 4 845 847 -847 -836
		mu 0 4 343 348 349 344
		f 4 846 849 -849 -838
		mu 0 4 344 349 350 345
		f 4 848 851 -851 -840
		mu 0 4 538 537 351 346
		f 4 853 -855 -853 842
		mu 0 4 560 559 352 347
		f 4 852 855 -846 -844
		mu 0 4 347 352 348 343
		f 4 850 -857 -854 844
		mu 0 4 346 351 559 560
		f 4 857 859 -859 -848
		mu 0 4 348 353 354 349
		f 4 858 861 -861 -850
		mu 0 4 349 354 355 350
		f 4 860 863 -863 -852
		mu 0 4 537 536 356 351
		f 4 865 -867 -865 854
		mu 0 4 559 558 357 352
		f 4 864 867 -858 -856
		mu 0 4 352 357 353 348
		f 4 862 -869 -866 856
		mu 0 4 351 356 558 559
		f 4 869 871 -871 -860
		mu 0 4 353 358 359 354
		f 4 870 873 -873 -862
		mu 0 4 354 359 360 355
		f 4 872 875 -875 -864
		mu 0 4 536 535 361 356
		f 4 877 -879 -877 866
		mu 0 4 558 557 362 357
		f 4 876 879 -870 -868
		mu 0 4 357 362 358 353
		f 4 874 -881 -878 868
		mu 0 4 356 361 557 558
		f 4 881 883 -883 -872
		mu 0 4 358 363 364 359
		f 4 882 885 -885 -874
		mu 0 4 359 364 365 360
		f 4 884 887 -887 -876
		mu 0 4 535 534 366 361
		f 4 889 -891 -889 878
		mu 0 4 557 555 367 362
		f 4 888 891 -882 -880
		mu 0 4 362 367 363 358
		f 4 886 -893 -890 880
		mu 0 4 361 366 555 557
		f 4 893 895 -895 -884
		mu 0 4 363 252 255 364
		f 4 894 897 -897 -886
		mu 0 4 364 255 254 365
		f 4 896 899 -899 -888
		mu 0 4 534 533 532 366
		f 4 902 -904 -902 890
		mu 0 4 555 556 263 367
		f 4 901 904 -894 -892
		mu 0 4 367 263 252 363
		f 4 898 -906 -903 892
		mu 0 4 366 532 556 555
		f 4 -172 906 908 -908
		mu 0 4 86 701 699 368
		f 4 622 909 -911 -907
		mu 0 4 701 700 698 699
		f 4 621 911 -913 -910
		mu 0 4 700 518 517 698
		f 4 -606 907 913 -912
		mu 0 4 87 86 368 369
		f 4 -909 914 916 -916
		mu 0 4 368 699 697 370
		f 4 910 917 -919 -915
		mu 0 4 699 698 696 697
		f 4 912 919 -921 -918
		mu 0 4 698 517 516 696
		f 4 -914 915 921 -920
		mu 0 4 369 368 370 371
		f 4 -917 922 924 -924
		mu 0 4 370 697 695 372
		f 4 918 925 -927 -923
		mu 0 4 697 696 694 695
		f 4 920 927 -929 -926
		mu 0 4 696 516 515 694
		f 4 -922 923 929 -928
		mu 0 4 371 370 372 373
		f 4 -925 930 932 -932
		mu 0 4 372 695 693 374
		f 4 926 933 -935 -931
		mu 0 4 695 694 692 693
		f 4 928 935 -937 -934
		mu 0 4 694 515 514 692
		f 4 -930 931 937 -936
		mu 0 4 373 372 374 375
		f 4 -933 938 940 -940
		mu 0 4 374 693 691 376
		f 4 934 941 -943 -939
		mu 0 4 693 692 690 691
		f 4 936 943 -945 -942
		mu 0 4 692 514 513 690
		f 4 -938 939 945 -944
		mu 0 4 375 374 376 377
		f 4 -941 946 948 -948
		mu 0 4 376 691 689 378
		f 4 942 949 -951 -947
		mu 0 4 691 690 688 689
		f 4 944 951 -953 -950
		mu 0 4 690 513 512 688
		f 4 -946 947 953 -952
		mu 0 4 377 376 378 379
		f 4 -949 954 956 -956
		mu 0 4 378 689 687 380
		f 4 950 957 -959 -955
		mu 0 4 689 688 686 687
		f 4 952 959 -961 -958
		mu 0 4 688 512 511 686
		f 4 -954 955 961 -960
		mu 0 4 379 378 380 381
		f 4 -957 962 964 -964
		mu 0 4 380 687 685 382
		f 4 958 965 -967 -963
		mu 0 4 687 686 684 685
		f 4 960 967 -969 -966
		mu 0 4 686 511 510 684
		f 4 -962 963 969 -968
		mu 0 4 381 380 382 383
		f 4 -965 970 972 -972
		mu 0 4 382 685 683 384
		f 4 966 973 -975 -971
		mu 0 4 685 684 682 683
		f 4 968 975 -977 -974
		mu 0 4 684 510 509 682
		f 4 -970 971 977 -976
		mu 0 4 383 382 384 385;
	setAttr ".fc[500:575]"
		f 4 -973 978 980 -980
		mu 0 4 384 683 681 386
		f 4 974 981 -983 -979
		mu 0 4 683 682 680 681
		f 4 976 983 -985 -982
		mu 0 4 682 509 508 680
		f 4 -978 979 985 -984
		mu 0 4 385 384 386 387
		f 4 -981 986 988 -988
		mu 0 4 386 681 679 388
		f 4 982 989 -991 -987
		mu 0 4 681 680 678 679
		f 4 984 991 -993 -990
		mu 0 4 680 508 507 678
		f 4 -986 987 993 -992
		mu 0 4 387 386 388 389
		f 4 -989 994 996 -996
		mu 0 4 388 679 676 390
		f 4 990 997 -999 -995
		mu 0 4 679 678 674 676
		f 4 992 999 -1001 -998
		mu 0 4 678 507 506 674
		f 4 -994 995 1001 -1000
		mu 0 4 389 388 390 391
		f 4 -997 1002 1004 -1004
		mu 0 4 390 676 677 94
		f 4 998 1005 -1007 -1003
		mu 0 4 676 674 675 677
		f 4 1000 1007 -1009 -1006
		mu 0 4 674 506 519 675
		f 4 -1002 1003 1009 -1008
		mu 0 4 391 390 94 95
		f 4 507 1011 -1013 -1011
		mu 0 4 96 276 522 523
		f 4 -507 1013 1014 -1012
		mu 0 4 276 620 621 522
		f 4 -1045 1046 1048 -1050
		mu 0 4 525 526 527 528
		f 4 72 1010 -1018 -1016
		mu 0 4 618 96 523 619
		f 4 1012 1019 -1021 -1019
		mu 0 4 393 464 462 465
		f 4 -1015 1021 1022 -1020
		mu 0 4 392 460 220 219
		f 4 -1017 1023 1024 -1022
		mu 0 4 460 458 221 220
		f 4 1017 1018 -1026 -1024
		mu 0 4 458 393 465 221
		f 4 -506 1026 1028 -1028
		mu 0 4 636 637 633 630
		f 4 1052 1054 -1057 -1058
		mu 0 4 553 561 563 564
		f 4 1016 1031 -1033 -1030
		mu 0 4 635 623 631 634
		f 4 -1061 1062 1064 -1066
		mu 0 4 567 568 569 570
		f 4 -1029 1034 1036 -1036
		mu 0 4 630 633 571 572
		f 4 1030 1037 -1039 -1035
		mu 0 4 633 634 627 571
		f 4 1032 1039 -1041 -1038
		mu 0 4 634 631 626 627
		f 4 -1034 1035 1041 -1040
		mu 0 4 631 630 572 626
		f 4 -1037 1042 1044 -1044
		mu 0 4 572 571 526 525
		f 4 1038 1045 -1047 -1043
		mu 0 4 571 627 527 526
		f 4 1040 1047 -1049 -1046
		mu 0 4 627 626 528 527
		f 4 -1042 1043 1049 -1048
		mu 0 4 626 572 525 528
		f 4 1015 1051 -1053 -1051
		mu 0 4 97 625 561 553
		f 3 1070 -1073 -1074
		mu 0 3 573 629 575
		f 4 -1031 1055 1056 -1054
		mu 0 4 566 530 564 563
		f 4 -1027 1050 1057 -1056
		mu 0 4 530 97 553 564
		f 4 -1014 1058 1060 -1060
		mu 0 4 524 269 568 567
		f 4 1027 1061 -1063 -1059
		mu 0 4 269 531 569 568
		f 4 1033 1063 -1065 -1062
		mu 0 4 531 565 570 569
		f 3 -1032 1066 -1064
		mu 0 3 565 632 570
		f 3 -1077 1078 1079
		mu 0 3 576 577 578
		f 3 1029 1053 -1068
		mu 0 3 529 566 563
		f 4 1067 1069 -1071 -1069
		mu 0 4 529 563 574 624
		f 4 -1055 1071 1072 -1070
		mu 0 4 563 561 575 574
		f 4 -1052 1068 1073 -1072
		mu 0 4 561 625 573 575
		f 4 -1067 1074 1076 -1076
		mu 0 4 570 632 622 628
		f 4 1059 1077 -1079 -1075
		mu 0 4 524 567 578 577
		f 4 1065 1075 -1080 -1078
		mu 0 4 567 570 628 578
		f 4 -1084 1082 1081 -1081
		mu 0 4 421 422 423 424
		f 4 -1087 1080 1085 -1085
		mu 0 4 425 421 424 426
		f 4 -1090 1084 1088 -1088
		mu 0 4 427 425 426 428
		f 4 -1093 1087 1091 -1091
		mu 0 4 429 427 428 430
		f 4 -1096 1090 1094 -1094
		mu 0 4 431 429 430 432
		f 4 -1099 1093 1097 -1097
		mu 0 4 433 431 432 434
		f 4 -1102 1096 1100 -1100
		mu 0 4 435 433 434 436
		f 4 -1104 1099 1102 -1083
		mu 0 4 422 435 436 423
		f 3 -1082 1105 -1105
		mu 0 3 424 423 437
		f 3 -1086 1104 -1107
		mu 0 3 426 424 437
		f 3 -1089 1106 -1108
		mu 0 3 428 426 437
		f 3 -1092 1107 -1109
		mu 0 3 430 428 437
		f 3 -1095 1108 -1110
		mu 0 3 432 430 437
		f 3 -1098 1109 -1111
		mu 0 3 434 432 437
		f 3 -1101 1110 -1112
		mu 0 3 436 434 437
		f 3 -1103 1111 -1106
		mu 0 3 423 436 437
		f 4 1113 -1118 -1115 -1113
		mu 0 4 579 580 581 582
		f 3 1116 -1116 1117
		mu 0 3 580 583 581
		f 4 1119 -1124 -1121 -1119
		mu 0 4 584 585 586 587
		f 3 1122 -1122 1123
		mu 0 3 585 588 586
		f 4 1124 1126 1129 -1126
		mu 0 4 589 590 591 592
		f 3 -1130 1127 -1129
		mu 0 3 592 591 593
		f 4 1130 1132 1135 -1132
		mu 0 4 594 595 596 597
		f 3 -1136 1133 -1135
		mu 0 3 597 596 614;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vcs" 2;
createNode transform -n "pPlane1";
	setAttr ".rp" -type "double3" -1.8288528231880492 0.27745191982643319 0.60715073468486513 ;
	setAttr ".sp" -type "double3" -1.8288528231880492 0.27745191982643319 0.60715073468486513 ;
createNode mesh -n "pPlaneShape1" -p "pPlane1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -0.4991833 1.2212225 -1.9242635 
		-0.4991833 -0.66631871 -1.9242635 -0.4991833 1.2212225 5.9055386 -0.4991833 -0.66631871 
		5.9055386;
	setAttr -s 4 ".vt[0:3]"  -1.32966948 -1.57295108 1.41287112 -1.32966948 1.57295108 1.41287112
		 -1.32966948 -1.57295108 -4.17984438 -1.32966948 1.57295108 -4.17984438;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane2";
	setAttr ".rp" -type "double3" -0.56020900088037651 0.27745191982643308 -1.7178549122266658 ;
	setAttr ".sp" -type "double3" -0.56020900088037651 0.27745191982643308 -1.7178549122266658 ;
createNode mesh -n "pPlaneShape2" -p "pPlane2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -0.34908256 1.2212225 -3.1307261 
		-0.34908256 -0.66631871 -3.1307261 1.8880036 1.2212225 2.4619894 1.8880036 -0.66631871 
		2.4619894;
	setAttr -s 4 ".vt[0:3]"  -1.32966948 -1.57295108 1.41287112 -1.32966948 1.57295108 1.41287112
		 -1.32966948 -1.57295108 -4.17984438 -1.32966948 1.57295108 -4.17984438;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 1 3 -3 -1
		mu 0 4 0 2 3 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane8";
createNode mesh -n "pPlane8Shape" -p "pPlane8";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:514]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 885 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 1 0 1 1 1 0 1 1 1 0 1 0.5 0.9375
		 0 1 1 1 0 1 1 1 0 1 0.5 1 1 1 0.5 1 0 1 1 1 0 1 1 1 0 1 0.5 1 0.55718005 1 0 1 1
		 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0.94281995 1 0.90658176 1 0.71334076 1 0.48177767
		 1 0.57331842 1 0.5 1 0.51822233 1 0.8435775 1 0.77588546 1 0.31284484 1 0.5 1 0.3958233
		 1 0.5 1 0.91089499 1 0.57005334 1 0.55004871 1 0.47613406 0 0.125 0.125 0.125 0.125
		 0.25 0 0.25 0.25 0.125 0.25 0.25 0.375 0.125 0.375 0.25 0.5 0.125 0.5 0.25 0.625
		 0.125 0.625 0.25 0.75 0.125 0.75 0.25 0.875 0.125 0.875 0.25 1 0.125 1 0.25 0.125
		 0.375 0 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875 0.375
		 1 0.375 0.0625 0 0.1875 0 0.3125 0 0.4375 0 0.5625 0 0.6875 0 0.8125 0 0 0 1 0 1
		 1 0 1 0 0 1 0 1 1 0 0.5 1 1 1 0 1 1 0 1 0.48997849 0.51002151 0.55286443 0.46638399
		 0.55286443 0.72478461 0.55286443 0.96838725 0.77195126 0.78091323 0.53038478 0.20126367
		 0.59747267 0.43291211 0.66456056 0.66456056 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1
		 0 1 1 0 1 1 0.29527003 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1
		 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 0.5
		 1 0 0 1 0 1 0.46330789 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1
		 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1
		 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0.50595373
		 0 0.50595373 0 0.50595373 1 0.50595373 1 0.58090419 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0
		 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 0 1 1 0 0 1 0 1 1 0 1 0 0 1 0
		 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0;
	setAttr ".uvst[0].uvsp[250:499]" 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0
		 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 0 1 1
		 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0
		 0 0.5 1 0 0 1 0 1 1 0 1 0 0 1 0 0.75 1 0 1 1 0 0.5 1 0 0 1 0 0 1 0 0 1 0 0 0 1 0
		 0.5 1 0.57224101 1 0 0 1 0 0.625 1 0 0 1 0 0.625 1 0.125 1 0.875 1 0.5 1 0.60822642
		 1 0.25 1 0.76528782 1 0.41685194 1 1 1 0.56440848 1 0.5 1 0.23464537 1 1 1 0.38407275
		 1 0.5 1 0.34593597 1 0.51660305 1 0.25 1 0.2701835 1 0.36232728 1 0.5 1 0.7350961
		 1 0 0 1 0 1 1 0 0 1 0 0.5 1 0.76528782 1 0.56440848 1 0.34593597 1 1 1 1 0 1 0 0
		 0 0 0 0.5 1 0.34593597 1 0.56440848 1 0.76528782 1 1 1 1 0 1 0 0 0 0 0 0.5 1 0.34593597
		 1 0.56440848 1 0.76528782 1 1 1 1 0 1 0 0 0 0 0 0.5 1 0.34593597 1 0.56440848 1 0.76528782
		 1 1 0 1 0.46330789 1 0 1 1 1 0.5 1 1 1 0 1 0.5 1 0 1 0.5 1 1 1 1 1 0 1 1 1 0 1 0.3958233
		 1 0 1 0.5 1 0.55718005 1 0 1 1 1 0 1 0.55004871 1 0 1 1 1 0 1 1 1 0 1 0.29527003
		 1 0.48177767 1 0.5 1 0.51822233 1 0.71334076 1 0.57331842 1 0.57005334 1 0.8435775
		 1 0.31284484 1 0.77588546 1 0.5 1 1 1 0.91089499 1 0.5 1 0.94281995 1 1 1 0.47613406
		 1 0.90658176 0 0.125 0.125 0.125 0.125 0.25 0 0.25 0.25 0.125 0.25 0.25 0.375 0.125
		 0.375 0.25 0.5 0.125 0.5 0.25 0.625 0.125 0.625 0.25 0.75 0.125 0.75 0.25 0.875 0.125
		 0.875 0.25 1 0.125 1 0.25 0.125 0.375 0 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625
		 0.375 0.75 0.375 0.875 0.375 1 0.375 0.0625 0 0.1875 0 0.3125 0 0.4375 0 0.5625 0
		 0.6875 0 0.8125 0 0.9375 0 0.59747267 0.43291211 0.66456056 0.66456056 1 0 0.53038478
		 0.20126367 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 0.5 1 0 1 1 0 1 0.48997849 0.51002151 1
		 1 0.55286443 0.72478461 0.55286443 0.96838725 0.55286443 0.46638399 0.77195126 0.78091323
		 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 0.58090419;
	setAttr ".uvst[0].uvsp[500:749]" 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1
		 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1
		 0 1 0 0 1 0 1 1 0.5 1 0 0 1 0 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 0.50595373 0 0.50595373
		 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1
		 0 1 0.50595373 0 0.50595373 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1
		 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 1 0 1 0 1 1 1 1 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1
		 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 0 1 1 0 0 1 0 1 1 0 1 0 0 1 0 1
		 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 0 0 0 1 1 1 1 0 1
		 0 1 1 0 0 0 1 1 0 1 1 0 0 0 1 1 0 1 0 0 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 0 1
		 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1
		 0 0 0.5 1 0 0 1 0 1 1 0 1 0 0 1 0 0 1 1 0 0.5 1 0 0 1 0 0.5 1 0 1 0 0 1 0 1 1 0.5
		 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 1 1 0.25 1 0.5 1 0.875 1 0.125 1 0.5 1 0.625
		 1 0.625 1 0.75 1 0.60822642 1 0.51660305 1 0.36232728 1 0.38407275 1 0.25 1 0.23464537
		 1 0.76528782 1 0.7350961 1 0.57224101 1 0.56440848 1 0.41685194 1 0.34593597 1 0.76528782
		 1 0.56440848 1 0.34593597 1 0.2701835 1 0 0 1 0 1 0 0 0 0 0 0 0 0.5 1 0.56440848
		 1 0.76528782 1 0.34593597 1 1 1 1 1;
	setAttr ".uvst[0].uvsp[750:884]" 1 0 1 0 1 1 1 1 1 0 1 0 0 0 0 0 0 0 1 0 1
		 0 0 0 0.5 1 0.5 1 0.34593597 1 0.34593597 1 0.56440848 1 0.56440848 1 0.76528782
		 1 0.76528782 1 0.75 0.3125 0.76520574 0.17609572 0.76520574 0.44130144 0.76520574
		 0.44130144 0.76520574 0.17609572 0.89140642 0.081445239 0.89140642 0.4728516 0.89140642
		 0.4728516 0.89140642 0.081445239 0.625 1 0.625 1 0.5 1 0.5 1 0.625 1 0.625 1 0.5
		 1 0.5 1 0.625 1 0.625 1 0.5 1 0.5 1 0.625 1 0.625 1 0.5 1 0.5 1 0.625 1 0.625 1 0.5
		 1 0.5 1 0.625 1 0.625 1 0.5 1 0.5 1 0.625 1 0.625 1 0.5 1 0.5 1 0.625 1 0.625 1 0.5
		 1 0.5 1 0.625 1 0.625 1 0.5 1 0.5 1 0 0.125 0 0.25 0.125 0.25 0.125 0.125 0.25 0.25
		 0.25 0.125 0.375 0.25 0.375 0.125 0.5 0.25 0.5 0.125 0.625 0.25 0.625 0.125 0.75
		 0.25 0.75 0.125 0.875 0.25 0.875 0.125 1 0.25 1 0.125 0 0.375 0.125 0.375 0.25 0.375
		 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875 0.375 1 0.375 0.0625 0 0.1875
		 0 0.3125 0 0.4375 0 0.5625 0 0.6875 0 0.8125 0 0.9375 0 0 0.125 0.125 0.125 0.125
		 0.25 0 0.25 0.25 0.125 0.25 0.25 0.375 0.125 0.375 0.25 0.5 0.125 0.5 0.25 0.625
		 0.125 0.625 0.25 0.75 0.125 0.75 0.25 0.875 0.125 0.875 0.25 1 0.125 1 0.25 0.125
		 0.375 0 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875 0.375
		 1 0.375 0.0625 0 0.1875 0 0.3125 0 0.4375 0 0.5625 0 0.6875 0 0.8125 0 0.9375 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 509 ".vt";
	setAttr ".vt[0:165]"  0.046998318 0.5107559 0.090707324 0.03672611 0.46899989 0.27108955
		 0.020919289 0.41404083 0.32738078 0.021483904 0.37908471 0.34758586 0.042827748 0.34198365 0.34752628
		 0.037666827 0.27915528 0.38226044 0.023942191 0.27159816 0.41504025 0.01088485 0.28163791 0.4510181
		 0.048436794 0.30019912 0.36031052 0.03861985 0.25215784 0.46412852 0.081931204 0.17581505 0.44609165
		 0.080789953 0.1504198 0.40984559 0.034586862 0.13227867 0.3625994 0.034586862 0.11395443 0.35841149
		 0.063255742 0.10948162 0.27899215 0.073915474 0.082478136 0.238732 0.08361619 0.077931829 0.17647238
		 0.086189225 0.057360746 0.0073486338 0.083210602 0.14054164 0.29712912 0.079006225 0.25760508 0.33851293
		 0.06337297 0.24503157 0.37880647 0.053316008 0.23996189 0.41959664 0.10128915 0.21780567 0.29911077
		 0.084394433 0.19941555 0.37442696 0.076868959 0.19775787 0.41940236 0.067912914 0.20862311 0.45869416
		 0.081867419 0.15247868 0.36283639 0.05793459 0.13358077 0.3396315 0.05422502 0.10871422 0.33070976
		 0.10248478 0.1674421 0.30249614 0.14172235 0.33512199 0.28809744 0.12603195 0.34261531 0.29710191
		 0.11034154 0.33512199 0.30610645 0.10384236 0.31703138 0.30983618 0.11034154 0.29894081 0.30610645
		 0.12603195 0.29144743 0.29710191 0.14172235 0.29894078 0.28809747 0.14822155 0.31703138 0.28436768
		 0.14922243 0.35045844 0.27051684 0.12023034 0.36430439 0.287155 0.091238253 0.35045844 0.30379307
		 0.079229333 0.31703138 0.3106848 0.091238253 0.28360432 0.30379307 0.12023034 0.2697584 0.287155
		 0.14922243 0.28360432 0.27051684 0.16123134 0.31703138 0.26362512 0.15038043 0.36070594 0.25104281
		 0.11250043 0.37879655 0.27278152 0.074620426 0.36070594 0.29452029 0.058930028 0.31703138 0.30352473
		 0.074620426 0.27335683 0.29452029 0.11250043 0.25526628 0.27278152 0.15038043 0.27335683 0.25104281
		 0.16607082 0.31377953 0.22903103 0.12787919 0.31703138 0.30087018 0.14918409 0.23623329 0.27245879
		 0.17358051 0.26075238 0.23596103 0.17196772 0.17598104 0.27037227 0.20640157 0.18925519 0.22839732
		 0.16268292 0.11557733 0.25706968 0.19463921 0.1133218 0.2076623 0.12196789 0.086146414 0.24234432
		 0.15390606 0.079310395 0.18491273 0.12718815 0.21433726 0.29199585 0.13421939 0.16775276 0.29519626
		 0.11600521 0.12300026 0.28787005 0.094030514 0.10420795 0.26890314 0.11213283 0.41454589 0.29185215
		 0.066006765 0.38309586 0.32843068 0.055966228 0.33728868 0.33628276 0.17397983 0.38162473 0.22546862
		 0.19945998 0.28364259 0.193845 0.090665855 0.086851627 0.12911928 0.23731127 0.20679229 0.16526265
		 0.22676708 0.12035016 0.1403634 0.16559875 0.091234945 0.12752818 0.23707375 0.30417085 0.12798803
		 0.25481525 0.21779586 0.097254507 0.24830303 0.13414697 0.075728327 0.090879075 0.0700721 0.08573205
		 0.14467514 0.072138682 0.080075532 0.12114151 0.45134789 0.24766764 0.20334086 0.4008134 0.16837834
		 0.31568757 0.36922997 0.14741936 0.14891382 0.46546906 0.23044309 0.33649185 0.44696105 0.036957502
		 0.15732548 0.55997443 0.17411393 0.26997501 0.31969681 0.17929563 0.18582124 0.35570031 0.22642973
		 0.21752569 0.29127187 0.18838926 0.20788406 0.29539683 0.19378957 0.32737592 0.44765389 0.012570045
		 0.14820956 0.56066728 0.14972647 0.29010108 0.41651022 0.024702918 0.12983161 0.54111457 0.14135133
		 0.22175099 0.40046665 0.059097938 0.099152766 0.50003165 0.16066086 0.32827526 0.37468785 0.16285005
		 0.16150148 0.47092688 0.24587381 0.18340042 0.59311873 0.16760464 0.35123882 0.46273616 0.042079378
		 0.27886927 0.31673545 0.19754782 0.19471551 0.35273898 0.24468191 0.22432986 0.28430572 0.20585856
		 0.21468823 0.28843069 0.21125887 0.1631794 0.59715551 0.11971491 0.32948905 0.46677291 -0.0044633541
		 0.12791032 0.54863399 0.098685741 0.28282624 0.42402965 -0.012794086 0.098138407 0.50855082 0.08692199
		 0.21252953 0.40838388 0.0005166519 0.16224995 0.53639668 0.21827725 0.34807998 0.42727119 0.10174568
		 0.33439982 0.41659325 0.09153077 0.14856979 0.52571881 0.20806229 0.04433256 0.50301319 0.17146505
		 0.24911612 0.3148258 0.042412024 0.25564981 0.2250642 0.014964733 0.2443563 0.12408559 -0.0072582965
		 0.15365662 0.068475902 0.0010431865 0.079906598 0.051039677 -0.074959762 0.24144918 0.32490766 -0.035272311
		 0.2514475 0.23368223 -0.065260805 0.2274189 0.13480459 -0.069812313 0.15759522 0.072075777 -0.076428503
		 0.1586404 0.063664645 0.089156359 0.23120302 0.063720629 0.089537285 0.23451714 0.056646314 0.010520084
		 0.1570234 0.056581855 0.010271907 0.16779095 0.028823929 0.10514753 0.21654171 0.028877253 0.10551035
		 0.22070259 0.025483467 0.03527027 0.1687917 0.025422072 0.035033885 0.17097937 0.0066054002 0.11688948
		 0.20488629 0.0066104634 0.11721564 0.20919234 0.0066103637 0.054234382 0.17287031 0.0066045346 0.054021873
		 0.1824614 -0.0033825128 0.10958989 0.19798729 -0.0033824265 0.10976908 0.20066603 -0.0033824276 0.074402168
		 0.18378124 -0.0033825282 0.074285418 0.051113117 0.4991093 -0.016590232 0.18765096 0.41584399 -0.083020084
		 0.12416737 0.48219326 -0.040334802 0.070232451 0.069445074 -0.15618855 0.22892925 0.33208096 -0.11463975
		 0.25243607 0.2401057 -0.13284793 0.20279256 0.13162784 -0.10858903 0.15012321 0.085299037 -0.15731327
		 0.051292848 0.47300091 -0.12542017 0.17003879 0.40875512 -0.15741274 0.12255354 0.45437187 -0.13880032
		 0.059944361 0.094895832 -0.23623852 0.20285988 0.34160468 -0.18358603 0.23692541 0.26472864 -0.2063617
		 0.12101052 0.10432401 -0.22791891 0.038533285 0.29227868 -0.33881596 0.04867823 0.3711049 -0.29122677
		 0.042848315 0.17038792 -0.33447969 0.032612078 0.2291612 -0.35790214 0.052260298 0.43510821 -0.2159058
		 0.051245075 0.12814449 -0.29680657 0.026420318 0.27873459 -0.38203824 0.022295499 0.24928528 -0.39345118
		 0.11375546 0.42085597 -0.2168427 0.15332016 0.3984533 -0.20851474;
	setAttr ".vt[166:331]" 0.1642379 0.34825504 -0.24213663 0.11259488 0.36506426 -0.27497131
		 0.20141117 0.25394848 -0.26716432 0.11416063 0.29251176 -0.3127884 0.14072244 0.19106966 -0.2988086
		 0.099014476 0.22173685 -0.32979512 0.1122761 0.14079802 -0.29024744 0.086493082 0.17538717 -0.32475856
		 0.2214006 -0.0033962312 -0.1618382 0.20442988 -0.0033962321 -0.15519734 0.23141937 -0.0033962298 -0.19609426
		 0.20442609 -0.0033962321 -0.19609474 0.18405239 -0.003396231 -0.16183801 0.17726469 -0.0033962303 -0.19609885
		 0.22140011 -0.0033962261 -0.22079317 0.20442893 -0.0033962268 -0.22791857 0.18404514 -0.0033962277 -0.2208167
		 0.25263941 0.07798221 -0.24295975 0.24052078 0.061090134 -0.20538622 0.20883805 0.058216162 -0.19431011
		 0.17629196 0.06107758 -0.20566237 0.16831355 0.077900656 -0.24289677 0.17079727 0.093269512 -0.28203663
		 0.19357763 0.10282645 -0.29911685 0.22893338 0.093291976 -0.2820591 0.23676462 0.0066072135 -0.20370717
		 0.22532529 0.0065870481 -0.16258152 0.20492883 0.0065852697 -0.15531702 0.18047562 0.0065907217 -0.16262218
		 0.17180945 0.0066137286 -0.20373133 0.1804865 0.0066312659 -0.23057856 0.20492703 0.0066319257 -0.24345736
		 0.2253228 0.0066244896 -0.23064908 0.26253518 0.16388886 -0.2033754 0.25344422 0.13058202 -0.14942427
		 0.20845698 0.087147035 -0.124044 0.16865197 0.074686997 -0.1733418 0.15077761 0.097679168 -0.23633389
		 0.15666637 0.11915794 -0.27109614 0.18311083 0.14436162 -0.27888852 0.22704519 0.16885076 -0.2558361
		 -0.046998318 0.5107559 0.090707324 -0.03672611 0.46899989 0.27108955 -0.020919289 0.41404083 0.32738078
		 -0.021483904 0.37908471 0.34758586 -0.042827748 0.34198365 0.34752628 -0.037666827 0.27915528 0.38226044
		 -0.023942191 0.27159816 0.41504025 -0.01088485 0.28163791 0.4510181 -0.048436794 0.30019912 0.36031052
		 -0.03861985 0.25215784 0.46412852 -0.081931204 0.17581505 0.44609165 -0.080789953 0.1504198 0.40984559
		 -0.034586862 0.13227867 0.3625994 -0.034586862 0.11395443 0.35841149 -0.063255742 0.10948162 0.27899215
		 -0.073915474 0.082478136 0.238732 -0.08361619 0.077931829 0.17647238 -0.086189225 0.057360746 0.0073486338
		 -0.083210602 0.14054164 0.29712912 -0.079006225 0.25760508 0.33851293 -0.06337297 0.24503157 0.37880647
		 -0.053316008 0.23996189 0.41959664 -0.10128915 0.21780567 0.29911077 -0.084394433 0.19941555 0.37442696
		 -0.076868959 0.19775787 0.41940236 -0.067912914 0.20862311 0.45869416 -0.081867419 0.15247868 0.36283639
		 -0.05793459 0.13358077 0.3396315 -0.05422502 0.10871422 0.33070976 -0.10248478 0.1674421 0.30249614
		 -0.14172237 0.33512199 0.28809744 -0.12603194 0.34261531 0.29710191 -0.11034153 0.33512199 0.30610645
		 -0.10384236 0.31703138 0.30983618 -0.11034153 0.29894081 0.30610645 -0.12603194 0.29144743 0.29710191
		 -0.14172235 0.29894078 0.28809747 -0.14822155 0.31703138 0.28436768 -0.14922243 0.35045844 0.27051684
		 -0.12023034 0.36430439 0.287155 -0.091238253 0.35045844 0.30379307 -0.079229333 0.31703138 0.3106848
		 -0.091238253 0.28360432 0.30379307 -0.12023034 0.2697584 0.287155 -0.14922243 0.28360432 0.27051684
		 -0.16123134 0.31703138 0.26362512 -0.15038043 0.36070594 0.25104281 -0.11250044 0.37879655 0.27278152
		 -0.074620426 0.36070594 0.29452029 -0.058930028 0.31703138 0.30352473 -0.074620426 0.27335683 0.29452029
		 -0.11250044 0.25526628 0.27278152 -0.15038043 0.27335683 0.25104281 -0.16607082 0.31377953 0.22903103
		 -0.12787919 0.31703138 0.30087018 -0.14918409 0.23623329 0.27245879 -0.17358051 0.26075238 0.23596103
		 -0.17196772 0.17598104 0.27037227 -0.20640157 0.18925519 0.22839732 -0.16268292 0.11557733 0.25706968
		 -0.19463921 0.1133218 0.2076623 -0.12196789 0.086146414 0.24234432 -0.15390606 0.079310395 0.18491273
		 -0.12718815 0.21433726 0.29199585 -0.13421939 0.16775276 0.29519626 -0.11600521 0.12300026 0.28787005
		 -0.094030514 0.10420795 0.26890314 -0.11213283 0.41454589 0.29185215 -0.066006765 0.38309586 0.32843068
		 -0.055966228 0.33728868 0.33628276 -0.17397983 0.38162473 0.22546862 -0.19945998 0.28364259 0.193845
		 -0.090665855 0.086851627 0.12911928 -0.23731127 0.20679229 0.16526265 -0.22676708 0.12035016 0.1403634
		 -0.16559875 0.091234945 0.12752818 -0.23707375 0.30417085 0.12798803 -0.25481525 0.21779586 0.097254507
		 -0.24830303 0.13414697 0.075728327 -0.090879075 0.0700721 0.08573205 -0.14467515 0.072138682 0.080075532
		 -0.12114151 0.45134789 0.24766764 -0.20334086 0.4008134 0.16837834 -0.31568757 0.36922997 0.14741936
		 -0.14891382 0.46546906 0.23044309 -0.33649185 0.44696105 0.036957502 -0.15732548 0.55997443 0.17411393
		 -0.26997501 0.31969681 0.17929563 -0.18582124 0.35570031 0.22642973 -0.21752569 0.29127187 0.18838926
		 -0.20788406 0.29539683 0.19378957 -0.32737592 0.44765389 0.012570045 -0.14820956 0.56066728 0.14972647
		 -0.29010108 0.41651022 0.024702918 -0.12983161 0.54111457 0.14135133 -0.22175099 0.40046665 0.059097938
		 -0.099152766 0.50003165 0.16066086 -0.32827526 0.37468785 0.16285005 -0.16150148 0.47092688 0.24587381
		 -0.18340042 0.59311873 0.16760464 -0.35123882 0.46273616 0.042079378 -0.27886927 0.31673545 0.19754782
		 -0.19471551 0.35273898 0.24468191 -0.22432986 0.28430572 0.20585856 -0.21468823 0.28843069 0.21125887
		 -0.1631794 0.59715551 0.11971491 -0.32948905 0.46677291 -0.0044633541 -0.12791032 0.54863399 0.098685741
		 -0.28282624 0.42402965 -0.012794086 -0.098138407 0.50855082 0.08692199 -0.21252954 0.40838388 0.0005166519
		 -0.16224995 0.53639668 0.21827725 -0.34807998 0.42727119 0.10174568 -0.33439982 0.41659325 0.09153077
		 -0.14856979 0.52571881 0.20806229 -0.04433256 0.50301319 0.17146505 -0.24911612 0.3148258 0.042412024
		 -0.25564983 0.2250642 0.014964733 -0.24435633 0.12408559 -0.0072582965 -0.15365662 0.068475902 0.0010431865
		 -0.079906598 0.051039677 -0.074959762 -0.24144918 0.32490766 -0.035272311 -0.25144747 0.23368223 -0.065260805
		 -0.2274189 0.13480459 -0.069812313 -0.15759523 0.072075777 -0.076428503;
	setAttr ".vt[332:497]" -0.1586404 0.063664645 0.089156359 -0.23120302 0.063720629 0.089537285
		 -0.23451716 0.056646314 0.010520084 -0.15702341 0.056581855 0.010271907 -0.16779095 0.028823929 0.10514753
		 -0.21654171 0.028877253 0.10551035 -0.2207026 0.025483467 0.03527027 -0.16879168 0.025422072 0.035033885
		 -0.17097937 0.0066054002 0.11688948 -0.20488629 0.0066104634 0.11721564 -0.20919235 0.0066103637 0.054234382
		 -0.17287031 0.0066045346 0.054021873 -0.1824614 -0.0033825128 0.10958989 -0.19798729 -0.0033824265 0.10976908
		 -0.20066603 -0.0033824276 0.074402168 -0.18378124 -0.0033825282 0.074285418 -0.051113129 0.4991093 -0.016590232
		 -0.18765098 0.41584399 -0.083020084 -0.12416737 0.48219326 -0.040334802 -0.070232451 0.069445074 -0.15618855
		 -0.22892924 0.33208096 -0.11463975 -0.25243607 0.2401057 -0.13284793 -0.20279256 0.13162784 -0.10858903
		 -0.15012321 0.085299037 -0.15731327 -0.051292848 0.47300091 -0.12542017 -0.17003877 0.40875512 -0.15741274
		 -0.12255354 0.45437187 -0.13880032 -0.059944369 0.094895832 -0.23623852 -0.20285988 0.34160468 -0.18358603
		 -0.23692539 0.26472864 -0.2063617 -0.12101052 0.10432401 -0.22791891 -0.036377553 0.29227868 -0.33881596
		 -0.04867823 0.3711049 -0.29122677 -0.042848315 0.17038792 -0.33447969 -0.031238019 0.2291612 -0.35790214
		 -0.052260295 0.43510821 -0.2159058 -0.051245075 0.12814449 -0.29680657 -0.020173974 0.27873459 -0.38203824
		 -0.023032552 0.24928528 -0.39345118 -0.11375546 0.42085597 -0.2168427 -0.15332016 0.3984533 -0.20851474
		 -0.1642379 0.34825504 -0.24213663 -0.11259489 0.36506426 -0.27497131 -0.20141117 0.25394848 -0.26716432
		 -0.11416063 0.29251176 -0.3127884 -0.14072242 0.19106966 -0.2988086 -0.099014483 0.22173685 -0.32979512
		 -0.1122761 0.14079802 -0.29024744 -0.086493082 0.17538717 -0.32475856 -0.2214006 -0.0033962312 -0.1618382
		 -0.20442985 -0.0033962321 -0.15519734 -0.23141935 -0.0033962298 -0.19609426 -0.20442609 -0.0033962321 -0.19609474
		 -0.18405239 -0.003396231 -0.16183801 -0.17726469 -0.0033962303 -0.19609885 -0.22140013 -0.0033962261 -0.22079317
		 -0.2044289 -0.0033962268 -0.22791857 -0.18404517 -0.0033962277 -0.2208167 -0.25263941 0.07798221 -0.24295975
		 -0.24052078 0.061090134 -0.20538622 -0.20883805 0.058216162 -0.19431011 -0.17629196 0.06107758 -0.20566237
		 -0.16831352 0.077900656 -0.24289677 -0.17079727 0.093269512 -0.28203663 -0.19357765 0.10282645 -0.29911685
		 -0.22893339 0.093291976 -0.2820591 -0.23676461 0.0066072135 -0.20370717 -0.22532526 0.0065870481 -0.16258152
		 -0.20492883 0.0065852697 -0.15531702 -0.18047562 0.0065907217 -0.16262218 -0.17180942 0.0066137286 -0.20373133
		 -0.18048653 0.0066312659 -0.23057856 -0.20492704 0.0066319257 -0.24345736 -0.2253228 0.0066244896 -0.23064908
		 -0.26253518 0.16388886 -0.2033754 -0.25344422 0.13058202 -0.14942427 -0.20845698 0.087147035 -0.124044
		 -0.16865197 0.074686997 -0.1733418 -0.15077761 0.097679168 -0.23633389 -0.15666635 0.11915794 -0.27109614
		 -0.18311085 0.14436162 -0.27888852 -0.22704521 0.16885076 -0.2558361 0 0.45305195 0.42387986
		 0.0045096995 0.45022151 0.41750371 0.0046314155 0.44594488 0.42090744 -0.0046314155 0.44594488 0.42090744
		 -0.0045096995 0.45022151 0.41750371 0.016514625 0.43239987 0.36987248 0.016960356 0.40835953 0.38499469
		 -0.016960356 0.40835953 0.38499469 -0.016514625 0.43239987 0.36987248 0.020061705 0.26814845 -0.42845717
		 -0.016460398 0.26814845 -0.42845717 -0.0098442063 0.28931317 -0.41432771 0.027698144 0.28931317 -0.41432771
		 0.024564141 0.29758665 -0.44818261 -0.0092484364 0.29758665 -0.44818261 -0.00079891202 0.3010934 -0.42488524
		 0.033958223 0.3010934 -0.42488524 0.037274782 0.3282977 -0.44183883 0.0034622026 0.3282977 -0.44183883
		 0.001936971 0.30557007 -0.42449951 0.036694106 0.30557007 -0.42449951 0.042406376 0.32369411 -0.40734541
		 0.013969984 0.32369411 -0.40734541 0.018311623 0.30414292 -0.41651919 0.047542401 0.30414292 -0.41651919
		 0.060130563 0.29420859 -0.38813806 0.032056287 0.29420859 -0.38813806 0.028814735 0.28828734 -0.40678185
		 0.057673264 0.28828734 -0.40678185 0.068265416 0.25538239 -0.39365765 0.044974834 0.25538239 -0.39365765
		 0.047292229 0.26271486 -0.41023099 0.071233466 0.26271486 -0.41023099 0.072101548 0.23316345 -0.42464963
		 0.051278826 0.23316345 -0.42464963 0.053676303 0.24963327 -0.42814076 0.073840186 0.24963327 -0.42814076
		 0.06999699 0.25064677 -0.46238437 0.057086054 0.25064677 -0.46238437 0.057690524 0.2605491 -0.45442557
		 0.070962131 0.2605491 -0.45442557 0.066673137 0.28178197 -0.47189757 0.059278402 0.28178197 -0.47189757
		 0.059175119 0.28240907 -0.46678337 0.06677644 0.28240907 -0.46678337 0.14525098 0.33644134 0.29157487
		 0.15346967 0.3528949 0.27256 0.12215503 0.36787236 0.29051536 0.12841529 0.34448731 0.30123553
		 0.090958394 0.3529945 0.30840719 0.1115714 0.33645141 0.31090045 0.078038469 0.31703132 0.31582177
		 0.10458901 0.31703135 0.31490636 0.090974666 0.28108138 0.30840918 0.11156728 0.29760745 0.31090173
		 0.12216178 0.26621589 0.29052705 0.12841491 0.28956729 0.30123416 0.15336776 0.28101501 0.27254534
		 0.14525422 0.29761729 0.29157192 0.16625816 0.31703147 0.26519752 0.15222415 0.31703138 0.2875731
		 0.15461503 0.36344948 0.24050578 0.11422338 0.38270995 0.26921502 0.073901504 0.36349809 0.29230863
		 0.057186808 0.31703141 0.30188128 0.073901527 0.27056468 0.29230866 0.11422339 0.25135282 0.26921499
		 0.15455775 0.27061421 0.24058792 0.17120972 0.31375813 0.21782814 0.13039826 0.31703138 0.30527911
		 -0.14525086 0.33644149 0.29157493 -0.12840886 0.34449255 0.30123767 -0.12214749 0.36785373 0.29053515
		 -0.1534155 0.35314545 0.2724334 -0.11156565 0.33645076 0.31090263 -0.090964176 0.35297635 0.30841526
		 -0.10458899 0.31703129 0.31490639 -0.078038424 0.31703141 0.31582177 -0.11156715 0.29761338 0.31090289
		 -0.090954177 0.28108028 0.30840966 -0.12840953 0.28957272 0.30123883 -0.12214108 0.26619703 0.29052332
		 -0.14524914 0.29761645 0.29157594 -0.15339158 0.28113052 0.27260473;
	setAttr ".vt[498:508]" -0.15222411 0.31703141 0.28757316 -0.16624656 0.31705707 0.26522544
		 -0.11422346 0.38270989 0.26921499 -0.15461507 0.36344948 0.24050581 -0.073901549 0.36349812 0.29230863
		 -0.057186805 0.31703141 0.30188125 -0.073901564 0.27056465 0.29230863 -0.11422341 0.25135288 0.26921505
		 -0.15455775 0.27061421 0.24058792 -0.17120974 0.31375813 0.21782812 -0.13039799 0.31703115 0.30527928;
	setAttr -s 1020 ".ed";
	setAttr ".ed[0:165]"  0 115 1 1 2 1 2 3 1 3 4 1 4 8 1 5 6 1 6 7 1 8 5 1 7 9 1
		 9 25 1 10 11 1 11 12 1 12 13 1 13 28 1 14 15 1 15 16 1 16 72 1 5 20 1 6 21 1 8 19 1
		 18 14 1 18 27 1 19 22 1 20 23 1 19 20 1 21 24 1 20 21 1 21 9 1 22 23 1 23 24 1 25 10 1
		 24 25 1 26 23 1 11 24 1 27 12 1 28 14 1 27 28 1 27 26 1 18 29 1 29 22 1 26 29 1 11 26 1
		 30 31 1 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 30 1 38 39 1 39 40 1 40 41 1
		 41 42 1 42 43 1 43 44 1 44 45 1 45 38 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1
		 52 53 1 53 46 1 30 38 1 31 39 1 32 40 1 33 41 1 34 42 1 35 43 1 36 44 1 37 45 1 38 46 1
		 39 47 1 40 48 1 41 49 1 42 50 1 43 51 1 44 52 1 45 53 1 54 30 1 54 31 1 54 32 1 54 33 1
		 54 34 1 54 35 1 54 36 1 54 37 1 8 49 1 22 51 1 19 50 1 3 68 1 4 69 1 2 67 1 51 55 1
		 52 56 1 55 56 1 55 57 1 56 58 1 57 58 1 57 59 1 58 60 1 59 60 1 15 61 1 16 62 1 61 59 1
		 62 60 1 61 62 1 29 64 1 18 65 1 22 63 1 14 66 1 63 55 1 64 57 1 63 64 1 65 59 1 64 65 1
		 66 61 1 65 66 1 67 47 1 68 48 1 67 68 1 69 49 1 68 69 1 46 70 1 70 67 1 53 71 1 56 71 1
		 71 70 1 58 73 1 71 73 1 60 74 1 73 74 1 62 75 1 72 75 1 75 74 1 71 76 1 73 77 1 76 77 1
		 74 78 1 77 78 1 72 79 1 75 80 1 79 80 1 80 78 1 67 81 1 1 81 1 70 82 1 82 81 1 76 82 1
		 83 113 1 84 114 1 83 87 1 84 88 1 87 89 1 88 90 1 89 90 1 85 91 1 86 92 1 91 93 1
		 92 94 1 93 95 1 94 96 1 95 96 1;
	setAttr ".ed[166:331]" 83 97 1 84 98 1 97 98 1 86 99 1 98 111 1 85 100 1 100 99 1
		 97 112 1 87 101 1 97 101 1 88 102 1 101 102 1 98 102 1 89 103 1 101 103 1 90 104 1
		 103 104 1 102 104 1 92 105 1 99 105 1 91 106 1 106 105 1 100 106 1 94 107 1 105 107 1
		 93 108 1 108 107 1 106 108 1 96 109 1 107 109 1 95 110 1 110 109 1 108 110 1 87 88 1
		 83 84 1 85 86 1 91 92 1 93 94 1 111 99 1 112 100 1 111 112 1 113 85 1 112 113 1 114 86 1
		 113 114 1 114 111 1 115 1 1 0 109 1 115 96 1 81 96 1 82 95 1 79 17 1 76 116 1 77 117 1
		 116 117 1 78 118 1 117 118 1 80 119 1 17 119 1 119 118 1 116 95 1 17 120 1 116 121 1
		 117 122 1 121 122 1 118 123 1 122 123 1 119 124 1 120 124 1 124 123 1 121 110 1 80 125 1
		 78 126 1 125 126 1 118 127 1 126 127 1 119 128 1 128 127 1 125 128 1 125 129 1 126 130 1
		 129 130 1 127 131 1 130 131 1 128 132 1 132 131 1 129 132 1 129 133 1 130 134 1 133 134 1
		 131 135 1 134 135 1 132 136 1 136 135 1 133 136 1 133 137 1 134 138 1 137 138 1 135 139 1
		 138 139 1 136 140 1 140 139 1 137 140 1 0 141 1 110 142 1 109 143 1 142 143 1 141 143 1
		 120 144 1 121 145 1 122 146 1 145 146 1 123 147 1 146 147 1 124 148 1 144 148 1 148 147 1
		 145 142 1 141 149 1 142 150 1 143 151 1 150 151 1 149 151 1 144 152 1 145 153 1 146 154 1
		 153 154 1 148 155 1 152 155 1 153 150 1 2 419 1 3 420 1 149 160 1 156 159 1 157 156 1
		 158 161 1 159 158 1 160 157 1 161 152 1 156 162 1 159 163 1 162 163 1 150 165 1 155 172 1
		 164 160 1 173 158 1 165 164 1 164 167 1 167 166 1 166 165 1 167 169 1 169 168 1 168 166 1
		 169 171 1 171 170 1 170 168 1 171 173 1 173 172 1 172 170 1 154 168 1 153 166 1 157 167 1
		 156 169 1 159 171 1 151 164 1 161 172 1;
	setAttr ".ed[332:497]" 146 200 1 147 201 1 174 175 1 154 199 1 174 176 1 176 177 1
		 175 177 1 148 202 1 178 175 1 155 203 1 179 177 1 178 179 1 168 206 1 176 180 1 170 205 1
		 181 180 1 181 177 1 172 204 1 182 181 1 179 182 1 183 191 1 184 192 1 183 184 1 185 193 1
		 184 185 1 186 194 1 185 186 1 187 195 1 186 187 1 188 196 1 187 188 1 189 197 1 188 189 1
		 190 198 1 189 190 1 190 183 1 191 176 1 192 174 1 191 192 1 193 175 1 192 193 1 194 178 1
		 193 194 1 195 179 1 194 195 1 196 182 1 195 196 1 197 181 1 196 197 1 198 180 1 197 198 1
		 198 191 1 199 183 1 200 184 1 199 200 1 201 185 1 200 201 1 202 186 1 201 202 1 203 187 1
		 202 203 1 204 188 1 203 204 1 205 189 1 204 205 1 206 190 1 205 206 1 206 199 1 0 207 1
		 207 322 1 1 208 1 208 209 1 2 209 1 209 210 1 3 210 1 210 211 1 4 211 1 211 215 1
		 5 212 1 212 213 1 6 213 1 213 214 1 7 214 1 215 212 1 215 8 1 214 216 1 9 216 1 216 232 1
		 10 217 1 217 218 1 11 218 1 218 219 1 12 219 1 219 220 1 13 220 1 220 235 1 14 221 1
		 221 222 1 15 222 1 222 223 1 16 223 1 223 279 1 17 224 1 212 227 1 213 228 1 215 226 1
		 225 221 1 225 234 1 226 229 1 227 230 1 226 227 1 228 231 1 227 228 1 228 216 1 229 230 1
		 230 231 1 232 217 1 231 232 1 232 25 1 233 230 1 218 231 1 234 219 1 235 221 1 234 235 1
		 235 28 1 234 233 1 225 236 1 236 229 1 233 236 1 218 233 1 237 238 1 238 239 1 239 240 1
		 240 241 1 241 242 1 242 243 1 243 244 1 244 237 1 245 246 1 246 247 1 247 248 1 248 249 1
		 249 250 1 250 251 1 251 252 1 252 245 1 253 254 1 254 255 1 255 256 1 256 257 1 257 258 1
		 258 259 1 259 260 1 260 253 1 237 245 1 238 246 1 239 247 1 240 248 1 241 249 1 242 250 1
		 243 251 1 244 252 1 245 253 1 246 254 1 247 255 1 248 256 1;
	setAttr ".ed[498:663]" 249 257 1 250 258 1 251 259 1 252 260 1 261 237 1 261 238 1
		 261 239 1 261 240 1 261 241 1 261 242 1 261 243 1 261 244 1 215 256 1 229 258 1 226 257 1
		 210 275 1 211 276 1 209 274 1 258 262 1 259 263 1 262 263 1 262 264 1 263 265 1 264 265 1
		 264 266 1 265 267 1 266 267 1 222 268 1 223 269 1 268 266 1 269 267 1 268 269 1 236 271 1
		 225 272 1 229 270 1 221 273 1 270 262 1 271 264 1 270 271 1 272 266 1 271 272 1 273 268 1
		 272 273 1 274 254 1 275 255 1 274 275 1 276 256 1 275 276 1 253 277 1 277 274 1 260 278 1
		 263 278 1 278 277 1 279 72 1 265 280 1 278 280 1 267 281 1 280 281 1 269 282 1 279 282 1
		 282 281 1 278 283 1 280 284 1 283 284 1 281 285 1 284 285 1 279 286 1 282 287 1 286 287 1
		 287 285 1 274 288 1 208 288 1 277 289 1 289 288 1 283 289 1 290 320 1 291 321 1 290 294 1
		 291 295 1 294 296 1 295 297 1 296 297 1 292 298 1 293 299 1 298 300 1 299 301 1 300 302 1
		 301 303 1 302 303 1 290 304 1 291 305 1 304 305 1 293 306 1 305 318 1 292 307 1 307 306 1
		 304 319 1 294 308 1 304 308 1 295 309 1 308 309 1 305 309 1 296 310 1 308 310 1 297 311 1
		 310 311 1 309 311 1 299 312 1 306 312 1 298 313 1 313 312 1 307 313 1 301 314 1 312 314 1
		 300 315 1 315 314 1 313 315 1 303 316 1 314 316 1 302 317 1 317 316 1 315 317 1 294 295 1
		 290 291 1 292 293 1 298 299 1 300 301 1 318 306 1 319 307 1 318 319 1 320 292 1 319 320 1
		 321 293 1 320 321 1 321 318 1 322 208 1 322 115 1 207 316 1 322 303 1 288 303 1 289 302 1
		 286 224 1 286 79 1 283 323 1 284 324 1 323 324 1 285 325 1 324 325 1 287 326 1 224 326 1
		 326 325 1 323 302 1 224 327 1 120 327 1 323 328 1 324 329 1 328 329 1 325 330 1 329 330 1
		 326 331 1 327 331 1 331 330 1 328 317 1 287 332 1 285 333 1 332 333 1;
	setAttr ".ed[664:829]" 325 334 1 333 334 1 326 335 1 335 334 1 332 335 1 332 336 1
		 333 337 1 336 337 1 334 338 1 337 338 1 335 339 1 339 338 1 336 339 1 336 340 1 337 341 1
		 340 341 1 338 342 1 341 342 1 339 343 1 343 342 1 340 343 1 340 344 1 341 345 1 344 345 1
		 342 346 1 345 346 1 343 347 1 347 346 1 344 347 1 207 348 1 141 348 1 317 349 1 316 350 1
		 349 350 1 348 350 1 327 351 1 144 351 1 328 352 1 329 353 1 352 353 1 330 354 1 353 354 1
		 331 355 1 351 355 1 355 354 1 352 349 1 348 356 1 149 356 1 349 357 1 350 358 1 357 358 1
		 356 358 1 351 359 1 152 359 1 352 360 1 353 361 1 360 361 1 355 362 1 359 362 1 360 357 1
		 209 422 1 210 421 1 356 367 1 363 366 1 156 363 1 364 363 1 364 157 1 365 368 1 365 158 1
		 366 365 1 159 366 1 367 364 1 367 160 1 368 359 1 368 161 1 363 369 1 162 369 1 366 370 1
		 163 370 1 369 370 1 357 372 1 362 379 1 371 367 1 380 365 1 372 371 1 371 374 1 374 373 1
		 373 372 1 374 376 1 376 375 1 375 373 1 376 378 1 378 377 1 377 375 1 378 380 1 380 379 1
		 379 377 1 361 375 1 360 373 1 364 374 1 363 376 1 366 378 1 358 371 1 368 379 1 353 407 1
		 354 408 1 381 382 1 361 406 1 381 383 1 383 384 1 382 384 1 355 409 1 385 382 1 362 410 1
		 386 384 1 385 386 1 375 413 1 383 387 1 377 412 1 388 387 1 388 384 1 379 411 1 389 388 1
		 386 389 1 390 398 1 391 399 1 390 391 1 392 400 1 391 392 1 393 401 1 392 393 1 394 402 1
		 393 394 1 395 403 1 394 395 1 396 404 1 395 396 1 397 405 1 396 397 1 397 390 1 398 383 1
		 399 381 1 398 399 1 400 382 1 399 400 1 401 385 1 400 401 1 402 386 1 401 402 1 403 389 1
		 402 403 1 404 388 1 403 404 1 405 387 1 404 405 1 405 398 1 406 390 1 407 391 1 406 407 1
		 408 392 1 407 408 1 409 393 1 408 409 1 410 394 1 409 410 1 411 395 1;
	setAttr ".ed[830:995]" 410 411 1 412 396 1 411 412 1 413 397 1 412 413 1 413 406 1
		 415 414 1 416 414 1 415 416 1 417 414 1 416 417 1 418 414 1 417 418 1 418 415 1 419 415 1
		 420 416 1 419 420 1 421 417 1 420 421 1 422 418 1 421 422 1 422 419 1 163 423 1 370 424 1
		 423 424 1 369 425 1 425 424 1 162 426 1 426 425 1 426 423 1 423 427 1 424 428 1 427 428 1
		 425 429 1 429 428 1 426 430 1 430 429 1 430 427 1 427 431 1 428 432 1 431 432 1 429 433 1
		 433 432 1 430 434 1 434 433 1 434 431 1 431 435 1 432 436 1 435 436 1 433 437 1 437 436 1
		 434 438 1 438 437 1 438 435 1 435 439 1 436 440 1 439 440 1 437 441 1 441 440 1 438 442 1
		 442 441 1 442 439 1 439 443 1 440 444 1 443 444 1 441 445 1 445 444 1 442 446 1 446 445 1
		 446 443 1 443 447 1 444 448 1 447 448 1 445 449 1 449 448 1 446 450 1 450 449 1 450 447 1
		 447 451 1 448 452 1 451 452 1 449 453 1 453 452 1 450 454 1 454 453 1 454 451 1 451 455 1
		 452 456 1 455 456 1 453 457 1 457 456 1 454 458 1 458 457 1 458 455 1 459 460 1 460 461 1
		 462 461 1 459 462 1 461 463 1 464 463 1 462 464 1 463 465 1 466 465 1 464 466 1 465 467 1
		 468 467 1 466 468 1 467 469 1 470 469 1 468 470 1 469 471 1 472 471 1 470 472 1 471 473 1
		 474 473 1 472 474 1 473 460 1 474 459 1 460 475 1 475 476 0 461 476 1 476 477 0 463 477 1
		 477 478 0 465 478 1 478 479 0 467 479 1 479 480 0 469 480 1 480 481 0 471 481 1 481 482 0
		 473 482 1 482 475 0 483 462 1 483 459 1 483 464 1 483 466 1 483 468 1 483 470 1 483 472 1
		 483 474 1 484 485 1 485 486 1 487 486 1 484 487 1 485 488 1 488 489 1 486 489 1 488 490 1
		 490 491 1 489 491 1 490 492 1 492 493 1 491 493 1 492 494 1 494 495 1 493 495 1 494 496 1
		 496 497 1 495 497 1 496 498 1 498 499 1 497 499 1 498 484 1 499 487 1;
	setAttr ".ed[996:1019]" 486 500 1 501 500 0 487 501 1 489 502 1 500 502 0 491 503 1
		 502 503 0 493 504 1 503 504 0 495 505 1 504 505 0 497 506 1 505 506 0 499 507 1 506 507 0
		 507 501 0 508 484 1 508 485 1 508 488 1 508 490 1 508 492 1 508 494 1 508 496 1 508 498 1;
	setAttr -s 515 -ch 2024 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 -1 400 401 634
		mu 0 4 152 0 385 386
		f 4 -2 402 403 -405
		mu 0 4 3 2 387 388
		f 4 -4 406 407 -409
		mu 0 4 7 5 389 390
		f 4 -5 408 409 416
		mu 0 4 13 8 391 392
		f 4 -6 410 411 -413
		mu 0 4 11 10 393 394
		f 4 -7 412 413 -415
		mu 0 4 12 11 394 395
		f 4 -8 -417 415 -411
		mu 0 4 9 13 392 396
		f 4 -9 414 417 -419
		mu 0 4 15 14 397 398
		f 4 -10 418 419 450
		mu 0 4 42 16 399 400
		f 4 -11 420 421 -423
		mu 0 4 19 18 401 402
		f 4 -12 422 423 -425
		mu 0 4 20 19 402 403
		f 4 -13 424 425 -427
		mu 0 4 22 21 404 405
		f 4 -14 426 427 456
		mu 0 4 46 23 406 407
		f 4 -15 428 429 -431
		mu 0 4 26 25 408 409
		f 4 -16 430 431 -433
		mu 0 4 28 27 410 411
		f 4 -17 432 433 551
		mu 0 4 114 29 412 413
		f 4 18 -27 -18 5
		mu 0 4 11 36 34 10
		f 4 8 -28 -19 6
		mu 0 4 12 37 36 11
		f 4 17 -25 -20 7
		mu 0 4 9 35 33 13
		f 4 12 13 -37 34
		mu 0 4 20 23 46 45
		f 4 23 -29 -23 24
		mu 0 4 35 40 38 33
		f 4 25 -30 -24 26
		mu 0 4 36 41 39 34
		f 4 9 -32 -26 27
		mu 0 4 37 42 41 36
		f 4 -31 -451 448 -421
		mu 0 4 17 42 400 424
		f 4 32 29 -34 41
		mu 0 4 44 39 41 43
		f 4 10 33 31 30
		mu 0 4 17 43 41 42
		f 4 36 35 -21 21
		mu 0 4 45 46 24 31
		f 4 -36 -457 454 -429
		mu 0 4 24 46 407 428
		f 4 38 -41 -38 -22
		mu 0 4 31 32 47 45
		f 4 39 28 -33 40
		mu 0 4 32 38 40 47
		f 4 -35 37 -42 11
		mu 0 4 20 45 47 19
		f 4 66 50 -68 -43
		mu 0 4 48 51 50 49
		f 4 67 51 -69 -44
		mu 0 4 49 50 53 52
		f 4 68 52 -70 -45
		mu 0 4 52 53 55 54
		f 4 69 53 -71 -46
		mu 0 4 54 55 57 56
		f 4 70 54 -72 -47
		mu 0 4 56 57 59 58
		f 4 71 55 -73 -48
		mu 0 4 58 59 61 60
		f 4 72 56 -74 -49
		mu 0 4 60 61 63 62
		f 4 73 57 -67 -50
		mu 0 4 62 63 65 64
		f 4 74 58 -76 -51
		mu 0 4 51 67 66 50
		f 4 75 59 -77 -52
		mu 0 4 50 66 68 53
		f 4 76 60 -78 -53
		mu 0 4 53 68 69 55
		f 4 77 61 -79 -54
		mu 0 4 55 69 70 57
		f 4 78 62 -80 -55
		mu 0 4 57 70 71 59
		f 4 79 63 -81 -56
		mu 0 4 59 71 72 61
		f 4 80 64 -82 -57
		mu 0 4 61 72 73 63
		f 4 81 65 -75 -58
		mu 0 4 63 73 74 65
		f 3 -84 82 42
		mu 0 3 49 75 48
		f 3 -85 83 43
		mu 0 3 52 76 49
		f 3 -86 84 44
		mu 0 3 54 77 52
		f 3 -87 85 45
		mu 0 3 56 78 54
		f 3 -88 86 46
		mu 0 3 58 79 56
		f 3 -89 87 47
		mu 0 3 60 80 58
		f 3 -90 88 48
		mu 0 3 62 81 60
		f 3 -83 89 49
		mu 0 3 64 6 62
		f 4 91 -63 -93 22
		mu 0 4 38 71 70 33
		f 4 92 -62 -91 19
		mu 0 4 33 70 69 13
		f 4 94 -126 -94 3
		mu 0 4 7 101 100 5
		f 4 93 -124 -96 2
		mu 0 4 5 100 99 4
		f 4 96 98 -98 -64
		mu 0 4 82 85 84 83
		f 4 99 101 -101 -99
		mu 0 4 86 89 88 87
		f 4 102 104 -104 -102
		mu 0 4 89 93 92 91
		f 4 106 -110 -106 15
		mu 0 4 28 90 94 27
		f 4 108 -105 -108 109
		mu 0 4 90 92 93 94
		f 4 111 -119 -111 -39
		mu 0 4 31 97 96 32
		f 4 110 -117 -113 -40
		mu 0 4 32 96 95 38
		f 4 113 -121 -112 20
		mu 0 4 24 98 97 31
		f 4 115 -100 -115 116
		mu 0 4 96 89 86 95
		f 4 117 -103 -116 118
		mu 0 4 97 93 89 96
		f 4 119 107 -118 120
		mu 0 4 98 94 93 97
		f 4 -92 112 114 -97
		mu 0 4 82 38 95 86
		f 4 105 -120 -114 14
		mu 0 4 26 94 98 24
		f 4 122 -60 -122 123
		mu 0 4 100 68 66 99
		f 4 124 -61 -123 125
		mu 0 4 101 69 68 100
		f 4 90 -125 -95 4
		mu 0 4 13 69 101 7
		f 4 126 127 121 -59
		mu 0 4 102 105 104 103
		f 4 97 129 -129 -65
		mu 0 4 106 109 108 107
		f 4 128 130 -127 -66
		mu 0 4 110 113 112 111
		f 4 -144 -552 564 640
		mu 0 4 210 114 413 499
		f 4 131 -133 -130 100
		mu 0 4 115 118 117 116
		f 4 133 -135 -132 103
		mu 0 4 119 122 121 120
		f 4 16 136 -136 -107
		mu 0 4 123 126 125 124
		f 4 135 137 -134 -109
		mu 0 4 127 130 129 128
		f 4 139 -141 -139 132
		mu 0 4 131 134 133 132
		f 4 141 -143 -140 134
		mu 0 4 135 138 137 136
		f 4 143 145 -145 -137
		mu 0 4 139 142 141 140
		f 4 144 146 -142 -138
		mu 0 4 143 146 145 144
		f 4 147 -149 1 95
		mu 0 4 147 149 1 148
		f 4 149 150 -148 -128
		mu 0 4 150 153 149 151
		f 4 138 151 -150 -131
		mu 0 4 154 157 156 155
		f 4 173 -207 -171 -169
		mu 0 4 185 207 206 182
		f 4 178 -178 -176 168
		mu 0 4 189 188 187 186
		f 4 183 -183 -181 177
		mu 0 4 193 192 191 190
		f 4 188 187 -186 -173
		mu 0 4 197 196 195 194
		f 4 193 192 -191 -188
		mu 0 4 201 200 199 198
		f 4 198 197 -196 -193
		mu 0 4 205 204 203 202
		f 4 167 170 -212 -154
		mu 0 4 159 182 206 209
		f 4 -209 -174 -167 152
		mu 0 4 208 207 185 158
		f 4 166 175 -175 -155
		mu 0 4 163 186 187 164
		f 4 176 -179 -168 155
		mu 0 4 165 188 189 162
		f 4 174 180 -180 -157
		mu 0 4 167 190 191 168
		f 4 179 182 -182 -159
		mu 0 4 168 191 192 169
		f 4 181 -184 -177 157
		mu 0 4 169 192 193 166
		f 4 169 185 -185 -161
		mu 0 4 171 194 195 172
		f 4 186 -189 -172 159
		mu 0 4 173 196 197 170
		f 4 184 190 -190 -163
		mu 0 4 175 198 199 176
		f 4 191 -194 -187 161
		mu 0 4 177 200 201 174
		f 4 189 195 -195 -165
		mu 0 4 179 202 203 180
		f 4 196 -199 -192 163
		mu 0 4 181 204 205 178
		f 4 158 -158 -200 156
		mu 0 4 168 169 166 167
		f 4 199 -156 -201 154
		mu 0 4 164 165 162 163
		f 4 200 153 -211 -153
		mu 0 4 158 159 209 208
		f 4 201 160 -203 -160
		mu 0 4 170 171 172 173
		f 4 202 162 -204 -162
		mu 0 4 174 175 176 177
		f 4 203 164 -166 -164
		mu 0 4 178 179 180 181
		f 4 205 172 -205 206
		mu 0 4 207 184 183 206
		f 4 171 -206 208 207
		mu 0 4 161 184 207 208
		f 4 209 -202 -208 210
		mu 0 4 209 160 161 208
		f 4 204 -170 -210 211
		mu 0 4 206 183 160 209
		f 4 -213 -635 633 -403
		mu 0 4 1 152 386 534
		f 4 214 194 -214 0
		mu 0 4 152 180 203 0
		f 4 215 -215 212 148
		mu 0 4 149 180 152 1
		f 4 216 165 -216 -151
		mu 0 4 153 181 180 149
		f 4 -218 -641 639 -435
		mu 0 4 30 210 499 595
		f 4 219 -221 -219 140
		mu 0 4 211 214 213 212
		f 4 221 -223 -220 142
		mu 0 4 215 218 217 216
		f 4 217 224 -224 -146
		mu 0 4 219 222 221 220
		f 4 268 267 -266 -264
		mu 0 4 265 268 267 266
		f 4 218 226 -217 -152
		mu 0 4 227 230 229 228
		f 4 -228 434 650 -652
		mu 0 4 232 231 616 617
		f 4 229 -231 -229 220
		mu 0 4 233 236 235 234
		f 4 231 -233 -230 222
		mu 0 4 237 240 239 238
		f 4 227 234 -234 -225
		mu 0 4 241 244 243 242
		f 4 233 235 -232 -226
		mu 0 4 245 248 247 246
		f 4 228 236 -197 -227
		mu 0 4 249 252 251 250
		f 4 237 239 -239 -147
		mu 0 4 223 253 254 224
		f 4 238 241 -241 -222
		mu 0 4 224 254 255 225
		f 4 240 -244 -243 225
		mu 0 4 225 255 256 226
		f 4 242 -245 -238 223
		mu 0 4 226 256 253 223
		f 4 245 247 -247 -240
		mu 0 4 253 257 258 254
		f 4 246 249 -249 -242
		mu 0 4 254 258 259 255
		f 4 248 -252 -251 243
		mu 0 4 255 259 260 256
		f 4 250 -253 -246 244
		mu 0 4 256 260 257 253
		f 4 253 255 -255 -248
		mu 0 4 257 261 262 258
		f 4 254 257 -257 -250
		mu 0 4 258 262 263 259
		f 4 256 -260 -259 251
		mu 0 4 259 263 264 260
		f 4 258 -261 -254 252
		mu 0 4 260 264 261 257
		f 4 261 263 -263 -256
		mu 0 4 261 265 266 262
		f 4 262 265 -265 -258
		mu 0 4 262 266 267 263
		f 4 264 -268 -267 259
		mu 0 4 263 267 268 264
		f 4 266 -269 -262 260
		mu 0 4 264 268 265 261
		f 4 270 272 -272 -198
		mu 0 4 271 274 273 272
		f 4 271 -274 -270 213
		mu 0 4 275 278 277 276
		f 4 -275 651 699 -701
		mu 0 4 280 279 664 665
		f 4 276 -278 -276 230
		mu 0 4 281 284 283 282
		f 4 278 -280 -277 232
		mu 0 4 285 288 287 286
		f 4 274 281 -281 -235
		mu 0 4 289 292 291 290
		f 4 280 282 -279 -236
		mu 0 4 293 296 295 294
		f 4 275 283 -271 -237
		mu 0 4 297 300 299 298
		f 4 285 287 -287 -273
		mu 0 4 303 306 305 304
		f 4 286 -289 -285 273
		mu 0 4 307 310 302 308
		f 4 -290 700 716 -718
		mu 0 4 312 311 695 696
		f 4 291 -293 -291 277
		mu 0 4 313 315 337 314
		f 4 338 -338 -337 334
		mu 0 4 349 341 351 350
		f 4 289 294 -294 -282
		mu 0 4 318 312 320 319
		f 4 343 342 -339 -341
		mu 0 4 352 354 341 353
		f 4 290 295 -286 -284
		mu 0 4 325 337 339 326
		f 4 851 -297 404 724
		mu 0 4 778 775 4 468
		f 4 296 846 -298 -3
		mu 0 4 4 775 776 5
		f 4 -307 734 741 -743
		mu 0 4 327 324 720 719
		f 4 306 -308 -306 299
		mu 0 4 324 327 330 347
		f 4 -316 -315 -314 -313
		mu 0 4 331 340 346 343
		f 4 -319 -318 -317 314
		mu 0 4 340 338 332 346
		f 4 -322 -321 -320 317
		mu 0 4 333 336 321 348
		f 4 -325 -324 -323 320
		mu 0 4 336 342 334 321
		f 4 -349 347 -346 337
		mu 0 4 341 356 355 351
		f 4 325 318 -327 292
		mu 0 4 315 338 340 337
		f 4 326 315 -309 -296
		mu 0 4 337 340 331 339
		f 4 351 350 348 -343
		mu 0 4 354 357 356 341
		f 4 -328 -304 -311 313
		mu 0 4 346 344 328 343
		f 4 -329 -301 327 316
		mu 0 4 345 347 344 346
		f 4 -330 -300 328 319
		mu 0 4 321 324 347 348
		f 4 311 -303 329 322
		mu 0 4 334 309 324 321
		f 4 330 310 -299 288
		mu 0 4 310 343 328 302
		f 4 -288 308 312 -331
		mu 0 4 310 306 331 343
		f 4 331 -310 -295 -305
		mu 0 4 329 342 320 312
		f 4 -302 -312 323 -332
		mu 0 4 329 309 334 342
		f 4 333 -389 -333 279
		mu 0 4 316 379 377 317
		f 4 341 -393 -340 293
		mu 0 4 320 381 380 322
		f 4 344 -399 -347 321
		mu 0 4 333 384 383 336
		f 4 346 -397 -350 324
		mu 0 4 336 383 382 342
		f 4 349 -395 -342 309
		mu 0 4 342 382 381 320
		f 4 -292 332 -387 -336
		mu 0 4 335 317 377 376
		f 4 -283 339 -391 -334
		mu 0 4 323 322 380 378
		f 4 -326 335 -400 -345
		mu 0 4 333 335 376 384
		f 4 354 353 -371 -353
		mu 0 4 358 359 368 367
		f 4 355 -373 -354 356
		mu 0 4 361 370 368 359
		f 4 357 -375 -356 358
		mu 0 4 362 371 369 360
		f 4 359 -377 -358 360
		mu 0 4 363 372 371 362
		f 4 361 -379 -360 362
		mu 0 4 364 373 372 363
		f 4 363 -381 -362 364
		mu 0 4 365 374 373 364
		f 4 365 -383 -364 366
		mu 0 4 366 375 374 365
		f 4 352 -384 -366 367
		mu 0 4 358 367 375 366
		f 4 370 369 336 -369
		mu 0 4 367 368 350 351
		f 4 371 -335 -370 372
		mu 0 4 370 349 350 368
		f 4 373 340 -372 374
		mu 0 4 371 352 353 369
		f 4 375 -344 -374 376
		mu 0 4 372 354 352 371
		f 4 377 -352 -376 378
		mu 0 4 373 357 354 372
		f 4 379 -351 -378 380
		mu 0 4 374 356 357 373
		f 4 381 -348 -380 382
		mu 0 4 375 355 356 374
		f 4 368 345 -382 383
		mu 0 4 367 351 355 375
		f 4 386 385 -355 -385
		mu 0 4 376 377 359 358
		f 4 387 -357 -386 388
		mu 0 4 379 361 359 377
		f 4 389 -359 -388 390
		mu 0 4 380 362 360 378
		f 4 391 -361 -390 392
		mu 0 4 381 363 362 380
		f 4 393 -363 -392 394
		mu 0 4 382 364 363 381
		f 4 395 -365 -394 396
		mu 0 4 383 365 364 382
		f 4 397 -367 -396 398
		mu 0 4 384 366 365 383
		f 4 384 -368 -398 399
		mu 0 4 376 358 366 384
		f 4 -412 435 444 -437
		mu 0 4 394 393 414 415
		f 4 -414 436 445 -418
		mu 0 4 395 394 415 416
		f 4 -416 437 442 -436
		mu 0 4 396 392 417 418
		f 4 -454 455 -428 -426
		mu 0 4 403 419 407 406
		f 4 -443 440 446 -442
		mu 0 4 418 417 420 421
		f 4 -445 441 447 -444
		mu 0 4 415 414 422 423
		f 4 -446 443 449 -420
		mu 0 4 416 415 423 400
		f 4 -462 452 -448 -452
		mu 0 4 425 426 423 422
		f 4 -449 -450 -453 -422
		mu 0 4 424 400 423 426
		f 4 -440 438 -455 -456
		mu 0 4 419 427 428 407
		f 4 439 457 460 -459
		mu 0 4 427 419 429 430
		f 4 -461 451 -447 -460
		mu 0 4 430 429 421 420
		f 4 -424 461 -458 453
		mu 0 4 403 402 429 419
		f 4 462 487 -471 -487
		mu 0 4 431 432 433 434
		f 4 463 488 -472 -488
		mu 0 4 432 435 436 433
		f 4 464 489 -473 -489
		mu 0 4 435 437 438 436
		f 4 465 490 -474 -490
		mu 0 4 437 439 440 438
		f 4 466 491 -475 -491
		mu 0 4 439 441 442 440
		f 4 467 492 -476 -492
		mu 0 4 441 443 444 442
		f 4 468 493 -477 -493
		mu 0 4 443 445 446 444
		f 4 469 486 -478 -494
		mu 0 4 445 447 448 446
		f 4 470 495 -479 -495
		mu 0 4 434 433 449 450
		f 4 471 496 -480 -496
		mu 0 4 433 436 451 449
		f 4 472 497 -481 -497
		mu 0 4 436 438 452 451
		f 4 473 498 -482 -498
		mu 0 4 438 440 453 452
		f 4 474 499 -483 -499
		mu 0 4 440 442 454 453
		f 4 475 500 -484 -500
		mu 0 4 442 444 455 454
		f 4 476 501 -485 -501
		mu 0 4 444 446 456 455
		f 4 477 494 -486 -502
		mu 0 4 446 448 457 456
		f 3 -463 -503 503
		mu 0 3 432 431 458
		f 3 -464 -504 504
		mu 0 3 435 432 459
		f 3 -465 -505 505
		mu 0 3 437 435 460
		f 3 -466 -506 506
		mu 0 3 439 437 461
		f 3 -467 -507 507
		mu 0 3 441 439 462
		f 3 -468 -508 508
		mu 0 3 443 441 463
		f 3 -469 -509 509
		mu 0 3 445 443 464
		f 3 -470 -510 502
		mu 0 3 447 445 465
		f 4 -441 512 482 -512
		mu 0 4 420 417 453 454
		f 4 -438 510 481 -513
		mu 0 4 417 392 452 453
		f 4 -408 513 545 -515
		mu 0 4 390 389 466 467
		f 4 -406 515 543 -514
		mu 0 4 389 468 469 466
		f 4 483 517 -519 -517
		mu 0 4 470 471 472 473
		f 4 518 520 -522 -520
		mu 0 4 474 475 476 477
		f 4 521 523 -525 -523
		mu 0 4 477 478 479 480
		f 4 -432 525 529 -527
		mu 0 4 411 410 481 482
		f 4 -530 527 524 -529
		mu 0 4 482 481 480 479
		f 4 458 530 538 -532
		mu 0 4 427 430 483 484
		f 4 459 532 536 -531
		mu 0 4 430 420 485 483
		f 4 -439 531 540 -534
		mu 0 4 428 427 484 486
		f 4 -537 534 519 -536
		mu 0 4 483 485 474 477
		f 4 -539 535 522 -538
		mu 0 4 484 483 477 480
		f 4 -541 537 -528 -540
		mu 0 4 486 484 480 481
		f 4 516 -535 -533 511
		mu 0 4 470 474 485 420
		f 4 -430 533 539 -526
		mu 0 4 409 428 486 481
		f 4 -544 541 479 -543
		mu 0 4 466 469 449 451
		f 4 -546 542 480 -545
		mu 0 4 467 466 451 452
		f 4 -410 514 544 -511
		mu 0 4 392 390 467 452
		f 4 478 -542 -548 -547
		mu 0 4 487 488 489 490
		f 4 484 548 -550 -518
		mu 0 4 491 492 493 494
		f 4 485 546 -551 -549
		mu 0 4 495 496 497 498
		f 4 -521 549 553 -553
		mu 0 4 500 501 502 503
		f 4 -524 552 555 -555
		mu 0 4 504 505 506 507
		f 4 526 556 -558 -434
		mu 0 4 508 509 510 511
		f 4 528 554 -559 -557
		mu 0 4 512 513 514 515
		f 4 -554 559 561 -561
		mu 0 4 516 517 518 519
		f 4 -556 560 563 -563
		mu 0 4 520 521 522 523
		f 4 557 565 -567 -565
		mu 0 4 524 525 526 527
		f 4 558 562 -568 -566
		mu 0 4 528 529 530 531
		f 4 -516 -404 569 -569
		mu 0 4 532 533 534 535
		f 4 547 568 -572 -571
		mu 0 4 536 537 535 538
		f 4 550 570 -573 -560
		mu 0 4 539 540 541 542
		f 4 589 591 627 -595
		mu 0 4 543 544 545 546
		f 4 -590 596 598 -600
		mu 0 4 547 548 549 550
		f 4 -599 601 603 -605
		mu 0 4 551 552 553 554
		f 4 593 606 -609 -610
		mu 0 4 555 556 557 558
		f 4 608 611 -614 -615
		mu 0 4 559 560 561 562
		f 4 613 616 -619 -620
		mu 0 4 563 564 565 566
		f 4 574 632 -592 -589
		mu 0 4 567 568 545 544
		f 4 -574 587 594 629
		mu 0 4 569 570 543 546
		f 4 575 595 -597 -588
		mu 0 4 571 572 549 548
		f 4 -577 588 599 -598
		mu 0 4 573 574 547 550
		f 4 577 600 -602 -596
		mu 0 4 575 576 553 552
		f 4 579 602 -604 -601
		mu 0 4 576 577 554 553
		f 4 -579 597 604 -603
		mu 0 4 577 578 551 554
		f 4 581 605 -607 -591
		mu 0 4 579 580 557 556
		f 4 -581 592 609 -608
		mu 0 4 581 582 555 558
		f 4 583 610 -612 -606
		mu 0 4 583 584 561 560
		f 4 -583 607 614 -613
		mu 0 4 585 586 559 562
		f 4 585 615 -617 -611
		mu 0 4 587 588 565 564
		f 4 -585 612 619 -618
		mu 0 4 589 590 563 566
		f 4 -578 620 578 -580
		mu 0 4 576 575 578 577
		f 4 -576 621 576 -621
		mu 0 4 572 571 574 573
		f 4 573 631 -575 -622
		mu 0 4 570 569 568 567
		f 4 580 623 -582 -623
		mu 0 4 582 581 580 579
		f 4 582 624 -584 -624
		mu 0 4 586 585 584 583
		f 4 584 586 -586 -625
		mu 0 4 590 589 588 587
		f 4 -628 625 -594 -627
		mu 0 4 546 545 591 592
		f 4 -629 -630 626 -593
		mu 0 4 593 569 546 592
		f 4 -632 628 622 -631
		mu 0 4 568 569 593 594
		f 4 -633 630 590 -626
		mu 0 4 545 568 594 591
		f 4 -402 635 -616 -637
		mu 0 4 386 385 565 588
		f 4 -570 -634 636 -638
		mu 0 4 535 534 386 588
		f 4 571 637 -587 -639
		mu 0 4 538 535 588 589
		f 4 -562 641 643 -643
		mu 0 4 596 597 598 599
		f 4 -564 642 645 -645
		mu 0 4 600 601 602 603
		f 4 566 646 -648 -640
		mu 0 4 604 605 606 607
		f 4 687 689 -692 -693
		mu 0 4 608 609 610 611
		f 4 572 638 -650 -642
		mu 0 4 612 613 614 615
		f 4 -644 652 654 -654
		mu 0 4 618 619 620 621
		f 4 -646 653 656 -656
		mu 0 4 622 623 624 625
		f 4 647 657 -659 -651
		mu 0 4 626 627 628 629
		f 4 648 655 -660 -658
		mu 0 4 630 631 632 633
		f 4 649 617 -661 -653
		mu 0 4 634 635 636 637
		f 4 567 662 -664 -662
		mu 0 4 638 639 640 641
		f 4 644 664 -666 -663
		mu 0 4 639 642 643 640
		f 4 -649 666 667 -665
		mu 0 4 642 644 645 643
		f 4 -647 661 668 -667
		mu 0 4 644 638 641 645
		f 4 663 670 -672 -670
		mu 0 4 641 640 646 647
		f 4 665 672 -674 -671
		mu 0 4 640 643 648 646
		f 4 -668 674 675 -673
		mu 0 4 643 645 649 648
		f 4 -669 669 676 -675
		mu 0 4 645 641 647 649
		f 4 671 678 -680 -678
		mu 0 4 647 646 650 651
		f 4 673 680 -682 -679
		mu 0 4 646 648 652 650
		f 4 -676 682 683 -681
		mu 0 4 648 649 653 652
		f 4 -677 677 684 -683
		mu 0 4 649 647 651 653
		f 4 679 686 -688 -686
		mu 0 4 651 650 609 608
		f 4 681 688 -690 -687
		mu 0 4 650 652 610 609
		f 4 -684 690 691 -689
		mu 0 4 652 653 611 610
		f 4 -685 685 692 -691
		mu 0 4 653 651 608 611
		f 4 694 -694 -401 269
		mu 0 4 270 655 654 269
		f 4 618 696 -698 -696
		mu 0 4 656 657 658 659
		f 4 -636 693 698 -697
		mu 0 4 660 661 662 663
		f 4 -655 701 703 -703
		mu 0 4 666 667 668 669
		f 4 -657 702 705 -705
		mu 0 4 670 671 672 673
		f 4 658 706 -708 -700
		mu 0 4 674 675 676 677
		f 4 659 704 -709 -707
		mu 0 4 678 679 680 681
		f 4 660 695 -710 -702
		mu 0 4 682 683 684 685
		f 4 711 -711 -695 284
		mu 0 4 302 687 686 301
		f 4 697 713 -715 -713
		mu 0 4 688 689 690 691
		f 4 -699 710 715 -714
		mu 0 4 692 693 687 694
		f 4 -704 718 720 -720
		mu 0 4 697 698 699 700
		f 4 -771 772 773 -775
		mu 0 4 701 702 703 704
		f 4 707 721 -723 -717
		mu 0 4 705 706 707 696
		f 4 776 774 -779 -780
		mu 0 4 708 709 704 710
		f 4 709 712 -724 -719
		mu 0 4 711 712 713 699
		f 4 405 725 850 -725
		mu 0 4 468 389 777 778
		f 4 -726 -407 297 848
		mu 0 4 777 389 5 776
		f 4 728 -730 730 300
		mu 0 4 347 715 714 344
		f 4 717 -738 738 304
		mu 0 4 312 696 716 329
		f 4 -731 -736 736 303
		mu 0 4 344 714 717 328
		f 4 918 -921 -923 923
		mu 0 4 811 812 813 814
		f 4 -733 -734 -735 302
		mu 0 4 309 721 720 324
		f 4 -737 -727 -712 298
		mu 0 4 328 717 687 302
		f 4 -739 -732 732 301
		mu 0 4 329 716 721 309
		f 4 740 -740 -729 305
		mu 0 4 330 718 715 347
		f 4 -728 739 743 -742
		mu 0 4 720 715 718 719
		f 4 748 749 750 751
		mu 0 4 722 723 724 725
		f 4 -751 752 753 754
		mu 0 4 725 724 726 727
		f 4 -754 755 756 757
		mu 0 4 728 729 730 731
		f 4 -757 758 759 760
		mu 0 4 731 730 732 733
		f 4 -774 781 -784 784
		mu 0 4 704 703 734 735
		f 4 -721 762 -755 -762
		mu 0 4 700 699 725 727
		f 4 723 744 -752 -763
		mu 0 4 699 713 722 725
		f 4 778 -785 -787 -788
		mu 0 4 710 704 735 736
		f 4 -750 746 735 763
		mu 0 4 724 723 717 714
		f 4 -753 -764 729 764
		mu 0 4 737 724 714 715
		f 4 -756 -765 727 765
		mu 0 4 730 729 715 720
		f 4 -759 -766 733 -748
		mu 0 4 732 730 720 721
		f 4 -716 726 -747 -767
		mu 0 4 694 687 717 723
		f 4 766 -749 -745 714
		mu 0 4 694 723 722 691
		f 4 737 722 745 -768
		mu 0 4 716 696 707 733
		f 4 767 -760 747 731
		mu 0 4 716 733 732 721
		f 4 -706 768 824 -770
		mu 0 4 738 739 740 741
		f 4 -722 775 828 -778
		mu 0 4 707 742 743 744
		f 4 -758 782 834 -781
		mu 0 4 728 731 745 746
		f 4 -761 785 832 -783
		mu 0 4 731 733 747 745
		f 4 -746 777 830 -786
		mu 0 4 733 707 744 747
		f 4 771 822 -769 719
		mu 0 4 748 749 740 739
		f 4 769 826 -776 708
		mu 0 4 750 751 743 742
		f 4 780 835 -772 761
		mu 0 4 728 746 749 748
		f 4 788 806 -790 -791
		mu 0 4 752 753 754 755
		f 4 -793 789 808 -792
		mu 0 4 756 755 754 757
		f 4 -795 791 810 -794
		mu 0 4 758 759 760 761
		f 4 -797 793 812 -796
		mu 0 4 762 758 761 763
		f 4 -799 795 814 -798
		mu 0 4 764 762 763 765
		f 4 -801 797 816 -800
		mu 0 4 766 764 765 767
		f 4 -803 799 818 -802
		mu 0 4 768 766 767 769
		f 4 -804 801 819 -789
		mu 0 4 752 768 769 753
		f 4 804 -773 -806 -807
		mu 0 4 753 703 702 754
		f 4 -809 805 770 -808
		mu 0 4 757 754 702 701
		f 4 -811 807 -777 -810
		mu 0 4 761 760 709 708
		f 4 -813 809 779 -812
		mu 0 4 763 761 708 710
		f 4 -815 811 787 -814
		mu 0 4 765 763 710 736
		f 4 -817 813 786 -816
		mu 0 4 767 765 736 735
		f 4 -819 815 783 -818
		mu 0 4 769 767 735 734
		f 4 -820 817 -782 -805
		mu 0 4 753 769 734 703
		f 4 820 790 -822 -823
		mu 0 4 749 752 755 740
		f 4 -825 821 792 -824
		mu 0 4 741 740 755 756
		f 4 -827 823 794 -826
		mu 0 4 743 751 759 758
		f 4 -829 825 796 -828
		mu 0 4 744 743 758 762
		f 4 -831 827 798 -830
		mu 0 4 747 744 762 764
		f 4 -833 829 800 -832
		mu 0 4 745 747 764 766
		f 4 -835 831 802 -834
		mu 0 4 746 745 766 768
		f 4 -836 833 803 -821
		mu 0 4 749 746 768 752
		f 3 836 -838 -839
		mu 0 3 771 770 772
		f 3 -840 -841 837
		mu 0 3 770 773 772
		f 3 -843 839 -842
		mu 0 3 774 773 770
		f 3 -837 -844 841
		mu 0 3 770 771 774
		f 4 844 838 -846 -847
		mu 0 4 775 771 772 776
		f 4 -848 -849 845 840
		mu 0 4 773 777 776 772
		f 4 -851 847 842 -850
		mu 0 4 778 777 773 774
		f 4 843 -845 -852 849
		mu 0 4 774 771 775 778
		f 4 742 853 -855 -853
		mu 0 4 327 719 780 779
		f 4 -744 855 856 -854
		mu 0 4 719 718 781 780
		f 4 -741 857 858 -856
		mu 0 4 718 330 782 781
		f 4 307 852 -860 -858
		mu 0 4 330 327 779 782
		f 4 854 861 -863 -861
		mu 0 4 779 780 784 783
		f 4 -857 863 864 -862
		mu 0 4 780 781 785 784
		f 4 -859 865 866 -864
		mu 0 4 781 782 786 785
		f 4 859 860 -868 -866
		mu 0 4 782 779 783 786
		f 4 862 869 -871 -869
		mu 0 4 783 784 788 787
		f 4 -865 871 872 -870
		mu 0 4 784 785 789 788
		f 4 -867 873 874 -872
		mu 0 4 785 786 790 789
		f 4 867 868 -876 -874
		mu 0 4 786 783 787 790
		f 4 870 877 -879 -877
		mu 0 4 787 788 792 791
		f 4 -873 879 880 -878
		mu 0 4 788 789 793 792
		f 4 -875 881 882 -880
		mu 0 4 789 790 794 793
		f 4 875 876 -884 -882
		mu 0 4 790 787 791 794
		f 4 878 885 -887 -885
		mu 0 4 791 792 796 795
		f 4 -881 887 888 -886
		mu 0 4 792 793 797 796
		f 4 -883 889 890 -888
		mu 0 4 793 794 798 797
		f 4 883 884 -892 -890
		mu 0 4 794 791 795 798
		f 4 886 893 -895 -893
		mu 0 4 795 796 800 799
		f 4 -889 895 896 -894
		mu 0 4 796 797 801 800
		f 4 -891 897 898 -896
		mu 0 4 797 798 802 801
		f 4 891 892 -900 -898
		mu 0 4 798 795 799 802
		f 4 894 901 -903 -901
		mu 0 4 799 800 804 803
		f 4 -897 903 904 -902
		mu 0 4 800 801 805 804
		f 4 -899 905 906 -904
		mu 0 4 801 802 806 805
		f 4 899 900 -908 -906
		mu 0 4 802 799 803 806
		f 4 902 909 -911 -909
		mu 0 4 803 804 808 807
		f 4 -905 911 912 -910
		mu 0 4 804 805 809 808
		f 4 -907 913 914 -912
		mu 0 4 805 806 810 809
		f 4 907 908 -916 -914
		mu 0 4 806 803 807 810
		f 4 910 917 -919 -917
		mu 0 4 807 808 812 811
		f 4 -913 919 920 -918
		mu 0 4 808 809 813 812
		f 4 -915 921 922 -920
		mu 0 4 809 810 814 813
		f 4 915 916 -924 -922
		mu 0 4 810 807 811 814
		f 4 924 925 -927 -928
		mu 0 4 815 816 817 818
		f 4 926 928 -930 -931
		mu 0 4 818 817 819 820
		f 4 929 931 -933 -934
		mu 0 4 820 819 821 822
		f 4 932 934 -936 -937
		mu 0 4 822 821 823 824
		f 4 935 937 -939 -940
		mu 0 4 824 823 825 826
		f 4 938 940 -942 -943
		mu 0 4 826 825 827 828
		f 4 941 943 -945 -946
		mu 0 4 828 827 829 830
		f 4 944 946 -925 -948
		mu 0 4 830 829 831 832
		f 4 948 949 -951 -926
		mu 0 4 816 833 834 817
		f 4 950 951 -953 -929
		mu 0 4 817 834 835 819
		f 4 952 953 -955 -932
		mu 0 4 819 835 836 821
		f 4 954 955 -957 -935
		mu 0 4 821 836 837 823
		f 4 956 957 -959 -938
		mu 0 4 823 837 838 825
		f 4 958 959 -961 -941
		mu 0 4 825 838 839 827
		f 4 960 961 -963 -944
		mu 0 4 827 839 840 829
		f 4 962 963 -949 -947
		mu 0 4 829 840 841 831
		f 3 -965 965 927
		mu 0 3 818 842 815
		f 3 -967 964 930
		mu 0 3 820 843 818
		f 3 -968 966 933
		mu 0 3 822 844 820
		f 3 -969 967 936
		mu 0 3 824 845 822
		f 3 -970 968 939
		mu 0 3 826 846 824
		f 3 -971 969 942
		mu 0 3 828 847 826
		f 3 -972 970 945
		mu 0 3 830 848 828
		f 3 -966 971 947
		mu 0 3 832 849 830
		f 4 972 973 -975 -976
		mu 0 4 850 851 852 853
		f 4 976 977 -979 -974
		mu 0 4 851 854 855 852
		f 4 979 980 -982 -978
		mu 0 4 854 856 857 855
		f 4 982 983 -985 -981
		mu 0 4 856 858 859 857
		f 4 985 986 -988 -984
		mu 0 4 858 860 861 859
		f 4 988 989 -991 -987
		mu 0 4 860 862 863 861
		f 4 991 992 -994 -990
		mu 0 4 862 864 865 863
		f 4 994 975 -996 -993
		mu 0 4 864 866 867 865
		f 4 974 996 -998 -999
		mu 0 4 853 852 868 869;
	setAttr ".fc[500:514]"
		f 4 978 999 -1001 -997
		mu 0 4 852 855 870 868
		f 4 981 1001 -1003 -1000
		mu 0 4 855 857 871 870
		f 4 984 1003 -1005 -1002
		mu 0 4 857 859 872 871
		f 4 987 1005 -1007 -1004
		mu 0 4 859 861 873 872
		f 4 990 1007 -1009 -1006
		mu 0 4 861 863 874 873
		f 4 993 1009 -1011 -1008
		mu 0 4 863 865 875 874
		f 4 995 998 -1012 -1010
		mu 0 4 865 867 876 875
		f 3 -973 -1013 1013
		mu 0 3 851 850 877
		f 3 -977 -1014 1014
		mu 0 3 854 851 878
		f 3 -980 -1015 1015
		mu 0 3 856 854 879
		f 3 -983 -1016 1016
		mu 0 3 858 856 880
		f 3 -986 -1017 1017
		mu 0 3 860 858 881
		f 3 -989 -1018 1018
		mu 0 3 862 860 882
		f 3 -992 -1019 1019
		mu 0 3 864 862 883
		f 3 -995 -1020 1012
		mu 0 3 866 864 884;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 1\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 1\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 0\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n"
		+ "            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 0\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 1\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n"
		+ "                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n"
		+ "                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 1\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n"
		+ "            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n"
		+ "                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n"
		+ "                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n"
		+ "                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n"
		+ "                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n"
		+ "                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"quad\\\" -ps 1 50 50 -ps 2 50 50 -ps 3 50 50 -ps 4 50 50 $gMainPane;\"\n"
		+ "\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Top View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera top` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 1\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera top` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 1\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Side View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera side` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 1\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 0\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera side` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 1\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 0\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Front View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera front` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 1\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera front` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 1\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12.000000000000002 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode dagPose -n "bindPose6";
	setAttr -s 47 ".wm";
	setAttr -s 47 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 -1.6653345369377346e-016 -1.0321604682062001e-016
		 -1.8735013540549514e-016 0 0 34.204625513024482 0.061553375823110879 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.033778802685505205 -0.70629950622178228 0.033778802685503595 0.7062995062217825 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 -2.3784474328565721e-015 -2.0594307750419156e-015
		 -2.4286128663675053e-016 0 31.020144001673611 -0.23544500653844125 1.3243115937030898e-014 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.028187093575099312 0.99960266494031946 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 -1.6531447376854314e-015 -2.6142798466909778e-015
		 -1.6653345369377131e-016 0 28.051949796902036 0.34996801940832967 1.4487462128403558e-014 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.17949498834052097 0.98375888771621078 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 -2.6929729761446935e-015 -2.563567073997221e-015
		 -2.2204460492502781e-016 0 34.97669253385483 -36.928712642414737 -40.730400000000081 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.69437326759012985 0.71961501183355392 1.6419300210500494e-015 1.5843364787039213e-015 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 -4.8294701571194294e-015 2.775557561562891e-015
		 -6.7022362064675794e-030 0 -22.252272877200568 0.55030333835424017 8.5265128291212022e-014 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 -5.1625370645069748e-015 2.4424906541753503e-015
		 2.2759572004815646e-015 0 -22.054853515621939 -9.4117028833500456 -2.1316282072803006e-014 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 -4.7739590058881731e-015 3.4416913763379853e-015
		 5.5511151231249612e-017 0 -10.590114102235912 6.7038824685121909 7.815970093361102e-014 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 -4.8849813083506888e-015 3.1086244689504387e-015
		 2.2204460492502372e-016 0 -6.0627159305061298 0.14508992379646202 1.4210854715202004e-014 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 -4.7739590058881731e-015 2.886579864025407e-015
		 5.5511151231250937e-017 0 -9.192401400121831 -0.29031000340489754 3.5527136788005009e-014 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 2.7491607168762932e-015 2.4024042581386982e-015
		 3.3022977062656216e-030 0 34.976691423905081 -36.928709358149035 40.730423179557363 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.71961501183355403 -0.69437326759012974 -4.251809997838705e-017 4.4063711043017331e-017 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 2.2204460492503131e-016 4.829470157119431e-015
		 5.3617889651740646e-031 0 22.252318027833503 -0.55031097215319846 4.9737991503207013e-014 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 2.2204460492503131e-016 4.7184478546569153e-015
		 5.2385294487332815e-031 0 22.054770499368281 9.4117286775934872 7.1054273576010019e-014 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 1.665334536937736e-016 4.6629367034256575e-015
		 5.5511151231258221e-017 0 10.59018534460396 -6.703878796125494 7.1054273576010019e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 1.6653345369377323e-016 4.2743586448068527e-015
		 -1.110223024625153e-016 0 6.0626382156264924 -0.14511634026764852 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 2.775557561562884e-016 4.5519144009631418e-015
		 -3.3306690738754632e-016 0 9.1924546132824787 0.29035500222842359 2.8421709430404007e-014 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 -2.7755575615628914e-017 -3.8518598887744717e-034
		 -2.7755575615628914e-017 0 35.329543999460952 1.2312414694755915 -1.5281707202288423e-014 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.11326595025589824 0.6979762349196621 0.11326595025589796 0.69797623491966376 1
		 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.0139240514659927e-015
		 -8.5003196571474859 7.0032187220319599 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.057551901427214912
		 1.0037212579033508 5.1261832992401111 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.065085526852860412
		 5.2875391132799443 3.9092737282383325 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 1.8031470215602279e-015 -2.1773648044464451e-015
		 -1.1102230246251763e-016 0 -23.225413721509309 5.0644796289621254 1.1420994765551671e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.10005937726510342 0.99498146767732298 1.1655763779707933e-015 1.1721509427399204e-016 1
		 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 -9.0011191414701957e-017 2.0686636620310393e-016
		 3.8857805861880479e-016 0 22.500310627993699 -7.1054273576010019e-015 3.4512664603419266e-030 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.19220458686288916 0.98135487810927302 1
		 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 -2.7755575615628914e-017 0 0 0 29.631488304581758
		 -7.1054273576010019e-015 3.0568360077314207e-030 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.099350779243899151 -0.70009243865623194 0.099350779243899137 0.70009243865623205 1
		 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.7953981164764466e-028
		 -35.483941142727801 -7.6584045631786921 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.329566795714979e-017
		 -2.8667347839310846 -8.0398431310094907 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.1733579242240522e-017
		 0.56921341497748301 -9.6338275412129661 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 -3.1225022567582522e-017 5.9631119486702821e-019
		 5.8980598183211429e-017 0 -21.517396269588573 -27.210974124974594 1.3308906213600835 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.011227988653253895 0.26452020489103689 -0.0095263524219782562 0.96426772324118493 1
		 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 -5.2041704279304213e-018 -5.5538256285569965e-017
		 7.8062556418956319e-018 0 21.51739626958857 -27.210974124974594 1.3308906213600693 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.010588903534573767 -0.24946399742977579 0.0089841226196333453 0.96828450088238405 1
		 1 1 yes;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 1.9428902930940247e-016 4.4408920985006262e-016
		 1.9428902930940247e-016 0 15.092341562022575 -0.52805171352283509 36.03267283353324 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.68573842628128379 -0.17251901553529722 -0.61066583589007362 0.35649296890216242 1
		 1 1 yes;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 0 0 -4.4408920985006262e-016 0 -8.4084504980703514
		 -2.1872247925178971 2.1316282072803006e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 -0.072973054889888589 0.99733391261905724 1 1 1 yes;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1 1 -9.1835496157991212e-041 -1.6543612251060553e-024
		 1.1102230246251565e-016 0 -10.975581706037637 -5.6161820016207624 -4.0398063727409479 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.25305497730996046 -0.96745189981655177 -7.2080781976521645e-009 1.8854064632062471e-009 1
		 1 1 yes;
	setAttr ".xm[30]" -type "matrix" "xform" 1 1 1 -1.3065424919709401e-008 5.9972446730071065e-009
		 -2.1121081656922347e-016 0 -0.056795750984477422 0.57620134742249718 16.595602876361482 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1.4751320803864504e-008 -1.2128804278937815e-009 -0.081945292880441792 0.99663682902787532 1
		 1 1 yes;
	setAttr ".xm[31]" -type "matrix" "xform" 1 1 1 -5.2943695106456536e-017 -3.3087224502121107e-024
		 8.7587996297958903e-041 0 -9.9526891888089537 1.8050846053069662 7.8217045533292122 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1.7797281776557527e-008 1.359348980202582e-008 0.60699365491242718 0.7947066772690744 1
		 1 1 yes;
	setAttr ".xm[32]" -type "matrix" "xform" 1 1 1 2.2204460492503136e-016 2.4980018054066017e-016
		 4.1633363423443375e-016 0 15.092344272455826 -0.52806107097099897 -36.032699999999998 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.17251901553529742 0.6857384262812839 0.35649296890216237 0.61066583589007339 1
		 1 1 yes;
	setAttr ".xm[33]" -type "matrix" "xform" 1 1 1 -2.215062856144216e-016 7.203025869068111e-017
		 -1.3877787807814457e-016 0 8.408489692553637 2.1872488976381734 7.1054273576010019e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.072973054889888575 0.99733391261905724 1
		 1 1 yes;
	setAttr ".xm[34]" -type "matrix" "xform" 1 1 1 5.1088303993172283e-017 2.3376419932843182e-016
		 3.8857805861880469e-016 0 10.975504443002976 5.6161942159812579 4.0397999999999641 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.2530549773099604 0.96745189981655177 1.5495148398547454e-017 5.9239343621968304e-017 1
		 1 1 yes;
	setAttr ".xm[35]" -type "matrix" "xform" 1 1 1 0 0 6.106226635438361e-016 0 0.056794397185001344
		 -0.5762277296767131 -16.59559999999999 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.081945292880441473 0.99663682902787543 1
		 1 1 yes;
	setAttr ".xm[36]" -type "matrix" "xform" 1 1 1 -7.7546585637391872e-016 6.617444986518227e-024
		 2.2204460492503141e-016 0 9.9526351385913685 -1.8051169624367489 -7.8216999999999928 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1.9126639797460778e-008 1.4608847929590669e-008 0.60699365491242685 0.79470667726907451 1
		 1 1 yes;
	setAttr ".xm[37]" -type "matrix" "xform" 1 1 1 1.1102230246251565e-016 5.5511151231257815e-017
		 1.6653345369377348e-016 0 -11.223567130399736 -61.821787838368039 -40.967227965485094 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.47310548915700534 -0.52551992933618663 -0.52551992933618674 0.47310548915700545 1
		 1 1 yes;
	setAttr ".xm[38]" -type "matrix" "xform" 1 1 1 0 0 0 0 11.693069156460275 0
		 -0.22062394634831151 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[39]" -type "matrix" "xform" 1 1 1 0 0 0 0 10.369325478370435 -1.4210854715202004e-014
		 -5.5155986587076846 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[40]" -type "matrix" "xform" 1 1 1 0 0 0 0 7.6341204596852847 7.1054273576010019e-015
		 1.0082800607131617 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[41]" -type "matrix" "xform" 1 1 1 0 0 0 0 8.2548861574357204 0
		 -4.982540638216495 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[42]" -type "matrix" "xform" 1 1 1 2.2204460492503136e-016 2.2204460492503131e-016
		 1.6653345369377353e-016 0 -11.223541000262173 -61.821796312811571 40.967199999999998 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.52551992933618663 0.47310548915700534 0.47310548915700545 0.52551992933618674 1
		 1 1 yes;
	setAttr ".xm[43]" -type "matrix" "xform" 1 1 1 -1.2246467991473535e-016 -1.224646799147353e-016
		 7.4987989133092867e-033 0 -11.693100000000001 -7.1054273576010019e-015 0.22059999999999746 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[44]" -type "matrix" "xform" 1 1 1 -1.2246467991473535e-016 -1.224646799147353e-016
		 7.4987989133092867e-033 0 -10.36930000000001 0 5.5156000000000063 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[45]" -type "matrix" "xform" 1 1 1 -1.2246467991473535e-016 -1.224646799147353e-016
		 7.4987989133092867e-033 0 -7.6341000000000037 7.1054273576010019e-015 -1.0083000000000126 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[46]" -type "matrix" "xform" 1 1 1 -1.2246467991473535e-016 -1.224646799147353e-016
		 7.4987989133092867e-033 0 -8.2548853571939063 -7.1054273576010019e-015 4.9825593272767996 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 47 ".m";
	setAttr -s 47 ".p";
	setAttr ".bp" yes;
createNode shadingEngine -n "lambert3SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode checker -n "checker1";
createNode place2dTexture -n "place2dTexture2";
	setAttr ".re" -type "float2" 10 10 ;
createNode skinCluster -n "skinCluster2";
	setAttr -s 568 ".wl";
	setAttr ".wl[0].w[26]"  1;
	setAttr ".wl[1].w[26]"  1;
	setAttr ".wl[2].w[26]"  1;
	setAttr ".wl[3].w[26]"  1;
	setAttr ".wl[4].w[26]"  1;
	setAttr ".wl[5].w[26]"  1;
	setAttr ".wl[6].w[26]"  1;
	setAttr ".wl[7].w[26]"  1;
	setAttr ".wl[8].w[26]"  1;
	setAttr ".wl[9].w[26]"  1;
	setAttr ".wl[10].w[26]"  1;
	setAttr ".wl[11].w[26]"  1;
	setAttr ".wl[12].w[26]"  1;
	setAttr ".wl[13].w[26]"  1;
	setAttr ".wl[14].w[26]"  1;
	setAttr ".wl[15].w[26]"  1;
	setAttr ".wl[16].w[26]"  1;
	setAttr -s 3 ".wl[17].w[0:2]"  0.25 0.375 0.375;
	setAttr -s 3 ".wl[18].w[0:2]"  0.25 0.5 0.25;
	setAttr -s 3 ".wl[19].w[0:2]"  0.24999998509883881 0.37499997946268593 
		0.37500003543847527;
	setAttr -s 2 ".wl[20].w[1:2]"  0.49999994039535522 0.50000005960464478;
	setAttr ".wl[21].w[20]"  1;
	setAttr -s 2 ".wl[22].w[20:21]"  0.5 0.5;
	setAttr -s 2 ".wl[23].w[19:20]"  0.25 0.75;
	setAttr -s 5 ".wl[24].w";
	setAttr ".wl[24].w[0]" 1.6763806343078613e-008;
	setAttr ".wl[24].w[19]" 0.24999995529651642;
	setAttr ".wl[24].w[20]" 0.74999993294477463;
	setAttr ".wl[24].w[21]" 8.9406967163085938e-008;
	setAttr ".wl[24].w[27]" 5.5879354476928711e-009;
	setAttr -s 4 ".wl[25].w";
	setAttr ".wl[25].w[0]" 0.56249999846666554;
	setAttr ".wl[25].w[1]" 0.18750000153333513;
	setAttr ".wl[25].w[3]" 2.0444466120039806e-009;
	setAttr ".wl[25].w[19]" 0.24999999795555361;
	setAttr -s 3 ".wl[26].w";
	setAttr ".wl[26].w[0]" 0.5625;
	setAttr ".wl[26].w[1]" 0.1875;
	setAttr ".wl[26].w[19]" 0.25;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr -s 2 ".wl[29].w";
	setAttr ".wl[29].w[0]" 0.5;
	setAttr ".wl[29].w[19]" 0.5;
	setAttr -s 2 ".wl[30].w";
	setAttr ".wl[30].w[0]" 0.5;
	setAttr ".wl[30].w[19]" 0.5;
	setAttr -s 2 ".wl[31].w";
	setAttr ".wl[31].w[0]" 0.25;
	setAttr ".wl[31].w[19]" 0.75;
	setAttr ".wl[32].w[19]"  1;
	setAttr -s 3 ".wl[33].w";
	setAttr ".wl[33].w[0]" 0.4999999925494194;
	setAttr ".wl[33].w[1]" 0.4999999925494194;
	setAttr ".wl[33].w[3]" 1.4901161193847656e-008;
	setAttr -s 2 ".wl[34].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[35].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[36].w[0:1]"  0.5 0.5;
	setAttr -s 4 ".wl[37].w";
	setAttr ".wl[37].w[0]" 1.7656975881408243e-010;
	setAttr ".wl[37].w[20]" 0.99999994110163426;
	setAttr ".wl[37].w[21]" 5.8662939395048852e-008;
	setAttr ".wl[37].w[27]" 5.8856586271360811e-011;
	setAttr -s 2 ".wl[38].w";
	setAttr ".wl[38].w[0]" 0.5;
	setAttr ".wl[38].w[19]" 0.5;
	setAttr -s 3 ".wl[39].w";
	setAttr ".wl[39].w[0]" 0.5625;
	setAttr ".wl[39].w[1]" 0.1875;
	setAttr ".wl[39].w[19]" 0.25;
	setAttr -s 3 ".wl[40].w";
	setAttr ".wl[40].w[0]" 0.375;
	setAttr ".wl[40].w[1]" 0.375;
	setAttr ".wl[40].w[3]" 0.25;
	setAttr -s 3 ".wl[41].w[1:3]"  0.49999998509883881 1.1175870895385742e-008 
		0.5000000037252903;
	setAttr ".wl[42].w[21]"  1;
	setAttr ".wl[43].w[21]"  1;
	setAttr -s 2 ".wl[44].w[21:22]"  0.75 0.25;
	setAttr -s 2 ".wl[45].w[22:23]"  0.5 0.5;
	setAttr -s 2 ".wl[46].w[23:24]"  0.5 0.5;
	setAttr ".wl[47].w[24]"  1;
	setAttr -s 2 ".wl[48].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[49].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[50].w[22:23]"  0.5 0.5;
	setAttr -s 2 ".wl[51].w[20:21]"  9.7721405078153578e-014 0.99999999999989875;
	setAttr -s 2 ".wl[52].w[20:21]"  0.49999994039535522 0.50000005960464478;
	setAttr ".wl[53].w[21]"  1;
	setAttr -s 3 ".wl[54].w[22:24]"  0.49999994039535617 0.5 5.9604643793593902e-008;
	setAttr ".wl[55].w[21]"  1.0000000000000284;
	setAttr ".wl[56].w[21]"  1;
	setAttr ".wl[57].w[21]"  1;
	setAttr ".wl[58].w[21]"  1;
	setAttr ".wl[59].w[21]"  1;
	setAttr ".wl[60].w[21]"  1;
	setAttr ".wl[61].w[21]"  1;
	setAttr ".wl[62].w[21]"  1;
	setAttr ".wl[63].w[21]"  1;
	setAttr ".wl[64].w[21]"  1;
	setAttr ".wl[65].w[21]"  1;
	setAttr ".wl[66].w[21]"  1;
	setAttr ".wl[67].w[21]"  1;
	setAttr ".wl[68].w[21]"  1;
	setAttr ".wl[69].w[21]"  1;
	setAttr ".wl[70].w[21]"  1;
	setAttr ".wl[71].w[21]"  1;
	setAttr -s 2 ".wl[72].w[21:22]"  0.75 0.25;
	setAttr -s 2 ".wl[73].w[22:23]"  0.5 0.5;
	setAttr -s 2 ".wl[74].w[23:24]"  0.5 0.5;
	setAttr ".wl[75].w[21]"  1;
	setAttr ".wl[76].w[21]"  1;
	setAttr -s 4 ".wl[77].w";
	setAttr ".wl[77].w[0]" 1.6763806343078613e-008;
	setAttr ".wl[77].w[20]" 6.7055225372314453e-008;
	setAttr ".wl[77].w[21]" 0.99999991059303284;
	setAttr ".wl[77].w[27]" 5.5879354476928711e-009;
	setAttr ".wl[78].w[21]"  1;
	setAttr ".wl[79].w[21]"  1;
	setAttr ".wl[80].w[21]"  1;
	setAttr ".wl[81].w[21]"  1;
	setAttr ".wl[82].w[21]"  1;
	setAttr ".wl[83].w[21]"  1;
	setAttr ".wl[84].w[21]"  1;
	setAttr ".wl[85].w[21]"  1;
	setAttr ".wl[86].w[2]"  1;
	setAttr -s 2 ".wl[87].w[15:16]"  0.99999964237213135 3.5762786865234375e-007;
	setAttr ".wl[88].w[2]"  1;
	setAttr ".wl[89].w[2]"  1;
	setAttr -s 3 ".wl[90].w[0:2]"  0.1875 0.25 0.5625;
	setAttr ".wl[91].w[2]"  1;
	setAttr -s 3 ".wl[92].w[1:3]"  0.25 0.1875 0.5625;
	setAttr -s 2 ".wl[93].w";
	setAttr ".wl[93].w[0]" 0.25;
	setAttr ".wl[93].w[2]" 0.75;
	setAttr -s 2 ".wl[94].w[15:16]"  1.0000000235314417 -2.3531441684099264e-008;
	setAttr ".wl[95].w[43]"  1;
	setAttr -s 2 ".wl[96].w[43:44]"  0.9999997615814209 2.384185791015625e-007;
	setAttr -s 2 ".wl[97].w[43:44]"  0.99999986598545321 1.3401454680746327e-007;
	setAttr -s 2 ".wl[98].w[43:44]"  0.99999970197677612 2.9802322387695313e-007;
	setAttr ".wl[99].w[43]"  1;
	setAttr ".wl[100].w[43]"  1;
	setAttr ".wl[101].w[44]"  1;
	setAttr -s 2 ".wl[102].w[44:45]"  0.99999988079071045 1.1920928955078125e-007;
	setAttr ".wl[103].w[44]"  1;
	setAttr ".wl[104].w[44]"  1;
	setAttr ".wl[105].w[44]"  1;
	setAttr ".wl[106].w[44]"  1;
	setAttr ".wl[107].w[45]"  1;
	setAttr ".wl[108].w[45]"  1;
	setAttr -s 2 ".wl[109].w[45:46]"  0.99999986037665001 1.3962335002914561e-007;
	setAttr -s 2 ".wl[110].w[45:46]"  0.99999994039535522 5.9604644775390625e-008;
	setAttr ".wl[111].w[45]"  1;
	setAttr ".wl[112].w[45]"  1;
	setAttr ".wl[113].w[46]"  1;
	setAttr ".wl[114].w[46]"  1;
	setAttr ".wl[115].w[46]"  1;
	setAttr ".wl[116].w[46]"  1;
	setAttr ".wl[117].w[46]"  1;
	setAttr ".wl[118].w[46]"  1;
	setAttr ".wl[119].w[46]"  1;
	setAttr ".wl[120].w[46]"  1;
	setAttr ".wl[121].w[46]"  1;
	setAttr ".wl[122].w[46]"  1;
	setAttr ".wl[123].w[46]"  1;
	setAttr ".wl[124].w[46]"  1;
	setAttr ".wl[125].w[46]"  1;
	setAttr ".wl[126].w[42]"  1;
	setAttr -s 2 ".wl[127].w";
	setAttr ".wl[127].w[0]" 1.1096986440861656e-007;
	setAttr ".wl[127].w[42]" 0.99999988903013559;
	setAttr -s 3 ".wl[128].w";
	setAttr ".wl[128].w[0]" 2.0723444293935245e-008;
	setAttr ".wl[128].w[19]" 6.2170332881805734e-008;
	setAttr ".wl[128].w[42]" 0.99999991710622282;
	setAttr ".wl[129].w[42]"  1;
	setAttr ".wl[130].w[42]"  1;
	setAttr ".wl[131].w[42]"  1;
	setAttr -s 2 ".wl[132].w[5:6]"  1.0000000003831531 -3.8315306483127642e-010;
	setAttr ".wl[133].w[5]"  1;
	setAttr -s 2 ".wl[134].w[5:6]"  0.99999992590922915 7.4090770851853449e-008;
	setAttr ".wl[135].w[5]"  1;
	setAttr -s 2 ".wl[136].w[5:6]"  0.99999995162897903 4.8371020966442302e-008;
	setAttr ".wl[137].w[5]"  1;
	setAttr ".wl[138].w[5]"  1;
	setAttr ".wl[139].w[5]"  1;
	setAttr -s 2 ".wl[140].w";
	setAttr ".wl[140].w[1]" 0.25;
	setAttr ".wl[140].w[4]" 0.75;
	setAttr -s 4 ".wl[141].w";
	setAttr ".wl[141].w[0]" 0.24999991628867235;
	setAttr ".wl[141].w[1]" 0.1875000466738328;
	setAttr ".wl[141].w[2]" 2.0596800709427043e-008;
	setAttr ".wl[141].w[4]" 0.56250001644069414;
	setAttr -s 2 ".wl[142].w";
	setAttr ".wl[142].w[1]" 0.25;
	setAttr ".wl[142].w[4]" 0.75;
	setAttr -s 4 ".wl[143].w";
	setAttr ".wl[143].w[0]" 4.2268988309501765e-009;
	setAttr ".wl[143].w[1]" 0.25;
	setAttr ".wl[143].w[2]" 0.37500000422689883;
	setAttr ".wl[143].w[4]" 0.37499999154620234;
	setAttr -s 3 ".wl[144].w";
	setAttr ".wl[144].w[1]" 0.25;
	setAttr ".wl[144].w[2]" 0.375;
	setAttr ".wl[144].w[4]" 0.375;
	setAttr -s 3 ".wl[145].w";
	setAttr ".wl[145].w[1]" 0.24999995529651642;
	setAttr ".wl[145].w[2]" 0.37500011175870895;
	setAttr ".wl[145].w[4]" 0.37499993294477463;
	setAttr -s 2 ".wl[146].w";
	setAttr ".wl[146].w[2]" 5.9604644775390625e-008;
	setAttr ".wl[146].w[4]" 0.99999994039535522;
	setAttr -s 4 ".wl[147].w[1:4]"  1.4901161193847656e-008 1.1175870895385742e-008 
		3.3527612686157227e-008 0.99999994039535522;
	setAttr ".wl[148].w[6]"  1;
	setAttr ".wl[149].w[6]"  1.0000000000000568;
	setAttr ".wl[150].w[6]"  1;
	setAttr ".wl[151].w[6]"  1;
	setAttr ".wl[152].w[6]"  1;
	setAttr ".wl[153].w[6]"  1;
	setAttr ".wl[154].w[6]"  1;
	setAttr ".wl[155].w[6]"  1;
	setAttr -s 2 ".wl[156].w[6:7]"  0.99999982118606567 1.7881393432617188e-007;
	setAttr -s 2 ".wl[157].w[6:7]"  0.99999922513961792 7.7486038208007813e-007;
	setAttr ".wl[158].w[6]"  1;
	setAttr ".wl[159].w[6]"  1;
	setAttr ".wl[160].w[6]"  1;
	setAttr ".wl[161].w[6]"  1;
	setAttr -s 2 ".wl[162].w[6:7]"  0.99999987627701614 1.2372298385798786e-007;
	setAttr ".wl[163].w[6]"  1;
	setAttr -s 2 ".wl[164].w[7:8]"  0.99999982118606567 1.7881393432617188e-007;
	setAttr -s 2 ".wl[165].w[7:8]"  0.99999964237213135 3.5762786865234375e-007;
	setAttr -s 2 ".wl[166].w[7:8]"  0.9999997615814209 2.384185791015625e-007;
	setAttr ".wl[167].w[7]"  1;
	setAttr -s 2 ".wl[168].w[7:8]"  0.99999988079071045 1.1920928955078125e-007;
	setAttr ".wl[169].w[7]"  1;
	setAttr -s 2 ".wl[170].w[7:8]"  0.99999994160850747 5.839149253006326e-008;
	setAttr ".wl[171].w[7]"  1;
	setAttr ".wl[172].w[8]"  1;
	setAttr ".wl[173].w[8]"  1;
	setAttr ".wl[174].w[8]"  1;
	setAttr ".wl[175].w[8]"  1;
	setAttr ".wl[176].w[8]"  1;
	setAttr ".wl[177].w[8]"  1;
	setAttr ".wl[178].w[8]"  1;
	setAttr ".wl[179].w[8]"  1;
	setAttr ".wl[180].w[8]"  1;
	setAttr ".wl[181].w[8]"  1;
	setAttr ".wl[182].w[8]"  1;
	setAttr ".wl[183].w[8]"  1;
	setAttr ".wl[184].w[8]"  1;
	setAttr ".wl[185].w[8]"  1;
	setAttr ".wl[186].w[8]"  1;
	setAttr ".wl[187].w[8]"  1;
	setAttr ".wl[188].w[8]"  1;
	setAttr -s 4 ".wl[189].w";
	setAttr ".wl[189].w[0]" 0.18749994412064552;
	setAttr ".wl[189].w[20]" 0.74999977648258209;
	setAttr ".wl[189].w[27]" 0.062499981373548508;
	setAttr ".wl[189].w[28]" 2.9802322387695313e-007;
	setAttr -s 4 ".wl[190].w";
	setAttr ".wl[190].w[0]" 0.09375;
	setAttr ".wl[190].w[20]" 0.375;
	setAttr ".wl[190].w[21]" 0.5;
	setAttr ".wl[190].w[27]" 0.03125;
	setAttr -s 5 ".wl[191].w";
	setAttr ".wl[191].w[0]" 0.093749997314604094;
	setAttr ".wl[191].w[20]" 0.37499998925841638;
	setAttr ".wl[191].w[21]" 0.4999999856778885;
	setAttr ".wl[191].w[27]" 0.031249999104868031;
	setAttr ".wl[191].w[28]" 2.864422299353464e-008;
	setAttr -s 4 ".wl[192].w";
	setAttr ".wl[192].w[0]" 0.09375;
	setAttr ".wl[192].w[20]" 0.375;
	setAttr ".wl[192].w[21]" 0.5;
	setAttr ".wl[192].w[27]" 0.03125;
	setAttr -s 5 ".wl[193].w";
	setAttr ".wl[193].w[0]" 0.09374999546495566;
	setAttr ".wl[193].w[20]" 0.37499998185982264;
	setAttr ".wl[193].w[21]" 0.49999985098838806;
	setAttr ".wl[193].w[27]" 0.031249998488318553;
	setAttr ".wl[193].w[28]" 1.731985150854598e-007;
	setAttr -s 4 ".wl[194].w";
	setAttr ".wl[194].w[0]" 0.09375;
	setAttr ".wl[194].w[20]" 0.375;
	setAttr ".wl[194].w[21]" 0.5;
	setAttr ".wl[194].w[27]" 0.03125;
	setAttr ".wl[195].w[28]"  1;
	setAttr -s 2 ".wl[196].w[28:29]"  0.99999994039535522 5.9604644775390625e-008;
	setAttr -s 2 ".wl[197].w[28:29]"  0.99999982118606567 1.7881393432617188e-007;
	setAttr -s 2 ".wl[198].w[28:29]"  0.99999988079071045 1.1920928955078125e-007;
	setAttr ".wl[199].w[28]"  1;
	setAttr -s 2 ".wl[200].w[28:29]"  0.99999989414870072 1.0585129928131209e-007;
	setAttr -s 2 ".wl[201].w[28:29]"  0.5 0.5;
	setAttr -s 2 ".wl[202].w[28:29]"  0.5 0.5;
	setAttr -s 3 ".wl[203].w[28:30]"  0.49999999263749118 0.5 7.3625088248263637e-009;
	setAttr -s 3 ".wl[204].w[28:30]"  0.50000000180921234 0.5 -1.8092123355017975e-009;
	setAttr -s 2 ".wl[205].w[28:29]"  0.5 0.5;
	setAttr -s 3 ".wl[206].w[28:30]"  0.49999991059303284 0.5 8.9406967163085938e-008;
	setAttr -s 2 ".wl[207].w[29:30]"  0.5 0.5;
	setAttr -s 2 ".wl[208].w[29:30]"  0.5 0.5;
	setAttr -s 3 ".wl[209].w[29:31]"  0.50000000721563254 0.5 -7.2156325359173934e-009;
	setAttr -s 2 ".wl[210].w[29:30]"  0.5 0.5;
	setAttr -s 3 ".wl[211].w[29:31]"  0.49999999713216425 0.5 2.8678357466560556e-009;
	setAttr -s 2 ".wl[212].w[29:30]"  0.5 0.5;
	setAttr -s 2 ".wl[213].w[30:31]"  0.49999979138374329 0.50000020861625671;
	setAttr -s 2 ".wl[214].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[215].w[30:31]"  0.5000000110420757 0.4999999889579243;
	setAttr -s 2 ".wl[216].w[30:31]"  0.49999991059303284 0.50000008940696716;
	setAttr -s 2 ".wl[217].w[30:31]"  0.4999999981262917 0.5000000018737083;
	setAttr -s 2 ".wl[218].w[30:31]"  0.5 0.5;
	setAttr ".wl[219].w[31]"  1;
	setAttr ".wl[220].w[31]"  1;
	setAttr ".wl[221].w[31]"  1;
	setAttr ".wl[222].w[31]"  1;
	setAttr ".wl[223].w[31]"  1;
	setAttr ".wl[224].w[31]"  1;
	setAttr ".wl[225].w[31]"  1;
	setAttr ".wl[226].w[31]"  1;
	setAttr ".wl[227].w[31]"  1.0000000000000284;
	setAttr ".wl[228].w[31]"  1;
	setAttr ".wl[229].w[31]"  1;
	setAttr ".wl[230].w[31]"  1;
	setAttr -s 3 ".wl[231].w[0:2]"  0.25 0.375 0.375;
	setAttr -s 4 ".wl[232].w";
	setAttr ".wl[232].w[0]" 0.24999997019767761;
	setAttr ".wl[232].w[1]" 0.49999997019767761;
	setAttr ".wl[232].w[2]" 0.25000001490116119;
	setAttr ".wl[232].w[10]" 4.4703483581542969e-008;
	setAttr -s 3 ".wl[233].w[0:2]"  0.24999998509883881 0.37499997764825821 
		0.37500003725290298;
	setAttr -s 2 ".wl[234].w[1:2]"  0.49999997019767761 0.50000002980232239;
	setAttr ".wl[235].w[20]"  1;
	setAttr -s 2 ".wl[236].w[20:21]"  0.5 0.5;
	setAttr -s 2 ".wl[237].w[19:20]"  0.25 0.75;
	setAttr -s 5 ".wl[238].w";
	setAttr ".wl[238].w[0]" 8.3984752485832814e-009;
	setAttr ".wl[238].w[19]" 0.24999997019767761;
	setAttr ".wl[238].w[20]" 0.74999994418693383;
	setAttr ".wl[238].w[21]" 7.4417421558337082e-008;
	setAttr ".wl[238].w[32]" 2.7994917495277605e-009;
	setAttr -s 3 ".wl[239].w";
	setAttr ".wl[239].w[0]" 0.5625;
	setAttr ".wl[239].w[1]" 0.1875;
	setAttr ".wl[239].w[19]" 0.25;
	setAttr -s 3 ".wl[240].w";
	setAttr ".wl[240].w[0]" 0.5625;
	setAttr ".wl[240].w[1]" 0.1875;
	setAttr ".wl[240].w[19]" 0.25;
	setAttr -s 3 ".wl[241].w";
	setAttr ".wl[241].w[0]" 0.99999975674496966;
	setAttr ".wl[241].w[19]" -1.4509353718494822e-008;
	setAttr ".wl[241].w[37]" 2.577643840595556e-007;
	setAttr ".wl[242].w[0]"  1;
	setAttr -s 2 ".wl[243].w";
	setAttr ".wl[243].w[0]" 0.5;
	setAttr ".wl[243].w[19]" 0.5;
	setAttr -s 3 ".wl[244].w";
	setAttr ".wl[244].w[0]" 0.49999999971020159;
	setAttr ".wl[244].w[19]" 0.49999999985510019;
	setAttr ".wl[244].w[20]" 4.3469577937216286e-010;
	setAttr -s 2 ".wl[245].w";
	setAttr ".wl[245].w[0]" 0.25;
	setAttr ".wl[245].w[19]" 0.75;
	setAttr ".wl[246].w[19]"  1;
	setAttr -s 2 ".wl[247].w[0:1]"  0.5 0.5;
	setAttr -s 3 ".wl[248].w";
	setAttr ".wl[248].w[0]" 0.50000000021295354;
	setAttr ".wl[248].w[1]" 0.49999999893523289;
	setAttr ".wl[248].w[19]" 8.5181378617349424e-010;
	setAttr -s 2 ".wl[249].w[0:1]"  0.5 0.5;
	setAttr -s 3 ".wl[250].w";
	setAttr ".wl[250].w[0]" 0.49999999119871086;
	setAttr ".wl[250].w[1]" 0.50000000377198106;
	setAttr ".wl[250].w[19]" 5.0293080811059099e-009;
	setAttr -s 4 ".wl[251].w";
	setAttr ".wl[251].w[0]" 2.1731514920908523e-009;
	setAttr ".wl[251].w[20]" 0.99999994908796119;
	setAttr ".wl[251].w[21]" 4.8014501707882573e-008;
	setAttr ".wl[251].w[32]" 7.2438383069695078e-010;
	setAttr -s 2 ".wl[252].w";
	setAttr ".wl[252].w[0]" 0.5;
	setAttr ".wl[252].w[19]" 0.5;
	setAttr -s 3 ".wl[253].w";
	setAttr ".wl[253].w[0]" 0.5625;
	setAttr ".wl[253].w[1]" 0.1875;
	setAttr ".wl[253].w[19]" 0.25;
	setAttr -s 3 ".wl[254].w";
	setAttr ".wl[254].w[0]" 0.375;
	setAttr ".wl[254].w[1]" 0.375;
	setAttr ".wl[254].w[9]" 0.25;
	setAttr -s 2 ".wl[255].w";
	setAttr ".wl[255].w[1]" 0.5;
	setAttr ".wl[255].w[9]" 0.5;
	setAttr ".wl[256].w[21]"  1;
	setAttr ".wl[257].w[21]"  1;
	setAttr -s 2 ".wl[258].w[21:22]"  0.75 0.25;
	setAttr -s 2 ".wl[259].w[22:23]"  0.5 0.5;
	setAttr -s 2 ".wl[260].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[261].w[23:24]"  8.9406967163085938e-008 0.99999991059303284;
	setAttr -s 2 ".wl[262].w[23:24]"  0.5 0.5;
	setAttr -s 3 ".wl[263].w[22:24]"  1.9700202756335789e-008 0.5 0.49999998029979725;
	setAttr -s 2 ".wl[264].w[22:23]"  0.5 0.5;
	setAttr ".wl[265].w[21]"  1;
	setAttr -s 2 ".wl[266].w[20:21]"  0.49999992400086563 0.50000007599913432;
	setAttr ".wl[267].w[21]"  1;
	setAttr -s 3 ".wl[268].w[22:24]"  0.49999996487186532 0.5 3.5128134693280875e-008;
	setAttr ".wl[269].w[21]"  1;
	setAttr ".wl[270].w[21]"  1;
	setAttr ".wl[271].w[21]"  1;
	setAttr ".wl[272].w[21]"  1;
	setAttr ".wl[273].w[21]"  1;
	setAttr ".wl[274].w[21]"  1;
	setAttr ".wl[275].w[21]"  1;
	setAttr ".wl[276].w[21]"  1;
	setAttr ".wl[277].w[21]"  1;
	setAttr ".wl[278].w[21]"  1;
	setAttr ".wl[279].w[21]"  1;
	setAttr ".wl[280].w[21]"  1;
	setAttr ".wl[281].w[21]"  1;
	setAttr ".wl[282].w[21]"  1;
	setAttr ".wl[283].w[21]"  1;
	setAttr ".wl[284].w[21]"  1;
	setAttr ".wl[285].w[21]"  1;
	setAttr -s 2 ".wl[286].w[21:22]"  0.75 0.25;
	setAttr -s 2 ".wl[287].w[22:23]"  0.5 0.5;
	setAttr -s 2 ".wl[288].w[23:24]"  0.5 0.5;
	setAttr ".wl[289].w[21]"  1;
	setAttr ".wl[290].w[21]"  1;
	setAttr ".wl[291].w[21]"  1;
	setAttr ".wl[292].w[21]"  1;
	setAttr ".wl[293].w[21]"  1;
	setAttr ".wl[294].w[21]"  1;
	setAttr -s 2 ".wl[295].w[21:22]"  1.000000000756863 -7.5686301670430112e-010;
	setAttr ".wl[296].w[21]"  1;
	setAttr ".wl[297].w[21]"  1;
	setAttr ".wl[298].w[21]"  1;
	setAttr ".wl[299].w[21]"  1;
	setAttr ".wl[300].w[2]"  1;
	setAttr -s 2 ".wl[301].w[15:16]"  1.0000000155168607 -1.5516860685238498e-008;
	setAttr ".wl[302].w[2]"  1;
	setAttr -s 2 ".wl[303].w";
	setAttr ".wl[303].w[2]" 0.99999994039535522;
	setAttr ".wl[303].w[10]" 5.9604644775390625e-008;
	setAttr -s 3 ".wl[304].w[0:2]"  0.1875 0.25 0.5625;
	setAttr ".wl[305].w[2]"  1;
	setAttr -s 3 ".wl[306].w";
	setAttr ".wl[306].w[1]" 0.25;
	setAttr ".wl[306].w[2]" 0.1875;
	setAttr ".wl[306].w[9]" 0.5625;
	setAttr -s 4 ".wl[307].w";
	setAttr ".wl[307].w[0]" 0.24999997019767761;
	setAttr ".wl[307].w[1]" 2.9802322387695313e-008;
	setAttr ".wl[307].w[2]" 0.74999995529651642;
	setAttr ".wl[307].w[10]" 4.4703483581542969e-008;
	setAttr -s 2 ".wl[308].w[15:16]"  0.99999994039535522 5.9604644775390625e-008;
	setAttr ".wl[309].w[38]"  1;
	setAttr -s 2 ".wl[310].w[38:39]"  0.99999982118606567 1.7881393432617188e-007;
	setAttr -s 2 ".wl[311].w[38:39]"  0.99999988079071045 1.1920928955078125e-007;
	setAttr -s 2 ".wl[312].w[38:39]"  0.99999970197677612 2.9802322387695313e-007;
	setAttr ".wl[313].w[38]"  1;
	setAttr ".wl[314].w[38]"  1;
	setAttr ".wl[315].w[39]"  1;
	setAttr -s 2 ".wl[316].w[39:40]"  0.99999982118606567 1.7881393432617188e-007;
	setAttr ".wl[317].w[39]"  1;
	setAttr ".wl[318].w[39]"  1;
	setAttr ".wl[319].w[39]"  1;
	setAttr ".wl[320].w[39]"  1;
	setAttr ".wl[321].w[40]"  1;
	setAttr ".wl[322].w[40]"  1;
	setAttr ".wl[323].w[40]"  1;
	setAttr -s 2 ".wl[324].w[40:41]"  0.99999994039535522 5.9604644775390625e-008;
	setAttr ".wl[325].w[40]"  1;
	setAttr ".wl[326].w[40]"  1;
	setAttr ".wl[327].w[41]"  1;
	setAttr ".wl[328].w[41]"  1;
	setAttr ".wl[329].w[41]"  1;
	setAttr ".wl[330].w[41]"  1;
	setAttr ".wl[331].w[41]"  1;
	setAttr ".wl[332].w[41]"  1;
	setAttr ".wl[333].w[41]"  1;
	setAttr ".wl[334].w[41]"  1;
	setAttr ".wl[335].w[41]"  1;
	setAttr ".wl[336].w[41]"  1;
	setAttr ".wl[337].w[41]"  1;
	setAttr ".wl[338].w[41]"  1;
	setAttr ".wl[339].w[41]"  1;
	setAttr ".wl[340].w[37]"  1;
	setAttr -s 2 ".wl[341].w";
	setAttr ".wl[341].w[0]" 1.1920928955078125e-007;
	setAttr ".wl[341].w[37]" 0.99999988079071045;
	setAttr -s 3 ".wl[342].w";
	setAttr ".wl[342].w[0]" 1.4901161193847656e-008;
	setAttr ".wl[342].w[19]" 4.4703483581542969e-008;
	setAttr ".wl[342].w[37]" 0.99999994039535522;
	setAttr ".wl[343].w[37]"  1;
	setAttr ".wl[344].w[37]"  1;
	setAttr ".wl[345].w[37]"  1;
	setAttr ".wl[346].w[11]"  1;
	setAttr ".wl[347].w[11]"  1;
	setAttr -s 2 ".wl[348].w[11:12]"  0.99999994039535522 5.9604644775390625e-008;
	setAttr ".wl[349].w[11]"  1;
	setAttr -s 2 ".wl[350].w[11:12]"  0.99999995162898214 4.8371017957110622e-008;
	setAttr ".wl[351].w[11]"  1;
	setAttr ".wl[352].w[11]"  1;
	setAttr ".wl[353].w[11]"  1;
	setAttr -s 2 ".wl[354].w";
	setAttr ".wl[354].w[1]" 0.25;
	setAttr ".wl[354].w[10]" 0.75;
	setAttr -s 3 ".wl[355].w";
	setAttr ".wl[355].w[0]" 0.25;
	setAttr ".wl[355].w[1]" 0.1875;
	setAttr ".wl[355].w[10]" 0.5625;
	setAttr -s 2 ".wl[356].w";
	setAttr ".wl[356].w[1]" 0.25;
	setAttr ".wl[356].w[10]" 0.75;
	setAttr -s 3 ".wl[357].w";
	setAttr ".wl[357].w[1]" 0.25;
	setAttr ".wl[357].w[2]" 0.375;
	setAttr ".wl[357].w[10]" 0.375;
	setAttr -s 4 ".wl[358].w";
	setAttr ".wl[358].w[0]" 1.4077451737648516e-007;
	setAttr ".wl[358].w[1]" 0.24999985922548262;
	setAttr ".wl[358].w[2]" 0.37500021116177606;
	setAttr ".wl[358].w[10]" 0.37499978883822394;
	setAttr -s 3 ".wl[359].w";
	setAttr ".wl[359].w[1]" 0.24999994039535522;
	setAttr ".wl[359].w[2]" 0.37499991059303284;
	setAttr ".wl[359].w[10]" 0.37500014901161194;
	setAttr ".wl[360].w[10]"  1;
	setAttr ".wl[361].w[10]"  1;
	setAttr ".wl[362].w[12]"  1;
	setAttr ".wl[363].w[12]"  1;
	setAttr ".wl[364].w[12]"  1;
	setAttr ".wl[365].w[12]"  1;
	setAttr ".wl[366].w[12]"  1;
	setAttr ".wl[367].w[12]"  1;
	setAttr ".wl[368].w[12]"  1;
	setAttr ".wl[369].w[12]"  1;
	setAttr ".wl[370].w[12]"  1;
	setAttr ".wl[371].w[12]"  1;
	setAttr -s 2 ".wl[372].w[12:13]"  0.99999994039535522 5.9604644775390625e-008;
	setAttr ".wl[373].w[12]"  1;
	setAttr ".wl[374].w[12]"  1;
	setAttr ".wl[375].w[12]"  1;
	setAttr -s 2 ".wl[376].w[12:13]"  0.99999994039535522 5.9604644775390625e-008;
	setAttr ".wl[377].w[12]"  1;
	setAttr -s 2 ".wl[378].w[13:14]"  0.9999998464655846 1.5353442961441033e-007;
	setAttr ".wl[379].w[13]"  1;
	setAttr -s 2 ".wl[380].w[13:14]"  0.99999982118606567 1.7881393432617188e-007;
	setAttr ".wl[381].w[13]"  1;
	setAttr -s 2 ".wl[382].w[13:14]"  0.99999988079071045 1.1920928955078125e-007;
	setAttr ".wl[383].w[13]"  1;
	setAttr -s 2 ".wl[384].w[13:14]"  0.99999994160850025 5.8391499706327983e-008;
	setAttr ".wl[385].w[13]"  1;
	setAttr ".wl[386].w[14]"  1;
	setAttr ".wl[387].w[14]"  1;
	setAttr ".wl[388].w[14]"  1;
	setAttr ".wl[389].w[14]"  1;
	setAttr ".wl[390].w[14]"  1;
	setAttr ".wl[391].w[14]"  1;
	setAttr ".wl[392].w[14]"  1;
	setAttr ".wl[393].w[14]"  1;
	setAttr ".wl[394].w[14]"  1;
	setAttr ".wl[395].w[14]"  1;
	setAttr ".wl[396].w[14]"  1;
	setAttr ".wl[397].w[14]"  1;
	setAttr ".wl[398].w[14]"  1;
	setAttr ".wl[399].w[14]"  1;
	setAttr ".wl[400].w[14]"  1;
	setAttr ".wl[401].w[14]"  1;
	setAttr ".wl[402].w[14]"  1;
	setAttr -s 3 ".wl[403].w";
	setAttr ".wl[403].w[0]" 0.1875;
	setAttr ".wl[403].w[20]" 0.75;
	setAttr ".wl[403].w[32]" 0.0625;
	setAttr -s 4 ".wl[404].w";
	setAttr ".wl[404].w[0]" 0.09375;
	setAttr ".wl[404].w[20]" 0.375;
	setAttr ".wl[404].w[21]" 0.5;
	setAttr ".wl[404].w[32]" 0.03125;
	setAttr -s 4 ".wl[405].w";
	setAttr ".wl[405].w[0]" 0.09375;
	setAttr ".wl[405].w[20]" 0.375;
	setAttr ".wl[405].w[21]" 0.5;
	setAttr ".wl[405].w[32]" 0.03125;
	setAttr -s 4 ".wl[406].w";
	setAttr ".wl[406].w[0]" 0.09375;
	setAttr ".wl[406].w[20]" 0.375;
	setAttr ".wl[406].w[21]" 0.5;
	setAttr ".wl[406].w[32]" 0.03125;
	setAttr -s 5 ".wl[407].w";
	setAttr ".wl[407].w[0]" 0.09374999973345588;
	setAttr ".wl[407].w[20]" 0.37499999893382352;
	setAttr ".wl[407].w[21]" 0.49999985098838806;
	setAttr ".wl[407].w[32]" 0.03124999991115196;
	setAttr ".wl[407].w[33]" 1.5043318057905708e-007;
	setAttr -s 4 ".wl[408].w";
	setAttr ".wl[408].w[0]" 0.09375;
	setAttr ".wl[408].w[20]" 0.375;
	setAttr ".wl[408].w[21]" 0.5;
	setAttr ".wl[408].w[32]" 0.03125;
	setAttr ".wl[409].w[33]"  1;
	setAttr -s 2 ".wl[410].w[33:34]"  0.99999993671040954 6.3289590457316081e-008;
	setAttr ".wl[411].w[33]"  1;
	setAttr ".wl[412].w[33]"  1;
	setAttr ".wl[413].w[33]"  1;
	setAttr -s 2 ".wl[414].w[33:34]"  0.99999989414869073 1.0585130921465947e-007;
	setAttr -s 2 ".wl[415].w[33:34]"  0.5 0.5;
	setAttr -s 2 ".wl[416].w[33:34]"  0.5 0.5;
	setAttr -s 2 ".wl[417].w[33:34]"  0.5 0.5;
	setAttr -s 2 ".wl[418].w[33:34]"  0.5 0.5;
	setAttr -s 2 ".wl[419].w[33:34]"  0.5 0.5;
	setAttr -s 3 ".wl[420].w[33:35]"  0.49999988079071045 0.5 1.1920928955078125e-007;
	setAttr -s 2 ".wl[421].w[34:35]"  0.5 0.5;
	setAttr -s 2 ".wl[422].w[34:35]"  0.5 0.5;
	setAttr -s 2 ".wl[423].w[34:35]"  0.5 0.5;
	setAttr -s 2 ".wl[424].w[34:35]"  0.5 0.5;
	setAttr -s 2 ".wl[425].w[34:35]"  0.5 0.5;
	setAttr -s 2 ".wl[426].w[34:35]"  0.5 0.5;
	setAttr -s 2 ".wl[427].w[35:36]"  0.5 0.5;
	setAttr -s 2 ".wl[428].w[35:36]"  0.5 0.5;
	setAttr -s 2 ".wl[429].w[35:36]"  0.49999999127730632 0.50000000872269901;
	setAttr -s 2 ".wl[430].w[35:36]"  0.5 0.5;
	setAttr -s 2 ".wl[431].w[35:36]"  0.5 0.5;
	setAttr -s 2 ".wl[432].w[35:36]"  0.5 0.5;
	setAttr ".wl[433].w[36]"  1;
	setAttr ".wl[434].w[36]"  1;
	setAttr ".wl[435].w[36]"  1;
	setAttr ".wl[436].w[36]"  1;
	setAttr ".wl[437].w[36]"  1;
	setAttr ".wl[438].w[36]"  1;
	setAttr ".wl[439].w[36]"  1;
	setAttr ".wl[440].w[36]"  1;
	setAttr ".wl[441].w[36]"  1;
	setAttr ".wl[442].w[36]"  1;
	setAttr ".wl[443].w[36]"  1;
	setAttr ".wl[444].w[36]"  1;
	setAttr ".wl[445].w[16]"  1;
	setAttr ".wl[446].w[16]"  1;
	setAttr ".wl[447].w[16]"  1;
	setAttr -s 2 ".wl[448].w[16:17]"  0.99999998170000026 1.829999973779195e-008;
	setAttr -s 2 ".wl[449].w[17:18]"  0.99999998729828121 1.2701718787866412e-008;
	setAttr ".wl[450].w[17]"  1;
	setAttr ".wl[451].w[17]"  1;
	setAttr ".wl[452].w[17]"  1;
	setAttr ".wl[453].w[18]"  1;
	setAttr ".wl[454].w[18]"  1;
	setAttr ".wl[455].w[18]"  1;
	setAttr ".wl[456].w[18]"  1;
	setAttr ".wl[457].w[18]"  1;
	setAttr ".wl[458].w[18]"  1;
	setAttr ".wl[459].w[18]"  1;
	setAttr ".wl[460].w[18]"  1;
	setAttr ".wl[461].w[18]"  1;
	setAttr ".wl[462].w[18]"  1;
	setAttr ".wl[463].w[18]"  1;
	setAttr ".wl[464].w[18]"  1;
	setAttr ".wl[465].w[18]"  1;
	setAttr ".wl[466].w[18]"  1;
	setAttr ".wl[467].w[18]"  1;
	setAttr ".wl[468].w[18]"  1;
	setAttr ".wl[469].w[18]"  1;
	setAttr ".wl[470].w[18]"  1;
	setAttr ".wl[471].w[18]"  1;
	setAttr ".wl[472].w[18]"  1;
	setAttr ".wl[473].w[18]"  1;
	setAttr ".wl[474].w[18]"  1;
	setAttr ".wl[475].w[18]"  1;
	setAttr ".wl[476].w[18]"  1;
	setAttr ".wl[477].w[18]"  1;
	setAttr ".wl[478].w[18]"  1;
	setAttr ".wl[479].w[18]"  1;
	setAttr ".wl[480].w[18]"  1;
	setAttr ".wl[481].w[18]"  1;
	setAttr ".wl[482].w[18]"  1;
	setAttr ".wl[483].w[18]"  1;
	setAttr ".wl[484].w[18]"  1;
	setAttr ".wl[485].w[18]"  1;
	setAttr ".wl[486].w[18]"  1;
	setAttr ".wl[487].w[18]"  1;
	setAttr ".wl[488].w[18]"  1;
	setAttr ".wl[489].w[18]"  1;
	setAttr ".wl[490].w[18]"  1;
	setAttr ".wl[491].w[18]"  1;
	setAttr ".wl[492].w[18]"  1;
	setAttr ".wl[493].w[18]"  1;
	setAttr ".wl[494].w[18]"  1;
	setAttr ".wl[495].w[18]"  1;
	setAttr ".wl[496].w[18]"  1.0000000000001066;
	setAttr ".wl[497].w[21]"  1;
	setAttr ".wl[498].w[21]"  1;
	setAttr ".wl[499].w[21]"  1;
	setAttr ".wl[500].w[21]"  1;
	setAttr ".wl[501].w[21]"  1;
	setAttr ".wl[502].w[21]"  1;
	setAttr ".wl[503].w[21]"  1;
	setAttr ".wl[504].w[21]"  1;
	setAttr ".wl[505].w[21]"  1;
	setAttr ".wl[506].w[21]"  1;
	setAttr ".wl[507].w[21]"  1;
	setAttr ".wl[508].w[21]"  1;
	setAttr ".wl[509].w[21]"  0.99999999999999289;
	setAttr ".wl[510].w[21]"  1;
	setAttr ".wl[511].w[21]"  1;
	setAttr ".wl[512].w[21]"  1;
	setAttr ".wl[513].w[21]"  1;
	setAttr ".wl[514].w[21]"  1;
	setAttr ".wl[515].w[21]"  1;
	setAttr ".wl[516].w[21]"  1;
	setAttr ".wl[517].w[21]"  1;
	setAttr ".wl[518].w[21]"  1;
	setAttr ".wl[519].w[21]"  1;
	setAttr ".wl[520].w[21]"  1;
	setAttr ".wl[521].w[21]"  1.0000000000000284;
	setAttr ".wl[522].w[21]"  1;
	setAttr ".wl[523].w[21]"  1;
	setAttr ".wl[524].w[21]"  1;
	setAttr ".wl[525].w[21]"  1;
	setAttr ".wl[526].w[21]"  1;
	setAttr ".wl[527].w[21]"  1;
	setAttr ".wl[528].w[21]"  1;
	setAttr ".wl[529].w[21]"  1;
	setAttr ".wl[530].w[21]"  1;
	setAttr ".wl[531].w[25]"  1;
	setAttr ".wl[532].w[25]"  1;
	setAttr ".wl[533].w[25]"  1;
	setAttr ".wl[534].w[25]"  1;
	setAttr ".wl[535].w[25]"  1;
	setAttr ".wl[536].w[25]"  1;
	setAttr ".wl[537].w[25]"  1;
	setAttr ".wl[538].w[25]"  1;
	setAttr ".wl[539].w[25]"  1;
	setAttr ".wl[540].w[25]"  1;
	setAttr ".wl[541].w[25]"  1;
	setAttr ".wl[542].w[25]"  1;
	setAttr ".wl[543].w[25]"  1;
	setAttr ".wl[544].w[25]"  1;
	setAttr ".wl[545].w[25]"  1;
	setAttr ".wl[546].w[25]"  1;
	setAttr ".wl[547].w[25]"  1;
	setAttr ".wl[548].w[21]"  1;
	setAttr ".wl[549].w[21]"  1;
	setAttr ".wl[550].w[21]"  1;
	setAttr ".wl[551].w[21]"  1;
	setAttr ".wl[552].w[21]"  1;
	setAttr ".wl[553].w[21]"  1;
	setAttr ".wl[554].w[21]"  1;
	setAttr ".wl[555].w[21]"  1;
	setAttr ".wl[556].w[21]"  1;
	setAttr ".wl[557].w[21]"  1;
	setAttr ".wl[558].w[21]"  1;
	setAttr ".wl[559].w[21]"  1;
	setAttr ".wl[560].w[21]"  1;
	setAttr ".wl[561].w[21]"  1;
	setAttr ".wl[562].w[21]"  1;
	setAttr ".wl[563].w[21]"  1;
	setAttr ".wl[564].w[21]"  1;
	setAttr ".wl[565].w[21]"  1;
	setAttr ".wl[566].w[21]"  1;
	setAttr ".wl[567].w[21]"  1;
	setAttr -s 47 ".pm";
	setAttr ".pm[0]" -type "matrix" 4.3955427649452374e-016 2.2581939948077844e-015 -1 0
		 0.095431806630139129 0.99543596995653494 2.2941354498745525e-015 0 0.99543596995653505 -0.095431806630139129 2.2618804826202769e-016 0
		 -3.3254816521818533 -34.042640424698583 -7.848396657705438e-014 1;
	setAttr ".pm[1]" -type "matrix" 3.1160254538362317e-016 2.2793753385261089e-015 -1 0
		 0.039185566695354231 0.9992319507315427 2.2941354498745528e-015 0 0.99923195073154281 -0.039185566695354224 2.2618804826202774e-016 0
		 -32.385953714374274 -35.688912362340929 -9.1727082514085303e-014 1;
	setAttr ".pm[2]" -type "matrix" -5.1345939477934375e-016 2.242544878053368e-015 -1 0
		 -0.31622776601683839 0.94868329805051377 2.2941354498745528e-015 0 0.94868329805051388 0.31622776601683844 2.2618804826202764e-016 0
		 -43.815996399960341 -55.060871219833047 -1.0621454464248885e-013 1;
	setAttr ".pm[3]" -type "matrix" 2.2594422019895422e-015 -4.9964491658331171e-015 1 0
		 0.95936550157127032 -0.28216632399155117 -3.5817610571019426e-015 0 0.28216632399155134 0.95936550157127043 4.1517390163110822e-015 0
		 -15.308374090174933 -79.389651005737747 -40.730400000000344 1;
	setAttr ".pm[4]" -type "matrix" 2.2594422019895422e-015 -4.9964491658331171e-015 1 0
		 0.95936550157127032 -0.28216632399155117 -3.5817610571019426e-015 0 0.28216632399155134 0.95936550157127043 4.1517390163110822e-015 0
		 6.9438987870256366 -79.939954344091987 -40.730400000000429 1;
	setAttr ".pm[5]" -type "matrix" 2.2594422019895422e-015 -4.9964491658331171e-015 1 0
		 0.95936550157127032 -0.28216632399155117 -3.5817610571019426e-015 0 0.28216632399155134 0.95936550157127043 4.1517390163110822e-015 0
		 28.998752302647574 -70.528251460741956 -40.730400000000394 1;
	setAttr ".pm[6]" -type "matrix" 2.2594422019895422e-015 -4.9964491658331171e-015 1 0
		 0.95936550157127032 -0.28216632399155117 -3.5817610571019426e-015 0 0.28216632399155134 0.95936550157127043 4.1517390163110822e-015 0
		 39.588866404883468 -77.232133929254147 -40.730400000000479 1;
	setAttr ".pm[7]" -type "matrix" 2.2594422019895422e-015 -4.9964491658331171e-015 1 0
		 0.95936550157127032 -0.28216632399155117 -3.5817610571019426e-015 0 0.28216632399155134 0.95936550157127043 4.1517390163110822e-015 0
		 45.651582335389612 -77.377223853050594 -40.730400000000493 1;
	setAttr ".pm[8]" -type "matrix" 2.2594422019895422e-015 -4.9964491658331171e-015 1 0
		 0.95936550157127032 -0.28216632399155117 -3.5817610571019426e-015 0 0.28216632399155134 0.95936550157127043 4.1517390163110822e-015 0
		 54.843983735511458 -77.086913849645697 -40.730400000000515 1;
	setAttr ".pm[9]" -type "matrix" -2.2594422019895434e-015 3.1062770750301951e-016 1 0
		 -0.95936550157127043 0.28216632399155095 -2.2595800413242102e-015 0 -0.282166323991551 -0.95936550157127054 -3.4367643733319284e-016 0
		 15.30837741196385 79.389650013715851 40.730423179557484 1;
	setAttr ".pm[10]" -type "matrix" -2.2594422019895434e-015 3.1062770750301951e-016 1 0
		 -0.95936550157127043 0.28216632399155095 -2.2595800413242102e-015 0 -0.282166323991551 -0.95936550157127054 -3.4367643733319284e-016 0
		 -6.9439406158696517 79.939960985869035 40.730423179557434 1;
	setAttr ".pm[11]" -type "matrix" -2.2594422019895434e-015 3.1062770750301951e-016 1 0
		 -0.95936550157127043 0.28216632399155095 -2.2595800413242102e-015 0 -0.282166323991551 -0.95936550157127054 -3.4367643733319284e-016 0
		 -28.998711115237938 70.528232308275562 40.730423179557356 1;
	setAttr ".pm[12]" -type "matrix" -2.2594422019895434e-015 3.1062770750301951e-016 1 0
		 -0.95936550157127043 0.28216632399155095 -2.2595800413242102e-015 0 -0.282166323991551 -0.95936550157127054 -3.4367643733319284e-016 0
		 -39.588896459841884 77.232111104401042 40.730423179557334 1;
	setAttr ".pm[13]" -type "matrix" -2.2594422019895434e-015 3.1062770750301951e-016 1 0
		 -0.95936550157127043 0.28216632399155095 -2.2595800413242102e-015 0 -0.282166323991551 -0.95936550157127054 -3.4367643733319284e-016 0
		 -45.651534675468362 77.377227444668691 40.730423179557341 1;
	setAttr ".pm[14]" -type "matrix" -2.2594422019895434e-015 3.1062770750301951e-016 1 0
		 -0.95936550157127043 0.28216632399155095 -2.2595800413242102e-015 0 -0.282166323991551 -0.95936550157127054 -3.4367643733319284e-016 0
		 -54.843989288750862 77.086872442440281 40.730423179557327 1;
	setAttr ".pm[15]" -type "matrix" 1 3.0622183513762607e-015 -2.0951054843355912e-015 0
		 -3.0435359914965335e-015 1 -5.5511151231251294e-017 0 2.1052803034508011e-015 1.1102230246251679e-016 1.0000000000000002 0
		 -1.043615057648557e-013 -28.375369689620069 -92.88518133222135 1;
	setAttr ".pm[16]" -type "matrix" 1 3.0622183513762607e-015 -2.0951054843355912e-015 0
		 -3.0435359914965335e-015 1 -5.5511151231251294e-017 0 2.1052803034508011e-015 1.1102230246251679e-016 1.0000000000000002 0
		 -1.0837542981632171e-013 -19.875050032472579 -99.888400054253339 1;
	setAttr ".pm[17]" -type "matrix" 1 3.0622183513762607e-015 -2.0951054843355912e-015 0
		 -3.0435359914965335e-015 1 -5.5511151231251294e-017 0 2.1052803034508011e-015 1.1102230246251679e-016 1.0000000000000002 0
		 0.057551901427106533 -20.878771290375933 -105.01458335349345 1;
	setAttr ".pm[18]" -type "matrix" 1 3.0622183513762607e-015 -2.0951054843355912e-015 0
		 -3.0435359914965335e-015 1 -5.5511151231251294e-017 0 2.1052803034508011e-015 1.1102230246251679e-016 1.0000000000000002 0
		 -0.0075336254257538839 -26.166310403655871 -108.92385708173178 1;
	setAttr ".pm[19]" -type "matrix" 1.8886311941225815e-017 -4.2412655401059397e-017 1 0
		 0.10468478451804253 0.99450545292140602 3.5902045988155289e-017 0 -0.99450545292140613 0.10468478451804256 1.9079056565625415e-017 0
		 -27.288253428592768 -34.361684476640171 -8.8029317889478336e-016 1;
	setAttr ".pm[20]" -type "matrix" 3.3490720107205663e-017 -3.2154280953103461e-017 1 0
		 -0.27821891729303327 0.96051769065451997 3.5902045988155282e-017 0 -0.96051769065452008 -0.27821891729303327 1.9079056565625415e-017 0
		 -33.147261408274758 -50.605192737707121 -8.8029317889478652e-016 1;
	setAttr ".pm[21]" -type "matrix" 1 -4.0202507573322338e-017 -2.3222499902621637e-017 0
		 8.1464703725263642e-018 1 5.5511151231257827e-017 0 1.9079056565625415e-017 5.5511151231257827e-017 1 0
		 -1.5958267211869459e-017 -31.14094708942806 74.379421629261202 1;
	setAttr ".pm[22]" -type "matrix" 1 -4.0202507573322338e-017 -2.3222499902621637e-017 0
		 8.1464703725263642e-018 1 5.5511151231257827e-017 0 1.9079056565625415e-017 5.5511151231257827e-017 1 0
		 -1.5958267212049104e-017 4.3429940532997415 82.037826192439894 1;
	setAttr ".pm[23]" -type "matrix" 1 -4.0202507573322338e-017 -2.3222499902621637e-017 0
		 8.1464703725263642e-018 1 5.5511151231257827e-017 0 1.9079056565625415e-017 5.5511151231257827e-017 1 0
		 -2.9253935169198826e-017 7.209728837230827 90.077669323449385 1;
	setAttr ".pm[24]" -type "matrix" 1 -4.0202507573322338e-017 -2.3222499902621637e-017 0
		 8.1464703725263642e-018 1 5.5511151231257827e-017 0 1.9079056565625415e-017 5.5511151231257827e-017 1 0
		 -7.5203559269583707e-018 6.6405154222533449 99.711496864662351 1;
	setAttr ".pm[25]" -type "matrix" 0.85987661962787221 0.024311968039614128 0.50992266788934237 0
		 -0.012431848603322347 0.99956636176066938 -0.026693399499553773 0 -0.51035051499694561 0.016613748721450213 0.85980598695041244 0
		 -18.729192623256242 -2.1915285888582634 73.884676748709623 1;
	setAttr ".pm[26]" -type "matrix" 0.87537399905422431 -0.012115272964969549 -0.4832945084943539 0
		 0.02268147378150177 0.99961432132538186 0.016023712063546983 0 0.48291398046330553 -0.0249885726319189 0.87531117821658466 0
		 16.351250075523275 -5.4931466511336886 74.27646244250576 1;
	setAttr ".pm[27]" -type "matrix" -0.71451042649349461 0.69962479260821253 6.4609562585834968e-016 0
		 -0.69962479260821253 -0.71451042649349461 1.8922697629538521e-016 0 4.2183775623772244e-016 -3.3535829934184176e-016 1 0
		 50.007875507696596 -0.43098011917402335 60.267399999999981 1;
	setAttr ".pm[28]" -type "matrix" -0.80873608430318811 0.58817169767504662 6.4609562585834958e-016 0
		 -0.58817169767504662 -0.80873608430318811 1.8922697629538521e-016 0 4.6615887737979788e-016 -2.7038524842368e-016 1 0
		 57.538550622229607 10.240445872022102 60.267399999999959 1;
	setAttr ".pm[29]" -type "matrix" 0.41716766033065122 0.90882954572034536 1.3542614620112705e-008 0
		 0.90882954572034547 -0.41716766033065134 -6.2162826065029465e-009 0 -2.7406558088536531e-016 1.4901160408218447e-008 -0.99999999999999956 0
		 -67.503270088992252 -19.721244020477453 -64.307206666610341 1;
	setAttr ".pm[30]" -type "matrix" 0.26311740579210602 0.9647638212377323 -1.5016515872629554e-008 0
		 0.96476382123773241 -0.26311740579210624 1.5725711642448639e-009 0 -2.4339467768934074e-009 -1.4901162009112745e-008 -0.99999999999999978 0
		 -63.225291582502628 -31.041518037632539 -80.902808624074652 1;
	setAttr ".pm[31]" -type "matrix" 0.99999999999999956 -6.9619770223912298e-016 -1.5016515872629541e-008 0
		 -1.984300652493909e-016 -0.99999999999999867 4.6362132610276734e-008 0 -1.5016515762566401e-008 -4.6362132743992565e-008 -0.99999999999999878 0
		 -45.706162822102769 42.752962602191836 -88.724515092290417 1;
	setAttr ".pm[32]" -type "matrix" -0.71451042649349428 0.69962479260821286 8.3543763088486967e-017 0
		 0.69962479260821275 0.71451042649349439 -1.3675574051042062e-016 0 -1.6898009551424607e-016 -1.4530500437267752e-016 -1 0
		 -50.007888102613819 0.43100608633135085 -60.267400000000002 1;
	setAttr ".pm[33]" -type "matrix" -0.80873608430318777 0.58817169767504685 8.3543763088486955e-017 0
		 0.58817169767504673 0.80873608430318789 -1.3675574051042062e-016 0 -1.4603027373742361e-016 -1.6835372323747599e-016 -1 0
		 -57.538602131098614 -10.240451568126003 -60.267400000000009 1;
	setAttr ".pm[34]" -type "matrix" 0.41716766033065111 0.9088295457203458 -1.3463206708165923e-016 0
		 -0.90882954572034569 0.41716766033065139 2.4805525992411715e-016 0 3.322245427272033e-016 -7.5290218014309019e-017 1 0
		 67.503256402883181 19.721216751930168 64.307199999999995 1;
	setAttr ".pm[35]" -type "matrix" 0.26311740579210646 0.96476382123773241 -1.346320670816592e-016 0
		 -0.9647638212377323 0.26311740579210674 2.4805525992411705e-016 0 3.4006060506568701e-016 -2.001371033317612e-017 1 0
		 63.225279560583331 31.04151275398937 80.902799999999971 1;
	setAttr ".pm[36]" -type "matrix" 0.99999999999999956 2.2204459844450404e-016 -1.3463207446107422e-016 0
		 1.6653345369377356e-016 0.99999999999999845 -4.8135092471153888e-008 0 7.0167360303094728e-017 4.8135092385865042e-008 0.99999999999999889 0
		 45.706199999999988 -42.752995729237909 88.72450205791948 1;
	setAttr ".pm[37]" -type "matrix" 6.3447199193293138e-017 1 1.9760207048710134e-016 0
		 -1 3.5902045988155289e-017 7.0943186219826145e-033 0 4.163336342344337e-017 -2.0296554835940594e-016 1.0000000000000002 0
		 -25.627494307547515 40.967227965485087 18.851073126290434 1;
	setAttr ".pm[38]" -type "matrix" 6.3447199193293138e-017 1 1.9760207048710134e-016 0
		 -1 3.5902045988155289e-017 7.0943186219826145e-033 0 4.163336342344337e-017 -2.0296554835940594e-016 1.0000000000000002 0
		 -37.32056346400779 40.967227965485087 19.071697072638742 1;
	setAttr ".pm[39]" -type "matrix" 6.3447199193293138e-017 1 1.9760207048710134e-016 0
		 -1 3.5902045988155289e-017 7.0943186219826145e-033 0 4.163336342344337e-017 -2.0296554835940594e-016 1.0000000000000002 0
		 -47.689888942378225 40.967227965485101 24.587295731346423 1;
	setAttr ".pm[40]" -type "matrix" 6.3447199193293138e-017 1 1.9760207048710134e-016 0
		 -1 3.5902045988155289e-017 7.0943186219826145e-033 0 4.163336342344337e-017 -2.0296554835940594e-016 1.0000000000000002 0
		 -55.324009402063517 40.967227965485094 23.579015670633257 1;
	setAttr ".pm[41]" -type "matrix" 6.3447199193293138e-017 1 1.9760207048710134e-016 0
		 -1 3.5902045988155289e-017 7.0943186219826145e-033 0 4.163336342344337e-017 -2.0296554835940594e-016 1.0000000000000002 0
		 -63.578895559499237 40.967227965485101 28.561556308849756 1;
	setAttr ".pm[42]" -type "matrix" -1.6957815953351535e-017 1 2.4404707029234463e-016 0
		 1 3.5902045988155289e-017 8.7617891409103228e-033 0 -4.1633363423443383e-017 2.4112366149065675e-016 -1.0000000000000002 0
		 25.627500000000001 -40.967199999999991 -18.851100000000024 1;
	setAttr ".pm[43]" -type "matrix" -1.6957815953351535e-017 1 2.4404707029234463e-016 0
		 1 3.5902045988155289e-017 8.7617891409103228e-033 0 -4.1633363423443383e-017 2.4112366149065675e-016 -1.0000000000000002 0
		 37.320599999999999 -40.967199999999984 -19.071700000000021 1;
	setAttr ".pm[44]" -type "matrix" -1.6957815953351535e-017 1 2.4404707029234463e-016 0
		 1 3.5902045988155289e-017 8.7617891409103228e-033 0 -4.1633363423443383e-017 2.4112366149065675e-016 -1.0000000000000002 0
		 47.689900000000009 -40.967199999999984 -24.587300000000031 1;
	setAttr ".pm[45]" -type "matrix" -1.6957815953351535e-017 1 2.4404707029234463e-016 0
		 1 3.5902045988155289e-017 8.7617891409103228e-033 0 -4.1633363423443383e-017 2.4112366149065675e-016 -1.0000000000000002 0
		 55.324000000000012 -40.967199999999991 -23.579000000000011 1;
	setAttr ".pm[46]" -type "matrix" -1.6957815953351535e-017 1 2.4404707029234463e-016 0
		 1 3.5902045988155289e-017 8.7617891409103228e-033 0 -4.1633363423443383e-017 2.4112366149065675e-016 -1.0000000000000002 0
		 63.578885357193919 -40.967199999999984 -28.561559327276814 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 47 ".ma";
	setAttr -s 47 ".dpf[0:46]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 47 ".lw";
	setAttr -s 47 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 47 ".ifcl";
	setAttr -s 47 ".ifcl";
createNode tweak -n "tweak2";
createNode objectSet -n "skinCluster2Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster2GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster2GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet2";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode polyMapCut -n "polyMapCut1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[240]" "e[242]" "e[244]" "e[246]" "e[248:249]" "e[691]" "e[693]" "e[695]" "e[697]" "e[699:700]";
createNode polyTweakUV -n "polyTweakUV1";
	setAttr ".uopa" yes;
	setAttr -s 61 ".uvtk";
	setAttr ".uvtk[123]" -type "float2" 0 0.00031286478 ;
	setAttr ".uvtk[125]" -type "float2" 0.78348333 0.25855729 ;
	setAttr ".uvtk[126]" -type "float2" 0.80084968 0.25169155 ;
	setAttr ".uvtk[127]" -type "float2" 0.78348333 0.25855729 ;
	setAttr ".uvtk[128]" -type "float2" 0.77419448 0.26259598 ;
	setAttr ".uvtk[129]" -type "float2" 0.76490551 0.24442191 ;
	setAttr ".uvtk[130]" -type "float2" 0.77419448 0.26259598 ;
	setAttr ".uvtk[131]" -type "float2" 0.77823311 0.24563351 ;
	setAttr ".uvtk[132]" -type "float2" 0.77823311 0.24563351 ;
	setAttr ".uvtk[133]" -type "float2" 0.77823311 0.24563351 ;
	setAttr ".uvtk[134]" -type "float2" 0.77823311 0.24563351 ;
	setAttr ".uvtk[135]" -type "float2" 0.77823311 0.24563351 ;
	setAttr ".uvtk[136]" -type "float2" 0.77823311 0.24563351 ;
	setAttr ".uvtk[137]" -type "float2" 0.77823311 0.24563351 ;
	setAttr ".uvtk[324]" -type "float2" 0 0.00031286478 ;
	setAttr ".uvtk[327]" -type "float2" 0.78348333 0.25855729 ;
	setAttr ".uvtk[328]" -type "float2" 0.77823311 0.24563351 ;
	setAttr ".uvtk[329]" -type "float2" 0.80771554 0.27390429 ;
	setAttr ".uvtk[330]" -type "float2" 0.80084968 0.25169155 ;
	setAttr ".uvtk[331]" -type "float2" 0.81740832 0.23755613 ;
	setAttr ".uvtk[332]" -type "float2" 0.78348333 0.25855729 ;
	setAttr ".uvtk[333]" -type "float2" 0.7527895 0.23553678 ;
	setAttr ".uvtk[334]" -type "float2" 0.77419448 0.26259598 ;
	setAttr ".uvtk[335]" -type "float2" 0.74753904 0.26825014 ;
	setAttr ".uvtk[336]" -type "float2" 0.76490551 0.24442191 ;
	setAttr ".uvtk[337]" -type "float2" 0.77419448 0.26259598 ;
	setAttr ".uvtk[394]" -type "float2" 0.77823311 0.24563351 ;
	setAttr ".uvtk[395]" -type "float2" 0.77823311 0.24563351 ;
	setAttr ".uvtk[396]" -type "float2" 0.77823311 0.24563351 ;
	setAttr ".uvtk[397]" -type "float2" 0.77823311 0.24563351 ;
	setAttr ".uvtk[398]" -type "float2" 0.77823311 0.24563351 ;
	setAttr ".uvtk[399]" -type "float2" 0.77823311 0.24563351 ;
	setAttr ".uvtk[658]" -type "float2" 0.0089224577 0.033980798 ;
	setAttr ".uvtk[659]" -type "float2" 0 0.023672424 ;
	setAttr ".uvtk[660]" -type "float2" -0.019071519 0.0096737742 ;
	setAttr ".uvtk[661]" -type "float2" -0.014603078 -0.015848786 ;
	setAttr ".uvtk[662]" -type "float2" 5.9604645e-008 0 ;
	setAttr ".uvtk[663]" -type "float2" 0.013439834 0.023150265 ;
	setAttr ".uvtk[736]" -type "float2" 0.77823311 0.24563348 ;
	setAttr ".uvtk[737]" -type "float2" 0.77823311 0.24563348 ;
	setAttr ".uvtk[738]" -type "float2" 0.77823311 0.24563351 ;
	setAttr ".uvtk[739]" -type "float2" 0.77823311 0.24563348 ;
	setAttr ".uvtk[740]" -type "float2" 0.77823311 0.24563348 ;
	setAttr ".uvtk[741]" -type "float2" 0.77823311 0.24563351 ;
	setAttr ".uvtk[742]" -type "float2" 0.77823311 0.24563348 ;
	setAttr ".uvtk[743]" -type "float2" 0.77823311 0.24563348 ;
	setAttr ".uvtk[744]" -type "float2" 0.77823311 0.24563351 ;
	setAttr ".uvtk[745]" -type "float2" 0.77823311 0.24563348 ;
	setAttr ".uvtk[746]" -type "float2" 0.77823311 0.24563348 ;
	setAttr ".uvtk[747]" -type "float2" 0.77823311 0.24563351 ;
	setAttr ".uvtk[748]" -type "float2" -5.9604645e-008 0.023672424 ;
	setAttr ".uvtk[749]" -type "float2" 0.77823311 0.24563351 ;
	setAttr ".uvtk[750]" -type "float2" -0.019071698 0.0096737742 ;
	setAttr ".uvtk[751]" -type "float2" -0.014603078 -0.015848786 ;
	setAttr ".uvtk[753]" -type "float2" 0.013439834 0.023150265 ;
	setAttr ".uvtk[754]" -type "float2" 0.77823311 0.24563351 ;
	setAttr ".uvtk[755]" -type "float2" 0.0089224577 0.033980798 ;
	setAttr ".uvtk[756]" -type "float2" 0.80771542 0.27390429 ;
	setAttr ".uvtk[757]" -type "float2" 0.81740832 0.23755613 ;
	setAttr ".uvtk[758]" -type "float2" 0.75278938 0.23553678 ;
	setAttr ".uvtk[759]" -type "float2" 0.74753904 0.26825014 ;
createNode polyMapCut -n "polyMapCut2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[181]" "e[190]" "e[202]" "e[632]" "e[641]" "e[653]";
createNode polyMergeUV -n "polyMergeUV1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 29 "map[102]" "map[110]" "map[112]" "map[115:124]" "map[138:148]" "map[260:262]" "map[264:268]" "map[270]" "map[272]" "map[318:326]" "map[400:406]" "map[409:411]" "map[413]" "map[415]" "map[417]" "map[419]" "map[438]" "map[598]" "map[600]" "map[602:603]" "map[605:606]" "map[608:613]" "map[615:616]" "map[658:663]" "map[665]" "map[668:669]" "map[748]" "map[750:753]" "map[755]";
	setAttr ".d" 0.0099999997764825821;
createNode polyTweakUV -n "polyTweakUV2";
	setAttr ".uopa" yes;
	setAttr -s 94 ".uvtk";
	setAttr ".uvtk[125]" -type "float2" 0.10679411 0.099848285 ;
	setAttr ".uvtk[126]" -type "float2" 0.097948007 0.10475214 ;
	setAttr ".uvtk[127]" -type "float2" 0.14578557 0.099848211 ;
	setAttr ".uvtk[128]" -type "float2" 0.19916791 0.10474446 ;
	setAttr ".uvtk[129]" -type "float2" 0.076866433 0.12433558 ;
	setAttr ".uvtk[130]" -type "float2" 0.094144613 0.10474451 ;
	setAttr ".uvtk[131]" -type "float2" 0.11608103 0.11414196 ;
	setAttr ".uvtk[132]" -type "float2" 0.10554082 0.084613383 ;
	setAttr ".uvtk[133]" -type "float2" 0.11687216 0.083828881 ;
	setAttr ".uvtk[134]" -type "float2" 0.14453202 0.084613368 ;
	setAttr ".uvtk[135]" -type "float2" 0.17505008 0.087086096 ;
	setAttr ".uvtk[136]" -type "float2" 0.040648147 0.087325782 ;
	setAttr ".uvtk[137]" -type "float2" 0.070027135 0.087086111 ;
	setAttr ".uvtk[138]" -type "float2" 0.65270585 0.30510202 ;
	setAttr ".uvtk[139]" -type "float2" 0.65270585 0.30510205 ;
	setAttr ".uvtk[140]" -type "float2" 0.65270585 0.30510202 ;
	setAttr ".uvtk[141]" -type "float2" 0.65270585 0.30510202 ;
	setAttr ".uvtk[142]" -type "float2" 0.65270579 0.30510202 ;
	setAttr ".uvtk[143]" -type "float2" 0.65270585 0.30510202 ;
	setAttr ".uvtk[144]" -type "float2" 0.65270585 0.30510199 ;
	setAttr ".uvtk[145]" -type "float2" 0.65270585 0.30510202 ;
	setAttr ".uvtk[146]" -type "float2" 0.65270585 0.30510199 ;
	setAttr ".uvtk[147]" -type "float2" 0.65270585 0.30510202 ;
	setAttr ".uvtk[148]" -type "float2" 0.65270579 0.30510202 ;
	setAttr ".uvtk[260]" -type "float2" 0.65270585 0.30510202 ;
	setAttr ".uvtk[262]" -type "float2" 0.65270585 0.30510202 ;
	setAttr ".uvtk[264]" -type "float2" 0.65270585 0.30510202 ;
	setAttr ".uvtk[265]" -type "float2" 0.65270585 0.30510202 ;
	setAttr ".uvtk[267]" -type "float2" 0.65270585 0.30510202 ;
	setAttr ".uvtk[268]" -type "float2" 0.65270579 0.30510202 ;
	setAttr ".uvtk[270]" -type "float2" 0.65270585 0.30510202 ;
	setAttr ".uvtk[272]" -type "float2" 0.65270585 0.30510202 ;
	setAttr ".uvtk[327]" -type "float2" 0.10679411 0.099848285 ;
	setAttr ".uvtk[328]" -type "float2" 0.11231032 0.10383357 ;
	setAttr ".uvtk[329]" -type "float2" 0.081752785 0.11120625 ;
	setAttr ".uvtk[330]" -type "float2" 0.097947888 0.10475214 ;
	setAttr ".uvtk[331]" -type "float2" 0.097523041 0.17201419 ;
	setAttr ".uvtk[332]" -type "float2" 0.14578557 0.099848211 ;
	setAttr ".uvtk[333]" -type "float2" 0.23762527 0.18988231 ;
	setAttr ".uvtk[334]" -type "float2" 0.036750272 0.10474451 ;
	setAttr ".uvtk[335]" -type "float2" 0.11608091 0.13033685 ;
	setAttr ".uvtk[336]" -type "float2" 0.076866314 0.12433558 ;
	setAttr ".uvtk[337]" -type "float2" 0.094144881 0.10474451 ;
	setAttr ".uvtk[394]" -type "float2" 0.11687216 0.083828881 ;
	setAttr ".uvtk[395]" -type "float2" 0.10554082 0.084613383 ;
	setAttr ".uvtk[396]" -type "float2" 0.14453202 0.084613368 ;
	setAttr ".uvtk[397]" -type "float2" 0.01263259 0.087086111 ;
	setAttr ".uvtk[398]" -type "float2" 0.040648147 0.087325782 ;
	setAttr ".uvtk[399]" -type "float2" 0.070027135 0.087086111 ;
	setAttr ".uvtk[400]" -type "float2" 0.65270585 0.30510205 ;
	setAttr ".uvtk[401]" -type "float2" 0.65270585 0.30510202 ;
	setAttr ".uvtk[402]" -type "float2" 0.65270585 0.30510202 ;
	setAttr ".uvtk[403]" -type "float2" 0.65270585 0.30510202 ;
	setAttr ".uvtk[405]" -type "float2" 0.65270579 0.30510202 ;
	setAttr ".uvtk[598]" -type "float2" 0.65270585 0.30510202 ;
	setAttr ".uvtk[600]" -type "float2" 0.65270585 0.30510202 ;
	setAttr ".uvtk[602]" -type "float2" 0.65270585 0.30510199 ;
	setAttr ".uvtk[603]" -type "float2" 0.65270585 0.30510199 ;
	setAttr ".uvtk[605]" -type "float2" 0.65270585 0.30510202 ;
	setAttr ".uvtk[606]" -type "float2" 0.65270579 0.30510202 ;
	setAttr ".uvtk[608]" -type "float2" 0.65270585 0.30510202 ;
	setAttr ".uvtk[609]" -type "float2" 0.65270585 0.30510202 ;
	setAttr ".uvtk[610]" -type "float2" 0.65270585 0.30510202 ;
	setAttr ".uvtk[611]" -type "float2" 0.65270585 0.30510202 ;
	setAttr ".uvtk[612]" -type "float2" 0.65270585 0.30510202 ;
	setAttr ".uvtk[613]" -type "float2" 0.65270579 0.30510202 ;
	setAttr ".uvtk[615]" -type "float2" 0.65270585 0.30510202 ;
	setAttr ".uvtk[616]" -type "float2" 0.65270585 0.30510202 ;
	setAttr ".uvtk[736]" -type "float2" 0.070150465 0.058520161 ;
	setAttr ".uvtk[737]" -type "float2" 0.10413585 0.056047417 ;
	setAttr ".uvtk[738]" -type "float2" 0.041088194 0.05875995 ;
	setAttr ".uvtk[739]" -type "float2" 0.012756025 0.058520176 ;
	setAttr ".uvtk[740]" -type "float2" 0.14312726 0.05604741 ;
	setAttr ".uvtk[741]" -type "float2" 0.11515095 0.055262953 ;
	setAttr ".uvtk[742]" -type "float2" 0.070150465 0.058520161 ;
	setAttr ".uvtk[743]" -type "float2" 0.10413585 0.056047417 ;
	setAttr ".uvtk[744]" -type "float2" 0.041088194 0.05875995 ;
	setAttr ".uvtk[745]" -type "float2" 0.17517391 0.058520168 ;
	setAttr ".uvtk[746]" -type "float2" 0.14312726 0.05604741 ;
	setAttr ".uvtk[747]" -type "float2" 0.11515095 0.055262953 ;
	setAttr ".uvtk[749]" -type "float2" 0.11608103 0.11414196 ;
	setAttr ".uvtk[754]" -type "float2" 0.11231032 0.10383357 ;
	setAttr ".uvtk[756]" -type "float2" 0.081753023 0.11120625 ;
	setAttr ".uvtk[757]" -type "float2" 0.097523041 0.17201419 ;
	setAttr ".uvtk[758]" -type "float2" 0.075207852 0.18988231 ;
	setAttr ".uvtk[759]" -type "float2" 0.11608091 0.13033685 ;
	setAttr ".uvtk[760]" -type "float2" 0.17505029 0.087086096 ;
	setAttr ".uvtk[761]" -type "float2" 0.17517391 0.058520161 ;
	setAttr ".uvtk[762]" -type "float2" 0.19916806 0.10474449 ;
	setAttr ".uvtk[763]" -type "float2" 0.075207628 0.18988231 ;
	setAttr ".uvtk[764]" -type "float2" 0.012632485 0.087086111 ;
	setAttr ".uvtk[765]" -type "float2" 0.012756219 0.058520168 ;
	setAttr ".uvtk[766]" -type "float2" 0.036750376 0.10474454 ;
	setAttr ".uvtk[767]" -type "float2" 0.23762539 0.18988231 ;
createNode polyMapCut -n "polyMapCut3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[181]" "e[190]" "e[202]" "e[214]" "e[226]" "e[235]" "e[632]" "e[641]" "e[653]" "e[665]" "e[677]" "e[686]";
createNode polyTweakUV -n "polyTweakUV3";
	setAttr ".uopa" yes;
	setAttr -s 79 ".uvtk";
	setAttr ".uvtk[126]" -type "float2" 0.018639682 0 ;
	setAttr ".uvtk[127]" -type "float2" 0.018639801 0 ;
	setAttr ".uvtk[128]" -type "float2" 0.018639801 0 ;
	setAttr ".uvtk[129]" -type "float2" 1.1920929e-007 0 ;
	setAttr ".uvtk[132]" -type "float2" -2.3841858e-007 0 ;
	setAttr ".uvtk[133]" -type "float2" 0.018639801 0 ;
	setAttr ".uvtk[134]" -type "float2" 0.018639801 0 ;
	setAttr ".uvtk[135]" -type "float2" 0.018639801 0 ;
	setAttr ".uvtk[138]" -type "float2" 0.02297264 0.050916635 ;
	setAttr ".uvtk[139]" -type "float2" 0.044236489 0.050916627 ;
	setAttr ".uvtk[140]" -type "float2" 0.080603853 0.050916649 ;
	setAttr ".uvtk[141]" -type "float2" 0.12082791 0.050916627 ;
	setAttr ".uvtk[142]" -type "float2" -0.024127603 0.050916702 ;
	setAttr ".uvtk[143]" -type "float2" -0.00076216459 0.050916657 ;
	setAttr ".uvtk[144]" -type "float2" 0.02297264 0.0057871868 ;
	setAttr ".uvtk[145]" -type "float2" 0.044236489 0.0057871505 ;
	setAttr ".uvtk[146]" -type "float2" 0.080603853 0.0057872031 ;
	setAttr ".uvtk[147]" -type "float2" 0.12082791 0.0057871789 ;
	setAttr ".uvtk[148]" -type "float2" -0.024127603 0.0057872236 ;
	setAttr ".uvtk[260]" -type "float2" -0.00076216459 0.005787177 ;
	setAttr ".uvtk[262]" -type "float2" 0.02297264 -0.0063195131 ;
	setAttr ".uvtk[264]" -type "float2" 0.044236489 -0.0065400568 ;
	setAttr ".uvtk[265]" -type "float2" 0.080603853 -0.0063194963 ;
	setAttr ".uvtk[267]" -type "float2" 0.12082791 -0.0058711744 ;
	setAttr ".uvtk[268]" -type "float2" -0.024127603 -0.0056899316 ;
	setAttr ".uvtk[270]" -type "float2" -0.00076216459 -0.0058711763 ;
	setAttr ".uvtk[272]" -type "float2" 0.020867435 -0.033586122 ;
	setAttr ".uvtk[328]" -type "float2" -3.5762787e-007 0 ;
	setAttr ".uvtk[329]" -type "float2" 0.018639563 0 ;
	setAttr ".uvtk[330]" -type "float2" 0.018639682 0 ;
	setAttr ".uvtk[331]" -type "float2" 0.018639801 0 ;
	setAttr ".uvtk[332]" -type "float2" 0.018639801 0 ;
	setAttr ".uvtk[333]" -type "float2" 0.018639801 0 ;
	setAttr ".uvtk[334]" -type "float2" 1.1920929e-007 0 ;
	setAttr ".uvtk[336]" -type "float2" 1.1920929e-007 0 ;
	setAttr ".uvtk[394]" -type "float2" 0.018639801 0 ;
	setAttr ".uvtk[395]" -type "float2" -2.3841858e-007 0 ;
	setAttr ".uvtk[396]" -type "float2" 0.018639801 0 ;
	setAttr ".uvtk[400]" -type "float2" 0.044236489 0.050916627 ;
	setAttr ".uvtk[401]" -type "float2" 0.02297264 0.050916635 ;
	setAttr ".uvtk[402]" -type "float2" 0.080603853 0.050916649 ;
	setAttr ".uvtk[403]" -type "float2" -0.060229376 0.050916627 ;
	setAttr ".uvtk[405]" -type "float2" -0.024127603 0.050916702 ;
	setAttr ".uvtk[598]" -type "float2" -0.00076216459 0.050916657 ;
	setAttr ".uvtk[600]" -type "float2" 0.044236489 0.0057871505 ;
	setAttr ".uvtk[602]" -type "float2" 0.02297264 0.0057871868 ;
	setAttr ".uvtk[603]" -type "float2" 0.080603853 0.0057872031 ;
	setAttr ".uvtk[605]" -type "float2" -0.060229376 0.00578715 ;
	setAttr ".uvtk[606]" -type "float2" -0.024127603 0.0057872236 ;
	setAttr ".uvtk[608]" -type "float2" -0.00076216459 0.005787177 ;
	setAttr ".uvtk[609]" -type "float2" 0.044236489 -0.0065400568 ;
	setAttr ".uvtk[610]" -type "float2" 0.02297264 -0.0063195131 ;
	setAttr ".uvtk[611]" -type "float2" 0.080603853 -0.0063194963 ;
	setAttr ".uvtk[612]" -type "float2" -0.060229406 -0.0058711595 ;
	setAttr ".uvtk[613]" -type "float2" -0.024127603 -0.0056899316 ;
	setAttr ".uvtk[615]" -type "float2" -0.00076216459 -0.0058711763 ;
	setAttr ".uvtk[616]" -type "float2" 0.020867435 -0.033586122 ;
	setAttr ".uvtk[739]" -type "float2" 2.3841858e-007 0 ;
	setAttr ".uvtk[740]" -type "float2" 0.018639801 0 ;
	setAttr ".uvtk[741]" -type "float2" 0.018639801 0 ;
	setAttr ".uvtk[745]" -type "float2" 0.018639682 0 ;
	setAttr ".uvtk[746]" -type "float2" 0.018639801 0 ;
	setAttr ".uvtk[747]" -type "float2" 0.018639801 0 ;
	setAttr ".uvtk[754]" -type "float2" -3.5762787e-007 0 ;
	setAttr ".uvtk[756]" -type "float2" 0.018639563 0 ;
	setAttr ".uvtk[757]" -type "float2" 0.018639801 0 ;
	setAttr ".uvtk[760]" -type "float2" 0.018639682 0 ;
	setAttr ".uvtk[761]" -type "float2" 0.018639682 0 ;
	setAttr ".uvtk[762]" -type "float2" 0.018639682 0 ;
	setAttr ".uvtk[763]" -type "float2" 1.1920929e-007 0 ;
	setAttr ".uvtk[764]" -type "float2" 1.1920929e-007 0 ;
	setAttr ".uvtk[766]" -type "float2" 1.1920929e-007 0 ;
	setAttr ".uvtk[767]" -type "float2" 0.018639801 0 ;
	setAttr ".uvtk[768]" -type "float2" 0.12082785 -0.0058711632 ;
	setAttr ".uvtk[769]" -type "float2" 0.12082791 0.0057871789 ;
	setAttr ".uvtk[770]" -type "float2" 0.12082791 0.050916627 ;
	setAttr ".uvtk[771]" -type "float2" -0.060229391 -0.005871152 ;
	setAttr ".uvtk[772]" -type "float2" -0.060229376 0.00578715 ;
	setAttr ".uvtk[773]" -type "float2" -0.060229376 0.050916627 ;
createNode polyMergeUV -n "polyMergeUV2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "map[138:143]" "map[400:403]" "map[405]" "map[598]" "map[736:747]" "map[761]" "map[765]" "map[770]" "map[773]";
	setAttr ".d" 0.0099999997764825821;
createNode polyTweakUV -n "polyTweakUV4";
	setAttr ".uopa" yes;
	setAttr -s 586 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 0.025700705 -0.28705242 ;
	setAttr ".uvtk[1]" -type "float2" 0.025700705 -0.28705242 ;
	setAttr ".uvtk[2]" -type "float2" 0.025700705 -0.28705242 ;
	setAttr ".uvtk[3]" -type "float2" 0.025700705 -0.28705242 ;
	setAttr ".uvtk[4]" -type "float2" 0.025700705 -0.28705242 ;
	setAttr ".uvtk[5]" -type "float2" 0.025700705 -0.28705242 ;
	setAttr ".uvtk[6]" -type "float2" 0.025700705 -0.28705242 ;
	setAttr ".uvtk[7]" -type "float2" 0.025700705 -0.28705242 ;
	setAttr ".uvtk[8]" -type "float2" 0.025700705 -0.28705242 ;
	setAttr ".uvtk[9]" -type "float2" 0.025700705 -0.28705242 ;
	setAttr ".uvtk[10]" -type "float2" 0.025700705 -0.28705242 ;
	setAttr ".uvtk[11]" -type "float2" 0.025700705 -0.28705242 ;
	setAttr ".uvtk[12]" -type "float2" 0.025700705 -0.28705242 ;
	setAttr ".uvtk[13]" -type "float2" 0.025700705 -0.28705242 ;
	setAttr ".uvtk[14]" -type "float2" 0.025700705 -0.28705242 ;
	setAttr ".uvtk[15]" -type "float2" 0.025700705 -0.28705242 ;
	setAttr ".uvtk[16]" -type "float2" 0.025700705 -0.28705242 ;
	setAttr ".uvtk[17]" -type "float2" 0 -0.047340419 ;
	setAttr ".uvtk[18]" -type "float2" 0 -0.047340419 ;
	setAttr ".uvtk[26]" -type "float2" 0 -0.047340419 ;
	setAttr ".uvtk[27]" -type "float2" 0 -0.047340419 ;
	setAttr ".uvtk[47]" -type "float2" 0.030105116 -0.25374255 ;
	setAttr ".uvtk[48]" -type "float2" 0.021840394 -0.25055066 ;
	setAttr ".uvtk[51]" -type "float2" 0.038369898 -0.25055066 ;
	setAttr ".uvtk[53]" -type "float2" 0.041561786 -0.24228594 ;
	setAttr ".uvtk[55]" -type "float2" 0.038369898 -0.23402119 ;
	setAttr ".uvtk[57]" -type "float2" 0.030105116 -0.23082939 ;
	setAttr ".uvtk[59]" -type "float2" 0.021840394 -0.23402125 ;
	setAttr ".uvtk[61]" -type "float2" 0.018648505 -0.24228594 ;
	setAttr ".uvtk[62]" -type "float2" 0.030105116 -0.24228594 ;
	setAttr ".uvtk[66]" -type "float2" -0.12725791 -0.21562265 ;
	setAttr ".uvtk[67]" -type "float2" -0.13638034 -0.21562265 ;
	setAttr ".uvtk[68]" -type "float2" -0.090816282 -0.20653008 ;
	setAttr ".uvtk[69]" -type "float2" -0.09990897 -0.20653008 ;
	setAttr ".uvtk[79]" -type "float2" -0.10900249 -0.20653008 ;
	setAttr ".uvtk[80]" -type "float2" -0.11817207 -0.21562265 ;
	setAttr ".uvtk[86]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[87]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[94]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[95]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[97]" -type "float2" -0.28390938 0.24434745 ;
	setAttr ".uvtk[101]" -type "float2" 0 -0.047340419 ;
	setAttr ".uvtk[103]" -type "float2" 0 -0.047340419 ;
	setAttr ".uvtk[104]" -type "float2" 0 -0.047340419 ;
	setAttr ".uvtk[105]" -type "float2" 0 -0.047340419 ;
	setAttr ".uvtk[106]" -type "float2" 0 -0.047340419 ;
	setAttr ".uvtk[107]" -type "float2" 0 -0.047340419 ;
	setAttr ".uvtk[108]" -type "float2" 0 -0.047340419 ;
	setAttr ".uvtk[109]" -type "float2" 0 -0.047340419 ;
	setAttr ".uvtk[110]" -type "float2" 0 -0.047340419 ;
	setAttr ".uvtk[111]" -type "float2" 0 -0.047340419 ;
	setAttr ".uvtk[112]" -type "float2" 0 -0.047340419 ;
	setAttr ".uvtk[113]" -type "float2" 0 -0.047340419 ;
	setAttr ".uvtk[114]" -type "float2" 0 -0.047340419 ;
	setAttr ".uvtk[115]" -type "float2" 0 -0.047340419 ;
	setAttr ".uvtk[116]" -type "float2" 0 -0.047340419 ;
	setAttr ".uvtk[125]" -type "float2" -0.29365277 0.35260475 ;
	setAttr ".uvtk[126]" -type "float2" -0.2978971 0.35260472 ;
	setAttr ".uvtk[127]" -type "float2" -0.28649986 0.35260472 ;
	setAttr ".uvtk[128]" -type "float2" -0.27873743 0.35260478 ;
	setAttr ".uvtk[129]" -type "float2" -0.28182364 0.35260475 ;
	setAttr ".uvtk[130]" -type "float2" -0.2846427 0.35260472 ;
	setAttr ".uvtk[131]" -type "float2" -0.28464305 0.39978102 ;
	setAttr ".uvtk[132]" -type "float2" -0.29365265 0.37021267 ;
	setAttr ".uvtk[133]" -type "float2" -0.29789722 0.37021267 ;
	setAttr ".uvtk[134]" -type "float2" -0.28649974 0.37021261 ;
	setAttr ".uvtk[135]" -type "float2" -0.27873743 0.37021264 ;
	setAttr ".uvtk[136]" -type "float2" -0.28182364 0.37021267 ;
	setAttr ".uvtk[137]" -type "float2" -0.28464329 0.37021267 ;
	setAttr ".uvtk[138]" -type "float2" -0.29365277 0.4176572 ;
	setAttr ".uvtk[139]" -type "float2" -0.2978971 0.41765732 ;
	setAttr ".uvtk[140]" -type "float2" -0.28649974 0.4176572 ;
	setAttr ".uvtk[141]" -type "float2" -0.27873752 0.41765723 ;
	setAttr ".uvtk[142]" -type "float2" -0.28182352 0.4176572 ;
	setAttr ".uvtk[143]" -type "float2" 0 -0.047340419 ;
	setAttr ".uvtk[144]" -type "float2" 0 -0.047340419 ;
	setAttr ".uvtk[145]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[146]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[147]" -type "float2" 0 -0.047340419 ;
	setAttr ".uvtk[148]" -type "float2" 0 -0.047340419 ;
	setAttr ".uvtk[149]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[150]" -type "float2" 0 -0.047340419 ;
	setAttr ".uvtk[151]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[152]" -type "float2" 0 -0.047340419 ;
	setAttr ".uvtk[153]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[154]" -type "float2" 0 -0.047340419 ;
	setAttr ".uvtk[155]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[156]" -type "float2" 0 -0.047340419 ;
	setAttr ".uvtk[157]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[158]" -type "float2" 0 -0.047340419 ;
	setAttr ".uvtk[159]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[160]" -type "float2" 0 -0.047340419 ;
	setAttr ".uvtk[161]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[162]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[163]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[164]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[165]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[166]" -type "float2" -0.13638034 -0.2701779 ;
	setAttr ".uvtk[167]" -type "float2" -0.12725791 -0.2701779 ;
	setAttr ".uvtk[168]" -type "float2" -0.090816282 -0.2701779 ;
	setAttr ".uvtk[169]" -type "float2" -0.09990897 -0.2701779 ;
	setAttr ".uvtk[170]" -type "float2" -0.10900249 -0.2701779 ;
	setAttr ".uvtk[171]" -type "float2" -0.13638034 -0.26108536 ;
	setAttr ".uvtk[172]" -type "float2" -0.12725791 -0.26108536 ;
	setAttr ".uvtk[173]" -type "float2" -0.090816282 -0.26108536 ;
	setAttr ".uvtk[174]" -type "float2" -0.09990897 -0.26108536 ;
	setAttr ".uvtk[175]" -type "float2" -0.10900214 -0.26108536 ;
	setAttr ".uvtk[176]" -type "float2" -0.13638034 -0.25199279 ;
	setAttr ".uvtk[177]" -type "float2" -0.12725791 -0.25199279 ;
	setAttr ".uvtk[178]" -type "float2" -0.090816282 -0.25199279 ;
	setAttr ".uvtk[179]" -type "float2" -0.09990909 -0.25199282 ;
	setAttr ".uvtk[180]" -type "float2" -0.10900214 -0.25199279 ;
	setAttr ".uvtk[181]" -type "float2" -0.13638034 -0.24290034 ;
	setAttr ".uvtk[182]" -type "float2" -0.12725791 -0.24290034 ;
	setAttr ".uvtk[183]" -type "float2" -0.090816282 -0.24290022 ;
	setAttr ".uvtk[184]" -type "float2" -0.09990897 -0.24290022 ;
	setAttr ".uvtk[185]" -type "float2" -0.10900214 -0.24290034 ;
	setAttr ".uvtk[186]" -type "float2" -0.13638034 -0.23380785 ;
	setAttr ".uvtk[187]" -type "float2" -0.12725791 -0.23380773 ;
	setAttr ".uvtk[188]" -type "float2" -0.090816282 -0.23380773 ;
	setAttr ".uvtk[189]" -type "float2" -0.09990897 -0.23380773 ;
	setAttr ".uvtk[190]" -type "float2" -0.10900214 -0.23380773 ;
	setAttr ".uvtk[191]" -type "float2" -0.13638034 -0.22471516 ;
	setAttr ".uvtk[192]" -type "float2" -0.12725791 -0.22471522 ;
	setAttr ".uvtk[193]" -type "float2" -0.090816282 -0.22471516 ;
	setAttr ".uvtk[194]" -type "float2" -0.09990897 -0.2247151 ;
	setAttr ".uvtk[195]" -type "float2" -0.10900214 -0.22471516 ;
	setAttr ".uvtk[196]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[197]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[198]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[199]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[200]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[201]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[202]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[203]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[204]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[205]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[206]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[207]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[208]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[209]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[210]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[211]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[212]" -type "float2" 0.26433542 0.074021272 ;
	setAttr ".uvtk[213]" -type "float2" 0.25814512 0.069727592 ;
	setAttr ".uvtk[214]" -type "float2" 0.26126674 0.069728665 ;
	setAttr ".uvtk[215]" -type "float2" 0.26433542 0.069733433 ;
	setAttr ".uvtk[216]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[217]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[218]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[219]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[220]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[221]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[222]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[223]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[224]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[225]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[226]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[227]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[228]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[229]" -type "float2" 0.021840394 -0.25055066 ;
	setAttr ".uvtk[230]" -type "float2" 0.030105116 -0.25374255 ;
	setAttr ".uvtk[231]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[232]" -type "float2" 0.038369898 -0.25055066 ;
	setAttr ".uvtk[233]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[234]" -type "float2" 0.041561786 -0.24228594 ;
	setAttr ".uvtk[235]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[236]" -type "float2" 0.038369898 -0.23402119 ;
	setAttr ".uvtk[237]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[238]" -type "float2" 0.030105116 -0.23082939 ;
	setAttr ".uvtk[239]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[240]" -type "float2" 0.021840394 -0.23402125 ;
	setAttr ".uvtk[242]" -type "float2" 0.018648505 -0.24228594 ;
	setAttr ".uvtk[243]" -type "float2" 0.030105116 -0.24228594 ;
	setAttr ".uvtk[246]" -type "float2" -0.12725791 -0.21562265 ;
	setAttr ".uvtk[247]" -type "float2" -0.12725791 -0.20653008 ;
	setAttr ".uvtk[248]" -type "float2" -0.1454393 -0.20653008 ;
	setAttr ".uvtk[249]" -type "float2" -0.13638034 -0.21562265 ;
	setAttr ".uvtk[253]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[254]" -type "float2" -0.28671587 0.41765726 ;
	setAttr ".uvtk[255]" -type "float2" 0 -0.047340419 ;
	setAttr ".uvtk[256]" -type "float2" -0.29365265 0.40979415 ;
	setAttr ".uvtk[257]" -type "float2" -0.11817207 -0.21562265 ;
	setAttr ".uvtk[258]" -type "float2" -0.29789698 0.40979415 ;
	setAttr ".uvtk[259]" -type "float2" -0.28649974 0.40979412 ;
	setAttr ".uvtk[260]" -type "float2" 0 -0.047340419 ;
	setAttr ".uvtk[261]" -type "float2" -0.2787374 0.40979415 ;
	setAttr ".uvtk[262]" -type "float2" -0.28182364 0.40979412 ;
	setAttr ".uvtk[263]" -type "float2" -0.28390938 0.24434745 ;
	setAttr ".uvtk[264]" -type "float2" -0.28671575 0.40979415 ;
	setAttr ".uvtk[266]" -type "float2" -0.29154766 0.40487757 ;
	setAttr ".uvtk[305]" -type "float2" 0 -0.047340419 ;
	setAttr ".uvtk[321]" -type "float2" -0.29365277 0.35260475 ;
	setAttr ".uvtk[322]" -type "float2" -0.29365265 0.39978114 ;
	setAttr ".uvtk[323]" -type "float2" -0.29789698 0.39978114 ;
	setAttr ".uvtk[324]" -type "float2" -0.2978971 0.35260472 ;
	setAttr ".uvtk[325]" -type "float2" -0.28649974 0.39978108 ;
	setAttr ".uvtk[326]" -type "float2" -0.28649986 0.35260472 ;
	setAttr ".uvtk[327]" -type "float2" -0.2787374 0.39978114 ;
	setAttr ".uvtk[328]" -type "float2" -0.29203284 0.35260475 ;
	setAttr ".uvtk[329]" -type "float2" -0.28182364 0.39978108 ;
	setAttr ".uvtk[330]" -type "float2" -0.28182364 0.35260475 ;
	setAttr ".uvtk[331]" -type "float2" -0.28464293 0.35260472 ;
	setAttr ".uvtk[332]" -type "float2" -0.12725791 -0.2701779 ;
	setAttr ".uvtk[333]" -type "float2" -0.13638034 -0.2701779 ;
	setAttr ".uvtk[334]" -type "float2" -0.1454393 -0.2701779 ;
	setAttr ".uvtk[335]" -type "float2" -0.09990897 -0.2701779 ;
	setAttr ".uvtk[336]" -type "float2" -0.11817207 -0.2701779 ;
	setAttr ".uvtk[337]" -type "float2" -0.12725791 -0.26108536 ;
	setAttr ".uvtk[338]" -type "float2" -0.13638034 -0.26108536 ;
	setAttr ".uvtk[339]" -type "float2" -0.1454393 -0.26108536 ;
	setAttr ".uvtk[340]" -type "float2" -0.09990897 -0.26108536 ;
	setAttr ".uvtk[341]" -type "float2" -0.11817207 -0.26108536 ;
	setAttr ".uvtk[342]" -type "float2" -0.12725791 -0.25199279 ;
	setAttr ".uvtk[343]" -type "float2" -0.13638034 -0.25199279 ;
	setAttr ".uvtk[344]" -type "float2" -0.1454393 -0.25199279 ;
	setAttr ".uvtk[345]" -type "float2" -0.09990897 -0.25199282 ;
	setAttr ".uvtk[346]" -type "float2" -0.11817207 -0.25199279 ;
	setAttr ".uvtk[347]" -type "float2" -0.12725791 -0.24290034 ;
	setAttr ".uvtk[348]" -type "float2" -0.13638034 -0.24290034 ;
	setAttr ".uvtk[349]" -type "float2" -0.1454393 -0.24290034 ;
	setAttr ".uvtk[350]" -type "float2" -0.09990897 -0.24290022 ;
	setAttr ".uvtk[351]" -type "float2" -0.11817207 -0.24290034 ;
	setAttr ".uvtk[352]" -type "float2" -0.12725791 -0.23380773 ;
	setAttr ".uvtk[353]" -type "float2" -0.13638034 -0.23380785 ;
	setAttr ".uvtk[354]" -type "float2" -0.1454393 -0.23380785 ;
	setAttr ".uvtk[355]" -type "float2" -0.09990897 -0.23380773 ;
	setAttr ".uvtk[356]" -type "float2" -0.11817207 -0.23380773 ;
	setAttr ".uvtk[357]" -type "float2" -0.12725791 -0.22471522 ;
	setAttr ".uvtk[358]" -type "float2" -0.13638034 -0.22471516 ;
	setAttr ".uvtk[359]" -type "float2" -0.1454393 -0.22471516 ;
	setAttr ".uvtk[360]" -type "float2" -0.09990897 -0.2247151 ;
	setAttr ".uvtk[361]" -type "float2" -0.11817207 -0.22471516 ;
	setAttr ".uvtk[362]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[363]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[364]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[365]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[366]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[367]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[368]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[369]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[370]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[371]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[372]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[373]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[374]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[375]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[376]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[377]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[378]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[379]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[380]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[381]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[382]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[383]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[384]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[385]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[386]" -type "float2" 0.25814512 -0.11991719 ;
	setAttr ".uvtk[387]" -type "float2" 0.26739588 -0.11991719 ;
	setAttr ".uvtk[388]" -type "float2" -0.29789722 0.37021267 ;
	setAttr ".uvtk[389]" -type "float2" -0.29365265 0.37021267 ;
	setAttr ".uvtk[390]" -type "float2" -0.28649974 0.37021261 ;
	setAttr ".uvtk[391]" -type "float2" -0.29203284 0.37021261 ;
	setAttr ".uvtk[392]" -type "float2" -0.28182364 0.37021267 ;
	setAttr ".uvtk[393]" -type "float2" -0.28464329 0.37021267 ;
	setAttr ".uvtk[394]" -type "float2" 0 -0.047340419 ;
	setAttr ".uvtk[395]" -type "float2" 0 -0.047340419 ;
	setAttr ".uvtk[396]" -type "float2" 0 -0.047340419 ;
	setAttr ".uvtk[397]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[398]" -type "float2" 0 -0.047340419 ;
	setAttr ".uvtk[399]" -type "float2" 0 -0.047340419 ;
	setAttr ".uvtk[400]" -type "float2" 0 -0.047340419 ;
	setAttr ".uvtk[401]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[402]" -type "float2" 0 -0.047340419 ;
	setAttr ".uvtk[403]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[404]" -type "float2" 0 -0.047340419 ;
	setAttr ".uvtk[405]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[406]" -type "float2" 0 -0.047340419 ;
	setAttr ".uvtk[407]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[408]" -type "float2" 0 -0.047340419 ;
	setAttr ".uvtk[409]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[410]" -type "float2" 0.025700705 -0.28705242 ;
	setAttr ".uvtk[411]" -type "float2" 0.025700705 -0.28705242 ;
	setAttr ".uvtk[412]" -type "float2" 0.025700705 -0.28705242 ;
	setAttr ".uvtk[413]" -type "float2" 0.025700705 -0.28705242 ;
	setAttr ".uvtk[414]" -type "float2" 0.025700705 -0.28705242 ;
	setAttr ".uvtk[415]" -type "float2" 0.025700705 -0.28705242 ;
	setAttr ".uvtk[416]" -type "float2" 0.025700705 -0.28705242 ;
	setAttr ".uvtk[417]" -type "float2" 0.025700705 -0.28705242 ;
	setAttr ".uvtk[418]" -type "float2" 0.025700705 -0.28705242 ;
	setAttr ".uvtk[419]" -type "float2" 0.025700705 -0.28705242 ;
	setAttr ".uvtk[420]" -type "float2" 0.025700705 -0.28705242 ;
	setAttr ".uvtk[421]" -type "float2" 0.025700705 -0.28705242 ;
	setAttr ".uvtk[422]" -type "float2" 0.025700705 -0.28705242 ;
	setAttr ".uvtk[423]" -type "float2" 0.025700705 -0.28705242 ;
	setAttr ".uvtk[424]" -type "float2" 0.025700705 -0.28705242 ;
	setAttr ".uvtk[425]" -type "float2" 0.025700705 -0.28705242 ;
	setAttr ".uvtk[426]" -type "float2" 0.025700705 -0.28705242 ;
	setAttr ".uvtk[427]" -type "float2" 0 -0.047340419 ;
	setAttr ".uvtk[428]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[429]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[430]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[431]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[432]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[433]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[434]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[435]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[436]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[437]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[438]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[439]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[440]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[441]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[442]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[443]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[444]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[445]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[446]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[447]" -type "float2" 0.26433542 -0.11991719 ;
	setAttr ".uvtk[448]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[449]" -type "float2" 0.26126674 -0.11991719 ;
	setAttr ".uvtk[450]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[451]" -type "float2" 0.2705721 0.069730811 ;
	setAttr ".uvtk[452]" -type "float2" 0.26126674 0.074021272 ;
	setAttr ".uvtk[453]" -type "float2" 0.2705721 -0.11991719 ;
	setAttr ".uvtk[454]" -type "float2" 0.26739588 0.069725685 ;
	setAttr ".uvtk[455]" -type "float2" 0.0071919612 -0.24228594 ;
	setAttr ".uvtk[456]" -type "float2" 0.013575733 -0.25881538 ;
	setAttr ".uvtk[457]" -type "float2" 0.013575733 -0.22575647 ;
	setAttr ".uvtk[458]" -type "float2" 0.030105175 -0.21937272 ;
	setAttr ".uvtk[459]" -type "float2" 0.046634618 -0.22575647 ;
	setAttr ".uvtk[460]" -type "float2" 0.053018454 -0.24228594 ;
	setAttr ".uvtk[461]" -type "float2" 0.046634618 -0.25881538 ;
	setAttr ".uvtk[462]" -type "float2" 0.030105116 -0.26519915 ;
	setAttr ".uvtk[463]" -type "float2" 0.0071919612 -0.24228594 ;
	setAttr ".uvtk[464]" -type "float2" 0.013575733 -0.25881538 ;
	setAttr ".uvtk[465]" -type "float2" 0.013575733 -0.22575647 ;
	setAttr ".uvtk[466]" -type "float2" 0.030105175 -0.21937272 ;
	setAttr ".uvtk[467]" -type "float2" 0.046634618 -0.22575647 ;
	setAttr ".uvtk[468]" -type "float2" 0.053018454 -0.24228594 ;
	setAttr ".uvtk[469]" -type "float2" 0.046634618 -0.25881538 ;
	setAttr ".uvtk[470]" -type "float2" 0.030105116 -0.26519915 ;
	setAttr ".uvtk[471]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[472]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[473]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[474]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[475]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[476]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[477]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[478]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[479]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[480]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[481]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[482]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[483]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[484]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[485]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[486]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[487]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[495]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[496]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[497]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[498]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[499]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[500]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[501]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[502]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[503]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[504]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[505]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[506]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[507]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[508]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[509]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[510]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[513]" -type "float2" -0.28390944 0.19997592 ;
	setAttr ".uvtk[514]" -type "float2" 0 -0.015937366 ;
	setAttr ".uvtk[515]" -type "float2" 0 -0.015937366 ;
	setAttr ".uvtk[516]" -type "float2" 0 -0.015937366 ;
	setAttr ".uvtk[517]" -type "float2" 0 -0.015937366 ;
	setAttr ".uvtk[518]" -type "float2" -0.33351302 0.19997592 ;
	setAttr ".uvtk[519]" -type "float2" -0.3335129 0.24434757 ;
	setAttr ".uvtk[520]" -type "float2" -0.33351302 0.24434757 ;
	setAttr ".uvtk[521]" -type "float2" -0.09990897 -0.20653008 ;
	setAttr ".uvtk[522]" -type "float2" -0.090816282 -0.20653008 ;
	setAttr ".uvtk[523]" -type "float2" -0.090816282 -0.22471516 ;
	setAttr ".uvtk[524]" -type "float2" -0.090816282 -0.23380773 ;
	setAttr ".uvtk[525]" -type "float2" -0.090816282 -0.24290022 ;
	setAttr ".uvtk[526]" -type "float2" -0.090816282 -0.25199279 ;
	setAttr ".uvtk[527]" -type "float2" -0.090816282 -0.26108536 ;
	setAttr ".uvtk[528]" -type "float2" -0.090816282 -0.2701779 ;
	setAttr ".uvtk[529]" -type "float2" -0.12725791 -0.20653008 ;
	setAttr ".uvtk[530]" -type "float2" -0.1454393 -0.20653008 ;
	setAttr ".uvtk[531]" -type "float2" -0.1454393 -0.22471516 ;
	setAttr ".uvtk[532]" -type "float2" -0.1454393 -0.23380785 ;
	setAttr ".uvtk[533]" -type "float2" -0.1454393 -0.24290034 ;
	setAttr ".uvtk[534]" -type "float2" -0.1454393 -0.25199279 ;
	setAttr ".uvtk[535]" -type "float2" -0.1454393 -0.26108536 ;
	setAttr ".uvtk[536]" -type "float2" -0.1454393 -0.2701779 ;
	setAttr ".uvtk[537]" -type "float2" -0.11817207 -0.22471516 ;
	setAttr ".uvtk[538]" -type "float2" -0.11817207 -0.23380773 ;
	setAttr ".uvtk[539]" -type "float2" -0.11817207 -0.24290034 ;
	setAttr ".uvtk[540]" -type "float2" -0.11817207 -0.25199279 ;
	setAttr ".uvtk[541]" -type "float2" -0.11817207 -0.26108536 ;
	setAttr ".uvtk[542]" -type "float2" -0.30044401 0.22216183 ;
	setAttr ".uvtk[543]" -type "float2" -0.11817207 -0.2701779 ;
	setAttr ".uvtk[544]" -type "float2" -0.10900214 -0.22471516 ;
	setAttr ".uvtk[545]" -type "float2" -0.10900249 -0.20653008 ;
	setAttr ".uvtk[546]" -type "float2" -0.10900214 -0.23380773 ;
	setAttr ".uvtk[547]" -type "float2" -0.10900214 -0.24290034 ;
	setAttr ".uvtk[548]" -type "float2" -0.10900214 -0.25199279 ;
	setAttr ".uvtk[549]" -type "float2" -0.10900214 -0.26108536 ;
	setAttr ".uvtk[550]" -type "float2" -0.30044401 0.19997592 ;
	setAttr ".uvtk[551]" -type "float2" -0.10900249 -0.2701779 ;
	setAttr ".uvtk[552]" -type "float2" -0.31697845 0.19997592 ;
	setAttr ".uvtk[553]" -type "float2" -0.31697845 0.22216183 ;
	setAttr ".uvtk[554]" -type "float2" -0.3335129 0.21107905 ;
	setAttr ".uvtk[555]" -type "float2" -0.33351302 0.21105854 ;
	setAttr ".uvtk[556]" -type "float2" -0.30044401 0.19997592 ;
	setAttr ".uvtk[557]" -type "float2" -0.30044401 0.22216183 ;
	setAttr ".uvtk[558]" -type "float2" -0.31697845 0.22216183 ;
	setAttr ".uvtk[559]" -type "float2" -0.31697845 0.19997592 ;
	setAttr ".uvtk[560]" -type "float2" 0 -0.015937366 ;
	setAttr ".uvtk[561]" -type "float2" 0 -0.015937366 ;
	setAttr ".uvtk[562]" -type "float2" -0.28390944 0.18888322 ;
	setAttr ".uvtk[563]" -type "float2" -0.31697845 0.18887535 ;
	setAttr ".uvtk[564]" -type "float2" -0.30044389 0.18887511 ;
	setAttr ".uvtk[565]" -type "float2" -0.30044401 0.17779019 ;
	setAttr ".uvtk[566]" -type "float2" -0.28390944 0.18888322 ;
	setAttr ".uvtk[567]" -type "float2" -0.30044401 0.1888912 ;
	setAttr ".uvtk[568]" -type "float2" -0.62344217 -0.074073136 ;
	setAttr ".uvtk[569]" -type "float2" -0.62344217 -0.074073136 ;
	setAttr ".uvtk[570]" -type "float2" -0.62344217 -0.074073136 ;
	setAttr ".uvtk[571]" -type "float2" -0.62344217 -0.074073166 ;
	setAttr ".uvtk[572]" -type "float2" -0.62344217 -0.074073136 ;
	setAttr ".uvtk[573]" -type "float2" -0.62344217 -0.074073166 ;
	setAttr ".uvtk[574]" -type "float2" -0.62344217 -0.074073166 ;
	setAttr ".uvtk[575]" -type "float2" -0.62344217 -0.074073166 ;
	setAttr ".uvtk[576]" -type "float2" -0.62344217 -0.074073166 ;
	setAttr ".uvtk[577]" -type "float2" -0.62344217 -0.074073136 ;
	setAttr ".uvtk[578]" -type "float2" -0.62344217 -0.074073136 ;
	setAttr ".uvtk[579]" -type "float2" -0.62344217 -0.074073166 ;
	setAttr ".uvtk[580]" -type "float2" -0.62344217 -0.074073136 ;
	setAttr ".uvtk[581]" -type "float2" -0.62344217 -0.074073136 ;
	setAttr ".uvtk[582]" -type "float2" -0.62344217 -0.074073136 ;
	setAttr ".uvtk[583]" -type "float2" -0.62344217 -0.074073166 ;
	setAttr ".uvtk[584]" -type "float2" -0.62344217 -0.074073166 ;
	setAttr ".uvtk[585]" -type "float2" -0.62344217 -0.074073166 ;
	setAttr ".uvtk[586]" -type "float2" -0.62344217 -0.074073166 ;
	setAttr ".uvtk[587]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[588]" -type "float2" -0.2978971 0.41765732 ;
	setAttr ".uvtk[589]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[590]" -type "float2" -0.29365277 0.4176572 ;
	setAttr ".uvtk[591]" -type "float2" -0.28649974 0.4176572 ;
	setAttr ".uvtk[592]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[593]" -type "float2" -0.29203284 0.4176572 ;
	setAttr ".uvtk[594]" -type "float2" -0.28182352 0.4176572 ;
	setAttr ".uvtk[595]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[596]" -type "float2" -0.28671587 0.41765726 ;
	setAttr ".uvtk[597]" -type "float2" -0.29789698 0.40979415 ;
	setAttr ".uvtk[598]" -type "float2" -0.29365265 0.40979415 ;
	setAttr ".uvtk[599]" -type "float2" -0.28649974 0.40979412 ;
	setAttr ".uvtk[600]" -type "float2" -0.29203284 0.40979412 ;
	setAttr ".uvtk[601]" -type "float2" -0.28182364 0.40979412 ;
	setAttr ".uvtk[602]" -type "float2" -0.62344217 -0.074073136 ;
	setAttr ".uvtk[603]" -type "float2" -0.28671575 0.40979415 ;
	setAttr ".uvtk[604]" -type "float2" -0.29154766 0.40487757 ;
	setAttr ".uvtk[605]" -type "float2" 0 -0.047340419 ;
	setAttr ".uvtk[610]" -type "float2" -0.33351302 0.18888316 ;
	setAttr ".uvtk[611]" -type "float2" 0 -0.015937367 ;
	setAttr ".uvtk[612]" -type "float2" -0.3335129 0.18888316 ;
	setAttr ".uvtk[613]" -type "float2" -0.28390944 0.19997592 ;
	setAttr ".uvtk[614]" -type "float2" 0 -0.015937366 ;
	setAttr ".uvtk[615]" -type "float2" 0 -0.015937366 ;
	setAttr ".uvtk[616]" -type "float2" -0.31697845 0.1888909 ;
	setAttr ".uvtk[617]" -type "float2" -0.30044401 0.17779019 ;
	setAttr ".uvtk[618]" -type "float2" 0 -0.015937366 ;
	setAttr ".uvtk[619]" -type "float2" 0 -0.015937366 ;
	setAttr ".uvtk[620]" -type "float2" -0.3335129 0.19997592 ;
	setAttr ".uvtk[621]" -type "float2" 0 -0.015937366 ;
	setAttr ".uvtk[622]" -type "float2" 0 -0.015937366 ;
	setAttr ".uvtk[623]" -type "float2" 0 -0.015937367 ;
	setAttr ".uvtk[624]" -type "float2" 0 -0.015937366 ;
	setAttr ".uvtk[625]" -type "float2" 0 -0.015937366 ;
	setAttr ".uvtk[632]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[633]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[634]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[635]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[636]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[637]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[638]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[639]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[640]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[641]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[642]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[643]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[644]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[645]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[662]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[663]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[664]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[665]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[666]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[667]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[668]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[669]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[670]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[671]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[672]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[673]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[674]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[675]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[676]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[677]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[678]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[679]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[680]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[681]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[682]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[683]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[684]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[685]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[686]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[687]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[688]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[689]" -type "float2" -0.020219157 0 ;
	setAttr ".uvtk[694]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[695]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[696]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[697]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[698]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[699]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[700]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[701]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[702]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[703]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[704]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[705]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[706]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[707]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[708]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[709]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[710]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[711]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[712]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[713]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[714]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[715]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[716]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[717]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[718]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[719]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[720]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[721]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[722]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[723]" -type "float2" -0.037549879 0 ;
	setAttr ".uvtk[724]" -type "float2" -0.28602493 0.38782048 ;
	setAttr ".uvtk[725]" -type "float2" -0.29365265 0.38782051 ;
	setAttr ".uvtk[726]" -type "float2" -0.28182375 0.38782051 ;
	setAttr ".uvtk[727]" -type "float2" -0.29203284 0.38782054 ;
	setAttr ".uvtk[728]" -type "float2" -0.28649962 0.38782048 ;
	setAttr ".uvtk[729]" -type "float2" -0.29789698 0.38782054 ;
	setAttr ".uvtk[730]" -type "float2" -0.28602493 0.38782048 ;
	setAttr ".uvtk[731]" -type "float2" -0.29365265 0.38782051 ;
	setAttr ".uvtk[732]" -type "float2" -0.28182375 0.38782051 ;
	setAttr ".uvtk[733]" -type "float2" -0.27873743 0.38782054 ;
	setAttr ".uvtk[734]" -type "float2" -0.28649962 0.38782048 ;
	setAttr ".uvtk[735]" -type "float2" -0.29789698 0.38782054 ;
	setAttr ".uvtk[737]" -type "float2" -0.28464305 0.39978102 ;
	setAttr ".uvtk[742]" -type "float2" -0.29365265 0.39978114 ;
	setAttr ".uvtk[744]" -type "float2" -0.29789698 0.39978114 ;
	setAttr ".uvtk[745]" -type "float2" -0.28649974 0.39978108 ;
	setAttr ".uvtk[746]" -type "float2" -0.29203272 0.39978102 ;
	setAttr ".uvtk[747]" -type "float2" -0.28182364 0.39978108 ;
	setAttr ".uvtk[748]" -type "float2" -0.27873743 0.37021264 ;
	setAttr ".uvtk[749]" -type "float2" -0.27873743 0.38782054 ;
	setAttr ".uvtk[750]" -type "float2" -0.27873743 0.35260475 ;
	setAttr ".uvtk[751]" -type "float2" -0.29203272 0.39978102 ;
	setAttr ".uvtk[752]" -type "float2" -0.29203284 0.37021261 ;
	setAttr ".uvtk[753]" -type "float2" -0.29203284 0.38782054 ;
	setAttr ".uvtk[754]" -type "float2" -0.29203284 0.35260475 ;
	setAttr ".uvtk[755]" -type "float2" -0.2787374 0.39978114 ;
	setAttr ".uvtk[756]" -type "float2" -0.2787374 0.40979415 ;
	setAttr ".uvtk[757]" -type "float2" -0.27873752 0.41765723 ;
	setAttr ".uvtk[758]" -type "float2" -0.29203284 0.40979412 ;
	setAttr ".uvtk[759]" -type "float2" -0.29203284 0.4176572 ;
createNode lambert -n "mat_refImg";
createNode shadingEngine -n "lambert4SG";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
createNode file -n "file1";
	setAttr ".ftn" -type "string" "C:/Users/dadiu/Desktop/DADIU_Mie/sketches/Bacon.jpg";
createNode place2dTexture -n "place2dTexture3";
	setAttr ".rf" 90;
createNode groupId -n "groupId6";
	setAttr ".ihi" 0;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 4 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 3 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 2 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "jnt_backMain_parentConstraint1.ctx" "jnt_backMain.tx";
connectAttr "jnt_backMain_parentConstraint1.cty" "jnt_backMain.ty";
connectAttr "jnt_backMain_parentConstraint1.ctz" "jnt_backMain.tz";
connectAttr "jnt_backMain_parentConstraint1.crx" "jnt_backMain.rx";
connectAttr "jnt_backMain_parentConstraint1.cry" "jnt_backMain.ry";
connectAttr "jnt_backMain_parentConstraint1.crz" "jnt_backMain.rz";
connectAttr "jnt_backMain.s" "jnt_backLower_01.is";
connectAttr "jnt_backLower_01_parentConstraint1.ctx" "jnt_backLower_01.tx";
connectAttr "jnt_backLower_01_parentConstraint1.cty" "jnt_backLower_01.ty";
connectAttr "jnt_backLower_01_parentConstraint1.ctz" "jnt_backLower_01.tz";
connectAttr "jnt_backLower_01_parentConstraint1.crx" "jnt_backLower_01.rx";
connectAttr "jnt_backLower_01_parentConstraint1.cry" "jnt_backLower_01.ry";
connectAttr "jnt_backLower_01_parentConstraint1.crz" "jnt_backLower_01.rz";
connectAttr "jnt_backLower_01.s" "jnt_backLower_02.is";
connectAttr "jnt_backLower_02_parentConstraint1.ctx" "jnt_backLower_02.tx";
connectAttr "jnt_backLower_02_parentConstraint1.cty" "jnt_backLower_02.ty";
connectAttr "jnt_backLower_02_parentConstraint1.ctz" "jnt_backLower_02.tz";
connectAttr "jnt_backLower_02_parentConstraint1.crx" "jnt_backLower_02.rx";
connectAttr "jnt_backLower_02_parentConstraint1.cry" "jnt_backLower_02.ry";
connectAttr "jnt_backLower_02_parentConstraint1.crz" "jnt_backLower_02.rz";
connectAttr "jnt_backLower_02.s" "jnt_r_back_hip.is";
connectAttr "jnt_r_back_hip_parentConstraint1.ctx" "jnt_r_back_hip.tx";
connectAttr "jnt_r_back_hip_parentConstraint1.cty" "jnt_r_back_hip.ty";
connectAttr "jnt_r_back_hip_parentConstraint1.ctz" "jnt_r_back_hip.tz";
connectAttr "jnt_r_back_hip_parentConstraint1.crx" "jnt_r_back_hip.rx";
connectAttr "jnt_r_back_hip_parentConstraint1.cry" "jnt_r_back_hip.ry";
connectAttr "jnt_r_back_hip_parentConstraint1.crz" "jnt_r_back_hip.rz";
connectAttr "jnt_r_back_hip.s" "jnt_r_back_thigh.is";
connectAttr "jnt_r_back_thigh_parentConstraint1.ctx" "jnt_r_back_thigh.tx";
connectAttr "jnt_r_back_thigh_parentConstraint1.cty" "jnt_r_back_thigh.ty";
connectAttr "jnt_r_back_thigh_parentConstraint1.ctz" "jnt_r_back_thigh.tz";
connectAttr "jnt_r_back_thigh_parentConstraint1.crx" "jnt_r_back_thigh.rx";
connectAttr "jnt_r_back_thigh_parentConstraint1.cry" "jnt_r_back_thigh.ry";
connectAttr "jnt_r_back_thigh_parentConstraint1.crz" "jnt_r_back_thigh.rz";
connectAttr "jnt_r_back_thigh.s" "jnt_r_back_knee.is";
connectAttr "jnt_r_back_knee_parentConstraint1.ctx" "jnt_r_back_knee.tx";
connectAttr "jnt_r_back_knee_parentConstraint1.cty" "jnt_r_back_knee.ty";
connectAttr "jnt_r_back_knee_parentConstraint1.ctz" "jnt_r_back_knee.tz";
connectAttr "jnt_r_back_knee_parentConstraint1.crx" "jnt_r_back_knee.rx";
connectAttr "jnt_r_back_knee_parentConstraint1.cry" "jnt_r_back_knee.ry";
connectAttr "jnt_r_back_knee_parentConstraint1.crz" "jnt_r_back_knee.rz";
connectAttr "jnt_r_back_knee.s" "jnt_r_back_sheen.is";
connectAttr "jnt_r_back_sheen_parentConstraint1.ctx" "jnt_r_back_sheen.tx";
connectAttr "jnt_r_back_sheen_parentConstraint1.cty" "jnt_r_back_sheen.ty";
connectAttr "jnt_r_back_sheen_parentConstraint1.ctz" "jnt_r_back_sheen.tz";
connectAttr "jnt_r_back_sheen_parentConstraint1.crx" "jnt_r_back_sheen.rx";
connectAttr "jnt_r_back_sheen_parentConstraint1.cry" "jnt_r_back_sheen.ry";
connectAttr "jnt_r_back_sheen_parentConstraint1.crz" "jnt_r_back_sheen.rz";
connectAttr "jnt_r_back_sheen.s" "jnt_r_back_foot.is";
connectAttr "jnt_r_back_foot_parentConstraint1.ctx" "jnt_r_back_foot.tx";
connectAttr "jnt_r_back_foot_parentConstraint1.cty" "jnt_r_back_foot.ty";
connectAttr "jnt_r_back_foot_parentConstraint1.ctz" "jnt_r_back_foot.tz";
connectAttr "jnt_r_back_foot_parentConstraint1.crx" "jnt_r_back_foot.rx";
connectAttr "jnt_r_back_foot_parentConstraint1.cry" "jnt_r_back_foot.ry";
connectAttr "jnt_r_back_foot_parentConstraint1.crz" "jnt_r_back_foot.rz";
connectAttr "jnt_r_back_foot.s" "jnt_r_back_footEnd.is";
connectAttr "jnt_r_back_footEnd_parentConstraint1.ctx" "jnt_r_back_footEnd.tx";
connectAttr "jnt_r_back_footEnd_parentConstraint1.cty" "jnt_r_back_footEnd.ty";
connectAttr "jnt_r_back_footEnd_parentConstraint1.ctz" "jnt_r_back_footEnd.tz";
connectAttr "jnt_r_back_footEnd_parentConstraint1.crx" "jnt_r_back_footEnd.rx";
connectAttr "jnt_r_back_footEnd_parentConstraint1.cry" "jnt_r_back_footEnd.ry";
connectAttr "jnt_r_back_footEnd_parentConstraint1.crz" "jnt_r_back_footEnd.rz";
connectAttr "jnt_r_back_footEnd.ro" "jnt_r_back_footEnd_parentConstraint1.cro";
connectAttr "jnt_r_back_footEnd.pim" "jnt_r_back_footEnd_parentConstraint1.cpim"
		;
connectAttr "jnt_r_back_footEnd.rp" "jnt_r_back_footEnd_parentConstraint1.crp";
connectAttr "jnt_r_back_footEnd.rpt" "jnt_r_back_footEnd_parentConstraint1.crt";
connectAttr "jnt_r_back_footEnd.jo" "jnt_r_back_footEnd_parentConstraint1.cjo";
connectAttr "ctrl_r_back_footEnd.t" "jnt_r_back_footEnd_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_r_back_footEnd.rp" "jnt_r_back_footEnd_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_r_back_footEnd.rpt" "jnt_r_back_footEnd_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_r_back_footEnd.r" "jnt_r_back_footEnd_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_r_back_footEnd.ro" "jnt_r_back_footEnd_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_r_back_footEnd.s" "jnt_r_back_footEnd_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_r_back_footEnd.pm" "jnt_r_back_footEnd_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_r_back_footEnd_parentConstraint1.w0" "jnt_r_back_footEnd_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_r_back_foot.ro" "jnt_r_back_foot_parentConstraint1.cro";
connectAttr "jnt_r_back_foot.pim" "jnt_r_back_foot_parentConstraint1.cpim";
connectAttr "jnt_r_back_foot.rp" "jnt_r_back_foot_parentConstraint1.crp";
connectAttr "jnt_r_back_foot.rpt" "jnt_r_back_foot_parentConstraint1.crt";
connectAttr "jnt_r_back_foot.jo" "jnt_r_back_foot_parentConstraint1.cjo";
connectAttr "ctrl_r_back_foot.t" "jnt_r_back_foot_parentConstraint1.tg[0].tt";
connectAttr "ctrl_r_back_foot.rp" "jnt_r_back_foot_parentConstraint1.tg[0].trp";
connectAttr "ctrl_r_back_foot.rpt" "jnt_r_back_foot_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_r_back_foot.r" "jnt_r_back_foot_parentConstraint1.tg[0].tr";
connectAttr "ctrl_r_back_foot.ro" "jnt_r_back_foot_parentConstraint1.tg[0].tro";
connectAttr "ctrl_r_back_foot.s" "jnt_r_back_foot_parentConstraint1.tg[0].ts";
connectAttr "ctrl_r_back_foot.pm" "jnt_r_back_foot_parentConstraint1.tg[0].tpm";
connectAttr "jnt_r_back_foot_parentConstraint1.w0" "jnt_r_back_foot_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_r_back_sheen.ro" "jnt_r_back_sheen_parentConstraint1.cro";
connectAttr "jnt_r_back_sheen.pim" "jnt_r_back_sheen_parentConstraint1.cpim";
connectAttr "jnt_r_back_sheen.rp" "jnt_r_back_sheen_parentConstraint1.crp";
connectAttr "jnt_r_back_sheen.rpt" "jnt_r_back_sheen_parentConstraint1.crt";
connectAttr "jnt_r_back_sheen.jo" "jnt_r_back_sheen_parentConstraint1.cjo";
connectAttr "ctrl_r_back_sheen.t" "jnt_r_back_sheen_parentConstraint1.tg[0].tt";
connectAttr "ctrl_r_back_sheen.rp" "jnt_r_back_sheen_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_r_back_sheen.rpt" "jnt_r_back_sheen_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_r_back_sheen.r" "jnt_r_back_sheen_parentConstraint1.tg[0].tr";
connectAttr "ctrl_r_back_sheen.ro" "jnt_r_back_sheen_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_r_back_sheen.s" "jnt_r_back_sheen_parentConstraint1.tg[0].ts";
connectAttr "ctrl_r_back_sheen.pm" "jnt_r_back_sheen_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_r_back_sheen_parentConstraint1.w0" "jnt_r_back_sheen_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_r_back_knee.ro" "jnt_r_back_knee_parentConstraint1.cro";
connectAttr "jnt_r_back_knee.pim" "jnt_r_back_knee_parentConstraint1.cpim";
connectAttr "jnt_r_back_knee.rp" "jnt_r_back_knee_parentConstraint1.crp";
connectAttr "jnt_r_back_knee.rpt" "jnt_r_back_knee_parentConstraint1.crt";
connectAttr "jnt_r_back_knee.jo" "jnt_r_back_knee_parentConstraint1.cjo";
connectAttr "ctrl_r_back_knee.t" "jnt_r_back_knee_parentConstraint1.tg[0].tt";
connectAttr "ctrl_r_back_knee.rp" "jnt_r_back_knee_parentConstraint1.tg[0].trp";
connectAttr "ctrl_r_back_knee.rpt" "jnt_r_back_knee_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_r_back_knee.r" "jnt_r_back_knee_parentConstraint1.tg[0].tr";
connectAttr "ctrl_r_back_knee.ro" "jnt_r_back_knee_parentConstraint1.tg[0].tro";
connectAttr "ctrl_r_back_knee.s" "jnt_r_back_knee_parentConstraint1.tg[0].ts";
connectAttr "ctrl_r_back_knee.pm" "jnt_r_back_knee_parentConstraint1.tg[0].tpm";
connectAttr "jnt_r_back_knee_parentConstraint1.w0" "jnt_r_back_knee_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_r_back_thigh.ro" "jnt_r_back_thigh_parentConstraint1.cro";
connectAttr "jnt_r_back_thigh.pim" "jnt_r_back_thigh_parentConstraint1.cpim";
connectAttr "jnt_r_back_thigh.rp" "jnt_r_back_thigh_parentConstraint1.crp";
connectAttr "jnt_r_back_thigh.rpt" "jnt_r_back_thigh_parentConstraint1.crt";
connectAttr "jnt_r_back_thigh.jo" "jnt_r_back_thigh_parentConstraint1.cjo";
connectAttr "ctrl_r_back_thigh.t" "jnt_r_back_thigh_parentConstraint1.tg[0].tt";
connectAttr "ctrl_r_back_thigh.rp" "jnt_r_back_thigh_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_r_back_thigh.rpt" "jnt_r_back_thigh_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_r_back_thigh.r" "jnt_r_back_thigh_parentConstraint1.tg[0].tr";
connectAttr "ctrl_r_back_thigh.ro" "jnt_r_back_thigh_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_r_back_thigh.s" "jnt_r_back_thigh_parentConstraint1.tg[0].ts";
connectAttr "ctrl_r_back_thigh.pm" "jnt_r_back_thigh_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_r_back_thigh_parentConstraint1.w0" "jnt_r_back_thigh_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_r_back_hip.ro" "jnt_r_back_hip_parentConstraint1.cro";
connectAttr "jnt_r_back_hip.pim" "jnt_r_back_hip_parentConstraint1.cpim";
connectAttr "jnt_r_back_hip.rp" "jnt_r_back_hip_parentConstraint1.crp";
connectAttr "jnt_r_back_hip.rpt" "jnt_r_back_hip_parentConstraint1.crt";
connectAttr "jnt_r_back_hip.jo" "jnt_r_back_hip_parentConstraint1.cjo";
connectAttr "ctrl_r_back_hip.t" "jnt_r_back_hip_parentConstraint1.tg[0].tt";
connectAttr "ctrl_r_back_hip.rp" "jnt_r_back_hip_parentConstraint1.tg[0].trp";
connectAttr "ctrl_r_back_hip.rpt" "jnt_r_back_hip_parentConstraint1.tg[0].trt";
connectAttr "ctrl_r_back_hip.r" "jnt_r_back_hip_parentConstraint1.tg[0].tr";
connectAttr "ctrl_r_back_hip.ro" "jnt_r_back_hip_parentConstraint1.tg[0].tro";
connectAttr "ctrl_r_back_hip.s" "jnt_r_back_hip_parentConstraint1.tg[0].ts";
connectAttr "ctrl_r_back_hip.pm" "jnt_r_back_hip_parentConstraint1.tg[0].tpm";
connectAttr "jnt_r_back_hip_parentConstraint1.w0" "jnt_r_back_hip_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_backLower_02.s" "jnt_l_back_hip.is";
connectAttr "jnt_l_back_hip_parentConstraint1.ctx" "jnt_l_back_hip.tx";
connectAttr "jnt_l_back_hip_parentConstraint1.cty" "jnt_l_back_hip.ty";
connectAttr "jnt_l_back_hip_parentConstraint1.ctz" "jnt_l_back_hip.tz";
connectAttr "jnt_l_back_hip_parentConstraint1.crx" "jnt_l_back_hip.rx";
connectAttr "jnt_l_back_hip_parentConstraint1.cry" "jnt_l_back_hip.ry";
connectAttr "jnt_l_back_hip_parentConstraint1.crz" "jnt_l_back_hip.rz";
connectAttr "jnt_l_back_hip.s" "jnt_l_back_thigh.is";
connectAttr "jnt_l_back_thigh_parentConstraint1.ctx" "jnt_l_back_thigh.tx";
connectAttr "jnt_l_back_thigh_parentConstraint1.cty" "jnt_l_back_thigh.ty";
connectAttr "jnt_l_back_thigh_parentConstraint1.ctz" "jnt_l_back_thigh.tz";
connectAttr "jnt_l_back_thigh_parentConstraint1.crx" "jnt_l_back_thigh.rx";
connectAttr "jnt_l_back_thigh_parentConstraint1.cry" "jnt_l_back_thigh.ry";
connectAttr "jnt_l_back_thigh_parentConstraint1.crz" "jnt_l_back_thigh.rz";
connectAttr "jnt_l_back_thigh.s" "jnt_l_back_knee.is";
connectAttr "jnt_l_back_knee_parentConstraint1.ctx" "jnt_l_back_knee.tx";
connectAttr "jnt_l_back_knee_parentConstraint1.cty" "jnt_l_back_knee.ty";
connectAttr "jnt_l_back_knee_parentConstraint1.ctz" "jnt_l_back_knee.tz";
connectAttr "jnt_l_back_knee_parentConstraint1.crx" "jnt_l_back_knee.rx";
connectAttr "jnt_l_back_knee_parentConstraint1.cry" "jnt_l_back_knee.ry";
connectAttr "jnt_l_back_knee_parentConstraint1.crz" "jnt_l_back_knee.rz";
connectAttr "jnt_l_back_knee.s" "jnt_l_back_sheen.is";
connectAttr "jnt_l_back_sheen_parentConstraint1.ctx" "jnt_l_back_sheen.tx";
connectAttr "jnt_l_back_sheen_parentConstraint1.cty" "jnt_l_back_sheen.ty";
connectAttr "jnt_l_back_sheen_parentConstraint1.ctz" "jnt_l_back_sheen.tz";
connectAttr "jnt_l_back_sheen_parentConstraint1.crx" "jnt_l_back_sheen.rx";
connectAttr "jnt_l_back_sheen_parentConstraint1.cry" "jnt_l_back_sheen.ry";
connectAttr "jnt_l_back_sheen_parentConstraint1.crz" "jnt_l_back_sheen.rz";
connectAttr "jnt_l_back_sheen.s" "jnt_l_back_foot.is";
connectAttr "jnt_l_back_foot_parentConstraint1.ctx" "jnt_l_back_foot.tx";
connectAttr "jnt_l_back_foot_parentConstraint1.cty" "jnt_l_back_foot.ty";
connectAttr "jnt_l_back_foot_parentConstraint1.ctz" "jnt_l_back_foot.tz";
connectAttr "jnt_l_back_foot_parentConstraint1.crx" "jnt_l_back_foot.rx";
connectAttr "jnt_l_back_foot_parentConstraint1.cry" "jnt_l_back_foot.ry";
connectAttr "jnt_l_back_foot_parentConstraint1.crz" "jnt_l_back_foot.rz";
connectAttr "jnt_l_back_foot.s" "jnt_l_back_footEnd.is";
connectAttr "jnt_l_back_footEnd_parentConstraint1.ctx" "jnt_l_back_footEnd.tx";
connectAttr "jnt_l_back_footEnd_parentConstraint1.cty" "jnt_l_back_footEnd.ty";
connectAttr "jnt_l_back_footEnd_parentConstraint1.ctz" "jnt_l_back_footEnd.tz";
connectAttr "jnt_l_back_footEnd_parentConstraint1.crx" "jnt_l_back_footEnd.rx";
connectAttr "jnt_l_back_footEnd_parentConstraint1.cry" "jnt_l_back_footEnd.ry";
connectAttr "jnt_l_back_footEnd_parentConstraint1.crz" "jnt_l_back_footEnd.rz";
connectAttr "jnt_l_back_footEnd.ro" "jnt_l_back_footEnd_parentConstraint1.cro";
connectAttr "jnt_l_back_footEnd.pim" "jnt_l_back_footEnd_parentConstraint1.cpim"
		;
connectAttr "jnt_l_back_footEnd.rp" "jnt_l_back_footEnd_parentConstraint1.crp";
connectAttr "jnt_l_back_footEnd.rpt" "jnt_l_back_footEnd_parentConstraint1.crt";
connectAttr "jnt_l_back_footEnd.jo" "jnt_l_back_footEnd_parentConstraint1.cjo";
connectAttr "ctrl_l_back_footEnd.t" "jnt_l_back_footEnd_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_l_back_footEnd.rp" "jnt_l_back_footEnd_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_l_back_footEnd.rpt" "jnt_l_back_footEnd_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_l_back_footEnd.r" "jnt_l_back_footEnd_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_l_back_footEnd.ro" "jnt_l_back_footEnd_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_l_back_footEnd.s" "jnt_l_back_footEnd_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_l_back_footEnd.pm" "jnt_l_back_footEnd_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_l_back_footEnd_parentConstraint1.w0" "jnt_l_back_footEnd_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_l_back_foot.ro" "jnt_l_back_foot_parentConstraint1.cro";
connectAttr "jnt_l_back_foot.pim" "jnt_l_back_foot_parentConstraint1.cpim";
connectAttr "jnt_l_back_foot.rp" "jnt_l_back_foot_parentConstraint1.crp";
connectAttr "jnt_l_back_foot.rpt" "jnt_l_back_foot_parentConstraint1.crt";
connectAttr "jnt_l_back_foot.jo" "jnt_l_back_foot_parentConstraint1.cjo";
connectAttr "ctrl_l_back_foot.t" "jnt_l_back_foot_parentConstraint1.tg[0].tt";
connectAttr "ctrl_l_back_foot.rp" "jnt_l_back_foot_parentConstraint1.tg[0].trp";
connectAttr "ctrl_l_back_foot.rpt" "jnt_l_back_foot_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_l_back_foot.r" "jnt_l_back_foot_parentConstraint1.tg[0].tr";
connectAttr "ctrl_l_back_foot.ro" "jnt_l_back_foot_parentConstraint1.tg[0].tro";
connectAttr "ctrl_l_back_foot.s" "jnt_l_back_foot_parentConstraint1.tg[0].ts";
connectAttr "ctrl_l_back_foot.pm" "jnt_l_back_foot_parentConstraint1.tg[0].tpm";
connectAttr "jnt_l_back_foot_parentConstraint1.w0" "jnt_l_back_foot_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_l_back_sheen.ro" "jnt_l_back_sheen_parentConstraint1.cro";
connectAttr "jnt_l_back_sheen.pim" "jnt_l_back_sheen_parentConstraint1.cpim";
connectAttr "jnt_l_back_sheen.rp" "jnt_l_back_sheen_parentConstraint1.crp";
connectAttr "jnt_l_back_sheen.rpt" "jnt_l_back_sheen_parentConstraint1.crt";
connectAttr "jnt_l_back_sheen.jo" "jnt_l_back_sheen_parentConstraint1.cjo";
connectAttr "ctrl_l_back_sheen.t" "jnt_l_back_sheen_parentConstraint1.tg[0].tt";
connectAttr "ctrl_l_back_sheen.rp" "jnt_l_back_sheen_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_l_back_sheen.rpt" "jnt_l_back_sheen_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_l_back_sheen.r" "jnt_l_back_sheen_parentConstraint1.tg[0].tr";
connectAttr "ctrl_l_back_sheen.ro" "jnt_l_back_sheen_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_l_back_sheen.s" "jnt_l_back_sheen_parentConstraint1.tg[0].ts";
connectAttr "ctrl_l_back_sheen.pm" "jnt_l_back_sheen_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_l_back_sheen_parentConstraint1.w0" "jnt_l_back_sheen_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_l_back_knee.ro" "jnt_l_back_knee_parentConstraint1.cro";
connectAttr "jnt_l_back_knee.pim" "jnt_l_back_knee_parentConstraint1.cpim";
connectAttr "jnt_l_back_knee.rp" "jnt_l_back_knee_parentConstraint1.crp";
connectAttr "jnt_l_back_knee.rpt" "jnt_l_back_knee_parentConstraint1.crt";
connectAttr "jnt_l_back_knee.jo" "jnt_l_back_knee_parentConstraint1.cjo";
connectAttr "ctrl_l_back_knee.t" "jnt_l_back_knee_parentConstraint1.tg[0].tt";
connectAttr "ctrl_l_back_knee.rp" "jnt_l_back_knee_parentConstraint1.tg[0].trp";
connectAttr "ctrl_l_back_knee.rpt" "jnt_l_back_knee_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_l_back_knee.r" "jnt_l_back_knee_parentConstraint1.tg[0].tr";
connectAttr "ctrl_l_back_knee.ro" "jnt_l_back_knee_parentConstraint1.tg[0].tro";
connectAttr "ctrl_l_back_knee.s" "jnt_l_back_knee_parentConstraint1.tg[0].ts";
connectAttr "ctrl_l_back_knee.pm" "jnt_l_back_knee_parentConstraint1.tg[0].tpm";
connectAttr "jnt_l_back_knee_parentConstraint1.w0" "jnt_l_back_knee_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_l_back_thigh.ro" "jnt_l_back_thigh_parentConstraint1.cro";
connectAttr "jnt_l_back_thigh.pim" "jnt_l_back_thigh_parentConstraint1.cpim";
connectAttr "jnt_l_back_thigh.rp" "jnt_l_back_thigh_parentConstraint1.crp";
connectAttr "jnt_l_back_thigh.rpt" "jnt_l_back_thigh_parentConstraint1.crt";
connectAttr "jnt_l_back_thigh.jo" "jnt_l_back_thigh_parentConstraint1.cjo";
connectAttr "ctrl_l_back_thigh.t" "jnt_l_back_thigh_parentConstraint1.tg[0].tt";
connectAttr "ctrl_l_back_thigh.rp" "jnt_l_back_thigh_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_l_back_thigh.rpt" "jnt_l_back_thigh_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_l_back_thigh.r" "jnt_l_back_thigh_parentConstraint1.tg[0].tr";
connectAttr "ctrl_l_back_thigh.ro" "jnt_l_back_thigh_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_l_back_thigh.s" "jnt_l_back_thigh_parentConstraint1.tg[0].ts";
connectAttr "ctrl_l_back_thigh.pm" "jnt_l_back_thigh_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_l_back_thigh_parentConstraint1.w0" "jnt_l_back_thigh_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_l_back_hip.ro" "jnt_l_back_hip_parentConstraint1.cro";
connectAttr "jnt_l_back_hip.pim" "jnt_l_back_hip_parentConstraint1.cpim";
connectAttr "jnt_l_back_hip.rp" "jnt_l_back_hip_parentConstraint1.crp";
connectAttr "jnt_l_back_hip.rpt" "jnt_l_back_hip_parentConstraint1.crt";
connectAttr "jnt_l_back_hip.jo" "jnt_l_back_hip_parentConstraint1.cjo";
connectAttr "ctrl_l_back_hip.t" "jnt_l_back_hip_parentConstraint1.tg[0].tt";
connectAttr "ctrl_l_back_hip.rp" "jnt_l_back_hip_parentConstraint1.tg[0].trp";
connectAttr "ctrl_l_back_hip.rpt" "jnt_l_back_hip_parentConstraint1.tg[0].trt";
connectAttr "ctrl_l_back_hip.r" "jnt_l_back_hip_parentConstraint1.tg[0].tr";
connectAttr "ctrl_l_back_hip.ro" "jnt_l_back_hip_parentConstraint1.tg[0].tro";
connectAttr "ctrl_l_back_hip.s" "jnt_l_back_hip_parentConstraint1.tg[0].ts";
connectAttr "ctrl_l_back_hip.pm" "jnt_l_back_hip_parentConstraint1.tg[0].tpm";
connectAttr "jnt_l_back_hip_parentConstraint1.w0" "jnt_l_back_hip_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_backLower_02.s" "jnt_tail_01.is";
connectAttr "jnt_tail_01_parentConstraint1.ctx" "jnt_tail_01.tx";
connectAttr "jnt_tail_01_parentConstraint1.cty" "jnt_tail_01.ty";
connectAttr "jnt_tail_01_parentConstraint1.ctz" "jnt_tail_01.tz";
connectAttr "jnt_tail_01_parentConstraint1.crx" "jnt_tail_01.rx";
connectAttr "jnt_tail_01_parentConstraint1.cry" "jnt_tail_01.ry";
connectAttr "jnt_tail_01_parentConstraint1.crz" "jnt_tail_01.rz";
connectAttr "jnt_tail_01.s" "jnt_tail_02.is";
connectAttr "jnt_tail_02_parentConstraint1.ctx" "jnt_tail_02.tx";
connectAttr "jnt_tail_02_parentConstraint1.cty" "jnt_tail_02.ty";
connectAttr "jnt_tail_02_parentConstraint1.ctz" "jnt_tail_02.tz";
connectAttr "jnt_tail_02_parentConstraint1.crx" "jnt_tail_02.rx";
connectAttr "jnt_tail_02_parentConstraint1.cry" "jnt_tail_02.ry";
connectAttr "jnt_tail_02_parentConstraint1.crz" "jnt_tail_02.rz";
connectAttr "jnt_tail_02.s" "jnt_tail_03.is";
connectAttr "jnt_tail_03_parentConstraint1.ctx" "jnt_tail_03.tx";
connectAttr "jnt_tail_03_parentConstraint1.cty" "jnt_tail_03.ty";
connectAttr "jnt_tail_03_parentConstraint1.ctz" "jnt_tail_03.tz";
connectAttr "jnt_tail_03_parentConstraint1.crx" "jnt_tail_03.rx";
connectAttr "jnt_tail_03_parentConstraint1.cry" "jnt_tail_03.ry";
connectAttr "jnt_tail_03_parentConstraint1.crz" "jnt_tail_03.rz";
connectAttr "jnt_tail_03.s" "jnt_tail_04.is";
connectAttr "jnt_tail_04_parentConstraint1.ctx" "jnt_tail_04.tx";
connectAttr "jnt_tail_04_parentConstraint1.cty" "jnt_tail_04.ty";
connectAttr "jnt_tail_04_parentConstraint1.ctz" "jnt_tail_04.tz";
connectAttr "jnt_tail_04_parentConstraint1.crx" "jnt_tail_04.rx";
connectAttr "jnt_tail_04_parentConstraint1.cry" "jnt_tail_04.ry";
connectAttr "jnt_tail_04_parentConstraint1.crz" "jnt_tail_04.rz";
connectAttr "jnt_tail_04.ro" "jnt_tail_04_parentConstraint1.cro";
connectAttr "jnt_tail_04.pim" "jnt_tail_04_parentConstraint1.cpim";
connectAttr "jnt_tail_04.rp" "jnt_tail_04_parentConstraint1.crp";
connectAttr "jnt_tail_04.rpt" "jnt_tail_04_parentConstraint1.crt";
connectAttr "jnt_tail_04.jo" "jnt_tail_04_parentConstraint1.cjo";
connectAttr "ctrl_tail_04.t" "jnt_tail_04_parentConstraint1.tg[0].tt";
connectAttr "ctrl_tail_04.rp" "jnt_tail_04_parentConstraint1.tg[0].trp";
connectAttr "ctrl_tail_04.rpt" "jnt_tail_04_parentConstraint1.tg[0].trt";
connectAttr "ctrl_tail_04.r" "jnt_tail_04_parentConstraint1.tg[0].tr";
connectAttr "ctrl_tail_04.ro" "jnt_tail_04_parentConstraint1.tg[0].tro";
connectAttr "ctrl_tail_04.s" "jnt_tail_04_parentConstraint1.tg[0].ts";
connectAttr "ctrl_tail_04.pm" "jnt_tail_04_parentConstraint1.tg[0].tpm";
connectAttr "jnt_tail_04_parentConstraint1.w0" "jnt_tail_04_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_tail_03.ro" "jnt_tail_03_parentConstraint1.cro";
connectAttr "jnt_tail_03.pim" "jnt_tail_03_parentConstraint1.cpim";
connectAttr "jnt_tail_03.rp" "jnt_tail_03_parentConstraint1.crp";
connectAttr "jnt_tail_03.rpt" "jnt_tail_03_parentConstraint1.crt";
connectAttr "jnt_tail_03.jo" "jnt_tail_03_parentConstraint1.cjo";
connectAttr "ctrl_tail_03.t" "jnt_tail_03_parentConstraint1.tg[0].tt";
connectAttr "ctrl_tail_03.rp" "jnt_tail_03_parentConstraint1.tg[0].trp";
connectAttr "ctrl_tail_03.rpt" "jnt_tail_03_parentConstraint1.tg[0].trt";
connectAttr "ctrl_tail_03.r" "jnt_tail_03_parentConstraint1.tg[0].tr";
connectAttr "ctrl_tail_03.ro" "jnt_tail_03_parentConstraint1.tg[0].tro";
connectAttr "ctrl_tail_03.s" "jnt_tail_03_parentConstraint1.tg[0].ts";
connectAttr "ctrl_tail_03.pm" "jnt_tail_03_parentConstraint1.tg[0].tpm";
connectAttr "jnt_tail_03_parentConstraint1.w0" "jnt_tail_03_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_tail_02.ro" "jnt_tail_02_parentConstraint1.cro";
connectAttr "jnt_tail_02.pim" "jnt_tail_02_parentConstraint1.cpim";
connectAttr "jnt_tail_02.rp" "jnt_tail_02_parentConstraint1.crp";
connectAttr "jnt_tail_02.rpt" "jnt_tail_02_parentConstraint1.crt";
connectAttr "jnt_tail_02.jo" "jnt_tail_02_parentConstraint1.cjo";
connectAttr "ctrl_tail_02.t" "jnt_tail_02_parentConstraint1.tg[0].tt";
connectAttr "ctrl_tail_02.rp" "jnt_tail_02_parentConstraint1.tg[0].trp";
connectAttr "ctrl_tail_02.rpt" "jnt_tail_02_parentConstraint1.tg[0].trt";
connectAttr "ctrl_tail_02.r" "jnt_tail_02_parentConstraint1.tg[0].tr";
connectAttr "ctrl_tail_02.ro" "jnt_tail_02_parentConstraint1.tg[0].tro";
connectAttr "ctrl_tail_02.s" "jnt_tail_02_parentConstraint1.tg[0].ts";
connectAttr "ctrl_tail_02.pm" "jnt_tail_02_parentConstraint1.tg[0].tpm";
connectAttr "jnt_tail_02_parentConstraint1.w0" "jnt_tail_02_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_tail_01.ro" "jnt_tail_01_parentConstraint1.cro";
connectAttr "jnt_tail_01.pim" "jnt_tail_01_parentConstraint1.cpim";
connectAttr "jnt_tail_01.rp" "jnt_tail_01_parentConstraint1.crp";
connectAttr "jnt_tail_01.rpt" "jnt_tail_01_parentConstraint1.crt";
connectAttr "jnt_tail_01.jo" "jnt_tail_01_parentConstraint1.cjo";
connectAttr "ctrl_tail_01.t" "jnt_tail_01_parentConstraint1.tg[0].tt";
connectAttr "ctrl_tail_01.rp" "jnt_tail_01_parentConstraint1.tg[0].trp";
connectAttr "ctrl_tail_01.rpt" "jnt_tail_01_parentConstraint1.tg[0].trt";
connectAttr "ctrl_tail_01.r" "jnt_tail_01_parentConstraint1.tg[0].tr";
connectAttr "ctrl_tail_01.ro" "jnt_tail_01_parentConstraint1.tg[0].tro";
connectAttr "ctrl_tail_01.s" "jnt_tail_01_parentConstraint1.tg[0].ts";
connectAttr "ctrl_tail_01.pm" "jnt_tail_01_parentConstraint1.tg[0].tpm";
connectAttr "jnt_tail_01_parentConstraint1.w0" "jnt_tail_01_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_backLower_02.ro" "jnt_backLower_02_parentConstraint1.cro";
connectAttr "jnt_backLower_02.pim" "jnt_backLower_02_parentConstraint1.cpim";
connectAttr "jnt_backLower_02.rp" "jnt_backLower_02_parentConstraint1.crp";
connectAttr "jnt_backLower_02.rpt" "jnt_backLower_02_parentConstraint1.crt";
connectAttr "jnt_backLower_02.jo" "jnt_backLower_02_parentConstraint1.cjo";
connectAttr "ctrl_backLower_02.t" "jnt_backLower_02_parentConstraint1.tg[0].tt";
connectAttr "ctrl_backLower_02.rp" "jnt_backLower_02_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_backLower_02.rpt" "jnt_backLower_02_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_backLower_02.r" "jnt_backLower_02_parentConstraint1.tg[0].tr";
connectAttr "ctrl_backLower_02.ro" "jnt_backLower_02_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_backLower_02.s" "jnt_backLower_02_parentConstraint1.tg[0].ts";
connectAttr "ctrl_backLower_02.pm" "jnt_backLower_02_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_backLower_02_parentConstraint1.w0" "jnt_backLower_02_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_backLower_01.ro" "jnt_backLower_01_parentConstraint1.cro";
connectAttr "jnt_backLower_01.pim" "jnt_backLower_01_parentConstraint1.cpim";
connectAttr "jnt_backLower_01.rp" "jnt_backLower_01_parentConstraint1.crp";
connectAttr "jnt_backLower_01.rpt" "jnt_backLower_01_parentConstraint1.crt";
connectAttr "jnt_backLower_01.jo" "jnt_backLower_01_parentConstraint1.cjo";
connectAttr "ctrl_backLower_01.t" "jnt_backLower_01_parentConstraint1.tg[0].tt";
connectAttr "ctrl_backLower_01.rp" "jnt_backLower_01_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_backLower_01.rpt" "jnt_backLower_01_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_backLower_01.r" "jnt_backLower_01_parentConstraint1.tg[0].tr";
connectAttr "ctrl_backLower_01.ro" "jnt_backLower_01_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_backLower_01.s" "jnt_backLower_01_parentConstraint1.tg[0].ts";
connectAttr "ctrl_backLower_01.pm" "jnt_backLower_01_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_backLower_01_parentConstraint1.w0" "jnt_backLower_01_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_backMain.s" "jnt_backFront_01.is";
connectAttr "jnt_backFront_01_parentConstraint1.ctx" "jnt_backFront_01.tx";
connectAttr "jnt_backFront_01_parentConstraint1.cty" "jnt_backFront_01.ty";
connectAttr "jnt_backFront_01_parentConstraint1.ctz" "jnt_backFront_01.tz";
connectAttr "jnt_backFront_01_parentConstraint1.crx" "jnt_backFront_01.rx";
connectAttr "jnt_backFront_01_parentConstraint1.cry" "jnt_backFront_01.ry";
connectAttr "jnt_backFront_01_parentConstraint1.crz" "jnt_backFront_01.rz";
connectAttr "jnt_backFront_01.s" "jnt_head_01.is";
connectAttr "jnt_head_01_parentConstraint1.ctx" "jnt_head_01.tx";
connectAttr "jnt_head_01_parentConstraint1.cty" "jnt_head_01.ty";
connectAttr "jnt_head_01_parentConstraint1.ctz" "jnt_head_01.tz";
connectAttr "jnt_head_01_parentConstraint1.crx" "jnt_head_01.rx";
connectAttr "jnt_head_01_parentConstraint1.cry" "jnt_head_01.ry";
connectAttr "jnt_head_01_parentConstraint1.crz" "jnt_head_01.rz";
connectAttr "jnt_head_01.s" "jnt_head_02.is";
connectAttr "jnt_head_02_parentConstraint1.ctx" "jnt_head_02.tx";
connectAttr "jnt_head_02_parentConstraint1.cty" "jnt_head_02.ty";
connectAttr "jnt_head_02_parentConstraint1.ctz" "jnt_head_02.tz";
connectAttr "jnt_head_02_parentConstraint1.crx" "jnt_head_02.rx";
connectAttr "jnt_head_02_parentConstraint1.cry" "jnt_head_02.ry";
connectAttr "jnt_head_02_parentConstraint1.crz" "jnt_head_02.rz";
connectAttr "jnt_head_02.s" "jnt_nose_01.is";
connectAttr "jnt_nose_01_parentConstraint1.ctx" "jnt_nose_01.tx";
connectAttr "jnt_nose_01_parentConstraint1.cty" "jnt_nose_01.ty";
connectAttr "jnt_nose_01_parentConstraint1.ctz" "jnt_nose_01.tz";
connectAttr "jnt_nose_01_parentConstraint1.crx" "jnt_nose_01.rx";
connectAttr "jnt_nose_01_parentConstraint1.cry" "jnt_nose_01.ry";
connectAttr "jnt_nose_01_parentConstraint1.crz" "jnt_nose_01.rz";
connectAttr "jnt_nose_01.s" "jnt_nose_02.is";
connectAttr "jnt_nose_02_parentConstraint1.ctx" "jnt_nose_02.tx";
connectAttr "jnt_nose_02_parentConstraint1.cty" "jnt_nose_02.ty";
connectAttr "jnt_nose_02_parentConstraint1.ctz" "jnt_nose_02.tz";
connectAttr "jnt_nose_02_parentConstraint1.crx" "jnt_nose_02.rx";
connectAttr "jnt_nose_02_parentConstraint1.cry" "jnt_nose_02.ry";
connectAttr "jnt_nose_02_parentConstraint1.crz" "jnt_nose_02.rz";
connectAttr "jnt_nose_02.s" "jnt_noseEnd.is";
connectAttr "jnt_noseEnd_parentConstraint1.ctx" "jnt_noseEnd.tx";
connectAttr "jnt_noseEnd_parentConstraint1.cty" "jnt_noseEnd.ty";
connectAttr "jnt_noseEnd_parentConstraint1.ctz" "jnt_noseEnd.tz";
connectAttr "jnt_noseEnd_parentConstraint1.crx" "jnt_noseEnd.rx";
connectAttr "jnt_noseEnd_parentConstraint1.cry" "jnt_noseEnd.ry";
connectAttr "jnt_noseEnd_parentConstraint1.crz" "jnt_noseEnd.rz";
connectAttr "jnt_noseEnd.ro" "jnt_noseEnd_parentConstraint1.cro";
connectAttr "jnt_noseEnd.pim" "jnt_noseEnd_parentConstraint1.cpim";
connectAttr "jnt_noseEnd.rp" "jnt_noseEnd_parentConstraint1.crp";
connectAttr "jnt_noseEnd.rpt" "jnt_noseEnd_parentConstraint1.crt";
connectAttr "jnt_noseEnd.jo" "jnt_noseEnd_parentConstraint1.cjo";
connectAttr "ctrl_noseEnd.t" "jnt_noseEnd_parentConstraint1.tg[0].tt";
connectAttr "ctrl_noseEnd.rp" "jnt_noseEnd_parentConstraint1.tg[0].trp";
connectAttr "ctrl_noseEnd.rpt" "jnt_noseEnd_parentConstraint1.tg[0].trt";
connectAttr "ctrl_noseEnd.r" "jnt_noseEnd_parentConstraint1.tg[0].tr";
connectAttr "ctrl_noseEnd.ro" "jnt_noseEnd_parentConstraint1.tg[0].tro";
connectAttr "ctrl_noseEnd.s" "jnt_noseEnd_parentConstraint1.tg[0].ts";
connectAttr "ctrl_noseEnd.pm" "jnt_noseEnd_parentConstraint1.tg[0].tpm";
connectAttr "jnt_noseEnd_parentConstraint1.w0" "jnt_noseEnd_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_nose_02.ro" "jnt_nose_02_parentConstraint1.cro";
connectAttr "jnt_nose_02.pim" "jnt_nose_02_parentConstraint1.cpim";
connectAttr "jnt_nose_02.rp" "jnt_nose_02_parentConstraint1.crp";
connectAttr "jnt_nose_02.rpt" "jnt_nose_02_parentConstraint1.crt";
connectAttr "jnt_nose_02.jo" "jnt_nose_02_parentConstraint1.cjo";
connectAttr "ctrl_nose_02.t" "jnt_nose_02_parentConstraint1.tg[0].tt";
connectAttr "ctrl_nose_02.rp" "jnt_nose_02_parentConstraint1.tg[0].trp";
connectAttr "ctrl_nose_02.rpt" "jnt_nose_02_parentConstraint1.tg[0].trt";
connectAttr "ctrl_nose_02.r" "jnt_nose_02_parentConstraint1.tg[0].tr";
connectAttr "ctrl_nose_02.ro" "jnt_nose_02_parentConstraint1.tg[0].tro";
connectAttr "ctrl_nose_02.s" "jnt_nose_02_parentConstraint1.tg[0].ts";
connectAttr "ctrl_nose_02.pm" "jnt_nose_02_parentConstraint1.tg[0].tpm";
connectAttr "jnt_nose_02_parentConstraint1.w0" "jnt_nose_02_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_nose_01.ro" "jnt_nose_01_parentConstraint1.cro";
connectAttr "jnt_nose_01.pim" "jnt_nose_01_parentConstraint1.cpim";
connectAttr "jnt_nose_01.rp" "jnt_nose_01_parentConstraint1.crp";
connectAttr "jnt_nose_01.rpt" "jnt_nose_01_parentConstraint1.crt";
connectAttr "jnt_nose_01.jo" "jnt_nose_01_parentConstraint1.cjo";
connectAttr "ctrl_nose_01.t" "jnt_nose_01_parentConstraint1.tg[0].tt";
connectAttr "ctrl_nose_01.rp" "jnt_nose_01_parentConstraint1.tg[0].trp";
connectAttr "ctrl_nose_01.rpt" "jnt_nose_01_parentConstraint1.tg[0].trt";
connectAttr "ctrl_nose_01.r" "jnt_nose_01_parentConstraint1.tg[0].tr";
connectAttr "ctrl_nose_01.ro" "jnt_nose_01_parentConstraint1.tg[0].tro";
connectAttr "ctrl_nose_01.s" "jnt_nose_01_parentConstraint1.tg[0].ts";
connectAttr "ctrl_nose_01.pm" "jnt_nose_01_parentConstraint1.tg[0].tpm";
connectAttr "jnt_nose_01_parentConstraint1.w0" "jnt_nose_01_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_head_02.ro" "jnt_head_02_parentConstraint1.cro";
connectAttr "jnt_head_02.pim" "jnt_head_02_parentConstraint1.cpim";
connectAttr "jnt_head_02.rp" "jnt_head_02_parentConstraint1.crp";
connectAttr "jnt_head_02.rpt" "jnt_head_02_parentConstraint1.crt";
connectAttr "jnt_head_02.jo" "jnt_head_02_parentConstraint1.cjo";
connectAttr "ctrl_head_02.t" "jnt_head_02_parentConstraint1.tg[0].tt";
connectAttr "ctrl_head_02.rp" "jnt_head_02_parentConstraint1.tg[0].trp";
connectAttr "ctrl_head_02.rpt" "jnt_head_02_parentConstraint1.tg[0].trt";
connectAttr "ctrl_head_02.r" "jnt_head_02_parentConstraint1.tg[0].tr";
connectAttr "ctrl_head_02.ro" "jnt_head_02_parentConstraint1.tg[0].tro";
connectAttr "ctrl_head_02.s" "jnt_head_02_parentConstraint1.tg[0].ts";
connectAttr "ctrl_head_02.pm" "jnt_head_02_parentConstraint1.tg[0].tpm";
connectAttr "jnt_head_02_parentConstraint1.w0" "jnt_head_02_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_head_02.s" "jnt_l_eyeLash.is";
connectAttr "jnt_l_eyeLash_parentConstraint1.ctx" "jnt_l_eyeLash.tx";
connectAttr "jnt_l_eyeLash_parentConstraint1.cty" "jnt_l_eyeLash.ty";
connectAttr "jnt_l_eyeLash_parentConstraint1.ctz" "jnt_l_eyeLash.tz";
connectAttr "jnt_l_eyeLash_parentConstraint1.crx" "jnt_l_eyeLash.rx";
connectAttr "jnt_l_eyeLash_parentConstraint1.cry" "jnt_l_eyeLash.ry";
connectAttr "jnt_l_eyeLash_parentConstraint1.crz" "jnt_l_eyeLash.rz";
connectAttr "jnt_l_eyeLash.ro" "jnt_l_eyeLash_parentConstraint1.cro";
connectAttr "jnt_l_eyeLash.pim" "jnt_l_eyeLash_parentConstraint1.cpim";
connectAttr "jnt_l_eyeLash.rp" "jnt_l_eyeLash_parentConstraint1.crp";
connectAttr "jnt_l_eyeLash.rpt" "jnt_l_eyeLash_parentConstraint1.crt";
connectAttr "jnt_l_eyeLash.jo" "jnt_l_eyeLash_parentConstraint1.cjo";
connectAttr "ctrl_l_eyeLash.t" "jnt_l_eyeLash_parentConstraint1.tg[0].tt";
connectAttr "ctrl_l_eyeLash.rp" "jnt_l_eyeLash_parentConstraint1.tg[0].trp";
connectAttr "ctrl_l_eyeLash.rpt" "jnt_l_eyeLash_parentConstraint1.tg[0].trt";
connectAttr "ctrl_l_eyeLash.r" "jnt_l_eyeLash_parentConstraint1.tg[0].tr";
connectAttr "ctrl_l_eyeLash.ro" "jnt_l_eyeLash_parentConstraint1.tg[0].tro";
connectAttr "ctrl_l_eyeLash.s" "jnt_l_eyeLash_parentConstraint1.tg[0].ts";
connectAttr "ctrl_l_eyeLash.pm" "jnt_l_eyeLash_parentConstraint1.tg[0].tpm";
connectAttr "jnt_l_eyeLash_parentConstraint1.w0" "jnt_l_eyeLash_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_head_02.s" "jnt_r_eyeLash.is";
connectAttr "jnt_r_eyeLash_parentConstraint1.ctx" "jnt_r_eyeLash.tx";
connectAttr "jnt_r_eyeLash_parentConstraint1.cty" "jnt_r_eyeLash.ty";
connectAttr "jnt_r_eyeLash_parentConstraint1.ctz" "jnt_r_eyeLash.tz";
connectAttr "jnt_r_eyeLash_parentConstraint1.crx" "jnt_r_eyeLash.rx";
connectAttr "jnt_r_eyeLash_parentConstraint1.cry" "jnt_r_eyeLash.ry";
connectAttr "jnt_r_eyeLash_parentConstraint1.crz" "jnt_r_eyeLash.rz";
connectAttr "jnt_r_eyeLash.ro" "jnt_r_eyeLash_parentConstraint1.cro";
connectAttr "jnt_r_eyeLash.pim" "jnt_r_eyeLash_parentConstraint1.cpim";
connectAttr "jnt_r_eyeLash.rp" "jnt_r_eyeLash_parentConstraint1.crp";
connectAttr "jnt_r_eyeLash.rpt" "jnt_r_eyeLash_parentConstraint1.crt";
connectAttr "jnt_r_eyeLash.jo" "jnt_r_eyeLash_parentConstraint1.cjo";
connectAttr "ctrl_r_eyeLash.t" "jnt_r_eyeLash_parentConstraint1.tg[0].tt";
connectAttr "ctrl_r_eyeLash.rp" "jnt_r_eyeLash_parentConstraint1.tg[0].trp";
connectAttr "ctrl_r_eyeLash.rpt" "jnt_r_eyeLash_parentConstraint1.tg[0].trt";
connectAttr "ctrl_r_eyeLash.r" "jnt_r_eyeLash_parentConstraint1.tg[0].tr";
connectAttr "ctrl_r_eyeLash.ro" "jnt_r_eyeLash_parentConstraint1.tg[0].tro";
connectAttr "ctrl_r_eyeLash.s" "jnt_r_eyeLash_parentConstraint1.tg[0].ts";
connectAttr "ctrl_r_eyeLash.pm" "jnt_r_eyeLash_parentConstraint1.tg[0].tpm";
connectAttr "jnt_r_eyeLash_parentConstraint1.w0" "jnt_r_eyeLash_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_head_01.s" "jnt_r_ear_01.is";
connectAttr "jnt_r_ear_01_parentConstraint1.ctx" "jnt_r_ear_01.tx";
connectAttr "jnt_r_ear_01_parentConstraint1.cty" "jnt_r_ear_01.ty";
connectAttr "jnt_r_ear_01_parentConstraint1.ctz" "jnt_r_ear_01.tz";
connectAttr "jnt_r_ear_01_parentConstraint1.crx" "jnt_r_ear_01.rx";
connectAttr "jnt_r_ear_01_parentConstraint1.cry" "jnt_r_ear_01.ry";
connectAttr "jnt_r_ear_01_parentConstraint1.crz" "jnt_r_ear_01.rz";
connectAttr "jnt_r_ear_01.s" "jnt_r_ear_02.is";
connectAttr "jnt_r_ear_02_parentConstraint1.ctx" "jnt_r_ear_02.tx";
connectAttr "jnt_r_ear_02_parentConstraint1.cty" "jnt_r_ear_02.ty";
connectAttr "jnt_r_ear_02_parentConstraint1.ctz" "jnt_r_ear_02.tz";
connectAttr "jnt_r_ear_02_parentConstraint1.crx" "jnt_r_ear_02.rx";
connectAttr "jnt_r_ear_02_parentConstraint1.cry" "jnt_r_ear_02.ry";
connectAttr "jnt_r_ear_02_parentConstraint1.crz" "jnt_r_ear_02.rz";
connectAttr "jnt_r_ear_02.s" "jnt_r_ear_03.is";
connectAttr "jnt_r_ear_03_parentConstraint1.ctx" "jnt_r_ear_03.tx";
connectAttr "jnt_r_ear_03_parentConstraint1.cty" "jnt_r_ear_03.ty";
connectAttr "jnt_r_ear_03_parentConstraint1.ctz" "jnt_r_ear_03.tz";
connectAttr "jnt_r_ear_03_parentConstraint1.crx" "jnt_r_ear_03.rx";
connectAttr "jnt_r_ear_03_parentConstraint1.cry" "jnt_r_ear_03.ry";
connectAttr "jnt_r_ear_03_parentConstraint1.crz" "jnt_r_ear_03.rz";
connectAttr "jnt_r_ear_03.s" "jnt_r_ear_04.is";
connectAttr "jnt_r_ear_04_parentConstraint1.ctx" "jnt_r_ear_04.tx";
connectAttr "jnt_r_ear_04_parentConstraint1.cty" "jnt_r_ear_04.ty";
connectAttr "jnt_r_ear_04_parentConstraint1.ctz" "jnt_r_ear_04.tz";
connectAttr "jnt_r_ear_04_parentConstraint1.crx" "jnt_r_ear_04.rx";
connectAttr "jnt_r_ear_04_parentConstraint1.cry" "jnt_r_ear_04.ry";
connectAttr "jnt_r_ear_04_parentConstraint1.crz" "jnt_r_ear_04.rz";
connectAttr "jnt_r_ear_04.s" "jnt_r_ear_05.is";
connectAttr "jnt_r_ear_05_parentConstraint1.ctx" "jnt_r_ear_05.tx";
connectAttr "jnt_r_ear_05_parentConstraint1.cty" "jnt_r_ear_05.ty";
connectAttr "jnt_r_ear_05_parentConstraint1.ctz" "jnt_r_ear_05.tz";
connectAttr "jnt_r_ear_05_parentConstraint1.crx" "jnt_r_ear_05.rx";
connectAttr "jnt_r_ear_05_parentConstraint1.cry" "jnt_r_ear_05.ry";
connectAttr "jnt_r_ear_05_parentConstraint1.crz" "jnt_r_ear_05.rz";
connectAttr "jnt_r_ear_05.ro" "jnt_r_ear_05_parentConstraint1.cro";
connectAttr "jnt_r_ear_05.pim" "jnt_r_ear_05_parentConstraint1.cpim";
connectAttr "jnt_r_ear_05.rp" "jnt_r_ear_05_parentConstraint1.crp";
connectAttr "jnt_r_ear_05.rpt" "jnt_r_ear_05_parentConstraint1.crt";
connectAttr "jnt_r_ear_05.jo" "jnt_r_ear_05_parentConstraint1.cjo";
connectAttr "ctrl_r_ear_05.t" "jnt_r_ear_05_parentConstraint1.tg[0].tt";
connectAttr "ctrl_r_ear_05.rp" "jnt_r_ear_05_parentConstraint1.tg[0].trp";
connectAttr "ctrl_r_ear_05.rpt" "jnt_r_ear_05_parentConstraint1.tg[0].trt";
connectAttr "ctrl_r_ear_05.r" "jnt_r_ear_05_parentConstraint1.tg[0].tr";
connectAttr "ctrl_r_ear_05.ro" "jnt_r_ear_05_parentConstraint1.tg[0].tro";
connectAttr "ctrl_r_ear_05.s" "jnt_r_ear_05_parentConstraint1.tg[0].ts";
connectAttr "ctrl_r_ear_05.pm" "jnt_r_ear_05_parentConstraint1.tg[0].tpm";
connectAttr "jnt_r_ear_05_parentConstraint1.w0" "jnt_r_ear_05_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_r_ear_04.ro" "jnt_r_ear_04_parentConstraint1.cro";
connectAttr "jnt_r_ear_04.pim" "jnt_r_ear_04_parentConstraint1.cpim";
connectAttr "jnt_r_ear_04.rp" "jnt_r_ear_04_parentConstraint1.crp";
connectAttr "jnt_r_ear_04.rpt" "jnt_r_ear_04_parentConstraint1.crt";
connectAttr "jnt_r_ear_04.jo" "jnt_r_ear_04_parentConstraint1.cjo";
connectAttr "ctrl_r_ear_04.t" "jnt_r_ear_04_parentConstraint1.tg[0].tt";
connectAttr "ctrl_r_ear_04.rp" "jnt_r_ear_04_parentConstraint1.tg[0].trp";
connectAttr "ctrl_r_ear_04.rpt" "jnt_r_ear_04_parentConstraint1.tg[0].trt";
connectAttr "ctrl_r_ear_04.r" "jnt_r_ear_04_parentConstraint1.tg[0].tr";
connectAttr "ctrl_r_ear_04.ro" "jnt_r_ear_04_parentConstraint1.tg[0].tro";
connectAttr "ctrl_r_ear_04.s" "jnt_r_ear_04_parentConstraint1.tg[0].ts";
connectAttr "ctrl_r_ear_04.pm" "jnt_r_ear_04_parentConstraint1.tg[0].tpm";
connectAttr "jnt_r_ear_04_parentConstraint1.w0" "jnt_r_ear_04_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_r_ear_03.ro" "jnt_r_ear_03_parentConstraint1.cro";
connectAttr "jnt_r_ear_03.pim" "jnt_r_ear_03_parentConstraint1.cpim";
connectAttr "jnt_r_ear_03.rp" "jnt_r_ear_03_parentConstraint1.crp";
connectAttr "jnt_r_ear_03.rpt" "jnt_r_ear_03_parentConstraint1.crt";
connectAttr "jnt_r_ear_03.jo" "jnt_r_ear_03_parentConstraint1.cjo";
connectAttr "ctrl_r_ear_03.t" "jnt_r_ear_03_parentConstraint1.tg[0].tt";
connectAttr "ctrl_r_ear_03.rp" "jnt_r_ear_03_parentConstraint1.tg[0].trp";
connectAttr "ctrl_r_ear_03.rpt" "jnt_r_ear_03_parentConstraint1.tg[0].trt";
connectAttr "ctrl_r_ear_03.r" "jnt_r_ear_03_parentConstraint1.tg[0].tr";
connectAttr "ctrl_r_ear_03.ro" "jnt_r_ear_03_parentConstraint1.tg[0].tro";
connectAttr "ctrl_r_ear_03.s" "jnt_r_ear_03_parentConstraint1.tg[0].ts";
connectAttr "ctrl_r_ear_03.pm" "jnt_r_ear_03_parentConstraint1.tg[0].tpm";
connectAttr "jnt_r_ear_03_parentConstraint1.w0" "jnt_r_ear_03_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_r_ear_02.ro" "jnt_r_ear_02_parentConstraint1.cro";
connectAttr "jnt_r_ear_02.pim" "jnt_r_ear_02_parentConstraint1.cpim";
connectAttr "jnt_r_ear_02.rp" "jnt_r_ear_02_parentConstraint1.crp";
connectAttr "jnt_r_ear_02.rpt" "jnt_r_ear_02_parentConstraint1.crt";
connectAttr "jnt_r_ear_02.jo" "jnt_r_ear_02_parentConstraint1.cjo";
connectAttr "ctrl_r_ear_02.t" "jnt_r_ear_02_parentConstraint1.tg[0].tt";
connectAttr "ctrl_r_ear_02.rp" "jnt_r_ear_02_parentConstraint1.tg[0].trp";
connectAttr "ctrl_r_ear_02.rpt" "jnt_r_ear_02_parentConstraint1.tg[0].trt";
connectAttr "ctrl_r_ear_02.r" "jnt_r_ear_02_parentConstraint1.tg[0].tr";
connectAttr "ctrl_r_ear_02.ro" "jnt_r_ear_02_parentConstraint1.tg[0].tro";
connectAttr "ctrl_r_ear_02.s" "jnt_r_ear_02_parentConstraint1.tg[0].ts";
connectAttr "ctrl_r_ear_02.pm" "jnt_r_ear_02_parentConstraint1.tg[0].tpm";
connectAttr "jnt_r_ear_02_parentConstraint1.w0" "jnt_r_ear_02_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_r_ear_01.ro" "jnt_r_ear_01_parentConstraint1.cro";
connectAttr "jnt_r_ear_01.pim" "jnt_r_ear_01_parentConstraint1.cpim";
connectAttr "jnt_r_ear_01.rp" "jnt_r_ear_01_parentConstraint1.crp";
connectAttr "jnt_r_ear_01.rpt" "jnt_r_ear_01_parentConstraint1.crt";
connectAttr "jnt_r_ear_01.jo" "jnt_r_ear_01_parentConstraint1.cjo";
connectAttr "ctrl_r_ear_01.t" "jnt_r_ear_01_parentConstraint1.tg[0].tt";
connectAttr "ctrl_r_ear_01.rp" "jnt_r_ear_01_parentConstraint1.tg[0].trp";
connectAttr "ctrl_r_ear_01.rpt" "jnt_r_ear_01_parentConstraint1.tg[0].trt";
connectAttr "ctrl_r_ear_01.r" "jnt_r_ear_01_parentConstraint1.tg[0].tr";
connectAttr "ctrl_r_ear_01.ro" "jnt_r_ear_01_parentConstraint1.tg[0].tro";
connectAttr "ctrl_r_ear_01.s" "jnt_r_ear_01_parentConstraint1.tg[0].ts";
connectAttr "ctrl_r_ear_01.pm" "jnt_r_ear_01_parentConstraint1.tg[0].tpm";
connectAttr "jnt_r_ear_01_parentConstraint1.w0" "jnt_r_ear_01_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_head_01.ro" "jnt_head_01_parentConstraint1.cro";
connectAttr "jnt_head_01.pim" "jnt_head_01_parentConstraint1.cpim";
connectAttr "jnt_head_01.rp" "jnt_head_01_parentConstraint1.crp";
connectAttr "jnt_head_01.rpt" "jnt_head_01_parentConstraint1.crt";
connectAttr "jnt_head_01.jo" "jnt_head_01_parentConstraint1.cjo";
connectAttr "ctrl_head_01.t" "jnt_head_01_parentConstraint1.tg[0].tt";
connectAttr "ctrl_head_01.rp" "jnt_head_01_parentConstraint1.tg[0].trp";
connectAttr "ctrl_head_01.rpt" "jnt_head_01_parentConstraint1.tg[0].trt";
connectAttr "ctrl_head_01.r" "jnt_head_01_parentConstraint1.tg[0].tr";
connectAttr "ctrl_head_01.ro" "jnt_head_01_parentConstraint1.tg[0].tro";
connectAttr "ctrl_head_01.s" "jnt_head_01_parentConstraint1.tg[0].ts";
connectAttr "ctrl_head_01.pm" "jnt_head_01_parentConstraint1.tg[0].tpm";
connectAttr "jnt_head_01_parentConstraint1.w0" "jnt_head_01_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_head_01.s" "jnt_l_ear_01.is";
connectAttr "jnt_l_ear_01_parentConstraint1.ctx" "jnt_l_ear_01.tx";
connectAttr "jnt_l_ear_01_parentConstraint1.cty" "jnt_l_ear_01.ty";
connectAttr "jnt_l_ear_01_parentConstraint1.ctz" "jnt_l_ear_01.tz";
connectAttr "jnt_l_ear_01_parentConstraint1.crx" "jnt_l_ear_01.rx";
connectAttr "jnt_l_ear_01_parentConstraint1.cry" "jnt_l_ear_01.ry";
connectAttr "jnt_l_ear_01_parentConstraint1.crz" "jnt_l_ear_01.rz";
connectAttr "jnt_l_ear_01.s" "jnt_l_ear_02.is";
connectAttr "jnt_l_ear_02_parentConstraint1.ctx" "jnt_l_ear_02.tx";
connectAttr "jnt_l_ear_02_parentConstraint1.cty" "jnt_l_ear_02.ty";
connectAttr "jnt_l_ear_02_parentConstraint1.ctz" "jnt_l_ear_02.tz";
connectAttr "jnt_l_ear_02_parentConstraint1.crx" "jnt_l_ear_02.rx";
connectAttr "jnt_l_ear_02_parentConstraint1.cry" "jnt_l_ear_02.ry";
connectAttr "jnt_l_ear_02_parentConstraint1.crz" "jnt_l_ear_02.rz";
connectAttr "jnt_l_ear_02.s" "jnt_l_ear_03.is";
connectAttr "jnt_l_ear_03_parentConstraint1.ctx" "jnt_l_ear_03.tx";
connectAttr "jnt_l_ear_03_parentConstraint1.cty" "jnt_l_ear_03.ty";
connectAttr "jnt_l_ear_03_parentConstraint1.ctz" "jnt_l_ear_03.tz";
connectAttr "jnt_l_ear_03_parentConstraint1.crx" "jnt_l_ear_03.rx";
connectAttr "jnt_l_ear_03_parentConstraint1.cry" "jnt_l_ear_03.ry";
connectAttr "jnt_l_ear_03_parentConstraint1.crz" "jnt_l_ear_03.rz";
connectAttr "jnt_l_ear_03.s" "jnt_l_ear_04.is";
connectAttr "jnt_l_ear_04_parentConstraint1.ctx" "jnt_l_ear_04.tx";
connectAttr "jnt_l_ear_04_parentConstraint1.cty" "jnt_l_ear_04.ty";
connectAttr "jnt_l_ear_04_parentConstraint1.ctz" "jnt_l_ear_04.tz";
connectAttr "jnt_l_ear_04_parentConstraint1.crx" "jnt_l_ear_04.rx";
connectAttr "jnt_l_ear_04_parentConstraint1.cry" "jnt_l_ear_04.ry";
connectAttr "jnt_l_ear_04_parentConstraint1.crz" "jnt_l_ear_04.rz";
connectAttr "jnt_l_ear_04.s" "jnt_l_ear_05.is";
connectAttr "jnt_l_ear_05_parentConstraint1.ctx" "jnt_l_ear_05.tx";
connectAttr "jnt_l_ear_05_parentConstraint1.cty" "jnt_l_ear_05.ty";
connectAttr "jnt_l_ear_05_parentConstraint1.ctz" "jnt_l_ear_05.tz";
connectAttr "jnt_l_ear_05_parentConstraint1.crx" "jnt_l_ear_05.rx";
connectAttr "jnt_l_ear_05_parentConstraint1.cry" "jnt_l_ear_05.ry";
connectAttr "jnt_l_ear_05_parentConstraint1.crz" "jnt_l_ear_05.rz";
connectAttr "jnt_l_ear_05.ro" "jnt_l_ear_05_parentConstraint1.cro";
connectAttr "jnt_l_ear_05.pim" "jnt_l_ear_05_parentConstraint1.cpim";
connectAttr "jnt_l_ear_05.rp" "jnt_l_ear_05_parentConstraint1.crp";
connectAttr "jnt_l_ear_05.rpt" "jnt_l_ear_05_parentConstraint1.crt";
connectAttr "jnt_l_ear_05.jo" "jnt_l_ear_05_parentConstraint1.cjo";
connectAttr "ctrl_l_ear_05.t" "jnt_l_ear_05_parentConstraint1.tg[0].tt";
connectAttr "ctrl_l_ear_05.rp" "jnt_l_ear_05_parentConstraint1.tg[0].trp";
connectAttr "ctrl_l_ear_05.rpt" "jnt_l_ear_05_parentConstraint1.tg[0].trt";
connectAttr "ctrl_l_ear_05.r" "jnt_l_ear_05_parentConstraint1.tg[0].tr";
connectAttr "ctrl_l_ear_05.ro" "jnt_l_ear_05_parentConstraint1.tg[0].tro";
connectAttr "ctrl_l_ear_05.s" "jnt_l_ear_05_parentConstraint1.tg[0].ts";
connectAttr "ctrl_l_ear_05.pm" "jnt_l_ear_05_parentConstraint1.tg[0].tpm";
connectAttr "jnt_l_ear_05_parentConstraint1.w0" "jnt_l_ear_05_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_l_ear_04.ro" "jnt_l_ear_04_parentConstraint1.cro";
connectAttr "jnt_l_ear_04.pim" "jnt_l_ear_04_parentConstraint1.cpim";
connectAttr "jnt_l_ear_04.rp" "jnt_l_ear_04_parentConstraint1.crp";
connectAttr "jnt_l_ear_04.rpt" "jnt_l_ear_04_parentConstraint1.crt";
connectAttr "jnt_l_ear_04.jo" "jnt_l_ear_04_parentConstraint1.cjo";
connectAttr "ctrl_l_ear_04.t" "jnt_l_ear_04_parentConstraint1.tg[0].tt";
connectAttr "ctrl_l_ear_04.rp" "jnt_l_ear_04_parentConstraint1.tg[0].trp";
connectAttr "ctrl_l_ear_04.rpt" "jnt_l_ear_04_parentConstraint1.tg[0].trt";
connectAttr "ctrl_l_ear_04.r" "jnt_l_ear_04_parentConstraint1.tg[0].tr";
connectAttr "ctrl_l_ear_04.ro" "jnt_l_ear_04_parentConstraint1.tg[0].tro";
connectAttr "ctrl_l_ear_04.s" "jnt_l_ear_04_parentConstraint1.tg[0].ts";
connectAttr "ctrl_l_ear_04.pm" "jnt_l_ear_04_parentConstraint1.tg[0].tpm";
connectAttr "jnt_l_ear_04_parentConstraint1.w0" "jnt_l_ear_04_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_l_ear_03.ro" "jnt_l_ear_03_parentConstraint1.cro";
connectAttr "jnt_l_ear_03.pim" "jnt_l_ear_03_parentConstraint1.cpim";
connectAttr "jnt_l_ear_03.rp" "jnt_l_ear_03_parentConstraint1.crp";
connectAttr "jnt_l_ear_03.rpt" "jnt_l_ear_03_parentConstraint1.crt";
connectAttr "jnt_l_ear_03.jo" "jnt_l_ear_03_parentConstraint1.cjo";
connectAttr "ctrl_l_ear_03.t" "jnt_l_ear_03_parentConstraint1.tg[0].tt";
connectAttr "ctrl_l_ear_03.rp" "jnt_l_ear_03_parentConstraint1.tg[0].trp";
connectAttr "ctrl_l_ear_03.rpt" "jnt_l_ear_03_parentConstraint1.tg[0].trt";
connectAttr "ctrl_l_ear_03.r" "jnt_l_ear_03_parentConstraint1.tg[0].tr";
connectAttr "ctrl_l_ear_03.ro" "jnt_l_ear_03_parentConstraint1.tg[0].tro";
connectAttr "ctrl_l_ear_03.s" "jnt_l_ear_03_parentConstraint1.tg[0].ts";
connectAttr "ctrl_l_ear_03.pm" "jnt_l_ear_03_parentConstraint1.tg[0].tpm";
connectAttr "jnt_l_ear_03_parentConstraint1.w0" "jnt_l_ear_03_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_l_ear_02.ro" "jnt_l_ear_02_parentConstraint1.cro";
connectAttr "jnt_l_ear_02.pim" "jnt_l_ear_02_parentConstraint1.cpim";
connectAttr "jnt_l_ear_02.rp" "jnt_l_ear_02_parentConstraint1.crp";
connectAttr "jnt_l_ear_02.rpt" "jnt_l_ear_02_parentConstraint1.crt";
connectAttr "jnt_l_ear_02.jo" "jnt_l_ear_02_parentConstraint1.cjo";
connectAttr "ctrl_l_ear_02.t" "jnt_l_ear_02_parentConstraint1.tg[0].tt";
connectAttr "ctrl_l_ear_02.rp" "jnt_l_ear_02_parentConstraint1.tg[0].trp";
connectAttr "ctrl_l_ear_02.rpt" "jnt_l_ear_02_parentConstraint1.tg[0].trt";
connectAttr "ctrl_l_ear_02.r" "jnt_l_ear_02_parentConstraint1.tg[0].tr";
connectAttr "ctrl_l_ear_02.ro" "jnt_l_ear_02_parentConstraint1.tg[0].tro";
connectAttr "ctrl_l_ear_02.s" "jnt_l_ear_02_parentConstraint1.tg[0].ts";
connectAttr "ctrl_l_ear_02.pm" "jnt_l_ear_02_parentConstraint1.tg[0].tpm";
connectAttr "jnt_l_ear_02_parentConstraint1.w0" "jnt_l_ear_02_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_l_ear_01.ro" "jnt_l_ear_01_parentConstraint1.cro";
connectAttr "jnt_l_ear_01.pim" "jnt_l_ear_01_parentConstraint1.cpim";
connectAttr "jnt_l_ear_01.rp" "jnt_l_ear_01_parentConstraint1.crp";
connectAttr "jnt_l_ear_01.rpt" "jnt_l_ear_01_parentConstraint1.crt";
connectAttr "jnt_l_ear_01.jo" "jnt_l_ear_01_parentConstraint1.cjo";
connectAttr "ctrl_l_ear_01.t" "jnt_l_ear_01_parentConstraint1.tg[0].tt";
connectAttr "ctrl_l_ear_01.rp" "jnt_l_ear_01_parentConstraint1.tg[0].trp";
connectAttr "ctrl_l_ear_01.rpt" "jnt_l_ear_01_parentConstraint1.tg[0].trt";
connectAttr "ctrl_l_ear_01.r" "jnt_l_ear_01_parentConstraint1.tg[0].tr";
connectAttr "ctrl_l_ear_01.ro" "jnt_l_ear_01_parentConstraint1.tg[0].tro";
connectAttr "ctrl_l_ear_01.s" "jnt_l_ear_01_parentConstraint1.tg[0].ts";
connectAttr "ctrl_l_ear_01.pm" "jnt_l_ear_01_parentConstraint1.tg[0].tpm";
connectAttr "jnt_l_ear_01_parentConstraint1.w0" "jnt_l_ear_01_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_backFront_01.s" "jnt_l_front_hip.is";
connectAttr "jnt_l_front_hip_parentConstraint1.ctx" "jnt_l_front_hip.tx";
connectAttr "jnt_l_front_hip_parentConstraint1.cty" "jnt_l_front_hip.ty";
connectAttr "jnt_l_front_hip_parentConstraint1.ctz" "jnt_l_front_hip.tz";
connectAttr "jnt_l_front_hip_parentConstraint1.crx" "jnt_l_front_hip.rx";
connectAttr "jnt_l_front_hip_parentConstraint1.cry" "jnt_l_front_hip.ry";
connectAttr "jnt_l_front_hip_parentConstraint1.crz" "jnt_l_front_hip.rz";
connectAttr "jnt_l_front_hip.s" "jnt_l_front_thigh.is";
connectAttr "jnt_l_front_thigh_parentConstraint1.ctx" "jnt_l_front_thigh.tx";
connectAttr "jnt_l_front_thigh_parentConstraint1.cty" "jnt_l_front_thigh.ty";
connectAttr "jnt_l_front_thigh_parentConstraint1.ctz" "jnt_l_front_thigh.tz";
connectAttr "jnt_l_front_thigh_parentConstraint1.crx" "jnt_l_front_thigh.rx";
connectAttr "jnt_l_front_thigh_parentConstraint1.cry" "jnt_l_front_thigh.ry";
connectAttr "jnt_l_front_thigh_parentConstraint1.crz" "jnt_l_front_thigh.rz";
connectAttr "jnt_l_front_thigh.s" "jnt_l_front_knee.is";
connectAttr "jnt_l_front_knee_parentConstraint1.ctx" "jnt_l_front_knee.tx";
connectAttr "jnt_l_front_knee_parentConstraint1.cty" "jnt_l_front_knee.ty";
connectAttr "jnt_l_front_knee_parentConstraint1.ctz" "jnt_l_front_knee.tz";
connectAttr "jnt_l_front_knee_parentConstraint1.crx" "jnt_l_front_knee.rx";
connectAttr "jnt_l_front_knee_parentConstraint1.cry" "jnt_l_front_knee.ry";
connectAttr "jnt_l_front_knee_parentConstraint1.crz" "jnt_l_front_knee.rz";
connectAttr "jnt_l_front_knee.s" "jnt_l_front_foot.is";
connectAttr "jnt_l_front_foot_parentConstraint1.ctx" "jnt_l_front_foot.tx";
connectAttr "jnt_l_front_foot_parentConstraint1.cty" "jnt_l_front_foot.ty";
connectAttr "jnt_l_front_foot_parentConstraint1.ctz" "jnt_l_front_foot.tz";
connectAttr "jnt_l_front_foot_parentConstraint1.crx" "jnt_l_front_foot.rx";
connectAttr "jnt_l_front_foot_parentConstraint1.cry" "jnt_l_front_foot.ry";
connectAttr "jnt_l_front_foot_parentConstraint1.crz" "jnt_l_front_foot.rz";
connectAttr "jnt_l_front_foot.s" "jnt_l_front_footEnd.is";
connectAttr "jnt_l_front_footEnd_parentConstraint1.ctx" "jnt_l_front_footEnd.tx"
		;
connectAttr "jnt_l_front_footEnd_parentConstraint1.cty" "jnt_l_front_footEnd.ty"
		;
connectAttr "jnt_l_front_footEnd_parentConstraint1.ctz" "jnt_l_front_footEnd.tz"
		;
connectAttr "jnt_l_front_footEnd_parentConstraint1.crx" "jnt_l_front_footEnd.rx"
		;
connectAttr "jnt_l_front_footEnd_parentConstraint1.cry" "jnt_l_front_footEnd.ry"
		;
connectAttr "jnt_l_front_footEnd_parentConstraint1.crz" "jnt_l_front_footEnd.rz"
		;
connectAttr "jnt_l_front_footEnd.ro" "jnt_l_front_footEnd_parentConstraint1.cro"
		;
connectAttr "jnt_l_front_footEnd.pim" "jnt_l_front_footEnd_parentConstraint1.cpim"
		;
connectAttr "jnt_l_front_footEnd.rp" "jnt_l_front_footEnd_parentConstraint1.crp"
		;
connectAttr "jnt_l_front_footEnd.rpt" "jnt_l_front_footEnd_parentConstraint1.crt"
		;
connectAttr "jnt_l_front_footEnd.jo" "jnt_l_front_footEnd_parentConstraint1.cjo"
		;
connectAttr "ctrl_l_front_footEnd.t" "jnt_l_front_footEnd_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_l_front_footEnd.rp" "jnt_l_front_footEnd_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_l_front_footEnd.rpt" "jnt_l_front_footEnd_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_l_front_footEnd.r" "jnt_l_front_footEnd_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_l_front_footEnd.ro" "jnt_l_front_footEnd_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_l_front_footEnd.s" "jnt_l_front_footEnd_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_l_front_footEnd.pm" "jnt_l_front_footEnd_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_l_front_footEnd_parentConstraint1.w0" "jnt_l_front_footEnd_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_l_front_foot.ro" "jnt_l_front_foot_parentConstraint1.cro";
connectAttr "jnt_l_front_foot.pim" "jnt_l_front_foot_parentConstraint1.cpim";
connectAttr "jnt_l_front_foot.rp" "jnt_l_front_foot_parentConstraint1.crp";
connectAttr "jnt_l_front_foot.rpt" "jnt_l_front_foot_parentConstraint1.crt";
connectAttr "jnt_l_front_foot.jo" "jnt_l_front_foot_parentConstraint1.cjo";
connectAttr "ctrl_l_front_foot.t" "jnt_l_front_foot_parentConstraint1.tg[0].tt";
connectAttr "ctrl_l_front_foot.rp" "jnt_l_front_foot_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_l_front_foot.rpt" "jnt_l_front_foot_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_l_front_foot.r" "jnt_l_front_foot_parentConstraint1.tg[0].tr";
connectAttr "ctrl_l_front_foot.ro" "jnt_l_front_foot_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_l_front_foot.s" "jnt_l_front_foot_parentConstraint1.tg[0].ts";
connectAttr "ctrl_l_front_foot.pm" "jnt_l_front_foot_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_l_front_foot_parentConstraint1.w0" "jnt_l_front_foot_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_l_front_knee.ro" "jnt_l_front_knee_parentConstraint1.cro";
connectAttr "jnt_l_front_knee.pim" "jnt_l_front_knee_parentConstraint1.cpim";
connectAttr "jnt_l_front_knee.rp" "jnt_l_front_knee_parentConstraint1.crp";
connectAttr "jnt_l_front_knee.rpt" "jnt_l_front_knee_parentConstraint1.crt";
connectAttr "jnt_l_front_knee.jo" "jnt_l_front_knee_parentConstraint1.cjo";
connectAttr "ctrl_l_front_knee.t" "jnt_l_front_knee_parentConstraint1.tg[0].tt";
connectAttr "ctrl_l_front_knee.rp" "jnt_l_front_knee_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_l_front_knee.rpt" "jnt_l_front_knee_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_l_front_knee.r" "jnt_l_front_knee_parentConstraint1.tg[0].tr";
connectAttr "ctrl_l_front_knee.ro" "jnt_l_front_knee_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_l_front_knee.s" "jnt_l_front_knee_parentConstraint1.tg[0].ts";
connectAttr "ctrl_l_front_knee.pm" "jnt_l_front_knee_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_l_front_knee_parentConstraint1.w0" "jnt_l_front_knee_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_l_front_thigh.ro" "jnt_l_front_thigh_parentConstraint1.cro";
connectAttr "jnt_l_front_thigh.pim" "jnt_l_front_thigh_parentConstraint1.cpim";
connectAttr "jnt_l_front_thigh.rp" "jnt_l_front_thigh_parentConstraint1.crp";
connectAttr "jnt_l_front_thigh.rpt" "jnt_l_front_thigh_parentConstraint1.crt";
connectAttr "jnt_l_front_thigh.jo" "jnt_l_front_thigh_parentConstraint1.cjo";
connectAttr "ctrl_l_front_thigh.t" "jnt_l_front_thigh_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_l_front_thigh.rp" "jnt_l_front_thigh_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_l_front_thigh.rpt" "jnt_l_front_thigh_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_l_front_thigh.r" "jnt_l_front_thigh_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_l_front_thigh.ro" "jnt_l_front_thigh_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_l_front_thigh.s" "jnt_l_front_thigh_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_l_front_thigh.pm" "jnt_l_front_thigh_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_l_front_thigh_parentConstraint1.w0" "jnt_l_front_thigh_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_l_front_hip.ro" "jnt_l_front_hip_parentConstraint1.cro";
connectAttr "jnt_l_front_hip.pim" "jnt_l_front_hip_parentConstraint1.cpim";
connectAttr "jnt_l_front_hip.rp" "jnt_l_front_hip_parentConstraint1.crp";
connectAttr "jnt_l_front_hip.rpt" "jnt_l_front_hip_parentConstraint1.crt";
connectAttr "jnt_l_front_hip.jo" "jnt_l_front_hip_parentConstraint1.cjo";
connectAttr "ctrl_l_front_hip.t" "jnt_l_front_hip_parentConstraint1.tg[0].tt";
connectAttr "ctrl_l_front_hip.rp" "jnt_l_front_hip_parentConstraint1.tg[0].trp";
connectAttr "ctrl_l_front_hip.rpt" "jnt_l_front_hip_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_l_front_hip.r" "jnt_l_front_hip_parentConstraint1.tg[0].tr";
connectAttr "ctrl_l_front_hip.ro" "jnt_l_front_hip_parentConstraint1.tg[0].tro";
connectAttr "ctrl_l_front_hip.s" "jnt_l_front_hip_parentConstraint1.tg[0].ts";
connectAttr "ctrl_l_front_hip.pm" "jnt_l_front_hip_parentConstraint1.tg[0].tpm";
connectAttr "jnt_l_front_hip_parentConstraint1.w0" "jnt_l_front_hip_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_backFront_01.s" "jnt_r_front_hip.is";
connectAttr "jnt_r_front_hip_parentConstraint1.ctx" "jnt_r_front_hip.tx";
connectAttr "jnt_r_front_hip_parentConstraint1.cty" "jnt_r_front_hip.ty";
connectAttr "jnt_r_front_hip_parentConstraint1.ctz" "jnt_r_front_hip.tz";
connectAttr "jnt_r_front_hip_parentConstraint1.crx" "jnt_r_front_hip.rx";
connectAttr "jnt_r_front_hip_parentConstraint1.cry" "jnt_r_front_hip.ry";
connectAttr "jnt_r_front_hip_parentConstraint1.crz" "jnt_r_front_hip.rz";
connectAttr "jnt_r_front_hip.s" "jnt_r_front_thigh.is";
connectAttr "jnt_r_front_thigh_parentConstraint1.ctx" "jnt_r_front_thigh.tx";
connectAttr "jnt_r_front_thigh_parentConstraint1.cty" "jnt_r_front_thigh.ty";
connectAttr "jnt_r_front_thigh_parentConstraint1.ctz" "jnt_r_front_thigh.tz";
connectAttr "jnt_r_front_thigh_parentConstraint1.crx" "jnt_r_front_thigh.rx";
connectAttr "jnt_r_front_thigh_parentConstraint1.cry" "jnt_r_front_thigh.ry";
connectAttr "jnt_r_front_thigh_parentConstraint1.crz" "jnt_r_front_thigh.rz";
connectAttr "jnt_r_front_thigh.s" "jnt_r_front_knee.is";
connectAttr "jnt_r_front_knee_parentConstraint1.ctx" "jnt_r_front_knee.tx";
connectAttr "jnt_r_front_knee_parentConstraint1.cty" "jnt_r_front_knee.ty";
connectAttr "jnt_r_front_knee_parentConstraint1.ctz" "jnt_r_front_knee.tz";
connectAttr "jnt_r_front_knee_parentConstraint1.crx" "jnt_r_front_knee.rx";
connectAttr "jnt_r_front_knee_parentConstraint1.cry" "jnt_r_front_knee.ry";
connectAttr "jnt_r_front_knee_parentConstraint1.crz" "jnt_r_front_knee.rz";
connectAttr "jnt_r_front_knee.s" "jnt_r_front_foot.is";
connectAttr "jnt_r_front_foot_parentConstraint1.ctx" "jnt_r_front_foot.tx";
connectAttr "jnt_r_front_foot_parentConstraint1.cty" "jnt_r_front_foot.ty";
connectAttr "jnt_r_front_foot_parentConstraint1.ctz" "jnt_r_front_foot.tz";
connectAttr "jnt_r_front_foot_parentConstraint1.crx" "jnt_r_front_foot.rx";
connectAttr "jnt_r_front_foot_parentConstraint1.cry" "jnt_r_front_foot.ry";
connectAttr "jnt_r_front_foot_parentConstraint1.crz" "jnt_r_front_foot.rz";
connectAttr "jnt_r_front_foot.s" "jnt_r_front_footEnd.is";
connectAttr "jnt_r_front_footEnd_parentConstraint1.ctx" "jnt_r_front_footEnd.tx"
		;
connectAttr "jnt_r_front_footEnd_parentConstraint1.cty" "jnt_r_front_footEnd.ty"
		;
connectAttr "jnt_r_front_footEnd_parentConstraint1.ctz" "jnt_r_front_footEnd.tz"
		;
connectAttr "jnt_r_front_footEnd_parentConstraint1.crx" "jnt_r_front_footEnd.rx"
		;
connectAttr "jnt_r_front_footEnd_parentConstraint1.cry" "jnt_r_front_footEnd.ry"
		;
connectAttr "jnt_r_front_footEnd_parentConstraint1.crz" "jnt_r_front_footEnd.rz"
		;
connectAttr "jnt_r_front_footEnd.ro" "jnt_r_front_footEnd_parentConstraint1.cro"
		;
connectAttr "jnt_r_front_footEnd.pim" "jnt_r_front_footEnd_parentConstraint1.cpim"
		;
connectAttr "jnt_r_front_footEnd.rp" "jnt_r_front_footEnd_parentConstraint1.crp"
		;
connectAttr "jnt_r_front_footEnd.rpt" "jnt_r_front_footEnd_parentConstraint1.crt"
		;
connectAttr "jnt_r_front_footEnd.jo" "jnt_r_front_footEnd_parentConstraint1.cjo"
		;
connectAttr "ctrl_r_front_footEnd.t" "jnt_r_front_footEnd_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_r_front_footEnd.rp" "jnt_r_front_footEnd_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_r_front_footEnd.rpt" "jnt_r_front_footEnd_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_r_front_footEnd.r" "jnt_r_front_footEnd_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_r_front_footEnd.ro" "jnt_r_front_footEnd_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_r_front_footEnd.s" "jnt_r_front_footEnd_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_r_front_footEnd.pm" "jnt_r_front_footEnd_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_r_front_footEnd_parentConstraint1.w0" "jnt_r_front_footEnd_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_r_front_foot.ro" "jnt_r_front_foot_parentConstraint1.cro";
connectAttr "jnt_r_front_foot.pim" "jnt_r_front_foot_parentConstraint1.cpim";
connectAttr "jnt_r_front_foot.rp" "jnt_r_front_foot_parentConstraint1.crp";
connectAttr "jnt_r_front_foot.rpt" "jnt_r_front_foot_parentConstraint1.crt";
connectAttr "jnt_r_front_foot.jo" "jnt_r_front_foot_parentConstraint1.cjo";
connectAttr "ctrl_r_front_foot.t" "jnt_r_front_foot_parentConstraint1.tg[0].tt";
connectAttr "ctrl_r_front_foot.rp" "jnt_r_front_foot_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_r_front_foot.rpt" "jnt_r_front_foot_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_r_front_foot.r" "jnt_r_front_foot_parentConstraint1.tg[0].tr";
connectAttr "ctrl_r_front_foot.ro" "jnt_r_front_foot_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_r_front_foot.s" "jnt_r_front_foot_parentConstraint1.tg[0].ts";
connectAttr "ctrl_r_front_foot.pm" "jnt_r_front_foot_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_r_front_foot_parentConstraint1.w0" "jnt_r_front_foot_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_r_front_knee.ro" "jnt_r_front_knee_parentConstraint1.cro";
connectAttr "jnt_r_front_knee.pim" "jnt_r_front_knee_parentConstraint1.cpim";
connectAttr "jnt_r_front_knee.rp" "jnt_r_front_knee_parentConstraint1.crp";
connectAttr "jnt_r_front_knee.rpt" "jnt_r_front_knee_parentConstraint1.crt";
connectAttr "jnt_r_front_knee.jo" "jnt_r_front_knee_parentConstraint1.cjo";
connectAttr "ctrl_r_front_knee.t" "jnt_r_front_knee_parentConstraint1.tg[0].tt";
connectAttr "ctrl_r_front_knee.rp" "jnt_r_front_knee_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_r_front_knee.rpt" "jnt_r_front_knee_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_r_front_knee.r" "jnt_r_front_knee_parentConstraint1.tg[0].tr";
connectAttr "ctrl_r_front_knee.ro" "jnt_r_front_knee_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_r_front_knee.s" "jnt_r_front_knee_parentConstraint1.tg[0].ts";
connectAttr "ctrl_r_front_knee.pm" "jnt_r_front_knee_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_r_front_knee_parentConstraint1.w0" "jnt_r_front_knee_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_r_front_thigh.ro" "jnt_r_front_thigh_parentConstraint1.cro";
connectAttr "jnt_r_front_thigh.pim" "jnt_r_front_thigh_parentConstraint1.cpim";
connectAttr "jnt_r_front_thigh.rp" "jnt_r_front_thigh_parentConstraint1.crp";
connectAttr "jnt_r_front_thigh.rpt" "jnt_r_front_thigh_parentConstraint1.crt";
connectAttr "jnt_r_front_thigh.jo" "jnt_r_front_thigh_parentConstraint1.cjo";
connectAttr "ctrl_r_front_thigh.t" "jnt_r_front_thigh_parentConstraint1.tg[0].tt"
		;
connectAttr "ctrl_r_front_thigh.rp" "jnt_r_front_thigh_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_r_front_thigh.rpt" "jnt_r_front_thigh_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_r_front_thigh.r" "jnt_r_front_thigh_parentConstraint1.tg[0].tr"
		;
connectAttr "ctrl_r_front_thigh.ro" "jnt_r_front_thigh_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_r_front_thigh.s" "jnt_r_front_thigh_parentConstraint1.tg[0].ts"
		;
connectAttr "ctrl_r_front_thigh.pm" "jnt_r_front_thigh_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_r_front_thigh_parentConstraint1.w0" "jnt_r_front_thigh_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_r_front_hip.ro" "jnt_r_front_hip_parentConstraint1.cro";
connectAttr "jnt_r_front_hip.pim" "jnt_r_front_hip_parentConstraint1.cpim";
connectAttr "jnt_r_front_hip.rp" "jnt_r_front_hip_parentConstraint1.crp";
connectAttr "jnt_r_front_hip.rpt" "jnt_r_front_hip_parentConstraint1.crt";
connectAttr "jnt_r_front_hip.jo" "jnt_r_front_hip_parentConstraint1.cjo";
connectAttr "ctrl_r_front_hip.t" "jnt_r_front_hip_parentConstraint1.tg[0].tt";
connectAttr "ctrl_r_front_hip.rp" "jnt_r_front_hip_parentConstraint1.tg[0].trp";
connectAttr "ctrl_r_front_hip.rpt" "jnt_r_front_hip_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_r_front_hip.r" "jnt_r_front_hip_parentConstraint1.tg[0].tr";
connectAttr "ctrl_r_front_hip.ro" "jnt_r_front_hip_parentConstraint1.tg[0].tro";
connectAttr "ctrl_r_front_hip.s" "jnt_r_front_hip_parentConstraint1.tg[0].ts";
connectAttr "ctrl_r_front_hip.pm" "jnt_r_front_hip_parentConstraint1.tg[0].tpm";
connectAttr "jnt_r_front_hip_parentConstraint1.w0" "jnt_r_front_hip_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_backFront_01.ro" "jnt_backFront_01_parentConstraint1.cro";
connectAttr "jnt_backFront_01.pim" "jnt_backFront_01_parentConstraint1.cpim";
connectAttr "jnt_backFront_01.rp" "jnt_backFront_01_parentConstraint1.crp";
connectAttr "jnt_backFront_01.rpt" "jnt_backFront_01_parentConstraint1.crt";
connectAttr "jnt_backFront_01.jo" "jnt_backFront_01_parentConstraint1.cjo";
connectAttr "ctrl_backFront_01.t" "jnt_backFront_01_parentConstraint1.tg[0].tt";
connectAttr "ctrl_backFront_01.rp" "jnt_backFront_01_parentConstraint1.tg[0].trp"
		;
connectAttr "ctrl_backFront_01.rpt" "jnt_backFront_01_parentConstraint1.tg[0].trt"
		;
connectAttr "ctrl_backFront_01.r" "jnt_backFront_01_parentConstraint1.tg[0].tr";
connectAttr "ctrl_backFront_01.ro" "jnt_backFront_01_parentConstraint1.tg[0].tro"
		;
connectAttr "ctrl_backFront_01.s" "jnt_backFront_01_parentConstraint1.tg[0].ts";
connectAttr "ctrl_backFront_01.pm" "jnt_backFront_01_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_backFront_01_parentConstraint1.w0" "jnt_backFront_01_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_backMain.ro" "jnt_backMain_parentConstraint1.cro";
connectAttr "jnt_backMain.pim" "jnt_backMain_parentConstraint1.cpim";
connectAttr "jnt_backMain.rp" "jnt_backMain_parentConstraint1.crp";
connectAttr "jnt_backMain.rpt" "jnt_backMain_parentConstraint1.crt";
connectAttr "jnt_backMain.jo" "jnt_backMain_parentConstraint1.cjo";
connectAttr "ctrl_pigMain.t" "jnt_backMain_parentConstraint1.tg[0].tt";
connectAttr "ctrl_pigMain.rp" "jnt_backMain_parentConstraint1.tg[0].trp";
connectAttr "ctrl_pigMain.rpt" "jnt_backMain_parentConstraint1.tg[0].trt";
connectAttr "ctrl_pigMain.r" "jnt_backMain_parentConstraint1.tg[0].tr";
connectAttr "ctrl_pigMain.ro" "jnt_backMain_parentConstraint1.tg[0].tro";
connectAttr "ctrl_pigMain.s" "jnt_backMain_parentConstraint1.tg[0].ts";
connectAttr "ctrl_pigMain.pm" "jnt_backMain_parentConstraint1.tg[0].tpm";
connectAttr "jnt_backMain_parentConstraint1.w0" "jnt_backMain_parentConstraint1.tg[0].tw"
		;
connectAttr "polyTweakUV4.out" "geo_pigShape.i";
connectAttr "polyTweakUV4.uvtk[0]" "geo_pigShape.uvst[0].uvtw";
connectAttr "skinCluster2GroupId.id" "geo_pigShape.iog.og[0].gid";
connectAttr "skinCluster2Set.mwc" "geo_pigShape.iog.og[0].gco";
connectAttr "groupId5.id" "geo_pigShape.iog.og[1].gid";
connectAttr "tweakSet2.mwc" "geo_pigShape.iog.og[1].gco";
connectAttr "tweak2.vl[0].vt[0]" "geo_pigShape.twl";
connectAttr "groupId6.id" "pPlane8Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pPlane8Shape.iog.og[0].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "jnt_backMain.msg" "bindPose6.m[0]";
connectAttr "jnt_backLower_01.msg" "bindPose6.m[1]";
connectAttr "jnt_backLower_02.msg" "bindPose6.m[2]";
connectAttr "jnt_r_back_hip.msg" "bindPose6.m[3]";
connectAttr "jnt_r_back_thigh.msg" "bindPose6.m[4]";
connectAttr "jnt_r_back_knee.msg" "bindPose6.m[5]";
connectAttr "jnt_r_back_sheen.msg" "bindPose6.m[6]";
connectAttr "jnt_r_back_foot.msg" "bindPose6.m[7]";
connectAttr "jnt_r_back_footEnd.msg" "bindPose6.m[8]";
connectAttr "jnt_l_back_hip.msg" "bindPose6.m[9]";
connectAttr "jnt_l_back_thigh.msg" "bindPose6.m[10]";
connectAttr "jnt_l_back_knee.msg" "bindPose6.m[11]";
connectAttr "jnt_l_back_sheen.msg" "bindPose6.m[12]";
connectAttr "jnt_l_back_foot.msg" "bindPose6.m[13]";
connectAttr "jnt_l_back_footEnd.msg" "bindPose6.m[14]";
connectAttr "jnt_tail_01.msg" "bindPose6.m[15]";
connectAttr "jnt_tail_02.msg" "bindPose6.m[16]";
connectAttr "jnt_tail_03.msg" "bindPose6.m[17]";
connectAttr "jnt_tail_04.msg" "bindPose6.m[18]";
connectAttr "jnt_backFront_01.msg" "bindPose6.m[19]";
connectAttr "jnt_head_01.msg" "bindPose6.m[20]";
connectAttr "jnt_head_02.msg" "bindPose6.m[21]";
connectAttr "jnt_nose_01.msg" "bindPose6.m[22]";
connectAttr "jnt_nose_02.msg" "bindPose6.m[23]";
connectAttr "jnt_noseEnd.msg" "bindPose6.m[24]";
connectAttr "jnt_l_eyeLash.msg" "bindPose6.m[25]";
connectAttr "jnt_r_eyeLash.msg" "bindPose6.m[26]";
connectAttr "jnt_r_ear_01.msg" "bindPose6.m[27]";
connectAttr "jnt_r_ear_02.msg" "bindPose6.m[28]";
connectAttr "jnt_r_ear_03.msg" "bindPose6.m[29]";
connectAttr "jnt_r_ear_04.msg" "bindPose6.m[30]";
connectAttr "jnt_r_ear_05.msg" "bindPose6.m[31]";
connectAttr "jnt_l_ear_01.msg" "bindPose6.m[32]";
connectAttr "jnt_l_ear_02.msg" "bindPose6.m[33]";
connectAttr "jnt_l_ear_03.msg" "bindPose6.m[34]";
connectAttr "jnt_l_ear_04.msg" "bindPose6.m[35]";
connectAttr "jnt_l_ear_05.msg" "bindPose6.m[36]";
connectAttr "jnt_l_front_hip.msg" "bindPose6.m[37]";
connectAttr "jnt_l_front_thigh.msg" "bindPose6.m[38]";
connectAttr "jnt_l_front_knee.msg" "bindPose6.m[39]";
connectAttr "jnt_l_front_foot.msg" "bindPose6.m[40]";
connectAttr "jnt_l_front_footEnd.msg" "bindPose6.m[41]";
connectAttr "jnt_r_front_hip.msg" "bindPose6.m[42]";
connectAttr "jnt_r_front_thigh.msg" "bindPose6.m[43]";
connectAttr "jnt_r_front_knee.msg" "bindPose6.m[44]";
connectAttr "jnt_r_front_foot.msg" "bindPose6.m[45]";
connectAttr "jnt_r_front_footEnd.msg" "bindPose6.m[46]";
connectAttr "bindPose6.w" "bindPose6.p[0]";
connectAttr "bindPose6.m[0]" "bindPose6.p[1]";
connectAttr "bindPose6.m[1]" "bindPose6.p[2]";
connectAttr "bindPose6.m[2]" "bindPose6.p[3]";
connectAttr "bindPose6.m[3]" "bindPose6.p[4]";
connectAttr "bindPose6.m[4]" "bindPose6.p[5]";
connectAttr "bindPose6.m[5]" "bindPose6.p[6]";
connectAttr "bindPose6.m[6]" "bindPose6.p[7]";
connectAttr "bindPose6.m[7]" "bindPose6.p[8]";
connectAttr "bindPose6.m[2]" "bindPose6.p[9]";
connectAttr "bindPose6.m[9]" "bindPose6.p[10]";
connectAttr "bindPose6.m[10]" "bindPose6.p[11]";
connectAttr "bindPose6.m[11]" "bindPose6.p[12]";
connectAttr "bindPose6.m[12]" "bindPose6.p[13]";
connectAttr "bindPose6.m[13]" "bindPose6.p[14]";
connectAttr "bindPose6.m[2]" "bindPose6.p[15]";
connectAttr "bindPose6.m[15]" "bindPose6.p[16]";
connectAttr "bindPose6.m[16]" "bindPose6.p[17]";
connectAttr "bindPose6.m[17]" "bindPose6.p[18]";
connectAttr "bindPose6.m[0]" "bindPose6.p[19]";
connectAttr "bindPose6.m[19]" "bindPose6.p[20]";
connectAttr "bindPose6.m[20]" "bindPose6.p[21]";
connectAttr "bindPose6.m[21]" "bindPose6.p[22]";
connectAttr "bindPose6.m[22]" "bindPose6.p[23]";
connectAttr "bindPose6.m[23]" "bindPose6.p[24]";
connectAttr "bindPose6.m[21]" "bindPose6.p[25]";
connectAttr "bindPose6.m[21]" "bindPose6.p[26]";
connectAttr "bindPose6.m[20]" "bindPose6.p[27]";
connectAttr "bindPose6.m[27]" "bindPose6.p[28]";
connectAttr "bindPose6.m[28]" "bindPose6.p[29]";
connectAttr "bindPose6.m[29]" "bindPose6.p[30]";
connectAttr "bindPose6.m[30]" "bindPose6.p[31]";
connectAttr "bindPose6.m[20]" "bindPose6.p[32]";
connectAttr "bindPose6.m[32]" "bindPose6.p[33]";
connectAttr "bindPose6.m[33]" "bindPose6.p[34]";
connectAttr "bindPose6.m[34]" "bindPose6.p[35]";
connectAttr "bindPose6.m[35]" "bindPose6.p[36]";
connectAttr "bindPose6.m[19]" "bindPose6.p[37]";
connectAttr "bindPose6.m[37]" "bindPose6.p[38]";
connectAttr "bindPose6.m[38]" "bindPose6.p[39]";
connectAttr "bindPose6.m[39]" "bindPose6.p[40]";
connectAttr "bindPose6.m[40]" "bindPose6.p[41]";
connectAttr "bindPose6.m[19]" "bindPose6.p[42]";
connectAttr "bindPose6.m[42]" "bindPose6.p[43]";
connectAttr "bindPose6.m[43]" "bindPose6.p[44]";
connectAttr "bindPose6.m[44]" "bindPose6.p[45]";
connectAttr "bindPose6.m[45]" "bindPose6.p[46]";
connectAttr "jnt_backMain.bps" "bindPose6.wm[0]";
connectAttr "jnt_backLower_01.bps" "bindPose6.wm[1]";
connectAttr "jnt_backLower_02.bps" "bindPose6.wm[2]";
connectAttr "jnt_r_back_hip.bps" "bindPose6.wm[3]";
connectAttr "jnt_r_back_thigh.bps" "bindPose6.wm[4]";
connectAttr "jnt_r_back_knee.bps" "bindPose6.wm[5]";
connectAttr "jnt_r_back_sheen.bps" "bindPose6.wm[6]";
connectAttr "jnt_r_back_foot.bps" "bindPose6.wm[7]";
connectAttr "jnt_r_back_footEnd.bps" "bindPose6.wm[8]";
connectAttr "jnt_l_back_hip.bps" "bindPose6.wm[9]";
connectAttr "jnt_l_back_thigh.bps" "bindPose6.wm[10]";
connectAttr "jnt_l_back_knee.bps" "bindPose6.wm[11]";
connectAttr "jnt_l_back_sheen.bps" "bindPose6.wm[12]";
connectAttr "jnt_l_back_foot.bps" "bindPose6.wm[13]";
connectAttr "jnt_l_back_footEnd.bps" "bindPose6.wm[14]";
connectAttr "jnt_tail_01.bps" "bindPose6.wm[15]";
connectAttr "jnt_tail_02.bps" "bindPose6.wm[16]";
connectAttr "jnt_tail_03.bps" "bindPose6.wm[17]";
connectAttr "jnt_tail_04.bps" "bindPose6.wm[18]";
connectAttr "jnt_backFront_01.bps" "bindPose6.wm[19]";
connectAttr "jnt_head_01.bps" "bindPose6.wm[20]";
connectAttr "jnt_head_02.bps" "bindPose6.wm[21]";
connectAttr "jnt_nose_01.bps" "bindPose6.wm[22]";
connectAttr "jnt_nose_02.bps" "bindPose6.wm[23]";
connectAttr "jnt_noseEnd.bps" "bindPose6.wm[24]";
connectAttr "jnt_l_eyeLash.bps" "bindPose6.wm[25]";
connectAttr "jnt_r_eyeLash.bps" "bindPose6.wm[26]";
connectAttr "jnt_r_ear_01.bps" "bindPose6.wm[27]";
connectAttr "jnt_r_ear_02.bps" "bindPose6.wm[28]";
connectAttr "jnt_r_ear_03.bps" "bindPose6.wm[29]";
connectAttr "jnt_r_ear_04.bps" "bindPose6.wm[30]";
connectAttr "jnt_r_ear_05.bps" "bindPose6.wm[31]";
connectAttr "jnt_l_ear_01.bps" "bindPose6.wm[32]";
connectAttr "jnt_l_ear_02.bps" "bindPose6.wm[33]";
connectAttr "jnt_l_ear_03.bps" "bindPose6.wm[34]";
connectAttr "jnt_l_ear_04.bps" "bindPose6.wm[35]";
connectAttr "jnt_l_ear_05.bps" "bindPose6.wm[36]";
connectAttr "jnt_l_front_hip.bps" "bindPose6.wm[37]";
connectAttr "jnt_l_front_thigh.bps" "bindPose6.wm[38]";
connectAttr "jnt_l_front_knee.bps" "bindPose6.wm[39]";
connectAttr "jnt_l_front_foot.bps" "bindPose6.wm[40]";
connectAttr "jnt_l_front_footEnd.bps" "bindPose6.wm[41]";
connectAttr "jnt_r_front_hip.bps" "bindPose6.wm[42]";
connectAttr "jnt_r_front_thigh.bps" "bindPose6.wm[43]";
connectAttr "jnt_r_front_knee.bps" "bindPose6.wm[44]";
connectAttr "jnt_r_front_foot.bps" "bindPose6.wm[45]";
connectAttr "jnt_r_front_footEnd.bps" "bindPose6.wm[46]";
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "place2dTexture2.o" "checker1.uv";
connectAttr "place2dTexture2.ofs" "checker1.fs";
connectAttr "skinCluster2GroupParts.og" "skinCluster2.ip[0].ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2.ip[0].gi";
connectAttr "jnt_backMain.wm" "skinCluster2.ma[0]";
connectAttr "jnt_backLower_01.wm" "skinCluster2.ma[1]";
connectAttr "jnt_backLower_02.wm" "skinCluster2.ma[2]";
connectAttr "jnt_r_back_hip.wm" "skinCluster2.ma[3]";
connectAttr "jnt_r_back_thigh.wm" "skinCluster2.ma[4]";
connectAttr "jnt_r_back_knee.wm" "skinCluster2.ma[5]";
connectAttr "jnt_r_back_sheen.wm" "skinCluster2.ma[6]";
connectAttr "jnt_r_back_foot.wm" "skinCluster2.ma[7]";
connectAttr "jnt_r_back_footEnd.wm" "skinCluster2.ma[8]";
connectAttr "jnt_l_back_hip.wm" "skinCluster2.ma[9]";
connectAttr "jnt_l_back_thigh.wm" "skinCluster2.ma[10]";
connectAttr "jnt_l_back_knee.wm" "skinCluster2.ma[11]";
connectAttr "jnt_l_back_sheen.wm" "skinCluster2.ma[12]";
connectAttr "jnt_l_back_foot.wm" "skinCluster2.ma[13]";
connectAttr "jnt_l_back_footEnd.wm" "skinCluster2.ma[14]";
connectAttr "jnt_tail_01.wm" "skinCluster2.ma[15]";
connectAttr "jnt_tail_02.wm" "skinCluster2.ma[16]";
connectAttr "jnt_tail_03.wm" "skinCluster2.ma[17]";
connectAttr "jnt_tail_04.wm" "skinCluster2.ma[18]";
connectAttr "jnt_backFront_01.wm" "skinCluster2.ma[19]";
connectAttr "jnt_head_01.wm" "skinCluster2.ma[20]";
connectAttr "jnt_head_02.wm" "skinCluster2.ma[21]";
connectAttr "jnt_nose_01.wm" "skinCluster2.ma[22]";
connectAttr "jnt_nose_02.wm" "skinCluster2.ma[23]";
connectAttr "jnt_noseEnd.wm" "skinCluster2.ma[24]";
connectAttr "jnt_l_eyeLash.wm" "skinCluster2.ma[25]";
connectAttr "jnt_r_eyeLash.wm" "skinCluster2.ma[26]";
connectAttr "jnt_r_ear_01.wm" "skinCluster2.ma[27]";
connectAttr "jnt_r_ear_02.wm" "skinCluster2.ma[28]";
connectAttr "jnt_r_ear_03.wm" "skinCluster2.ma[29]";
connectAttr "jnt_r_ear_04.wm" "skinCluster2.ma[30]";
connectAttr "jnt_r_ear_05.wm" "skinCluster2.ma[31]";
connectAttr "jnt_l_ear_01.wm" "skinCluster2.ma[32]";
connectAttr "jnt_l_ear_02.wm" "skinCluster2.ma[33]";
connectAttr "jnt_l_ear_03.wm" "skinCluster2.ma[34]";
connectAttr "jnt_l_ear_04.wm" "skinCluster2.ma[35]";
connectAttr "jnt_l_ear_05.wm" "skinCluster2.ma[36]";
connectAttr "jnt_l_front_hip.wm" "skinCluster2.ma[37]";
connectAttr "jnt_l_front_thigh.wm" "skinCluster2.ma[38]";
connectAttr "jnt_l_front_knee.wm" "skinCluster2.ma[39]";
connectAttr "jnt_l_front_foot.wm" "skinCluster2.ma[40]";
connectAttr "jnt_l_front_footEnd.wm" "skinCluster2.ma[41]";
connectAttr "jnt_r_front_hip.wm" "skinCluster2.ma[42]";
connectAttr "jnt_r_front_thigh.wm" "skinCluster2.ma[43]";
connectAttr "jnt_r_front_knee.wm" "skinCluster2.ma[44]";
connectAttr "jnt_r_front_foot.wm" "skinCluster2.ma[45]";
connectAttr "jnt_r_front_footEnd.wm" "skinCluster2.ma[46]";
connectAttr "jnt_backMain.liw" "skinCluster2.lw[0]";
connectAttr "jnt_backLower_01.liw" "skinCluster2.lw[1]";
connectAttr "jnt_backLower_02.liw" "skinCluster2.lw[2]";
connectAttr "jnt_r_back_hip.liw" "skinCluster2.lw[3]";
connectAttr "jnt_r_back_thigh.liw" "skinCluster2.lw[4]";
connectAttr "jnt_r_back_knee.liw" "skinCluster2.lw[5]";
connectAttr "jnt_r_back_sheen.liw" "skinCluster2.lw[6]";
connectAttr "jnt_r_back_foot.liw" "skinCluster2.lw[7]";
connectAttr "jnt_r_back_footEnd.liw" "skinCluster2.lw[8]";
connectAttr "jnt_l_back_hip.liw" "skinCluster2.lw[9]";
connectAttr "jnt_l_back_thigh.liw" "skinCluster2.lw[10]";
connectAttr "jnt_l_back_knee.liw" "skinCluster2.lw[11]";
connectAttr "jnt_l_back_sheen.liw" "skinCluster2.lw[12]";
connectAttr "jnt_l_back_foot.liw" "skinCluster2.lw[13]";
connectAttr "jnt_l_back_footEnd.liw" "skinCluster2.lw[14]";
connectAttr "jnt_tail_01.liw" "skinCluster2.lw[15]";
connectAttr "jnt_tail_02.liw" "skinCluster2.lw[16]";
connectAttr "jnt_tail_03.liw" "skinCluster2.lw[17]";
connectAttr "jnt_tail_04.liw" "skinCluster2.lw[18]";
connectAttr "jnt_backFront_01.liw" "skinCluster2.lw[19]";
connectAttr "jnt_head_01.liw" "skinCluster2.lw[20]";
connectAttr "jnt_head_02.liw" "skinCluster2.lw[21]";
connectAttr "jnt_nose_01.liw" "skinCluster2.lw[22]";
connectAttr "jnt_nose_02.liw" "skinCluster2.lw[23]";
connectAttr "jnt_noseEnd.liw" "skinCluster2.lw[24]";
connectAttr "jnt_l_eyeLash.liw" "skinCluster2.lw[25]";
connectAttr "jnt_r_eyeLash.liw" "skinCluster2.lw[26]";
connectAttr "jnt_r_ear_01.liw" "skinCluster2.lw[27]";
connectAttr "jnt_r_ear_02.liw" "skinCluster2.lw[28]";
connectAttr "jnt_r_ear_03.liw" "skinCluster2.lw[29]";
connectAttr "jnt_r_ear_04.liw" "skinCluster2.lw[30]";
connectAttr "jnt_r_ear_05.liw" "skinCluster2.lw[31]";
connectAttr "jnt_l_ear_01.liw" "skinCluster2.lw[32]";
connectAttr "jnt_l_ear_02.liw" "skinCluster2.lw[33]";
connectAttr "jnt_l_ear_03.liw" "skinCluster2.lw[34]";
connectAttr "jnt_l_ear_04.liw" "skinCluster2.lw[35]";
connectAttr "jnt_l_ear_05.liw" "skinCluster2.lw[36]";
connectAttr "jnt_l_front_hip.liw" "skinCluster2.lw[37]";
connectAttr "jnt_l_front_thigh.liw" "skinCluster2.lw[38]";
connectAttr "jnt_l_front_knee.liw" "skinCluster2.lw[39]";
connectAttr "jnt_l_front_foot.liw" "skinCluster2.lw[40]";
connectAttr "jnt_l_front_footEnd.liw" "skinCluster2.lw[41]";
connectAttr "jnt_r_front_hip.liw" "skinCluster2.lw[42]";
connectAttr "jnt_r_front_thigh.liw" "skinCluster2.lw[43]";
connectAttr "jnt_r_front_knee.liw" "skinCluster2.lw[44]";
connectAttr "jnt_r_front_foot.liw" "skinCluster2.lw[45]";
connectAttr "jnt_r_front_footEnd.liw" "skinCluster2.lw[46]";
connectAttr "jnt_backMain.obcc" "skinCluster2.ifcl[0]";
connectAttr "jnt_backLower_01.obcc" "skinCluster2.ifcl[1]";
connectAttr "jnt_backLower_02.obcc" "skinCluster2.ifcl[2]";
connectAttr "jnt_r_back_hip.obcc" "skinCluster2.ifcl[3]";
connectAttr "jnt_r_back_thigh.obcc" "skinCluster2.ifcl[4]";
connectAttr "jnt_r_back_knee.obcc" "skinCluster2.ifcl[5]";
connectAttr "jnt_r_back_sheen.obcc" "skinCluster2.ifcl[6]";
connectAttr "jnt_r_back_foot.obcc" "skinCluster2.ifcl[7]";
connectAttr "jnt_r_back_footEnd.obcc" "skinCluster2.ifcl[8]";
connectAttr "jnt_l_back_hip.obcc" "skinCluster2.ifcl[9]";
connectAttr "jnt_l_back_thigh.obcc" "skinCluster2.ifcl[10]";
connectAttr "jnt_l_back_knee.obcc" "skinCluster2.ifcl[11]";
connectAttr "jnt_l_back_sheen.obcc" "skinCluster2.ifcl[12]";
connectAttr "jnt_l_back_foot.obcc" "skinCluster2.ifcl[13]";
connectAttr "jnt_l_back_footEnd.obcc" "skinCluster2.ifcl[14]";
connectAttr "jnt_tail_01.obcc" "skinCluster2.ifcl[15]";
connectAttr "jnt_tail_02.obcc" "skinCluster2.ifcl[16]";
connectAttr "jnt_tail_03.obcc" "skinCluster2.ifcl[17]";
connectAttr "jnt_tail_04.obcc" "skinCluster2.ifcl[18]";
connectAttr "jnt_backFront_01.obcc" "skinCluster2.ifcl[19]";
connectAttr "jnt_head_01.obcc" "skinCluster2.ifcl[20]";
connectAttr "jnt_head_02.obcc" "skinCluster2.ifcl[21]";
connectAttr "jnt_nose_01.obcc" "skinCluster2.ifcl[22]";
connectAttr "jnt_nose_02.obcc" "skinCluster2.ifcl[23]";
connectAttr "jnt_noseEnd.obcc" "skinCluster2.ifcl[24]";
connectAttr "jnt_l_eyeLash.obcc" "skinCluster2.ifcl[25]";
connectAttr "jnt_r_eyeLash.obcc" "skinCluster2.ifcl[26]";
connectAttr "jnt_r_ear_01.obcc" "skinCluster2.ifcl[27]";
connectAttr "jnt_r_ear_02.obcc" "skinCluster2.ifcl[28]";
connectAttr "jnt_r_ear_03.obcc" "skinCluster2.ifcl[29]";
connectAttr "jnt_r_ear_04.obcc" "skinCluster2.ifcl[30]";
connectAttr "jnt_r_ear_05.obcc" "skinCluster2.ifcl[31]";
connectAttr "jnt_l_ear_01.obcc" "skinCluster2.ifcl[32]";
connectAttr "jnt_l_ear_02.obcc" "skinCluster2.ifcl[33]";
connectAttr "jnt_l_ear_03.obcc" "skinCluster2.ifcl[34]";
connectAttr "jnt_l_ear_04.obcc" "skinCluster2.ifcl[35]";
connectAttr "jnt_l_ear_05.obcc" "skinCluster2.ifcl[36]";
connectAttr "jnt_l_front_hip.obcc" "skinCluster2.ifcl[37]";
connectAttr "jnt_l_front_thigh.obcc" "skinCluster2.ifcl[38]";
connectAttr "jnt_l_front_knee.obcc" "skinCluster2.ifcl[39]";
connectAttr "jnt_l_front_foot.obcc" "skinCluster2.ifcl[40]";
connectAttr "jnt_l_front_footEnd.obcc" "skinCluster2.ifcl[41]";
connectAttr "jnt_r_front_hip.obcc" "skinCluster2.ifcl[42]";
connectAttr "jnt_r_front_thigh.obcc" "skinCluster2.ifcl[43]";
connectAttr "jnt_r_front_knee.obcc" "skinCluster2.ifcl[44]";
connectAttr "jnt_r_front_foot.obcc" "skinCluster2.ifcl[45]";
connectAttr "jnt_r_front_footEnd.obcc" "skinCluster2.ifcl[46]";
connectAttr "bindPose6.msg" "skinCluster2.bp";
connectAttr "groupParts5.og" "tweak2.ip[0].ig";
connectAttr "groupId5.id" "tweak2.ip[0].gi";
connectAttr "skinCluster2GroupId.msg" "skinCluster2Set.gn" -na;
connectAttr "geo_pigShape.iog.og[0]" "skinCluster2Set.dsm" -na;
connectAttr "skinCluster2.msg" "skinCluster2Set.ub[0]";
connectAttr "tweak2.og[0]" "skinCluster2GroupParts.ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2GroupParts.gi";
connectAttr "groupId5.msg" "tweakSet2.gn" -na;
connectAttr "geo_pigShape.iog.og[1]" "tweakSet2.dsm" -na;
connectAttr "tweak2.msg" "tweakSet2.ub[0]";
connectAttr "geo_pigShapeOrig1.w" "groupParts5.ig";
connectAttr "groupId5.id" "groupParts5.gi";
connectAttr "skinCluster2.og[0]" "polyMapCut1.ip";
connectAttr "polyMapCut1.out" "polyTweakUV1.ip";
connectAttr "polyTweakUV1.out" "polyMapCut2.ip";
connectAttr "polyMapCut2.out" "polyMergeUV1.ip";
connectAttr "polyMergeUV1.out" "polyTweakUV2.ip";
connectAttr "polyTweakUV2.out" "polyMapCut3.ip";
connectAttr "polyMapCut3.out" "polyTweakUV3.ip";
connectAttr "polyTweakUV3.out" "polyMergeUV2.ip";
connectAttr "polyMergeUV2.out" "polyTweakUV4.ip";
connectAttr "file1.oc" "mat_refImg.c";
connectAttr "mat_refImg.oc" "lambert4SG.ss";
connectAttr "pPlaneShape1.iog" "lambert4SG.dsm" -na;
connectAttr "pPlaneShape2.iog" "lambert4SG.dsm" -na;
connectAttr "lambert4SG.msg" "materialInfo3.sg";
connectAttr "mat_refImg.msg" "materialInfo3.m";
connectAttr "file1.msg" "materialInfo3.t" -na;
connectAttr "place2dTexture3.c" "file1.c";
connectAttr "place2dTexture3.tf" "file1.tf";
connectAttr "place2dTexture3.rf" "file1.rf";
connectAttr "place2dTexture3.mu" "file1.mu";
connectAttr "place2dTexture3.mv" "file1.mv";
connectAttr "place2dTexture3.s" "file1.s";
connectAttr "place2dTexture3.wu" "file1.wu";
connectAttr "place2dTexture3.wv" "file1.wv";
connectAttr "place2dTexture3.re" "file1.re";
connectAttr "place2dTexture3.of" "file1.of";
connectAttr "place2dTexture3.r" "file1.ro";
connectAttr "place2dTexture3.n" "file1.n";
connectAttr "place2dTexture3.vt1" "file1.vt1";
connectAttr "place2dTexture3.vt2" "file1.vt2";
connectAttr "place2dTexture3.vt3" "file1.vt3";
connectAttr "place2dTexture3.vc1" "file1.vc1";
connectAttr "place2dTexture3.o" "file1.uv";
connectAttr "place2dTexture3.ofs" "file1.fs";
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "mat_refImg.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "checker1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "geo_pigShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlane8Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
dataStructure -fmt "raw" -as "name=externalContentTable:string=node:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
applyMetadata -fmt "raw" -v "channel\nname externalContentTable\nstream\nname v1.0\nindexType numeric\nstructure externalContentTable\n0\n\"file1\" \"fileTextureName\" \"C:/Users/dadiu/Desktop/DADIU_Mie/sketches/Bacon.jpg\" 3506169772 \"C:/Users/dadiu/Desktop/DADIU_Mie/sketches/Bacon.jpg\" \"sourceImages\"\nendStream\nendChannel\nendAssociations\n" 
		-scn;
// End of piglet_03.ma
