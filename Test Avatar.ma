//Maya ASCII 2012 scene
//Name: Test Avatar.ma
//Last modified: Tue, Apr 23, 2013 05:08:41 PM
//Codeset: 1252
requires maya "2012";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2012";
fileInfo "version" "2012 x64";
fileInfo "cutIdentifier" "001200000000-796618";
fileInfo "osv" "Microsoft Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.8864428056619573 7.2717381703824335 60.03886420430505 ;
	setAttr ".r" -type "double3" -0.4710960580134565 -13.189073652592908 8.1044970306721798e-012 ;
	setAttr ".rp" -type "double3" 0 8.8817841970012523e-016 0 ;
	setAttr ".rpt" -type "double3" -5.5961032707125218e-015 -6.9456592512595469e-015 
		-2.2804429162178043e-015 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 57.411087128296273;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 10.212326807787377 6.7996993513899255 4.1440313552844117 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 69.570202471053932;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 69.572999786160224;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 -3.5527136788005009e-015 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".rp" -type "double3" 0 9.8607613152626476e-032 -1.4210854715202004e-014 ;
	setAttr ".rpt" -type "double3" 1.1472476000655105e-016 -6.836594273855176e-016 2.2549187331893287e-014 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 100.10000000000002;
	setAttr ".ow" 97.558191570663951;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" -1.4210854715202004e-014 -6.836594273855176e-016 -1.744104601510485e-014 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCylinder1";
	setAttr ".t" -type "double3" -8.4558019526040589 2.1323788622585513 7.9617046567417731 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "pCylinderShape1Orig" -p "pCylinder1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pSphere1";
	setAttr ".t" -type "double3" -8.3741823669901478 6.0913110195087228 8.1111666480648363 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.90616592163967091 0.90616592163967091 0.90616592163967091 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "pSphereShape1" -p "pSphere1";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "pSphereShape1Orig" -p "pSphere1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode joint -n "baby_head";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" -8.5951389704523358 7.8425505744837398 10.362278793961583 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -89.47914362549804 ;
	setAttr ".bps" -type "matrix" 0.0090905334567916718 -0.99995868024707457 -0 0 0.99995868024707457 0.0090905334567916718 0 0
		 0 -0 1 0 -8.4185398012015042 7.7647989006501295 8.1891296735458141 1;
	setAttr ".radi" 0.63082184785950846;
createNode joint -n "joint3" -p "baby_head";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" 3.5576871261833389 0.0049130595264461618 -0.16160673776599666 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 0.018254299853019965 ;
	setAttr ".bps" -type "matrix" 0.0094091174607432437 -0.99995573327453335 -0 0 0.99995573327453335 0.0094091174607432437 0 0
		 0 -0 1 0 -8.3812856708320975 4.2073034395518309 8.0275229357798175 1;
	setAttr ".radi" 0.66236939875002787;
createNode joint -n "joint4" -p "joint3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 3.7075946267466779 -0.065930564667050717 -1.9721522630525295e-031 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 89.460889325645084 ;
	setAttr ".bps" -type "matrix" 1 8.8991314317610204e-016 0 0 -8.8991314317610204e-016 1 0 0
		 0 0 1 0 -8.3460829723010583 0.46613001178742586 8.0275229357798175 1;
	setAttr ".radi" 0.66236939875002787;
createNode joint -n "baby_shoulder" -p "joint3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" 0.39398191466352728 -0.64923082564759937 1.1678941318076141 ;
	setAttr ".r" -type "double3" -2.9935050933808069 -0.77422240748079429 -39.907231779460325 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 0.45723722214992152 ;
	setAttr ".bps" -type "matrix" 0.017388674879357802 -0.99984880556309108 -0 0 0.99984880556309108 0.017388674879357802 0 0
		 0 -0 1 0 -5.4272584981989977 5.5702711823580549 8.4969287567398268 1;
	setAttr ".radi" 0.57977792547796159;
createNode joint -n "baby_elbow" -p "baby_shoulder";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 2.5423732259072573 3.4694469519536142e-016 0 ;
	setAttr ".r" -type "double3" -0.17042678142287759 -6.1015684694295684 108.89827325365668 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 1.5999487875530238 ;
	setAttr ".bps" -type "matrix" 0.045298419515391458 -0.99897349974331529 0 0 0.99897349974331529 0.045298419515391458 0 0
		 0 0 1 0 -5.383049996751712 3.0282823491391007 8.4969287567398268 1;
	setAttr ".radi" 0.60264144655724206;
createNode joint -n "baby_wrist" -p "baby_elbow";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 2.9788030071236431 -0.0099091489590256744 0.0041066441623727294 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 87.403703315942096 ;
	setAttr ".bps" -type "matrix" 0.99999999999999989 4.163336342344337e-016 0 0 -4.163336342344337e-016 0.99999999999999989 0 0
		 0 0 1 0 -5.2497495534564589 0.088585737632920214 8.4969287567398268 1;
	setAttr ".radi" 0.60264144655724206;
createNode ikEffector -n "effector1" -p "baby_elbow";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "joint2" -p "joint3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.028466298077312047 -0.0049039904802405943 0.16160673776599666 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 89.460889325645027 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 0 0 0 0 1.0000000000000002 0 0 0 0 1 0
		 -8.3864572869710194 4.2357223352968862 8.1891296735458141 1;
	setAttr ".radi" 0.63082184785950846;
createNode transform -n "pCylinder2";
	setAttr ".t" -type "double3" -5.3655965030811359 2.786786141792009 8.5027071738210189 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "pCylinderShape2" -p "pCylinder2";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "pCylinderShape2Orig" -p "pCylinder2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode ikHandle -n "baby_ikhandle";
	setAttr ".t" -type "double3" -7.9818609445462929 0.95570861083130565 11.564266044805953 ;
	setAttr ".r" -type "double3" 0.1525345012635542 -3.0264539406212285 -18.458600224865883 ;
	setAttr ".roc" yes;
createNode transform -n "pCylinder3";
	setAttr ".t" -type "double3" 4.0337528564662577 3.4610882565213714 8.2460138458328416 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "pCylinderShape3" -p "pCylinder3";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "pCylinderShape3Orig" -p "pCylinder3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pSphere2";
	setAttr ".t" -type "double3" 9.4781027716910256 10.905914168998972 8.4869591101675539 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.83345942739160117 0.83345942739160117 0.83345942739160117 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "pSphereShape2" -p "pSphere2";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "pSphereShape2Orig" -p "pSphere2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pPipe1";
	setAttr ".t" -type "double3" 1.8085587025789103 2.9710942835505989 9.6605975793893784 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 1 1.2788864507414446 1 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "pPipeShape1" -p "pPipe1";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "pPipeShape1Orig" -p "pPipe1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode ikHandle -n "mother_ikhandle";
	setAttr ".t" -type "double3" 3.535974174678485 1.5663058754437102 10.574968627769117 ;
	setAttr ".r" -type "double3" 179.90195008147276 0.19313225412275534 -154.50720283978251 ;
	setAttr ".roc" yes;
createNode joint -n "mother_head";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" 6.2718285560228937 12.511144821464775 8.8279301748323817 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -88.887600383702193 ;
	setAttr ".bps" -type "matrix" 0.019413816196323541 -0.99981153411065193 -0 0 0.99981153411065193 0.019413816196323541 0 0
		 0 -0 1 0 9.367565474896919 13.722791420003933 8.4845574453672832 1;
	setAttr ".radi" 0.73019679229165657;
createNode joint -n "joint16" -p "mother_head";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 5.450471317638697 -5.5511151231257827e-016 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 88.887600383702193 ;
	setAttr ".bps" -type "matrix" 0.99999999999999989 0 0 0 0 0.99999999999999989 0 0
		 0 0 1 0 9.4733799232408895 8.2733473302894804 8.4845574453672832 1;
	setAttr ".radi" 0.73019679229165657;
createNode joint -n "joint10" -p "mother_head";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" 5.4180044858714718 -0.012669466117651851 0.2078712501815172 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 2.2069531490250793e-032 -1.6239554828848304 ;
	setAttr ".bps" -type "matrix" -0.0089282155597241175 -0.99996014268915701 -1.2246467991473535e-016 0
		 -0.99996014268915701 0.0089282155597240065 0 0 1.0933910607313663e-018 1.2245979880192066e-016 -1 0
		 4.0879260264372013 6.914217937461153 8.6970480857568617 1;
	setAttr ".radi" 0.79964758413106252;
createNode joint -n "joint11" -p "joint10";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 6.7931866265338741 -2.4077961846558082e-015 -8.3192542581953165e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 180 89.488444133412969 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 3.3306690738754696e-016 1.2355807097546672e-016 0
		 -2.2204460492503131e-016 1.0000000000000002 1.2245979880192069e-016 0 -1.2355807097546667e-016 -1.2245979880192071e-016 1 0
		 4.0272749918980741 0.12130206907826757 8.6970480857568617 1;
	setAttr ".radi" 0.79964758413106252;
createNode joint -n "mother_shoulder" -p "joint10";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" 0.79008096175670861 0.76069783587027118 -1.5581308372137102 ;
	setAttr ".r" -type "double3" 0.20138189464561596 0.079743238646416748 29.514385817570595 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 -1.8037227528369488 ;
	setAttr ".bps" -type "matrix" 0.022550654924377689 -0.99974570164741494 -0 0 0.99974570164741494 0.022550654924377689 0 0
		 0 -0 1 0 1.8641742859196229 7.0393361130176721 9.6771545796483647 1;
	setAttr ".radi" 0.62466544842947347;
createNode joint -n "mother_elbow" -p "mother_shoulder";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 3.410198669636487 1.3600232051658168e-015 0 ;
	setAttr ".r" -type "double3" 2.0956281468007666e-024 -1.3618386306626322e-006 91.391442703987451 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999914622634 0 -3.9220074459017371 ;
	setAttr ".bps" -type "matrix" -0.045883261826214022 -0.99894680853596374 0 0 -0.99894680853596374 0.045883261826214022 1.4901161316312335e-008 0
		 -1.4885467540409766e-008 6.8371388619101078e-010 -1 0 1.9410764993421685 3.6300046512848616 9.6771545796483647 1;
	setAttr ".radi" 0.66313716613753937;
createNode joint -n "mother_wrist" -p "mother_elbow";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 4.2178224784841651 1.8596235660824968e-015 2.7613835044181012e-023 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 180 87.370159440348132 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 1.0338951915984461e-015 -1.4885467417945084e-008 0
		 -1.1449174941446927e-015 1.0000000000000002 6.8371388619102784e-010 0 1.4885467417945085e-008 -6.8371388619101078e-010 1 0
		 1.7475490462253869 -0.58337565256814417 9.6771545796483647 1;
	setAttr ".radi" 0.66313716613753937;
createNode ikEffector -n "effector2" -p "mother_elbow";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode polyCylinder -n "polyCylinder1";
	setAttr ".r" 1.4412904072961035;
	setAttr ".h" 4.2647577245171027;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polySphere -n "polySphere1";
	setAttr ".r" 2.0832293357923142;
createNode skinCluster -n "skinCluster1";
	setAttr -s 382 ".wl";
	setAttr -s 2 ".wl[0].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[1].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[2].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[3].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[4].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[5].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[6].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[7].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[8].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[9].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[10].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[11].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[12].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[13].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[14].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[15].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[16].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[17].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[18].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[19].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[20].w[0:1]"  0.50388481720589062 0.49611518279410943;
	setAttr -s 2 ".wl[21].w[0:1]"  0.50376714599635986 0.49623285400364009;
	setAttr -s 2 ".wl[22].w[0:1]"  0.50377309080601662 0.49622690919398338;
	setAttr -s 2 ".wl[23].w[0:1]"  0.503891416865895 0.49610858313410494;
	setAttr -s 2 ".wl[24].w[0:1]"  0.50411322450462948 0.49588677549537047;
	setAttr -s 2 ".wl[25].w[0:1]"  0.5044310612634415 0.4955689387365585;
	setAttr -s 2 ".wl[26].w[0:1]"  0.5048368543817997 0.49516314561820035;
	setAttr -s 2 ".wl[27].w[0:1]"  0.50531865194141867 0.49468134805858133;
	setAttr -s 2 ".wl[28].w[0:1]"  0.50585579626796406 0.49414420373203599;
	setAttr -s 2 ".wl[29].w[0:1]"  0.50641238492362428 0.49358761507637572;
	setAttr -s 2 ".wl[30].w[0:1]"  0.50693042627612506 0.49306957372387494;
	setAttr -s 2 ".wl[31].w[0:1]"  0.5073278808745707 0.49267211912542935;
	setAttr -s 2 ".wl[32].w[0:1]"  0.50751131470423916 0.49248868529576084;
	setAttr -s 2 ".wl[33].w[0:1]"  0.50741021981669066 0.49258978018330946;
	setAttr -s 2 ".wl[34].w[0:1]"  0.5070202064664926 0.49297979353350746;
	setAttr -s 2 ".wl[35].w[0:1]"  0.50641893688905137 0.49358106311094868;
	setAttr -s 2 ".wl[36].w[0:1]"  0.50573272637364275 0.49426727362635731;
	setAttr -s 2 ".wl[37].w[0:1]"  0.50508042079927307 0.49491957920072693;
	setAttr -s 2 ".wl[38].w[0:1]"  0.50453836739757818 0.49546163260242193;
	setAttr -s 2 ".wl[39].w[0:1]"  0.50413870801041272 0.49586129198958728;
	setAttr -s 2 ".wl[40].w[0:1]"  0.51684373214544155 0.48315626785455851;
	setAttr -s 2 ".wl[41].w[0:1]"  0.51638682293629168 0.48361317706370827;
	setAttr -s 2 ".wl[42].w[0:1]"  0.51625702854979283 0.48374297145020717;
	setAttr -s 2 ".wl[43].w[0:1]"  0.51643881547213544 0.48356118452786451;
	setAttr -s 2 ".wl[44].w[0:1]"  0.51691165849947041 0.48308834150052954;
	setAttr -s 2 ".wl[45].w[0:1]"  0.51765105041787263 0.48234894958212732;
	setAttr -s 2 ".wl[46].w[0:1]"  0.51862550000665131 0.48137449999334875;
	setAttr -s 2 ".wl[47].w[0:1]"  0.51979016437083581 0.48020983562916419;
	setAttr -s 2 ".wl[48].w[0:1]"  0.52107782370969957 0.47892217629030043;
	setAttr -s 2 ".wl[49].w[0:1]"  0.52238906164025367 0.47761093835974633;
	setAttr -s 2 ".wl[50].w[0:1]"  0.52358648207736047 0.47641351792263953;
	setAttr -s 2 ".wl[51].w[0:1]"  0.52450180666421597 0.47549819333578397;
	setAttr -s 2 ".wl[52].w[0:1]"  0.52496548779151475 0.47503451220848519;
	setAttr -s 2 ".wl[53].w[0:1]"  0.52485907460879144 0.47514092539120856;
	setAttr -s 2 ".wl[54].w[0:1]"  0.52416915643118778 0.47583084356881228;
	setAttr -s 2 ".wl[55].w[0:1]"  0.52300664655318552 0.47699335344681448;
	setAttr -s 2 ".wl[56].w[0:1]"  0.52157185098871051 0.47842814901128944;
	setAttr -s 2 ".wl[57].w[0:1]"  0.52008625165562883 0.47991374834437123;
	setAttr -s 2 ".wl[58].w[0:1]"  0.51873316675600978 0.48126683324399022;
	setAttr -s 2 ".wl[59].w[0:1]"  0.51763220338461513 0.48236779661538487;
	setAttr -s 2 ".wl[60].w[0:1]"  0.53690267051599139 0.46309732948400856;
	setAttr -s 2 ".wl[61].w[0:1]"  0.53608435209098781 0.46391564790901213;
	setAttr -s 2 ".wl[62].w[0:1]"  0.53579390600361287 0.46420609399638707;
	setAttr -s 2 ".wl[63].w[0:1]"  0.53602115070571543 0.46397884929428451;
	setAttr -s 2 ".wl[64].w[0:1]"  0.53673748626842566 0.46326251373157434;
	setAttr -s 2 ".wl[65].w[0:1]"  0.53789887266252656 0.46210112733747344;
	setAttr -s 2 ".wl[66].w[0:1]"  0.53944289483625052 0.46055710516374948;
	setAttr -s 2 ".wl[67].w[0:1]"  0.54128131165301596 0.45871868834698398;
	setAttr -s 2 ".wl[68].w[0:1]"  0.54329017785708322 0.45670982214291672;
	setAttr -s 2 ".wl[69].w[0:1]"  0.54530146699095594 0.45469853300904406;
	setAttr -s 2 ".wl[70].w[0:1]"  0.54710319197991197 0.45289680802008803;
	setAttr -s 2 ".wl[71].w[0:1]"  0.54845739606909782 0.45154260393090218;
	setAttr -s 2 ".wl[72].w[0:1]"  0.54914231502404864 0.45085768497595136;
	setAttr -s 2 ".wl[73].w[0:1]"  0.5490132500530791 0.4509867499469209;
	setAttr -s 2 ".wl[74].w[0:1]"  0.54805792510959039 0.45194207489040966;
	setAttr -s 2 ".wl[75].w[0:1]"  0.54641387414161546 0.45358612585838454;
	setAttr -s 2 ".wl[76].w[0:1]"  0.544332577926957 0.45566742207304295;
	setAttr -s 2 ".wl[77].w[0:1]"  0.54210813737608732 0.45789186262391263;
	setAttr -s 2 ".wl[78].w[0:1]"  0.54000771809877246 0.45999228190122754;
	setAttr -s 2 ".wl[79].w[0:1]"  0.53823108604937575 0.46176891395062425;
	setAttr -s 2 ".wl[80].w[0:1]"  0.5637244352689893 0.43627556473101065;
	setAttr -s 2 ".wl[81].w[0:1]"  0.56254525012494661 0.43745474987505334;
	setAttr -s 2 ".wl[82].w[0:1]"  0.56208967802016441 0.43791032197983554;
	setAttr -s 2 ".wl[83].w[0:1]"  0.56235741554645702 0.43764258445354293;
	setAttr -s 2 ".wl[84].w[0:1]"  0.56331371398975749 0.43668628601024262;
	setAttr -s 2 ".wl[85].w[0:1]"  0.56489386125630847 0.43510613874369153;
	setAttr -s 2 ".wl[86].w[0:1]"  0.56700094730747419 0.43299905269252581;
	setAttr -s 2 ".wl[87].w[0:1]"  0.56949882139337193 0.43050117860662807;
	setAttr -s 2 ".wl[88].w[0:1]"  0.57220342435696159 0.42779657564303836;
	setAttr -s 2 ".wl[89].w[0:1]"  0.57487821880541978 0.42512178119458027;
	setAttr -s 2 ".wl[90].w[0:1]"  0.57724153696065672 0.42275846303934334;
	setAttr -s 2 ".wl[91].w[0:1]"  0.57899452107791372 0.42100547892208628;
	setAttr -s 2 ".wl[92].w[0:1]"  0.57987279038910766 0.42012720961089228;
	setAttr -s 2 ".wl[93].w[0:1]"  0.57971233459434857 0.42028766540565143;
	setAttr -s 2 ".wl[94].w[0:1]"  0.57850469130422533 0.42149530869577467;
	setAttr -s 2 ".wl[95].w[0:1]"  0.57641203213431125 0.4235879678656887;
	setAttr -s 2 ".wl[96].w[0:1]"  0.57373020806822428 0.42626979193177572;
	setAttr -s 2 ".wl[97].w[0:1]"  0.57081536357914764 0.42918463642085242;
	setAttr -s 2 ".wl[98].w[0:1]"  0.56800796344750004 0.43199203655250001;
	setAttr -s 2 ".wl[99].w[0:1]"  0.56558160603728436 0.43441839396271564;
	setAttr -s 2 ".wl[100].w[0:1]"  0.59715976703631757 0.40284023296368243;
	setAttr -s 2 ".wl[101].w[0:1]"  0.59562956899675368 0.40437043100324643;
	setAttr -s 2 ".wl[102].w[0:1]"  0.59501087638946992 0.40498912361053008;
	setAttr -s 2 ".wl[103].w[0:1]"  0.59531580599976464 0.40468419400023542;
	setAttr -s 2 ".wl[104].w[0:1]"  0.59650464027590111 0.40349535972409883;
	setAttr -s 2 ".wl[105].w[0:1]"  0.59849153088643736 0.40150846911356269;
	setAttr -s 2 ".wl[106].w[0:1]"  0.60114341004680261 0.3988565899531975;
	setAttr -s 2 ".wl[107].w[0:1]"  0.60427433782157891 0.39572566217842103;
	setAttr -s 2 ".wl[108].w[0:1]"  0.60763979146095226 0.39236020853904779;
	setAttr -s 2 ".wl[109].w[0:1]"  0.61093704566980667 0.38906295433019328;
	setAttr -s 2 ".wl[110].w[0:1]"  0.61382018540582273 0.38617981459417738;
	setAttr -s 2 ".wl[111].w[0:1]"  0.61593689943585983 0.38406310056414011;
	setAttr -s 2 ".wl[112].w[0:1]"  0.61698719484064868 0.38301280515935132;
	setAttr -s 2 ".wl[113].w[0:1]"  0.61679217208350212 0.38320782791649788;
	setAttr -s 2 ".wl[114].w[0:1]"  0.61534799274556162 0.38465200725443838;
	setAttr -s 2 ".wl[115].w[0:1]"  0.6128390523878795 0.38716094761212055;
	setAttr -s 2 ".wl[116].w[0:1]"  0.60959999683755717 0.39040000316244289;
	setAttr -s 2 ".wl[117].w[0:1]"  0.60604134063238302 0.39395865936761704;
	setAttr -s 2 ".wl[118].w[0:1]"  0.602569085862519 0.397430914137481;
	setAttr -s 2 ".wl[119].w[0:1]"  0.59952524668655249 0.40047475331344751;
	setAttr -s 2 ".wl[120].w[0:1]"  0.63686557049275527 0.36313442950724467;
	setAttr -s 2 ".wl[121].w[0:1]"  0.63500989929818974 0.36499010070181026;
	setAttr -s 2 ".wl[122].w[0:1]"  0.63423765624253192 0.36576234375746813;
	setAttr -s 2 ".wl[123].w[0:1]"  0.63457488370309345 0.3654251162969066;
	setAttr -s 2 ".wl[124].w[0:1]"  0.63597800481376587 0.36402199518623413;
	setAttr -s 2 ".wl[125].w[0:1]"  0.63834030262597607 0.36165969737402398;
	setAttr -s 2 ".wl[126].w[0:1]"  0.64149256843131552 0.35850743156868448;
	setAttr -s 2 ".wl[127].w[0:1]"  0.64519993626949446 0.35480006373050554;
	setAttr -s 2 ".wl[128].w[0:1]"  0.64916012797804712 0.35083987202195299;
	setAttr -s 2 ".wl[129].w[0:1]"  0.6530099291718271 0.34699007082817296;
	setAttr -s 2 ".wl[130].w[0:1]"  0.65634777542673384 0.34365222457326611;
	setAttr -s 2 ".wl[131].w[0:1]"  0.65877770962068938 0.34122229037931057;
	setAttr -s 2 ".wl[132].w[0:1]"  0.65997278635774292 0.34002721364225708;
	setAttr -s 2 ".wl[133].w[0:1]"  0.65974423098974666 0.34025576901025339;
	setAttr -s 2 ".wl[134].w[0:1]"  0.65809306909487941 0.34190693090512059;
	setAttr -s 2 ".wl[135].w[0:1]"  0.65522134618951955 0.3447786538104804;
	setAttr -s 2 ".wl[136].w[0:1]"  0.65149425274309458 0.34850574725690542;
	setAttr -s 2 ".wl[137].w[0:1]"  0.64736653969194058 0.35263346030805942;
	setAttr -s 2 ".wl[138].w[0:1]"  0.64329980278167498 0.35670019721832513;
	setAttr -s 2 ".wl[139].w[0:1]"  0.6396969222096478 0.36030307779035214;
	setAttr -s 2 ".wl[140].w[0:1]"  0.68207424723210563 0.31792575276789448;
	setAttr -s 2 ".wl[141].w[0:1]"  0.67994380313913327 0.32005619686086684;
	setAttr -s 2 ".wl[142].w[0:1]"  0.67903901568149094 0.320960984318509;
	setAttr -s 2 ".wl[143].w[0:1]"  0.67940041968328968 0.32059958031671032;
	setAttr -s 2 ".wl[144].w[0:1]"  0.68098170308149319 0.31901829691850675;
	setAttr -s 2 ".wl[145].w[0:1]"  0.6836569618151066 0.3163430381848934;
	setAttr -s 2 ".wl[146].w[0:1]"  0.68722326557413593 0.31277673442586412;
	setAttr -s 2 ".wl[147].w[0:1]"  0.69140111562412021 0.30859888437587979;
	setAttr -s 2 ".wl[148].w[0:1]"  0.69583783390078835 0.30416216609921165;
	setAttr -s 2 ".wl[149].w[0:1]"  0.70012066137307416 0.29987933862692595;
	setAttr -s 2 ".wl[150].w[0:1]"  0.70380616701323362 0.29619383298676638;
	setAttr -s 2 ".wl[151].w[0:1]"  0.70646941853613854 0.29353058146386146;
	setAttr -s 2 ".wl[152].w[0:1]"  0.70776868925611969 0.29223131074388026;
	setAttr -s 2 ".wl[153].w[0:1]"  0.70751210878880177 0.29248789121119828;
	setAttr -s 2 ".wl[154].w[0:1]"  0.70570526354521601 0.29429473645478393;
	setAttr -s 2 ".wl[155].w[0:1]"  0.70256047921301235 0.29743952078698771;
	setAttr -s 2 ".wl[156].w[0:1]"  0.6984608447754892 0.30153915522451091;
	setAttr -s 2 ".wl[157].w[0:1]"  0.69388986643517236 0.30611013356482769;
	setAttr -s 2 ".wl[158].w[0:1]"  0.68934972901609382 0.31065027098390624;
	setAttr -s 2 ".wl[159].w[0:1]"  0.68529201907536863 0.31470798092463131;
	setAttr -s 2 ".wl[160].w[0:1]"  0.73140238930803037 0.26859761069196963;
	setAttr -s 2 ".wl[161].w[0:1]"  0.72908152530954351 0.27091847469045655;
	setAttr -s 2 ".wl[162].w[0:1]"  0.7280804801406493 0.27191951985935076;
	setAttr -s 2 ".wl[163].w[0:1]"  0.7284536219722636 0.2715463780277364;
	setAttr -s 2 ".wl[164].w[0:1]"  0.73015347971545774 0.2698465202845422;
	setAttr -s 2 ".wl[165].w[0:1]"  0.73303836157960112 0.26696163842039894;
	setAttr -s 2 ".wl[166].w[0:1]"  0.73687753342347673 0.26312246657652327;
	setAttr -s 2 ".wl[167].w[0:1]"  0.74135605526198589 0.25864394473801405;
	setAttr -s 2 ".wl[168].w[0:1]"  0.74608423747241215 0.25391576252758791;
	setAttr -s 2 ".wl[169].w[0:1]"  0.75061736763356801 0.24938263236643204;
	setAttr -s 2 ".wl[170].w[0:1]"  0.75449057913663353 0.24550942086336647;
	setAttr -s 2 ".wl[171].w[0:1]"  0.75727025615485788 0.24272974384514218;
	setAttr -s 2 ".wl[172].w[0:1]"  0.75861614809020306 0.24138385190979689;
	setAttr -s 2 ".wl[173].w[0:1]"  0.75834197155912175 0.24165802844087819;
	setAttr -s 2 ".wl[174].w[0:1]"  0.75645700680566452 0.24354299319433551;
	setAttr -s 2 ".wl[175].w[0:1]"  0.75317358901684039 0.24682641098315963;
	setAttr -s 2 ".wl[176].w[0:1]"  0.74887508031043948 0.25112491968956047;
	setAttr -s 2 ".wl[177].w[0:1]"  0.74405215400464075 0.25594784599535925;
	setAttr -s 2 ".wl[178].w[0:1]"  0.739225853929109 0.26077414607089106;
	setAttr -s 2 ".wl[179].w[0:1]"  0.73487799069848259 0.26512200930151736;
	setAttr -s 2 ".wl[180].w[0:1]"  0.78274430322127275 0.21725569677872725;
	setAttr -s 2 ".wl[181].w[0:1]"  0.78035350844192608 0.21964649155807386;
	setAttr -s 2 ".wl[182].w[0:1]"  0.77930925909698379 0.22069074090301619;
	setAttr -s 2 ".wl[183].w[0:1]"  0.77967742969498999 0.22032257030501004;
	setAttr -s 2 ".wl[184].w[0:1]"  0.78141131094894012 0.21858868905105983;
	setAttr -s 2 ".wl[185].w[0:1]"  0.78435930230860329 0.21564069769139674;
	setAttr -s 2 ".wl[186].w[0:1]"  0.78827298862639905 0.21172701137360092;
	setAttr -s 2 ".wl[187].w[0:1]"  0.79281697624787761 0.20718302375212236;
	setAttr -s 2 ".wl[188].w[0:1]"  0.79758466225229063 0.2024153377477094;
	setAttr -s 2 ".wl[189].w[0:1]"  0.80212382429958851 0.19787617570041155;
	setAttr -s 2 ".wl[190].w[0:1]"  0.80597466324135214 0.19402533675864786;
	setAttr -s 2 ".wl[191].w[0:1]"  0.80871974422012594 0.19128025577987409;
	setAttr -s 2 ".wl[192].w[0:1]"  0.81003936273000177 0.18996063726999826;
	setAttr -s 2 ".wl[193].w[0:1]"  0.80976259521751193 0.19023740478248805;
	setAttr -s 2 ".wl[194].w[0:1]"  0.80790107228259322 0.19209892771740675;
	setAttr -s 2 ".wl[195].w[0:1]"  0.8046548634608055 0.1953451365391945;
	setAttr -s 2 ".wl[196].w[0:1]"  0.80038638748356039 0.19961361251643964;
	setAttr -s 2 ".wl[197].w[0:1]"  0.79556681706151799 0.20443318293848203;
	setAttr -s 2 ".wl[198].w[0:1]"  0.79070815081985757 0.20929184918014254;
	setAttr -s 2 ".wl[199].w[0:1]"  0.78629720656103719 0.21370279343896281;
	setAttr -s 2 ".wl[200].w[0:1]"  0.83334492549702266 0.16665507450297742;
	setAttr -s 2 ".wl[201].w[0:1]"  0.83103227634925236 0.16896772365074766;
	setAttr -s 2 ".wl[202].w[0:1]"  0.83001126331746522 0.16998873668253481;
	setAttr -s 2 ".wl[203].w[0:1]"  0.83035499805394897 0.16964500194605098;
	setAttr -s 2 ".wl[204].w[0:1]"  0.8320197244852181 0.16798027551478201;
	setAttr -s 2 ".wl[205].w[0:1]"  0.83485230683338074 0.16514769316661934;
	setAttr -s 2 ".wl[206].w[0:1]"  0.83860103551650333 0.16139896448349664;
	setAttr -s 2 ".wl[207].w[0:1]"  0.84293045245743492 0.15706954754256511;
	setAttr -s 2 ".wl[208].w[0:1]"  0.84744265766307858 0.15255734233692145;
	setAttr -s 2 ".wl[209].w[0:1]"  0.85170694418052861 0.14829305581947147;
	setAttr -s 2 ".wl[210].w[0:1]"  0.85529802312865055 0.14470197687134945;
	setAttr -s 2 ".wl[211].w[0:1]"  0.85784056632033834 0.14215943367966166;
	setAttr -s 2 ".wl[212].w[0:1]"  0.8590542800379326 0.14094571996206742;
	setAttr -s 2 ".wl[213].w[0:1]"  0.85879275668733135 0.14120724331266873;
	setAttr -s 2 ".wl[214].w[0:1]"  0.85706830532655542 0.14293169467344458;
	setAttr -s 2 ".wl[215].w[0:1]"  0.8540565231621754 0.14594347683782469;
	setAttr -s 2 ".wl[216].w[0:1]"  0.85007744200686053 0.14992255799313953;
	setAttr -s 2 ".wl[217].w[0:1]"  0.84555475469963914 0.15444524530036088;
	setAttr -s 2 ".wl[218].w[0:1]"  0.84096049394234218 0.15903950605765776;
	setAttr -s 2 ".wl[219].w[0:1]"  0.83675667445435387 0.16324332554564622;
	setAttr -s 2 ".wl[220].w[0:1]"  0.88013120309703174 0.11986879690296827;
	setAttr -s 2 ".wl[221].w[0:1]"  0.87805009852816429 0.12194990147183568;
	setAttr -s 2 ".wl[222].w[0:1]"  0.87712249213625648 0.12287750786374353;
	setAttr -s 2 ".wl[223].w[0:1]"  0.87742274840044654 0.12257725159955349;
	setAttr -s 2 ".wl[224].w[0:1]"  0.87891228115422648 0.1210877188457735;
	setAttr -s 2 ".wl[225].w[0:1]"  0.88144646079587652 0.11855353920412347;
	setAttr -s 2 ".wl[226].w[0:1]"  0.88478747109915035 0.11521252890084964;
	setAttr -s 2 ".wl[227].w[0:1]"  0.88862303103583973 0.11137696896416026;
	setAttr -s 2 ".wl[228].w[0:1]"  0.89259133147546954 0.10740866852453045;
	setAttr -s 2 ".wl[229].w[0:1]"  0.89631194699271666 0.10368805300728334;
	setAttr -s 2 ".wl[230].w[0:1]"  0.89942090330967828 0.10057909669032167;
	setAttr -s 2 ".wl[231].w[0:1]"  0.90160666742599171 0.098393332574008383;
	setAttr -s 2 ".wl[232].w[0:1]"  0.90264282438696331 0.097357175613036695;
	setAttr -s 2 ".wl[233].w[0:1]"  0.90241388503546371 0.097586114964536286;
	setAttr -s 2 ".wl[234].w[0:1]"  0.90093121131140907 0.099068788688590995;
	setAttr -s 2 ".wl[235].w[0:1]"  0.89833651441849161 0.10166348558150837;
	setAttr -s 2 ".wl[236].w[0:1]"  0.89489049435721746 0.10510950564278251;
	setAttr -s 2 ".wl[237].w[0:1]"  0.89094574534178983 0.10905425465821017;
	setAttr -s 2 ".wl[238].w[0:1]"  0.88690612527965906 0.11309387472034096;
	setAttr -s 2 ".wl[239].w[0:1]"  0.88317932807528821 0.11682067192471181;
	setAttr -s 2 ".wl[240].w[0:1]"  0.92028302406884788 0.079716975931152095;
	setAttr -s 2 ".wl[241].w[0:1]"  0.91856031892741152 0.081439681072588421;
	setAttr -s 2 ".wl[242].w[0:1]"  0.91778567151339907 0.082214328486600902;
	setAttr -s 2 ".wl[243].w[0:1]"  0.91802798571691813 0.081972014283081887;
	setAttr -s 2 ".wl[244].w[0:1]"  0.91925567243082096 0.08074432756917907;
	setAttr -s 2 ".wl[245].w[0:1]"  0.92134246452198032 0.078657535478019652;
	setAttr -s 2 ".wl[246].w[0:1]"  0.92408127901832904 0.075918720981670976;
	setAttr -s 2 ".wl[247].w[0:1]"  0.92720455154070569 0.07279544845929431;
	setAttr -s 2 ".wl[248].w[0:1]"  0.93041001606983786 0.069589983930162178;
	setAttr -s 2 ".wl[249].w[0:1]"  0.93338964843442662 0.066610351565573392;
	setAttr -s 2 ".wl[250].w[0:1]"  0.93585877211083179 0.064141227889168179;
	setAttr -s 2 ".wl[251].w[0:1]"  0.93758189801744574 0.06241810198255425;
	setAttr -s 2 ".wl[252].w[0:1]"  0.93839300971643957 0.061606990283560419;
	setAttr -s 2 ".wl[253].w[0:1]"  0.93820954599186857 0.061790454008131476;
	setAttr -s 2 ".wl[254].w[0:1]"  0.9370406798175821 0.062959320182417927;
	setAttr -s 2 ".wl[255].w[0:1]"  0.93498996903072629 0.065010030969273658;
	setAttr -s 2 ".wl[256].w[0:1]"  0.93225051496372346 0.067749485036276549;
	setAttr -s 2 ".wl[257].w[0:1]"  0.92909026728857158 0.070909732711428461;
	setAttr -s 2 ".wl[258].w[0:1]"  0.9258258776569519 0.074174122343048168;
	setAttr -s 2 ".wl[259].w[0:1]"  0.92278793989659846 0.077212060103401509;
	setAttr -s 2 ".wl[260].w[0:1]"  0.95187399169753473 0.048126008302465287;
	setAttr -s 2 ".wl[261].w[0:1]"  0.95058013573348354 0.049419864266516428;
	setAttr -s 2 ".wl[262].w[0:1]"  0.94999345573010885 0.050006544269891207;
	setAttr -s 2 ".wl[263].w[0:1]"  0.95017151647841347 0.049828483521586614;
	setAttr -s 2 ".wl[264].w[0:1]"  0.95109057202869007 0.048909427971309892;
	setAttr -s 2 ".wl[265].w[0:1]"  0.95265025707636908 0.047349742923630832;
	setAttr -s 2 ".wl[266].w[0:1]"  0.95468656910137151 0.045313430898628486;
	setAttr -s 2 ".wl[267].w[0:1]"  0.95699130978258229 0.04300869021741776;
	setAttr -s 2 ".wl[268].w[0:1]"  0.95933564014244466 0.040664359857555371;
	setAttr -s 2 ".wl[269].w[0:1]"  0.96149421666489765 0.03850578333510235;
	setAttr -s 2 ".wl[270].w[0:1]"  0.96326668103322766 0.036733318966772378;
	setAttr -s 2 ".wl[271].w[0:1]"  0.96449378867231472 0.035506211327685298;
	setAttr -s 2 ".wl[272].w[0:1]"  0.96506720920087841 0.03493279079912167;
	setAttr -s 2 ".wl[273].w[0:1]"  0.96493461132296621 0.035065388677033821;
	setAttr -s 2 ".wl[274].w[0:1]"  0.96410240524367252 0.035897594756327429;
	setAttr -s 2 ".wl[275].w[0:1]"  0.96263766672373674 0.037362333276263253;
	setAttr -s 2 ".wl[276].w[0:1]"  0.960668015883685 0.039331984116315069;
	setAttr -s 2 ".wl[277].w[0:1]"  0.95837621218931657 0.041623787810683481;
	setAttr -s 2 ".wl[278].w[0:1]"  0.95598634513090985 0.044013654869090126;
	setAttr -s 2 ".wl[279].w[0:1]"  0.95374121560217451 0.046258784397825506;
	setAttr -s 2 ".wl[280].w[0:1]"  0.9743130711352439 0.025686928864756087;
	setAttr -s 2 ".wl[281].w[0:1]"  0.9734479544080562 0.026552045591943744;
	setAttr -s 2 ".wl[282].w[0:1]"  0.97305244743173824 0.026947552568261805;
	setAttr -s 2 ".wl[283].w[0:1]"  0.97316926198787268 0.026830738012127368;
	setAttr -s 2 ".wl[284].w[0:1]"  0.9737823753838506 0.026217624616149397;
	setAttr -s 2 ".wl[285].w[0:1]"  0.97482035367444431 0.025179646325555735;
	setAttr -s 2 ".wl[286].w[0:1]"  0.97616713416982714 0.023832865830172859;
	setAttr -s 2 ".wl[287].w[0:1]"  0.97767826618092002 0.022321733819080015;
	setAttr -s 2 ".wl[288].w[0:1]"  0.97919959862246941 0.020800401377530579;
	setAttr -s 2 ".wl[289].w[0:1]"  0.9805851560856178 0.019414843914382165;
	setAttr -s 2 ".wl[290].w[0:1]"  0.98171099845154852 0.018289001548451558;
	setAttr -s 2 ".wl[291].w[0:1]"  0.98248338405333646 0.017516615946663535;
	setAttr -s 2 ".wl[292].w[0:1]"  0.98284146636030045 0.017158533639699495;
	setAttr -s 2 ".wl[293].w[0:1]"  0.98275690784931125 0.017243092150688834;
	setAttr -s 2 ".wl[294].w[0:1]"  0.98223345483878832 0.017766545161211771;
	setAttr -s 2 ".wl[295].w[0:1]"  0.98130822282519536 0.018691777174804636;
	setAttr -s 2 ".wl[296].w[0:1]"  0.98005414299971338 0.019945857000286567;
	setAttr -s 2 ".wl[297].w[0:1]"  0.97858028463545887 0.021419715364541032;
	setAttr -s 2 ".wl[298].w[0:1]"  0.97702663981993731 0.022973360180062703;
	setAttr -s 2 ".wl[299].w[0:1]"  0.9755515640647322 0.024448435935267843;
	setAttr -s 2 ".wl[300].w[0:1]"  0.98838429280834916 0.011615707191650794;
	setAttr -s 2 ".wl[301].w[0:1]"  0.98788487155413285 0.012115128445867072;
	setAttr -s 2 ".wl[302].w[0:1]"  0.98765460373632596 0.012345396263674089;
	setAttr -s 2 ".wl[303].w[0:1]"  0.9877209512864209 0.012279048713579077;
	setAttr -s 2 ".wl[304].w[0:1]"  0.98807444183460325 0.011925558165396742;
	setAttr -s 2 ".wl[305].w[0:1]"  0.98867077388406321 0.011329226115936883;
	setAttr -s 2 ".wl[306].w[0:1]"  0.98943853014194505 0.010561469858054871;
	setAttr -s 2 ".wl[307].w[0:1]"  0.99029076000132621 0.0097092399986738187;
	setAttr -s 2 ".wl[308].w[0:1]"  0.99113785105833518 0.0088621489416647967;
	setAttr -s 2 ".wl[309].w[0:1]"  0.99189886800527127 0.0081011319947287604;
	setAttr -s 2 ".wl[310].w[0:1]"  0.99250912049426188 0.0074908795057381976;
	setAttr -s 2 ".wl[311].w[0:1]"  0.9929230492158897 0.0070769507841102856;
	setAttr -s 2 ".wl[312].w[0:1]"  0.99311316253015458 0.0068868374698454636;
	setAttr -s 2 ".wl[313].w[0:1]"  0.99306737230515119 0.0069326276948487933;
	setAttr -s 2 ".wl[314].w[0:1]"  0.99278731037292001 0.0072126896270800411;
	setAttr -s 2 ".wl[315].w[0:1]"  0.99228921262855674 0.0077107873714432756;
	setAttr -s 2 ".wl[316].w[0:1]"  0.99160694711855868 0.0083930528814413711;
	setAttr -s 2 ".wl[317].w[0:1]"  0.9907948119381681 0.0092051880618319037;
	setAttr -s 2 ".wl[318].w[0:1]"  0.98992713780578045 0.010072862194219594;
	setAttr -s 2 ".wl[319].w[0:1]"  0.9890927445909059 0.010907255409094048;
	setAttr -s 2 ".wl[320].w[0:1]"  0.99588296750489747 0.0041170324951024847;
	setAttr -s 2 ".wl[321].w[0:1]"  0.99564809797763087 0.0043519020223691694;
	setAttr -s 2 ".wl[322].w[0:1]"  0.99553868688916858 0.0044613131108314098;
	setAttr -s 2 ".wl[323].w[0:1]"  0.99556927874201662 0.0044307212579834544;
	setAttr -s 2 ".wl[324].w[0:1]"  0.99573520258824844 0.0042647974117515624;
	setAttr -s 2 ".wl[325].w[0:1]"  0.99601369006571094 0.0039863099342890033;
	setAttr -s 2 ".wl[326].w[0:1]"  0.99636846242775123 0.0036315375722487976;
	setAttr -s 2 ".wl[327].w[0:1]"  0.99675654164932381 0.0032434583506762292;
	setAttr -s 2 ".wl[328].w[0:1]"  0.99713553108426645 0.0028644689157335578;
	setAttr -s 2 ".wl[329].w[0:1]"  0.99746953543909689 0.0025304645609030871;
	setAttr -s 2 ".wl[330].w[0:1]"  0.99773239798414204 0.0022676020158578563;
	setAttr -s 2 ".wl[331].w[0:1]"  0.99790790090532533 0.002092099094674664;
	setAttr -s 2 ".wl[332].w[0:1]"  0.99798768618440625 0.0020123138155938051;
	setAttr -s 2 ".wl[333].w[0:1]"  0.99796853485201098 0.0020314651479890638;
	setAttr -s 2 ".wl[334].w[0:1]"  0.99785075500807419 0.0021492449919258178;
	setAttr -s 2 ".wl[335].w[0:1]"  0.99763872044340085 0.0023612795565991366;
	setAttr -s 2 ".wl[336].w[0:1]"  0.99734331853493108 0.0026566814650689726;
	setAttr -s 2 ".wl[337].w[0:1]"  0.99698484788288566 0.0030151521171142984;
	setAttr -s 2 ".wl[338].w[0:1]"  0.99659440694563539 0.003405593054364713;
	setAttr -s 2 ".wl[339].w[0:1]"  0.99621227154191971 0.003787728458080261;
	setAttr -s 2 ".wl[340].w[0:1]"  0.99896979918154027 0.001030200818459706;
	setAttr -s 2 ".wl[341].w[0:1]"  0.99888773849048573 0.0011122615095143697;
	setAttr -s 2 ".wl[342].w[0:1]"  0.9988481490649429 0.0011518509350571101;
	setAttr -s 2 ".wl[343].w[0:1]"  0.99885704141566589 0.0011429585843340639;
	setAttr -s 2 ".wl[344].w[0:1]"  0.99891293027992034 0.0010870697200796749;
	setAttr -s 2 ".wl[345].w[0:1]"  0.99900722445011159 0.00099277554988846982;
	setAttr -s 2 ".wl[346].w[0:1]"  0.99912622153659925 0.00087377846340078581;
	setAttr -s 2 ".wl[347].w[0:1]"  0.99925410174418816 0.00074589825581186664;
	setAttr -s 2 ".wl[348].w[0:1]"  0.99937604297970384 0.00062395702029619101;
	setAttr -s 2 ".wl[349].w[0:1]"  0.99948057667776258 0.00051942332223742216;
	setAttr -s 2 ".wl[350].w[0:1]"  0.99956058604087006 0.00043941395912983311;
	setAttr -s 2 ".wl[351].w[0:1]"  0.99961285374656395 0.0003871462534360651;
	setAttr -s 2 ".wl[352].w[0:1]"  0.99963660779222596 0.00036339220777405684;
	setAttr -s 2 ".wl[353].w[0:1]"  0.99963188837986583 0.0003681116201341669;
	setAttr -s 2 ".wl[354].w[0:1]"  0.99959858809545887 0.00040141190454119022;
	setAttr -s 2 ".wl[355].w[0:1]"  0.99953666900266269 0.00046333099733735959;
	setAttr -s 2 ".wl[356].w[0:1]"  0.99944746595278255 0.00055253404721745264;
	setAttr -s 2 ".wl[357].w[0:1]"  0.99933541815719451 0.0006645818428055437;
	setAttr -s 2 ".wl[358].w[0:1]"  0.99920930185267598 0.00079069814732408874;
	setAttr -s 2 ".wl[359].w[0:1]"  0.9990821818654767 0.00091781813452330074;
	setAttr -s 2 ".wl[360].w[0:1]"  0.99985003803097239 0.00014996196902765765;
	setAttr -s 2 ".wl[361].w[0:1]"  0.99983389747913332 0.00016610252086666108;
	setAttr -s 2 ".wl[362].w[0:1]"  0.9998259102498317 0.0001740897501682826;
	setAttr -s 2 ".wl[363].w[0:1]"  0.99982745908429516 0.00017254091570490277;
	setAttr -s 2 ".wl[364].w[0:1]"  0.99983826149348554 0.00016173850651447433;
	setAttr -s 2 ".wl[365].w[0:1]"  0.99985644864010581 0.00014355135989428867;
	setAttr -s 2 ".wl[366].w[0:1]"  0.99987905370893304 0.00012094629106701588;
	setAttr -s 2 ".wl[367].w[0:1]"  0.99990274839989512 9.7251600104870521e-005;
	setAttr -s 2 ".wl[368].w[0:1]"  0.99992459147070589 7.5408529294108034e-005;
	setAttr -s 2 ".wl[369].w[0:1]"  0.99994255699182621 5.7443008173764656e-005;
	setAttr -s 2 ".wl[370].w[0:1]"  0.99995569658454653 4.4303415453469735e-005;
	setAttr -s 2 ".wl[371].w[0:1]"  0.99996392801956469 3.6071980435274715e-005;
	setAttr -s 2 ".wl[372].w[0:1]"  0.99996758272443886 3.2417275561217106e-005;
	setAttr -s 2 ".wl[373].w[0:1]"  0.99996693287676919 3.3067123230788489e-005;
	setAttr -s 2 ".wl[374].w[0:1]"  0.99996191772086851 3.8082279131560638e-005;
	setAttr -s 2 ".wl[375].w[0:1]"  0.99995219546658187 4.7804533418074697e-005;
	setAttr -s 2 ".wl[376].w[0:1]"  0.99993749959485712 6.2500405142891066e-005;
	setAttr -s 2 ".wl[377].w[0:1]"  0.9999181373217888 8.1862678211233278e-005;
	setAttr -s 2 ".wl[378].w[0:1]"  0.99989539514552095 0.00010460485447909682;
	setAttr -s 2 ".wl[379].w[0:1]"  0.99987164250936444 0.00012835749063565968;
	setAttr -s 2 ".wl[380].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[381].w[0:1]"  0.9999851874949286 1.4812505071468274e-005;
	setAttr -s 2 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.0090905334567916701 0.99995868024707435 0 -0 -0.99995868024707435 0.0090905334567916701 -0 0
		 0 -0 1 -0 7.8410070787981923 8.3476057850253049 -8.1891296735458141 1;
	setAttr ".pm[1]" -type "matrix" 0.99999999999999978 -0 0 -0 -0 0.99999999999999978 -0 0
		 0 -0 1 -0 8.3864572869710177 -4.2357223352968854 -8.1891296735458141 1;
	setAttr ".gm" -type "matrix" 0.90616592163967091 0 0 0 0 0.90616592163967091 0 0
		 0 0 0.90616592163967091 0 -8.3741823669901478 6.0913110195087228 8.1111666480648363 1;
	setAttr -s 2 ".ma";
	setAttr -s 2 ".dpf[0:1]"  4 4;
	setAttr -s 2 ".lw";
	setAttr -s 2 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr ".nw" 2;
createNode tweak -n "tweak1";
createNode objectSet -n "skinCluster1Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	setAttr -s 2 ".wm";
	setAttr -s 2 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 -8.4185398012015042 7.7647989006501295
		 8.1891296735458141 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.70388545465267582 0.71031349890621953 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.5292223919504973 4.7184478546569153e-016
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70388545465267582 0.71031349890621953 1
		 1 1 yes;
	setAttr -s 2 ".m";
	setAttr -s 2 ".p";
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster2";
	setAttr -s 42 ".wl";
	setAttr -s 2 ".wl[0].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[1].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[2].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[3].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[4].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[5].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[6].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[7].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[8].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[9].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[10].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[11].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[12].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[13].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[14].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[15].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[16].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[17].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[18].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[19].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[20].w[0:1]"  0.98593139599127966 0.014068604008720379;
	setAttr -s 2 ".wl[21].w[0:1]"  0.98489700180044704 0.015102998199553004;
	setAttr -s 2 ".wl[22].w[0:1]"  0.98377606457392763 0.016223935426072408;
	setAttr -s 2 ".wl[23].w[0:1]"  0.9826806443301912 0.017319355669808793;
	setAttr -s 2 ".wl[24].w[0:1]"  0.98172572690043247 0.018274273099567542;
	setAttr -s 2 ".wl[25].w[0:1]"  0.98101458684890575 0.018985413151094289;
	setAttr -s 2 ".wl[26].w[0:1]"  0.98062505229964747 0.019374947700352547;
	setAttr -s 2 ".wl[27].w[0:1]"  0.9805992565700834 0.019400743429916562;
	setAttr -s 2 ".wl[28].w[0:1]"  0.98093847897070485 0.019061521029295193;
	setAttr -s 2 ".wl[29].w[0:1]"  0.98160362160463477 0.0183963783953652;
	setAttr -s 2 ".wl[30].w[0:1]"  0.98252089463661074 0.017479105363389296;
	setAttr -s 2 ".wl[31].w[0:1]"  0.98359182472820228 0.016408175271797765;
	setAttr -s 2 ".wl[32].w[0:1]"  0.98470588345482524 0.015294116545174725;
	setAttr -s 2 ".wl[33].w[0:1]"  0.98575367582046369 0.01424632417953626;
	setAttr -s 2 ".wl[34].w[0:1]"  0.98663834606745715 0.013361653932542898;
	setAttr -s 2 ".wl[35].w[0:1]"  0.98728336870149203 0.012716631298507966;
	setAttr -s 2 ".wl[36].w[0:1]"  0.98763619145892112 0.012363808541078896;
	setAttr -s 2 ".wl[37].w[0:1]"  0.98766879346147463 0.01233120653852534;
	setAttr -s 2 ".wl[38].w[0:1]"  0.9873773306955056 0.012622669304494393;
	setAttr -s 2 ".wl[39].w[0:1]"  0.98678260811902663 0.013217391880973416;
	setAttr -s 2 ".wl[40].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[41].w[0:1]"  0.99999916686567025 8.331343297582238e-007;
	setAttr -s 2 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.0094091174607432455 0.99995573327453358 0 -0 -0.99995573327453358 0.0094091174607432455 -0 0
		 0 -0 1 -0 4.2859776973544221 8.341327646504519 -8.0275229357798175 1;
	setAttr ".pm[1]" -type "matrix" 1 -8.8991314317610204e-016 0 -0 8.8991314317610204e-016 1 -0 0
		 0 -0 1 -0 8.3460829723010583 -0.4661300117874333 -8.0275229357798175 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -8.4558019526040589 2.1323788622585513 7.9617046567417731 1;
	setAttr -s 2 ".ma";
	setAttr -s 2 ".dpf[0:1]"  4 4;
	setAttr -s 2 ".lw";
	setAttr -s 2 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr ".nw" 2;
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
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose2";
	setAttr -s 2 ".wm";
	setAttr -s 2 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 -8.3812856708320975 4.2073034395518309
		 8.0275229357798175 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.70377229362175686 0.71042561801385762 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.7413390445927699 9.1593399531575415e-016
		 -1.9721522630525295e-031 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70377229362175719 0.7104256180138574 1
		 1 1 yes;
	setAttr -s 2 ".m";
	setAttr -s 2 ".p";
	setAttr ".bp" yes;
createNode polyCylinder -n "polyCylinder2";
	setAttr ".r" 0.26587277613259075;
	setAttr ".h" 5.573572283584018;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode ikSCsolver -n "ikSCsolver";
createNode polySplitRing -n "polySplitRing1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[40:59]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -5.3655965030811359 2.786786141792009 8.5027071738210189 1;
	setAttr ".wt" 0.55919241905212402;
	setAttr ".dr" no;
	setAttr ".re" 57;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[40:59]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -5.3655965030811359 2.786786141792009 8.5027071738210189 1;
	setAttr ".wt" 0.95744681358337402;
	setAttr ".dr" no;
	setAttr ".re" 57;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[100:101]" "e[103]" "e[105]" "e[107]" "e[109]" "e[111]" "e[113]" "e[115]" "e[117]" "e[119]" "e[121]" "e[123]" "e[125]" "e[127]" "e[129]" "e[131]" "e[133]" "e[135]" "e[137]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -5.3655965030811359 2.786786141792009 8.5027071738210189 1;
	setAttr ".wt" 0.05398145318031311;
	setAttr ".re" 100;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[40:59]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -5.3655965030811359 2.786786141792009 8.5027071738210189 1;
	setAttr ".wt" 0.92592597007751465;
	setAttr ".dr" no;
	setAttr ".re" 58;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[180:181]" "e[183]" "e[185]" "e[187]" "e[189]" "e[191]" "e[193]" "e[195]" "e[197]" "e[199]" "e[201]" "e[203]" "e[205]" "e[207]" "e[209]" "e[211]" "e[213]" "e[215]" "e[217]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -5.3655965030811359 2.786786141792009 8.5027071738210189 1;
	setAttr ".wt" 0.047551415860652924;
	setAttr ".re" 180;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[260:261]" "e[263]" "e[265]" "e[267]" "e[269]" "e[271]" "e[273]" "e[275]" "e[277]" "e[279]" "e[281]" "e[283]" "e[285]" "e[287]" "e[289]" "e[291]" "e[293]" "e[295]" "e[297]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -5.3655965030811359 2.786786141792009 8.5027071738210189 1;
	setAttr ".wt" 0.059910528361797333;
	setAttr ".re" 260;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[40:59]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -5.3655965030811359 2.786786141792009 8.5027071738210189 1;
	setAttr ".wt" 0.95999991893768311;
	setAttr ".dr" no;
	setAttr ".re" 58;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[300:301]" "e[303]" "e[305]" "e[307]" "e[309]" "e[311]" "e[313]" "e[315]" "e[317]" "e[319]" "e[321]" "e[323]" "e[325]" "e[327]" "e[329]" "e[331]" "e[333]" "e[335]" "e[337]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -5.3655965030811359 2.786786141792009 8.5027071738210189 1;
	setAttr ".wt" 0.053107108920812607;
	setAttr ".re" 300;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode skinCluster -n "skinCluster3";
	setAttr -s 202 ".wl";
	setAttr -s 3 ".wl[0].w[0:2]"  6.1557241078345533e-006 0.49999692213794611 
		0.49999692213794611;
	setAttr -s 3 ".wl[1].w[0:2]"  9.518593843564935e-006 0.49999524070307821 
		0.49999524070307821;
	setAttr -s 3 ".wl[2].w[0:2]"  1.6618085711512468e-005 0.49999169095714424 
		0.49999169095714424;
	setAttr -s 3 ".wl[3].w[0:2]"  2.8712088771472346e-005 0.49998564395561429 
		0.49998564395561429;
	setAttr -s 3 ".wl[4].w[0:2]"  4.6315062129541068e-005 0.49997684246893526 
		0.49997684246893526;
	setAttr -s 3 ".wl[5].w[0:2]"  6.8497612090393227e-005 0.49996575119395475 
		0.49996575119395475;
	setAttr -s 3 ".wl[6].w[0:2]"  9.2671007768521592e-005 0.49995366449611572 
		0.49995366449611572;
	setAttr -s 3 ".wl[7].w[0:2]"  0.00011499771830127786 0.49994250114084937 
		0.49994250114084937;
	setAttr -s 3 ".wl[8].w[0:2]"  0.00013132927769182859 0.49993433536115406 
		0.49993433536115406;
	setAttr -s 3 ".wl[9].w[0:2]"  0.0001383650036916206 0.49993081749815421 
		0.49993081749815421;
	setAttr -s 3 ".wl[10].w[0:2]"  0.00013462815809677609 0.49993268592095158 
		0.49993268592095158;
	setAttr -s 3 ".wl[11].w[0:2]"  0.00012091209910514142 0.49993954395044743 
		0.49993954395044743;
	setAttr -s 3 ".wl[12].w[0:2]"  0.00010003728797815092 0.49994998135601099 
		0.49994998135601088;
	setAttr -s 3 ".wl[13].w[0:2]"  7.6007499625321048e-005 0.49996199625018733 
		0.49996199625018733;
	setAttr -s 3 ".wl[14].w[0:2]"  5.2867450377064914e-005 0.49997356627481143 
		0.49997356627481143;
	setAttr -s 3 ".wl[15].w[0:2]"  3.3661630123295408e-005 0.49998316918493835 
		0.49998316918493835;
	setAttr -s 3 ".wl[16].w[0:2]"  1.9841656641332913e-005 0.49999007917167931 
		0.49999007917167931;
	setAttr -s 3 ".wl[17].w[0:2]"  1.1290326201427769e-005 0.4999943548368993 
		0.4999943548368993;
	setAttr -s 3 ".wl[18].w[0:2]"  6.8943298504365276e-006 0.49999655283507483 
		0.49999655283507483;
	setAttr -s 3 ".wl[19].w[0:2]"  5.3954698104203645e-006 0.49999730226509487 
		0.49999730226509487;
	setAttr -s 3 ".wl[20].w[0:2]"  0.99973271618105408 0.00025518064585687648 
		1.2103173089032439e-005;
	setAttr -s 3 ".wl[21].w[0:2]"  0.99975994587295258 0.00022919629032461513 
		1.0857836722817795e-005;
	setAttr -s 3 ".wl[22].w[0:2]"  0.99979661822038246 0.00019419752614569522 
		9.1842534718275594e-006;
	setAttr -s 3 ".wl[23].w[0:2]"  0.99983689561333378 0.00015575325708926257 
		7.3511295768846865e-006;
	setAttr -s 3 ".wl[24].w[0:2]"  0.99987524075815093 0.00011914799529515446 
		5.6112465539247825e-006;
	setAttr -s 3 ".wl[25].w[0:2]"  0.99990758832021098 8.8263652497419287e-005 
		4.1480272916136558e-006;
	setAttr -s 3 ".wl[26].w[0:2]"  0.99993186126735101 6.5085553893613895e-005 
		3.0531787553911153e-006;
	setAttr -s 3 ".wl[27].w[0:2]"  0.99994775983428896 4.9902429232883202e-005 
		2.3377364781793758e-006;
	setAttr -s 3 ".wl[28].w[0:2]"  0.99995599606239494 4.2036231493181119e-005 
		1.9677061118070819e-006;
	setAttr -s 3 ".wl[29].w[0:2]"  0.99995735225969928 4.074088062774393e-005 
		1.9068596730245265e-006;
	setAttr -s 3 ".wl[30].w[0:2]"  0.99995199337556295 4.5858998497103773e-005 
		2.1476259399292355e-006;
	setAttr -s 3 ".wl[31].w[0:2]"  0.99993933743463004 5.7945683742060259e-005 
		2.7168816278083161e-006;
	setAttr -s 3 ".wl[32].w[0:2]"  0.99991853965700128 7.7806093850166252e-005 
		3.654249148524402e-006;
	setAttr -s 3 ".wl[33].w[0:2]"  0.99988937620201013 0.00010565165859850295 
		4.9721393913949194e-006;
	setAttr -s 3 ".wl[34].w[0:2]"  0.99985313075010074 0.00014025429582787812 
		6.6149540714458266e-006;
	setAttr -s 3 ".wl[35].w[0:2]"  0.99981306554504412 0.00017849806164152061 
		8.436393314346458e-006;
	setAttr -s 3 ".wl[36].w[0:2]"  0.99977420688659713 0.00021558525386423569 
		1.0207859538706506e-005;
	setAttr -s 3 ".wl[37].w[0:2]"  0.99974243429349341 0.0002459062169424448 
		1.1659489564216994e-005;
	setAttr -s 3 ".wl[38].w[0:2]"  0.99972309648730961 0.00026435931626907693 
		1.2544196421279131e-005;
	setAttr -s 3 ".wl[39].w[0:2]"  0.99971964635049615 0.00026765179411427585 
		1.2701855389622636e-005;
	setAttr -s 3 ".wl[40].w[0:2]"  2.6975204165931568e-006 0.49999865123979187 
		0.49999865123979165;
	setAttr -s 3 ".wl[41].w[0:2]"  0.99999963118809043 3.5247995545852613e-007 
		1.6331954109973089e-008;
	setAttr -s 3 ".wl[42].w[0:2]"  0.54196313877069524 0.45799485783634303 
		4.200339296186911e-005;
	setAttr -s 3 ".wl[43].w[0:2]"  0.54373691590976747 0.45622266252247101 
		4.0421567761565435e-005;
	setAttr -s 3 ".wl[44].w[0:2]"  0.54631910322056443 0.45364281686583369 
		3.8079913601976446e-005;
	setAttr -s 3 ".wl[45].w[0:2]"  0.54958911819668255 0.45037561166051548 
		3.5270142801839567e-005;
	setAttr -s 3 ".wl[46].w[0:2]"  0.5533433289388261 0.44662435668573747 
		3.2314375436454477e-005;
	setAttr -s 3 ".wl[47].w[0:2]"  0.55726983470149605 0.44270064940000886 
		2.9515898495043088e-005;
	setAttr -s 3 ".wl[48].w[0:2]"  0.56094424629529738 0.43902862896304734 
		2.7124741655392119e-005;
	setAttr -s 3 ".wl[49].w[0:2]"  0.56386903733705407 0.43610563998504465 
		2.5322677901384722e-005;
	setAttr -s 3 ".wl[50].w[0:2]"  0.56556931208472028 0.43440646265032551 
		2.4225264954228302e-005;
	setAttr -s 3 ".wl[51].w[0:2]"  0.56572620154425135 0.43424990518561907 
		2.3893270129572319e-005;
	setAttr -s 3 ".wl[52].w[0:2]"  0.56428983555242918 0.4356858204046743 
		2.4344042896525832e-005;
	setAttr -s 3 ".wl[53].w[0:2]"  0.56150554547166498 0.43846889895534341 
		2.555557299165539e-005;
	setAttr -s 3 ".wl[54].w[0:2]"  0.55783355699164028 0.44213898239640753 
		2.7460611952172527e-005;
	setAttr -s 3 ".wl[55].w[0:2]"  0.55380882031641343 0.44616124551404834 
		2.9934169538173161e-005;
	setAttr -s 3 ".wl[56].w[0:2]"  0.54991396208733401 0.45005325534828988 
		3.2782564376045977e-005;
	setAttr -s 3 ".wl[57].w[0:2]"  0.54651074434325797 0.45345351212848195 
		3.5743528260061277e-005;
	setAttr -s 3 ".wl[58].w[0:2]"  0.54383044594618202 0.45613104907365914 
		3.8504980158890252e-005;
	setAttr -s 3 ".wl[59].w[0:2]"  0.54199905280882799 0.45796020347523891 
		4.0743715933125432e-005;
	setAttr -s 3 ".wl[60].w[0:2]"  0.54107217400510255 0.45888564869912019 
		4.2177295777355922e-005;
	setAttr -s 3 ".wl[61].w[0:2]"  0.54106381759836364 0.45889356572851964 
		4.2616673116758932e-005;
	setAttr -s 3 ".wl[62].w[0:2]"  0.48147045540122335 0.51848355096845367 
		4.5993630323005208e-005;
	setAttr -s 3 ".wl[63].w[0:2]"  0.48297021498416154 0.5169853264690748 
		4.4458546763697354e-005;
	setAttr -s 3 ".wl[64].w[0:2]"  0.48471433386523793 0.5152435632915312 
		4.2102843230823868e-005;
	setAttr -s 3 ".wl[65].w[0:2]"  0.48651878743616794 0.51344199678476565 
		3.9215779066415834e-005;
	setAttr -s 3 ".wl[66].w[0:2]"  0.48820809976203705 0.51175577108624148 
		3.6129151721549874e-005;
	setAttr -s 3 ".wl[67].w[0:2]"  0.48963411043400512 0.51033272387882522 
		3.3165687169653589e-005;
	setAttr -s 3 ".wl[68].w[0:2]"  0.49068642441229454 0.50928297608041728 
		3.0599507288223211e-005;
	setAttr -s 3 ".wl[69].w[0:2]"  0.49129290679915988 0.50867845766211361 
		2.8635538726448803e-005;
	setAttr -s 3 ".wl[70].w[0:2]"  0.49141285227655596 0.5085597403122103 
		2.7407411233854593e-005;
	setAttr -s 3 ".wl[71].w[0:2]"  0.49103024193171929 0.5089427711096548 
		2.6986958625891018e-005;
	setAttr -s 3 ".wl[72].w[0:2]"  0.49015537216094096 0.50981723226426723 
		2.7395574791823151e-005;
	setAttr -s 3 ".wl[73].w[0:2]"  0.48883661167329573 0.51113477887877024 
		2.8609447934031602e-005;
	setAttr -s 3 ".wl[74].w[0:2]"  0.48717389075976619 0.51279555376656927 
		3.0555473664610648e-005;
	setAttr -s 3 ".wl[75].w[0:2]"  0.48532155891781176 0.51464534020343666 
		3.3100878751661984e-005;
	setAttr -s 3 ".wl[76].w[0:2]"  0.48347437757374884 0.51648957799219164 
		3.6044434059560175e-005;
	setAttr -s 3 ".wl[77].w[0:2]"  0.48184002043750623 0.51812086152493708 
		3.9118037556729896e-005;
	setAttr -s 3 ".wl[78].w[0:2]"  0.4806069792683289 0.51935101528491923 
		4.2005446751931187e-005;
	setAttr -s 3 ".wl[79].w[0:2]"  0.47991627039913187 0.52003935056379202 
		4.4379037076097377e-005;
	setAttr -s 3 ".wl[80].w[0:2]"  0.47984216552610842 0.52011188579635426 
		4.5948677537270667e-005;
	setAttr -s 3 ".wl[81].w[0:2]"  0.4803842341331433 0.51956925359058925 
		4.6512276267448789e-005;
	setAttr -s 3 ".wl[82].w[0:2]"  0.71218961553252558 0.28776260135863913 
		4.7783108835295126e-005;
	setAttr -s 3 ".wl[83].w[0:2]"  0.71696370539264576 0.28299042865882618 
		4.5865948528069127e-005;
	setAttr -s 3 ".wl[84].w[0:2]"  0.72397881412690845 0.27597810023756275 
		4.3085635528771263e-005;
	setAttr -s 3 ".wl[85].w[0:2]"  0.73277201274477699 0.26718821025034295 
		3.9777004880062129e-005;
	setAttr -s 3 ".wl[86].w[0:2]"  0.74266735656901561 0.25729633273763702 
		3.6310693347426601e-005;
	setAttr -s 3 ".wl[87].w[0:2]"  0.75276929094097045 0.24719766986994726 
		3.3039189082224257e-005;
	setAttr -s 3 ".wl[88].w[0:2]"  0.76201115308960554 0.23795858959743274 
		3.0257312961594464e-005;
	setAttr -s 3 ".wl[89].w[0:2]"  0.76927824334466077 0.23069357382830183 
		2.8182827037479176e-005;
	setAttr -s 3 ".wl[90].w[0:2]"  0.77359564814577575 0.22637739614034388 
		2.6955713880393132e-005;
	setAttr -s 3 ".wl[91].w[0:2]"  0.77433336664599395 0.22563998468095856 
		2.6648673047466565e-005;
	setAttr -s 3 ".wl[92].w[0:2]"  0.77135948613545613 0.22861323544444798 
		2.7278420095846946e-005;
	setAttr -s 3 ".wl[93].w[0:2]"  0.76508171824695259 0.23488947245849029 
		2.8809294557204953e-005;
	setAttr -s 3 ".wl[94].w[0:2]"  0.75635736747969795 0.24361148589775106 
		3.114662255092302e-005;
	setAttr -s 3 ".wl[95].w[0:2]"  0.74630339337935403 0.25366248198105212 
		3.4124639593865575e-005;
	setAttr -s 3 ".wl[96].w[0:2]"  0.73607669702363032 0.2638858042598386 
		3.7498716531122006e-005;
	setAttr -s 3 ".wl[97].w[0:2]"  0.7266980384500592 0.27326101002858966 
		4.0951521351149468e-005;
	setAttr -s 3 ".wl[98].w[0:2]"  0.71895759231106204 0.28099828846224806 
		4.4119226689911202e-005;
	setAttr -s 3 ".wl[99].w[0:2]"  0.71339766398384252 0.28655569908074285 
		4.6636935414527743e-005;
	setAttr -s 3 ".wl[100].w[0:2]"  0.71034216879105816 0.28960963602279399 
		4.8195186147918743e-005;
	setAttr -s 3 ".wl[101].w[0:2]"  0.70993840661228413 0.29001299874998249 
		4.8594637733413078e-005;
	setAttr -s 3 ".wl[102].w[0:2]"  0.19460465125997109 0.80530907435904031 
		8.6274380988670429e-005;
	setAttr -s 3 ".wl[103].w[0:2]"  0.19761539203946443 0.80229776572997569 
		8.6842230559922411e-005;
	setAttr -s 3 ".wl[104].w[0:2]"  0.20091071056491672 0.7990029451128603 
		8.6344322222940006e-005;
	setAttr -s 3 ".wl[105].w[0:2]"  0.20417103253756747 0.79574414660060822 
		8.4820861824430483e-005;
	setAttr -s 3 ".wl[106].w[0:2]"  0.20706520857916574 0.79285235433966017 
		8.2437081174152398e-005;
	setAttr -s 3 ".wl[107].w[0:2]"  0.20928651954618488 0.79063401960597768 
		7.9460847837442791e-005;
	setAttr -s 3 ".wl[108].w[0:2]"  0.21059042283514712 0.78933335515378134 
		7.6222011071492738e-005;
	setAttr -s 3 ".wl[109].w[0:2]"  0.21082876511180296 0.78909817053135545 
		7.3064356841609149e-005;
	setAttr -s 3 ".wl[110].w[0:2]"  0.20997297653498614 0.78995672207518242 
		7.0301389831497842e-005;
	setAttr -s 3 ".wl[111].w[0:2]"  0.20812050219831296 0.79181131284719874 
		6.8184954488241926e-005;
	setAttr -s 3 ".wl[112].w[0:2]"  0.20548067164988751 0.79445243944167054 
		6.6888908441937574e-005;
	setAttr -s 3 ".wl[113].w[0:2]"  0.20234251981722051 0.79759097482241892 
		6.6505360360657439e-005;
	setAttr -s 3 ".wl[114].w[0:2]"  0.1990331628779736 0.80089978866202038 
		6.7048460006095768e-005;
	setAttr -s 3 ".wl[115].w[0:2]"  0.19587720786591403 0.80405433142990101 
		6.8460704184940914e-005;
	setAttr -s 3 ".wl[116].w[0:2]"  0.19316549122457374 0.80676388944679378 
		7.0619328632527491e-005;
	setAttr -s 3 ".wl[117].w[0:2]"  0.19113523241551444 0.80879142496322798 
		7.3342621257521329e-005;
	setAttr -s 3 ".wl[118].w[0:2]"  0.18995842515097441 0.80996517750663988 
		7.6397342385729178e-005;
	setAttr -s 3 ".wl[119].w[0:2]"  0.18973486525398806 0.81018562477602196 
		7.9509969989902379e-005;
	setAttr -s 3 ".wl[120].w[0:2]"  0.19048710434821817 0.80943051153886925 
		8.2384112912704688e-005;
	setAttr -s 3 ".wl[121].w[0:2]"  0.19215672969673162 0.80775854493253219 
		8.4725370736198576e-005;
	setAttr -s 3 ".wl[122].w[0:2]"  0.83997140414799487 0.1599783570410919 
		5.0238810913234493e-005;
	setAttr -s 3 ".wl[123].w[0:2]"  0.84466904019259426 0.15528302477113698 
		4.7935036268819119e-005;
	setAttr -s 3 ".wl[124].w[0:2]"  0.85144211758617305 0.14851322159556887 
		4.4660818258070658e-005;
	setAttr -s 3 ".wl[125].w[0:2]"  0.85970293243475926 0.14025625391819527 
		4.0813647045424195e-005;
	setAttr -s 3 ".wl[126].w[0:2]"  0.86869194308670972 0.13127122961865442 
		3.6827294635832935e-005;
	setAttr -s 3 ".wl[127].w[0:2]"  0.8775338104504008 0.12243308224772412 
		3.3107301875179605e-005;
	setAttr -s 3 ".wl[128].w[0:2]"  0.885327014543978 0.11464300115684654 
		2.9984299175488063e-005;
	setAttr -s 3 ".wl[129].w[0:2]"  0.89125323029678949 0.10871907645674191 
		2.7693246468631549e-005;
	setAttr -s 3 ".wl[130].w[0:2]"  0.8946803345406481 0.10529328816381535 
		2.6377295536611244e-005;
	setAttr -s 3 ".wl[131].w[0:2]"  0.89523651739423327 0.10473737665768042 
		2.6105948086311344e-005;
	setAttr -s 3 ".wl[132].w[0:2]"  0.89285027414461449 0.10712283347910341 
		2.6892376282038642e-005;
	setAttr -s 3 ".wl[133].w[0:2]"  0.88776203658700725 0.11220926576767097 
		2.8697645321814221e-005;
	setAttr -s 3 ".wl[134].w[0:2]"  0.88050709665469629 0.11946148444427682 
		3.1418901026867954e-005;
	setAttr -s 3 ".wl[135].w[0:2]"  0.87185920068128686 0.12810592962981565 
		3.4869688897424465e-005;
	setAttr -s 3 ".wl[136].w[0:2]"  0.86273134380029592 0.13722988900073174 
		3.8767198972383224e-005;
	setAttr -s 3 ".wl[137].w[0:2]"  0.85405347508678742 0.14590378521551267 
		4.2739697699992471e-005;
	setAttr -s 3 ".wl[138].w[0:2]"  0.84665985922423648 0.1532937803022123 
		4.6360473551250516e-005;
	setAttr -s 3 ".wl[139].w[0:2]"  0.84121168165801452 0.15873911353369521 
		4.9204808290244624e-005;
	setAttr -s 3 ".wl[140].w[0:2]"  0.83816045010513429 0.16178863190102788 
		5.0917993837935742e-005;
	setAttr -s 3 ".wl[141].w[0:2]"  0.83773985347833668 0.1622088680433971 
		5.1278478266228547e-005;
	setAttr -s 3 ".wl[142].w[0:2]"  0.92510125792950904 0.074850255301189078 
		4.8486769301865385e-005;
	setAttr -s 3 ".wl[143].w[0:2]"  0.92826094451795094 0.071693157156230397 
		4.589832581865387e-005;
	setAttr -s 3 ".wl[144].w[0:2]"  0.93270468021234021 0.067253018888661475 
		4.2300898998309692e-005;
	setAttr -s 3 ".wl[145].w[0:2]"  0.93796661352730937 0.061995240037733497 
		3.8146434957098723e-005;
	setAttr -s 3 ".wl[146].w[0:2]"  0.9435019152199654 0.056464172003015102 
		3.391277701950177e-005;
	setAttr -s 3 ".wl[147].w[0:2]"  0.94875353387987182 0.051216436934390798 
		3.0029185737419897e-005;
	setAttr -s 3 ".wl[148].w[0:2]"  0.95321952695112988 0.046753645769221579 
		2.6827279648553198e-005;
	setAttr -s 3 ".wl[149].w[0:2]"  0.9565041036240125 0.043471370399260897 
		2.4525976726672997e-005;
	setAttr -s 3 ".wl[150].w[0:2]"  0.95834066782049832 0.041636085935696246 
		2.3246243805419867e-005;
	setAttr -s 3 ".wl[151].w[0:2]"  0.95858971452426722 0.041387245086773106 
		2.3040388959562685e-005;
	setAttr -s 3 ".wl[152].w[0:2]"  0.95722881821315642 0.042747265632619921 
		2.3916154223692318e-005;
	setAttr -s 3 ".wl[153].w[0:2]"  0.95435233760010929 0.045621821356676105 
		2.584104321460402e-005;
	setAttr -s 3 ".wl[154].w[0:2]"  0.95018363125418515 0.049787644576048569 
		2.8724169766347432e-005;
	setAttr -s 3 ".wl[155].w[0:2]"  0.94508421337814741 0.054883400239054955 
		3.2386382797699224e-005;
	setAttr -s 3 ".wl[156].w[0:2]"  0.93953904543931399 0.06042441678920564 
		3.653777148043612e-005;
	setAttr -s 3 ".wl[157].w[0:2]"  0.93410964087059167 0.065849578674270923 
		4.0780455137500672e-005;
	setAttr -s 3 ".wl[158].w[0:2]"  0.92936406755377576 0.070591286726073649 
		4.464572015057643e-005;
	setAttr -s 3 ".wl[159].w[0:2]"  0.92580306411315605 0.074149274496307926 
		4.7661390536073969e-005;
	setAttr -s 3 ".wl[160].w[0:2]"  0.92379960199855282 0.076150964483188338 
		4.9433518258893529e-005;
	setAttr -s 3 ".wl[161].w[0:2]"  0.92355899762255855 0.076391280614226453 
		4.9721763214940412e-005;
	setAttr -s 3 ".wl[162].w[0:2]"  0.094560054779221192 0.90533295934386127 
		0.00010698587691760147;
	setAttr -s 3 ".wl[163].w[0:2]"  0.096987817943943899 0.90290322271832457 
		0.00010895933773144056;
	setAttr -s 3 ".wl[164].w[0:2]"  0.099734144051636178 0.90015567372848615 
		0.00011018221987767455;
	setAttr -s 3 ".wl[165].w[0:2]"  0.10253659424290321 0.89735291800803629 
		0.00011048774906051793;
	setAttr -s 3 ".wl[166].w[0:2]"  0.10511371585269766 0.89477646084533313 
		0.00010982330196922988;
	setAttr -s 3 ".wl[167].w[0:2]"  0.10719507901785796 0.89269665600356007 
		0.00010826497858199198;
	setAttr -s 3 ".wl[168].w[0:2]"  0.10855427372979916 0.8913397213352644 
		0.00010600493493637948;
	setAttr -s 3 ".wl[169].w[0:2]"  0.10903976132514151 0.89085692265747818 
		0.0001033160173804039;
	setAttr -s 3 ".wl[170].w[0:2]"  0.10859693358653119 0.89130256222206539 
		0.00010050419140338622;
	setAttr -s 3 ".wl[171].w[0:2]"  0.10727670119494906 0.89262543593700161 
		9.7862868049307706e-005;
	setAttr -s 3 ".wl[172].w[0:2]"  0.10522780821501665 0.89467655313172101 
		9.5638653262346759e-005;
	setAttr -s 3 ".wl[173].w[0:2]"  0.102674513644352 0.89723147344674026 
		9.4012908907720931e-005;
	setAttr -s 3 ".wl[174].w[0:2]"  0.099885155288821512 0.90002174671788804 
		9.309799329047291e-005;
	setAttr -s 3 ".wl[175].w[0:2]"  0.097138528246721367 0.90276852883064329 
		9.294292263534305e-005;
	setAttr -s 3 ".wl[176].w[0:2]"  0.094694608070588743 0.90521184921978293 
		9.3542709628305465e-005;
	setAttr -s 3 ".wl[177].w[0:2]"  0.092773036988001586 0.9071321168508254 
		9.4846161173102743e-005;
	setAttr -s 3 ".wl[178].w[0:2]"  0.09153929560117896 0.90836394581398117 
		9.6758584839973648e-005;
	setAttr -s 3 ".wl[179].w[0:2]"  0.091097067594669123 0.90880379249789289 
		9.9139907438038259e-005;
	setAttr -s 3 ".wl[180].w[0:2]"  0.091484321852253955 0.90841387668368911 
		0.00010180146405689027;
	setAttr -s 3 ".wl[181].w[0:2]"  0.09267116803244374 0.90722432496457561 
		0.00010450700298054172;
	setAttr -s 3 ".wl[182].w[0:2]"  0.95880286648514068 0.041151911128429544 
		4.5222386429741933e-005;
	setAttr -s 3 ".wl[183].w[0:2]"  0.96088280699546169 0.039074638483405061 
		4.2554521133146266e-005;
	setAttr -s 3 ".wl[184].w[0:2]"  0.96375798313459971 0.036203113467624698 
		3.8903397775648557e-005;
	setAttr -s 3 ".wl[185].w[0:2]"  0.96710014095469443 0.032865119945720708 
		3.4739099584886921e-005;
	setAttr -s 3 ".wl[186].w[0:2]"  0.9705453695892251 0.029424083934324892 
		3.0546476449999064e-005;
	setAttr -s 3 ".wl[187].w[0:2]"  0.97374520864889447 0.026228043439408995 
		2.6747911696526521e-005;
	setAttr -s 3 ".wl[188].w[0:2]"  0.97640936213203533 0.023566981553776924 
		2.3656314187804295e-005;
	setAttr -s 3 ".wl[189].w[0:2]"  0.97832878149205693 0.021649752111452893 
		2.1466396490194562e-005;
	setAttr -s 3 ".wl[190].w[0:2]"  0.97937608953660049 0.020603633546169384 
		2.0276917230184834e-005;
	setAttr -s 3 ".wl[191].w[0:2]"  0.97949084243054396 0.020489031584004724 
		2.0125985451320861e-005;
	setAttr -s 3 ".wl[192].w[0:2]"  0.97866496720248597 0.021314014731107243 
		2.1018066406749316e-005;
	setAttr -s 3 ".wl[193].w[0:2]"  0.97694150351252829 0.023035568787384116 
		2.2927700087669513e-005;
	setAttr -s 3 ".wl[194].w[0:2]"  0.9744283394681954 0.025545882723003323 
		2.5777808801315927e-005;
	setAttr -s 3 ".wl[195].w[0:2]"  0.97131566449562112 0.028654931176350103 
		2.9404328028874756e-005;
	setAttr -s 3 ".wl[196].w[0:2]"  0.96788048925748216 0.032085982873413778 
		3.3527869104061755e-005;
	setAttr -s 3 ".wl[197].w[0:2]"  0.96446763027828475 0.035494617237164301 
		3.7752484550948567e-005;
	setAttr -s 3 ".wl[198].w[0:2]"  0.96144820088043803 0.038510196718268351 
		4.1602401293607935e-005;
	setAttr -s 3 ".wl[199].w[0:2]"  0.95916633180259137 0.040789074959999359 
		4.4593237409167437e-005;
	setAttr -s 3 ".wl[200].w[0:2]"  0.95788810471515173 0.042065574983553553 
		4.6320301294650271e-005;
	setAttr -s 3 ".wl[201].w[0:2]"  0.95776283224646508 0.042190627439525848 
		4.654031400912408e-005;
	setAttr -s 3 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.017388674879357805 0.9998488055630913 0 -0 -0.9998488055630913 0.017388674879357805 -0 0
		 0 -0 1 -0 5.6638018218546238 5.3295782923265236 -8.4969287567398268 1;
	setAttr ".pm[1]" -type "matrix" 0.045298419515391465 0.99897349974331551 0 -0 -0.99897349974331551 0.045298419515391465 -0 0
		 0 -0 1 -0 3.2690174735555821 5.2403478902859426 -8.4969287567398286 1;
	setAttr ".pm[2]" -type "matrix" 1 -4.163336342344338e-016 0 -0 4.163336342344338e-016 1 -0 0
		 0 -0 1 -0 5.2497495534564589 -0.088585737632922393 -8.4969287567398251 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -5.3655965030811359 2.786786141792009 8.5027071738210189 1;
	setAttr -s 3 ".ma";
	setAttr -s 3 ".dpf[0:2]"  4 4 4;
	setAttr -s 3 ".lw";
	setAttr -s 3 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr ".nw" 2;
createNode tweak -n "tweak3";
createNode objectSet -n "skinCluster3Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster3GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster3GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet3";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose3";
	setAttr -s 3 ".wm";
	setAttr -s 3 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 -5.4272584981989977 5.5702711823580549
		 8.4969287567398268 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.70093199567455977 0.71322811038242095 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.5423732259072573 3.4694469519536142e-016
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.013961733469798286 0.99990253024908293 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.9427173115818701 1.2712053631958042e-014
		 -7.7037197775489434e-034 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.69090577522720453 0.72294481792021681 1
		 1 1 yes;
	setAttr -s 3 ".m";
	setAttr -s 3 ".p";
	setAttr ".bp" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n"
		+ "            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n"
		+ "            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n"
		+ "                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n"
		+ "                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n"
		+ "                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n"
		+ "                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n"
		+ "                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n"
		+ "            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n"
		+ "            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n"
		+ "                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n"
		+ "                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n"
		+ "                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n"
		+ "            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode polyCylinder -n "polyCylinder3";
	setAttr ".r" 2.0225004295216884;
	setAttr ".h" 6.9221765130427428;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polySphere -n "polySphere2";
	setAttr ".r" 3.3770063086956164;
createNode skinCluster -n "skinCluster5";
	setAttr -s 42 ".wl";
	setAttr -s 2 ".wl[0].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[1].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[2].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[3].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[4].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[5].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[6].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[7].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[8].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[9].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[10].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[11].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[12].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[13].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[14].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[15].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[16].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[17].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[18].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[19].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[20].w[0:1]"  0.99179025890378336 0.0082097410962166627;
	setAttr -s 2 ".wl[21].w[0:1]"  0.98999206911005055 0.010007930889949421;
	setAttr -s 2 ".wl[22].w[0:1]"  0.98837248144124235 0.011627518558757701;
	setAttr -s 2 ".wl[23].w[0:1]"  0.98715624019268433 0.012843759807315759;
	setAttr -s 2 ".wl[24].w[0:1]"  0.98652171729417071 0.013478282705829295;
	setAttr -s 2 ".wl[25].w[0:1]"  0.98656605710172052 0.013433942898279465;
	setAttr -s 2 ".wl[26].w[0:1]"  0.98728585932006629 0.012714140679933681;
	setAttr -s 2 ".wl[27].w[0:1]"  0.98857633170073722 0.011423668299262809;
	setAttr -s 2 ".wl[28].w[0:1]"  0.99024981805441858 0.0097501819455813824;
	setAttr -s 2 ".wl[29].w[0:1]"  0.99207275286633667 0.0079272471336633236;
	setAttr -s 2 ".wl[30].w[0:1]"  0.9938137724902586 0.0061862275097413801;
	setAttr -s 2 ".wl[31].w[0:1]"  0.99529030580382827 0.0047096941961717971;
	setAttr -s 2 ".wl[32].w[0:1]"  0.99639719594940612 0.003602804050593841;
	setAttr -s 2 ".wl[33].w[0:1]"  0.9971052865288148 0.0028947134711851596;
	setAttr -s 2 ".wl[34].w[0:1]"  0.9974312779351876 0.0025687220648124391;
	setAttr -s 2 ".wl[35].w[0:1]"  0.99739675352810897 0.002603246471890976;
	setAttr -s 2 ".wl[36].w[0:1]"  0.99700092114297278 0.0029990788570271195;
	setAttr -s 2 ".wl[37].w[0:1]"  0.99622371301884527 0.0037762869811547831;
	setAttr -s 2 ".wl[38].w[0:1]"  0.99505640425460151 0.0049435957453985661;
	setAttr -s 2 ".wl[39].w[0:1]"  0.99354022539812337 0.0064597746018767383;
	setAttr -s 2 ".wl[40].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[41].w[0:1]"  0.99998025463843276 1.9745361567260163e-005;
	setAttr -s 2 ".pm";
	setAttr ".pm[0]" -type "matrix" -0.0089282155597240048 -0.99996014268915678 1.0933910607313599e-018 -0
		 -0.99996014268915678 0.0089282155597241158 1.2245979880192066e-016 0 -1.224646799147353e-016 7.1259407942327713e-033 -1 0
		 6.950440240083819 4.0260314645262971 8.6970480857568617 1;
	setAttr ".pm[1]" -type "matrix" 0.99999999999999978 -3.3306690738754681e-016 -1.2355807097546665e-016 -0
		 2.2204460492503118e-016 0.99999999999999978 -1.2245979880192069e-016 0 1.2355807097546667e-016 1.2245979880192064e-016 1 -0
		 -4.0272749918980741 -0.12130206907826727 -8.6970480857568617 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 4.0337528564662577 3.4610882565213714 8.2460138458328416 1;
	setAttr -s 2 ".ma";
	setAttr -s 2 ".dpf[0:1]"  4 4;
	setAttr -s 2 ".lw";
	setAttr -s 2 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr ".nw" 2;
createNode tweak -n "tweak5";
createNode objectSet -n "skinCluster5Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster5GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster5GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet5";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId10";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose5";
	setAttr -s 2 ".wm";
	setAttr -s 2 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.0879260264372013 6.914217937461153
		 8.6970480857568617 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.70394310297078555 0.71025636764471323 4.3104083391751409e-017 4.3490659360506188e-017 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 6.7931866265338741 -2.4077961846558082e-015
		 -8.3192542581953165e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.70394310297078544 0.71025636764471334 4.3104083391751403e-017 4.3490659360506194e-017 1
		 1 1 yes;
	setAttr -s 2 ".m";
	setAttr -s 2 ".p";
	setAttr ".bp" yes;
createNode polyPipe -n "polyPipe1";
	setAttr ".r" 0.29241092294967785;
	setAttr ".h" 11.884377134202396;
createNode polySplitRing -n "polySplitRing9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[120:139]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.2788864507414446 0 0 0 0 1 0 1.8085587025789103 2.9710942835505989 9.6605975793893784 1;
	setAttr ".wt" 0.41197395324707031;
	setAttr ".re" 138;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[160:161]" "e[163]" "e[165]" "e[167]" "e[169]" "e[171]" "e[173]" "e[175]" "e[177]" "e[179]" "e[181]" "e[183]" "e[185]" "e[187]" "e[189]" "e[191]" "e[193]" "e[195]" "e[197]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.2788864507414446 0 0 0 0 1 0 1.8085587025789103 2.9710942835505989 9.6605975793893784 1;
	setAttr ".wt" 0.040155112743377686;
	setAttr ".re" 160;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[200:201]" "e[203]" "e[205]" "e[207]" "e[209]" "e[211]" "e[213]" "e[215]" "e[217]" "e[219]" "e[221]" "e[223]" "e[225]" "e[227]" "e[229]" "e[231]" "e[233]" "e[235]" "e[237]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.2788864507414446 0 0 0 0 1 0 1.8085587025789103 2.9710942835505989 9.6605975793893784 1;
	setAttr ".wt" 0.047811400145292282;
	setAttr ".re" 200;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing12";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[240:241]" "e[243]" "e[245]" "e[247]" "e[249]" "e[251]" "e[253]" "e[255]" "e[257]" "e[259]" "e[261]" "e[263]" "e[265]" "e[267]" "e[269]" "e[271]" "e[273]" "e[275]" "e[277]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.2788864507414446 0 0 0 0 1 0 1.8085587025789103 2.9710942835505989 9.6605975793893784 1;
	setAttr ".wt" 0.056488633155822754;
	setAttr ".re" 240;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing13";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[120:139]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.2788864507414446 0 0 0 0 1 0 1.8085587025789103 2.9710942835505989 9.6605975793893784 1;
	setAttr ".wt" 0.95906084775924683;
	setAttr ".dr" no;
	setAttr ".re" 137;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[120:139]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.2788864507414446 0 0 0 0 1 0 1.8085587025789103 2.9710942835505989 9.6605975793893784 1;
	setAttr ".wt" 0.94023853540420532;
	setAttr ".dr" no;
	setAttr ".re" 138;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing15";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[280:281]" "e[283]" "e[285]" "e[287]" "e[289]" "e[291]" "e[293]" "e[295]" "e[297]" "e[299]" "e[301]" "e[303]" "e[305]" "e[307]" "e[309]" "e[311]" "e[313]" "e[315]" "e[317]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.2788864507414446 0 0 0 0 1 0 1.8085587025789103 2.9710942835505989 9.6605975793893784 1;
	setAttr ".wt" 0.053218353539705276;
	setAttr ".re" 281;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode skinCluster -n "skinCluster6";
	setAttr -s 220 ".wl";
	setAttr -s 3 ".wl[0].w[0:2]"  5.194424349315745e-006 0.49999740278782534 
		0.49999740278782534;
	setAttr -s 3 ".wl[1].w[0:2]"  5.1944311394235937e-006 0.49999740278443028 
		0.49999740278443028;
	setAttr -s 3 ".wl[2].w[0:2]"  5.1944177544671755e-006 0.49999740279112276 
		0.49999740279112276;
	setAttr -s 3 ".wl[3].w[0:2]"  5.1943855047381771e-006 0.49999740280724764 
		0.49999740280724764;
	setAttr -s 3 ".wl[4].w[0:2]"  5.1943375472184967e-006 0.4999974028312264 
		0.4999974028312264;
	setAttr -s 3 ".wl[5].w[0:2]"  5.1942785765081645e-006 0.49999740286071176 
		0.49999740286071176;
	setAttr -s 3 ".wl[6].w[0:2]"  5.1942143652070137e-006 0.49999740289281741 
		0.49999740289281741;
	setAttr -s 3 ".wl[7].w[0:2]"  5.1941511987992429e-006 0.49999740292440059 
		0.49999740292440059;
	setAttr -s 3 ".wl[8].w[0:2]"  5.1940952603837933e-006 0.49999740295236983 
		0.49999740295236983;
	setAttr -s 3 ".wl[9].w[0:2]"  5.194052025436697e-006 0.49999740297398731 
		0.49999740297398731;
	setAttr -s 3 ".wl[10].w[0:2]"  5.1940257259210448e-006 0.49999740298713702 
		0.49999740298713702;
	setAttr -s 3 ".wl[11].w[0:2]"  5.1940189360751808e-006 0.49999740299053197 
		0.49999740299053197;
	setAttr -s 3 ".wl[12].w[0:2]"  5.1940323205054119e-006 0.49999740298383977 
		0.49999740298383977;
	setAttr -s 3 ".wl[13].w[0:2]"  5.1940645691210356e-006 0.49999740296771544 
		0.49999740296771544;
	setAttr -s 3 ".wl[14].w[0:2]"  5.1941125253654434e-006 0.49999740294373729 
		0.49999740294373729;
	setAttr -s 3 ".wl[15].w[0:2]"  5.1941714951257012e-006 0.49999740291425249 
		0.49999740291425249;
	setAttr -s 3 ".wl[16].w[0:2]"  5.1942357061648757e-006 0.49999740288214695 
		0.49999740288214695;
	setAttr -s 3 ".wl[17].w[0:2]"  5.1942988730988403e-006 0.49999740285056349 
		0.49999740285056349;
	setAttr -s 3 ".wl[18].w[0:2]"  5.1943548126276546e-006 0.4999974028225937 
		0.4999974028225937;
	setAttr -s 3 ".wl[19].w[0:2]"  5.1943980488500284e-006 0.4999974028009756 
		0.4999974028009756;
	setAttr -s 3 ".wl[20].w[0:2]"  0.99999982433004042 1.6999504728161952e-007 
		5.6749123007997245e-009;
	setAttr -s 3 ".wl[21].w[0:2]"  0.99999982431600254 1.7000863136475143e-007 
		5.6753660335936348e-009;
	setAttr -s 3 ".wl[22].w[0:2]"  0.99999982429292633 1.7003096158902344e-007 
		5.6761120354992972e-009;
	setAttr -s 3 ".wl[23].w[0:2]"  0.9999998242630691 1.7005985356885462e-007 
		5.6770773313121007e-009;
	setAttr -s 3 ".wl[24].w[0:2]"  0.99999982422935207 1.7009248042592324e-007 
		5.6781674737187192e-009;
	setAttr -s 3 ".wl[25].w[0:2]"  0.99999982419507527 1.701256490060386e-007 
		5.6792757717786449e-009;
	setAttr -s 3 ".wl[26].w[0:2]"  0.99999982416359412 1.7015611223193029e-007 
		5.680293727348039e-009;
	setAttr -s 3 ".wl[27].w[0:2]"  0.99999982413799127 1.7018088706105551e-007 
		5.6811216593510275e-009;
	setAttr -s 3 ".wl[28].w[0:2]"  0.99999982412077459 1.701975469034578e-007 
		5.6816784752175333e-009;
	setAttr -s 3 ".wl[29].w[0:2]"  0.99999982411363064 1.7020445971397133e-007 
		5.6819096275733231e-009;
	setAttr -s 3 ".wl[30].w[0:2]"  0.99999982411725929 1.7020094822360926e-007 
		5.6817924696536551e-009;
	setAttr -s 3 ".wl[31].w[0:2]"  0.99999982413130506 1.7018735647153555e-007 
		5.6813384800492011e-009;
	setAttr -s 3 ".wl[32].w[0:2]"  0.99999982415439193 1.7016501599904102e-007 
		5.6805921347894608e-009;
	setAttr -s 3 ".wl[33].w[0:2]"  0.99999982418425837 1.7013611510618143e-007 
		5.6796265402287035e-009;
	setAttr -s 3 ".wl[34].w[0:2]"  0.99999982421797973 1.7010348407575082e-007 
		5.6785362577917669e-009;
	setAttr -s 3 ".wl[35].w[0:2]"  0.99999982425225431 1.7007031765602294e-007 
		5.6774280319060057e-009;
	setAttr -s 3 ".wl[36].w[0:2]"  0.99999982428372758 1.7003986209907478e-007 
		5.6764103331472016e-009;
	setAttr -s 3 ".wl[37].w[0:2]"  0.99999982430931966 1.700150975181721e-007 
		5.6755827444982894e-009;
	setAttr -s 3 ".wl[38].w[0:2]"  0.99999982432652723 1.6999844658879811e-007 
		5.6750262273797366e-009;
	setAttr -s 3 ".wl[39].w[0:2]"  0.99999982433366685 1.6999153795164649e-007 
		5.6747952150542616e-009;
	setAttr -s 3 ".wl[40].w[0:2]"  0.99996978092544719 2.9245559971055631e-005 
		9.7351458178492863e-007;
	setAttr -s 3 ".wl[41].w[0:2]"  0.99996420990024582 3.4635633139895576e-005 
		1.1544666142869273e-006;
	setAttr -s 3 ".wl[42].w[0:2]"  0.99995406364383066 4.4450505902553468e-005 
		1.4858502669022566e-006;
	setAttr -s 3 ".wl[43].w[0:2]"  0.9999391282394432 5.8894984258795834e-005 
		1.9767762979706991e-006;
	setAttr -s 3 ".wl[44].w[0:2]"  0.99991984923107213 7.7535450322019863e-005 
		2.6153186057357203e-006;
	setAttr -s 3 ".wl[45].w[0:2]"  0.99989767899121096 9.8965144542778678e-005 
		3.3558642463414246e-006;
	setAttr -s 3 ".wl[46].w[0:2]"  0.99987508808237513 0.00012079477591806642 
		4.1171417068283908e-006;
	setAttr -s 3 ".wl[47].w[0:2]"  0.99985519137994439 0.00014001505028874708 
		4.7935697669268488e-006;
	setAttr -s 3 ".wl[48].w[0:2]"  0.99984109036870761 0.00015363214857693034 
		5.2774827155898542e-006;
	setAttr -s 3 ".wl[49].w[0:2]"  0.99983513665708068 0.00015937784514139045 
		5.4854977779709752e-006;
	setAttr -s 3 ".wl[50].w[0:2]"  0.99983834762049895 0.00015627198048055139 
		5.3803990205826498e-006;
	setAttr -s 3 ".wl[51].w[0:2]"  0.99985015298101454 0.00014486583665556112 
		4.9811823299781363e-006;
	setAttr -s 3 ".wl[52].w[0:2]"  0.99986854599000974 0.00012709614276167273 
		4.3578672286687896e-006;
	setAttr -s 3 ".wl[53].w[0:2]"  0.99989059016282089 0.00010579698732819189 
		3.6128498509582396e-006;
	setAttr -s 3 ".wl[54].w[0:2]"  0.99991312517152608 8.4019716390006897e-005 
		2.8551120839210771e-006;
	setAttr -s 3 ".wl[55].w[0:2]"  0.9999334557097076 6.4368492922970268e-005 
		2.1757973692901546e-006;
	setAttr -s 3 ".wl[56].w[0:2]"  0.99994981389017801 4.85533222076636e-005 
		1.6327876143191747e-006;
	setAttr -s 3 ".wl[57].w[0:2]"  0.99996146470750902 3.7287000259056981e-005 
		1.2482922318869359e-006;
	setAttr -s 3 ".wl[58].w[0:2]"  0.99996845590146377 3.0525630923381102e-005 
		1.0184676128936042e-006;
	setAttr -s 3 ".wl[59].w[0:2]"  0.99997115209704612 2.7918258037642807e-005 
		9.296449162210766e-007;
	setAttr -s 3 ".wl[60].w[0:2]"  4.3335662205939692e-005 0.49997833216889703 
		0.49997833216889703;
	setAttr -s 3 ".wl[61].w[0:2]"  4.3890367739100444e-005 0.4999780548161305 
		0.4999780548161305;
	setAttr -s 3 ".wl[62].w[0:2]"  4.2724145816144525e-005 0.49997863792709196 
		0.49997863792709196;
	setAttr -s 3 ".wl[63].w[0:2]"  4.0020291689957391e-005 0.49997998985415498 
		0.49997998985415498;
	setAttr -s 3 ".wl[64].w[0:2]"  3.6184735781064736e-005 0.49998190763210942 
		0.49998190763210942;
	setAttr -s 3 ".wl[65].w[0:2]"  3.1751411529643216e-005 0.49998412429423517 
		0.49998412429423517;
	setAttr -s 3 ".wl[66].w[0:2]"  2.7269230138710951e-005 0.49998636538493069 
		0.49998636538493069;
	setAttr -s 3 ".wl[67].w[0:2]"  2.3205129222272869e-005 0.49998839743538886 
		0.49998839743538886;
	setAttr -s 3 ".wl[68].w[0:2]"  1.988859529271927e-005 0.49999005570235361 
		0.49999005570235361;
	setAttr -s 3 ".wl[69].w[0:2]"  1.7506030872940782e-005 0.49999124698456349 
		0.49999124698456349;
	setAttr -s 3 ".wl[70].w[0:2]"  1.6134912986680372e-005 0.49999193254350666 
		0.49999193254350666;
	setAttr -s 3 ".wl[71].w[0:2]"  1.5794718373235214e-005 0.49999210264081334 
		0.49999210264081334;
	setAttr -s 3 ".wl[72].w[0:2]"  1.6488090500200116e-005 0.49999175595474987 
		0.49999175595474987;
	setAttr -s 3 ".wl[73].w[0:2]"  1.8212365876474948e-005 0.49999089381706174 
		0.49999089381706174;
	setAttr -s 3 ".wl[74].w[0:2]"  2.0935785345253512e-005 0.49998953210732738 
		0.49998953210732738;
	setAttr -s 3 ".wl[75].w[0:2]"  2.4549197728871354e-005 0.49998772540113556 
		0.49998772540113556;
	setAttr -s 3 ".wl[76].w[0:2]"  2.8816848038001553e-005 0.49998559157598099 
		0.49998559157598099;
	setAttr -s 3 ".wl[77].w[0:2]"  3.3353755732590179e-005 0.49998332312213378 
		0.49998332312213367;
	setAttr -s 3 ".wl[78].w[0:2]"  3.7649857606626453e-005 0.49998117507119672 
		0.49998117507119672;
	setAttr -s 3 ".wl[79].w[0:2]"  4.1144594806237451e-005 0.49997942770259696 
		0.49997942770259685;
	setAttr -s 3 ".wl[80].w[0:2]"  0.5008421734421995 0.49915592331928077 
		1.9032385197454509e-006;
	setAttr -s 3 ".wl[81].w[0:2]"  0.50085157849088202 0.49914731462765699 
		1.1068814609509343e-006;
	setAttr -s 3 ".wl[82].w[0:2]"  0.50079585973104723 0.49920309912971084 
		1.0411392419237943e-006;
	setAttr -s 3 ".wl[83].w[0:2]"  0.50069537110580009 0.49930297176044602 
		1.6571337539636788e-006;
	setAttr -s 3 ".wl[84].w[0:2]"  0.50063463487688342 0.49936202781194178 
		3.3373111748471518e-006;
	setAttr -s 3 ".wl[85].w[0:2]"  0.50063310298107289 0.49936020710676587 
		6.6899121612804641e-006;
	setAttr -s 3 ".wl[86].w[0:2]"  0.50067415686428707 0.49931364645214305 
		1.2196683569997586e-005;
	setAttr -s 3 ".wl[87].w[0:2]"  0.50073981843532944 0.49924032340175123 
		1.9858162919402563e-005;
	setAttr -s 3 ".wl[88].w[0:2]"  0.50081588112584252 0.49915513163541414 
		2.8987238743326075e-005;
	setAttr -s 3 ".wl[89].w[0:2]"  0.50084216687284622 0.49911958658266414 
		3.8246544489584726e-005;
	setAttr -s 3 ".wl[90].w[0:2]"  0.50081916447119779 0.49913488461558081 
		4.595091322145285e-005;
	setAttr -s 3 ".wl[91].w[0:2]"  0.50079281335130243 0.49915665393814512 
		5.0532710552431038e-005;
	setAttr -s 3 ".wl[92].w[0:2]"  0.50079051323221369 0.49915848309743666 
		5.1003670349735864e-005;
	setAttr -s 3 ".wl[93].w[0:2]"  0.5008226006830695 0.49913014063107336 
		4.7258685857172827e-005;
	setAttr -s 3 ".wl[94].w[0:2]"  0.50088190793822551 0.49907798273212911 
		4.0109329645344799e-005;
	setAttr -s 3 ".wl[95].w[0:2]"  0.50094147628231367 0.49902748939610031 
		3.1034321586043258e-005;
	setAttr -s 3 ".wl[96].w[0:2]"  0.5009490491745161 0.4990292143436254 
		2.1736481858446021e-005;
	setAttr -s 3 ".wl[97].w[0:2]"  0.50089792240111886 0.49908841125225911 
		1.3666346622035266e-005;
	setAttr -s 3 ".wl[98].w[0:2]"  0.50085484217376752 0.49913748734576263 
		7.6704804698695884e-006;
	setAttr -s 3 ".wl[99].w[0:2]"  0.50083388898732328 0.49916222530967519 
		3.8857030015558282e-006;
	setAttr -s 3 ".wl[100].w[0:2]"  0.24852940831957829 0.7514668785172427 
		3.7131631791499183e-006;
	setAttr -s 3 ".wl[101].w[0:2]"  0.21449051731329208 0.78550706242673296 
		2.4202599750137424e-006;
	setAttr -s 3 ".wl[102].w[0:2]"  0.21248907613940085 0.78750859642314974 
		2.3274374494930076e-006;
	setAttr -s 3 ".wl[103].w[0:2]"  0.24466943491985821 0.75532717735987731 
		3.3877202645764915e-006;
	setAttr -s 3 ".wl[104].w[0:2]"  0.29028805661979529 0.70970592461926774 
		6.0187609370121947e-006;
	setAttr -s 3 ".wl[105].w[0:2]"  0.3306305843497252 0.66935857545018984 
		1.0840200084931413e-005;
	setAttr -s 3 ".wl[106].w[0:2]"  0.36014185062335513 0.63983986796424919 
		1.828141239575627e-005;
	setAttr -s 3 ".wl[107].w[0:2]"  0.38014876519491125 0.61982302947139611 
		2.820533369263281e-005;
	setAttr -s 3 ".wl[108].w[0:2]"  0.39323201132194513 0.60672829114762306 
		3.9697530431690409e-005;
	setAttr -s 3 ".wl[109].w[0:2]"  0.40145610246616087 0.59849276596276468 
		5.1131571074503498e-005;
	setAttr -s 3 ".wl[110].w[0:2]"  0.40617799378756936 0.59376148893523484 
		6.0517277195840151e-005;
	setAttr -s 3 ".wl[111].w[0:2]"  0.40819457088214828 0.59173940203762165 
		6.6027080230035516e-005;
	setAttr -s 3 ".wl[112].w[0:2]"  0.40788417958152673 0.59204929786717886 
		6.6522551294465371e-005;
	setAttr -s 3 ".wl[113].w[0:2]"  0.40528153668104638 0.59465656733583727 
		6.1895983116394245e-005;
	setAttr -s 3 ".wl[114].w[0:2]"  0.40008502792502271 0.59986186757487991 
		5.3104500097259419e-005;
	setAttr -s 3 ".wl[115].w[0:2]"  0.39159864551079437 0.60835947098037557 
		4.1883508830109929e-005;
	setAttr -s 3 ".wl[116].w[0:2]"  0.37861226736823816 0.62135749099853133 
		3.0241633230557227e-005;
	setAttr -s 3 ".wl[117].w[0:2]"  0.35926981770654759 0.64071026652299978 
		1.9915770452671983e-005;
	setAttr -s 3 ".wl[118].w[0:2]"  0.33119898071677306 0.66878904545510753 
		1.1973828119546919e-005;
	setAttr -s 3 ".wl[119].w[0:2]"  0.29290637461586433 0.70708693476709028 
		6.6906170454603089e-006;
	setAttr -s 3 ".wl[120].w[0:2]"  0.046746072095136253 0.95324742233982473 
		6.5055650390363114e-006;
	setAttr -s 3 ".wl[121].w[0:2]"  0.035230987796369191 0.9647645678805945 
		4.444323036308182e-006;
	setAttr -s 3 ".wl[122].w[0:2]"  0.034876711452315967 0.96511893382437453 
		4.3547233095279562e-006;
	setAttr -s 3 ".wl[123].w[0:2]"  0.045805731223805303 0.95418807359239688 
		6.195183797890534e-006;
	setAttr -s 3 ".wl[124].w[0:2]"  0.067453510950270135 0.93253585840401743 
		1.06306457124622e-005;
	setAttr -s 3 ".wl[125].w[0:2]"  0.096465415606427213 0.90351606126486539 
		1.8523128707414967e-005;
	setAttr -s 3 ".wl[126].w[0:2]"  0.12741333040345654 0.8725564018252091 
		3.0267771334370548e-005;
	setAttr -s 3 ".wl[127].w[0:2]"  0.15563212300609425 0.8443225285036805 
		4.5348490225228941e-005;
	setAttr -s 3 ".wl[128].w[0:2]"  0.17858370827473499 0.82135406539530798 
		6.2226329956955716e-005;
	setAttr -s 3 ".wl[129].w[0:2]"  0.19545905073687753 0.80446240180331785 
		7.8547459804526639e-005;
	setAttr -s 3 ".wl[130].w[0:2]"  0.20632441557471179 0.79358395681038185 
		9.1627614906362342e-005;
	setAttr -s 3 ".wl[131].w[0:2]"  0.21150011256523449 0.78840078754971132 
		9.9099885054223263e-005;
	setAttr -s 3 ".wl[132].w[0:2]"  0.21123853574988391 0.78866192753538633 
		9.9536714729719301e-005;
	setAttr -s 3 ".wl[133].w[0:2]"  0.20559921463995862 0.79430794175337482 
		9.2843606666555905e-005;
	setAttr -s 3 ".wl[134].w[0:2]"  0.19444718196986249 0.80547252835599858 
		8.0289674139039137e-005;
	setAttr -s 3 ".wl[135].w[0:2]"  0.17756815098502071 0.82236768646622649 
		6.4162548752816245e-005;
	setAttr -s 3 ".wl[136].w[0:2]"  0.15495958015836384 0.84499325618833099 
		4.7163653305132623e-005;
	setAttr -s 3 ".wl[137].w[0:2]"  0.12738644431520732 0.872581814305043 
		3.174137974973517e-005;
	setAttr -s 3 ".wl[138].w[0:2]"  0.097156882767267333 0.90282355431616768 
		1.9562916565046368e-005;
	setAttr -s 3 ".wl[139].w[0:2]"  0.068552364210670125 0.93143637617934016 
		1.1259609989695109e-005;
	setAttr -s 3 ".wl[140].w[0:2]"  0.010571410146743425 0.98941872242652051 
		9.8674267360093989e-006;
	setAttr -s 3 ".wl[141].w[0:2]"  0.0080726516100832653 0.99192013072864138 
		7.2176612753029809e-006;
	setAttr -s 3 ".wl[142].w[0:2]"  0.008098075929198624 0.99189471836510101 
		7.205705700367023e-006;
	setAttr -s 3 ".wl[143].w[0:2]"  0.010672250364521962 0.98931792376327365 
		9.8258722042798883e-006;
	setAttr -s 3 ".wl[144].w[0:2]"  0.016145284161711692 0.98383880603183205 
		1.5909806456283833e-005;
	setAttr -s 3 ".wl[145].w[0:2]"  0.024589869292741359 0.97538355773131169 
		2.6572975946980957e-005;
	setAttr -s 3 ".wl[146].w[0:2]"  0.035314589338545289 0.9646430234389255 
		4.2387222529292003e-005;
	setAttr -s 3 ".wl[147].w[0:2]"  0.046971732297224816 0.95296557100916501 
		6.2696693610174095e-005;
	setAttr -s 3 ".wl[148].w[0:2]"  0.058038797116728082 0.94187580980170937 
		8.539308156250126e-005;
	setAttr -s 3 ".wl[149].w[0:2]"  0.067234112256998269 0.93265865948356641 
		0.00010722825943528483;
	setAttr -s 3 ".wl[150].w[0:2]"  0.07368185075397643 0.92619360792630612 
		0.00012454131971748354;
	setAttr -s 3 ".wl[151].w[0:2]"  0.076890049972050012 0.92297578138667735 
		0.00013416864127255648;
	setAttr -s 3 ".wl[152].w[0:2]"  0.076665958842009121 0.92319977371090045 
		0.00013426744709041139;
	setAttr -s 3 ".wl[153].w[0:2]"  0.073052598943629504 0.92682259187495886 
		0.00012480918141168754;
	setAttr -s 3 ".wl[154].w[0:2]"  0.066320717088998102 0.93357169026812326 
		0.00010759264287858039;
	setAttr -s 3 ".wl[155].w[0:2]"  0.057015051292619488 0.94289917978323079 
		8.5768924149679873e-005;
	setAttr -s 3 ".wl[156].w[0:2]"  0.046021281551155382 0.95391570020287497 
		6.3018245969603963e-005;
	setAttr -s 3 ".wl[157].w[0:2]"  0.034577088123853433 0.96538028789954589 
		4.2623976600609662e-005;
	setAttr -s 3 ".wl[158].w[0:2]"  0.024117603316946738 0.97585567086702607 
		2.6725816027104774e-005;
	setAttr -s 3 ".wl[159].w[0:2]"  0.01590016466825793 0.98408383880418948 
		1.599652755255132e-005;
	setAttr -s 3 ".wl[160].w[0:2]"  0.65417243731076336 0.34582301350536143 
		4.5491838750536668e-006;
	setAttr -s 3 ".wl[161].w[0:2]"  0.69740970009025272 0.30258786379808078 
		2.4361116665599117e-006;
	setAttr -s 3 ".wl[162].w[0:2]"  0.73384190715900222 0.266156559445622 
		1.5333953758008884e-006;
	setAttr -s 3 ".wl[163].w[0:2]"  0.73718573792474051 0.2628128012299551 
		1.4608453043915823e-006;
	setAttr -s 3 ".wl[164].w[0:2]"  0.70410693521089185 0.29589088622023674 
		2.1785688714333789e-006;
	setAttr -s 3 ".wl[165].w[0:2]"  0.65979359319964048 0.34020239752369247 
		4.0092766671167246e-006;
	setAttr -s 3 ".wl[166].w[0:2]"  0.6232104189016795 0.37678213266458332 
		7.4484337372835955e-006;
	setAttr -s 3 ".wl[167].w[0:2]"  0.59776222022064696 0.40222491829582524 
		1.2861483527793596e-005;
	setAttr -s 3 ".wl[168].w[0:2]"  0.58100362472147515 0.41897619090762811 
		2.0184370896742994e-005;
	setAttr -s 3 ".wl[169].w[0:2]"  0.57017252151308573 0.42979872663127799 
		2.8751855636415073e-005;
	setAttr -s 3 ".wl[170].w[0:2]"  0.563344373886428 0.43661828533113473 
		3.7340782437158499e-005;
	setAttr -s 3 ".wl[171].w[0:2]"  0.55934210832568865 0.44061345710069921 
		4.4434573612143883e-005;
	setAttr -s 3 ".wl[172].w[0:2]"  0.55750428330308932 0.44244708742303712 
		4.8629273873579378e-005;
	setAttr -s 3 ".wl[173].w[0:2]"  0.55752579367002342 0.44242516307061575 
		4.9043259360880684e-005;
	setAttr -s 3 ".wl[174].w[0:2]"  0.5593814557920942 0.44057295883818204 
		4.5585369723729691e-005;
	setAttr -s 3 ".wl[175].w[0:2]"  0.56331911125875356 0.43664190456440649 
		3.8984176840036434e-005;
	setAttr -s 3 ".wl[176].w[0:2]"  0.56992012519832402 0.43004930793178026 
		3.0566869895669832e-005;
	setAttr -s 3 ".wl[177].w[0:2]"  0.58023745473774169 0.41974067790578851 
		2.1867356469786685e-005;
	setAttr -s 3 ".wl[178].w[0:2]"  0.59600816119275768 0.40397763520748792 
		1.420359975439161e-005;
	setAttr -s 3 ".wl[179].w[0:2]"  0.61978854489966539 0.38020308415139692 
		8.3709489376731902e-006;
	setAttr -s 3 ".wl[180].w[0:2]"  0.93271544950726959 0.06728163674445195 
		2.913748278391628e-006;
	setAttr -s 3 ".wl[181].w[0:2]"  0.95158692767165443 0.04841122580117737 
		1.8465271681748449e-006;
	setAttr -s 3 ".wl[182].w[0:2]"  0.95292471306974635 0.047073514720072589 
		1.7722101810679703e-006;
	setAttr -s 3 ".wl[183].w[0:2]"  0.93655774922262336 0.063439600158126108 
		2.6506192505501833e-006;
	setAttr -s 3 ".wl[184].w[0:2]"  0.90439263414826354 0.095602508064747113 
		4.8577869893535173e-006;
	setAttr -s 3 ".wl[185].w[0:2]"  0.86338946995945032 0.13660164632476374 
		8.8837157859773525e-006;
	setAttr -s 3 ".wl[186].w[0:2]"  0.82243456432508122 0.17755046961028831 
		1.4966064630539202e-005;
	setAttr -s 3 ".wl[187].w[0:2]"  0.78735009223980279 0.21262704413884692 
		2.2863621350318285e-005;
	setAttr -s 3 ".wl[188].w[0:2]"  0.76017505460502111 0.23979315562846035 
		3.1789766518509822e-005;
	setAttr -s 3 ".wl[189].w[0:2]"  0.74081430446364438 0.25914519127244423 
		4.0504263911419747e-005;
	setAttr -s 3 ".wl[190].w[0:2]"  0.72848225647259324 0.27147018058870742 
		4.7562938699303153e-005;
	setAttr -s 3 ".wl[191].w[0:2]"  0.72242863203864915 0.27751969728113368 
		5.1670680217120049e-005;
	setAttr -s 3 ".wl[192].w[0:2]"  0.72221377915189233 0.27773419102388097 
		5.2029824226800946e-005;
	setAttr -s 3 ".wl[193].w[0:2]"  0.72778850574747267 0.27216292856269042 
		4.8565689836912772e-005;
	setAttr -s 3 ".wl[194].w[0:2]"  0.73949533276302437 0.26046271769259949 
		4.194954437615387e-005;
	setAttr -s 3 ".wl[195].w[0:2]"  0.75799962162093137 0.24196696835416787 
		3.3410024900709174e-005;
	setAttr -s 3 ".wl[196].w[0:2]"  0.78405572430306902 0.21591987664411663 
		2.43990528144556e-005;
	setAttr -s 3 ".wl[197].w[0:2]"  0.8178842612157049 0.18209951212812486 
		1.6226656170368525e-005;
	setAttr -s 3 ".wl[198].w[0:2]"  0.85788482159886581 0.14210539791763863 
		9.7804834955332603e-006;
	setAttr -s 3 ".wl[199].w[0:2]"  0.89897750672290333 0.10101709363922873 
		5.3996378679320735e-006;
	setAttr -s 3 ".wl[200].w[0:2]"  0.0032138952302410541 0.99677515070013012 
		1.0954069628871014e-005;
	setAttr -s 3 ".wl[201].w[0:2]"  0.0032634228838207269 0.99672548928548155 
		1.108783069765908e-005;
	setAttr -s 3 ".wl[202].w[0:2]"  0.0042037553314531288 0.99578167959420594 
		1.4565074340949029e-005;
	setAttr -s 3 ".wl[203].w[0:2]"  0.0061788685965887468 0.99379885387897982 
		2.2277524431451858e-005;
	setAttr -s 3 ".wl[204].w[0:2]"  0.0092880107434773519 0.99067660402301294 
		3.5385233509639685e-005;
	setAttr -s 3 ".wl[205].w[0:2]"  0.013402176448061701 0.98654338323121538 
		5.4440320722862446e-005;
	setAttr -s 3 ".wl[206].w[0:2]"  0.018113461073917887 0.98180791693421698 
		7.8621991865160471e-005;
	setAttr -s 3 ".wl[207].w[0:2]"  0.022830233062855958 0.97706432615368621 
		0.00010544078345786063;
	setAttr -s 3 ".wl[208].w[0:2]"  0.026931784264046212 0.97293715109568957 
		0.00013106464026428247;
	setAttr -s 3 ".wl[209].w[0:2]"  0.029896651351120036 0.96995217739439876 
		0.00015117125448116961;
	setAttr -s 3 ".wl[210].w[0:2]"  0.03137248025878607 0.96846547127775784 
		0.00016204846345615868;
	setAttr -s 3 ".wl[211].w[0:2]"  0.031198732331894689 0.96863967641099946 
		0.00016159125710587448;
	setAttr -s 3 ".wl[212].w[0:2]"  0.029406497409468213 0.97044362034631126 
		0.00014988224422056757;
	setAttr -s 3 ".wl[213].w[0:2]"  0.026211747009005321 0.97365907999643853 
		0.00012917299455622396;
	setAttr -s 3 ".wl[214].w[0:2]"  0.022002735012767893 0.97789399636187924 
		0.00010326862535282939;
	setAttr -s 3 ".wl[215].w[0:2]"  0.017307602892726159 0.98261589100928826 
		7.6506097985569314e-005;
	setAttr -s 3 ".wl[216].w[0:2]"  0.012721877696492872 0.98722547248047343 
		5.2649823033694511e-005;
	setAttr -s 3 ".wl[217].w[0:2]"  0.0087886211613233834 0.99117731483173654 
		3.4064006940099487e-005;
	setAttr -s 3 ".wl[218].w[0:2]"  0.0058631074338109969 0.99411545679751012 
		2.1435768678822746e-005;
	setAttr -s 3 ".wl[219].w[0:2]"  0.0040395486838358929 0.9959463274505489 
		1.4123865615170546e-005;
	setAttr -s 3 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.022550654924377678 0.9997457016474145 0 -0 -0.9997457016474145 0.022550654924377678 -0 0
		 0 -0 1 -0 6.9955076704001646 -2.0224418690511525 -9.6771545796483647 1;
	setAttr ".pm[1]" -type "matrix" -0.045883261826214009 -0.99894680853596329 -1.4885467540409761e-008 0
		 -0.99894680853596352 0.045883261826214002 6.8371388619101057e-010 0 0 1.4901161316312332e-008 -0.99999999999999978 -0
		 3.7152444826157427 1.7724755760958997 9.6771546060603129 1;
	setAttr ".pm[2]" -type "matrix" 0.99999999999999956 -1.0237177908223526e-015 1.4885467417945077e-008 -0
		 1.1550948949207851e-015 0.99999999999999978 -6.8371388619101047e-010 0 -1.4885467417945079e-008 6.8371388619102588e-010 0.99999999999999978 -0
		 -1.7475489021764163 0.58337564595174074 -9.6771546060603075 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1.2788864507414446 0 0 0 0 1 0 1.8085587025789103 2.9710942835505989 9.6605975793893784 1;
	setAttr -s 3 ".ma";
	setAttr -s 3 ".dpf[0:2]"  4 4 4;
	setAttr -s 3 ".lw";
	setAttr -s 3 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr ".nw" 2;
createNode tweak -n "tweak6";
createNode objectSet -n "skinCluster6Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster6GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster6GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet6";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId12";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts12";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose6";
	setAttr -s 3 ".wm";
	setAttr -s 3 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.8641742859196229 7.0393361130176721
		 9.6771545796483647 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.69908845830682331 0.71503519316337771 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.410198669636487 1.3600232051658168e-015
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.99941434860721923 -0.034219289852473703 -2.5495357911068019e-010 7.4462172152166928e-009 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.2178224784841651 1.8596235660824968e-015
		 2.7613835044181012e-023 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.69069412121929374 0.72314703270711655 4.2292817237055105e-017 4.4279984945883832e-017 1
		 1 1 yes;
	setAttr -s 3 ".m";
	setAttr -s 3 ".p";
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster7";
	setAttr -s 382 ".wl";
	setAttr -s 2 ".wl[0].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[1].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[2].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[3].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[4].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[5].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[6].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[7].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[8].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[9].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[10].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[11].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[12].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[13].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[14].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[15].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[16].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[17].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[18].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[19].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[20].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[21].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[22].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[23].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[24].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[25].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[26].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[27].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[28].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[29].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[30].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[31].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[32].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[33].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[34].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[35].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[36].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[37].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[38].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[39].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[40].w[0:1]"  0.5030879270540366 0.4969120729459634;
	setAttr -s 2 ".wl[41].w[0:1]"  0.50331465795130403 0.49668534204869608;
	setAttr -s 2 ".wl[42].w[0:1]"  0.50368205545290679 0.49631794454709327;
	setAttr -s 2 ".wl[43].w[0:1]"  0.50417209139364416 0.49582790860635595;
	setAttr -s 2 ".wl[44].w[0:1]"  0.50475124274923688 0.49524875725076306;
	setAttr -s 2 ".wl[45].w[0:1]"  0.50536818145731088 0.49463181854268912;
	setAttr -s 2 ".wl[46].w[0:1]"  0.50595658001731492 0.49404341998268519;
	setAttr -s 2 ".wl[47].w[0:1]"  0.50644374577678264 0.49355625422321742;
	setAttr -s 2 ".wl[48].w[0:1]"  0.50676353256477358 0.49323646743522637;
	setAttr -s 2 ".wl[49].w[0:1]"  0.50687002372482182 0.49312997627517829;
	setAttr -s 2 ".wl[50].w[0:1]"  0.50674777273002947 0.49325222726997064;
	setAttr -s 2 ".wl[51].w[0:1]"  0.50641525609273841 0.49358474390726165;
	setAttr -s 2 ".wl[52].w[0:1]"  0.50592043845637236 0.49407956154362759;
	setAttr -s 2 ".wl[53].w[0:1]"  0.50533001190701643 0.49466998809298351;
	setAttr -s 2 ".wl[54].w[0:1]"  0.50471582972818563 0.49528417027181437;
	setAttr -s 2 ".wl[55].w[0:1]"  0.50414259602718259 0.49585740397281747;
	setAttr -s 2 ".wl[56].w[0:1]"  0.50365995786243989 0.49634004213756006;
	setAttr -s 2 ".wl[57].w[0:1]"  0.50330022337860392 0.49669977662139608;
	setAttr -s 2 ".wl[58].w[0:1]"  0.50308086148140818 0.49691913851859193;
	setAttr -s 2 ".wl[59].w[0:1]"  0.50300941211773709 0.49699058788226297;
	setAttr -s 2 ".wl[60].w[0:1]"  0.51867865951225955 0.4813213404877405;
	setAttr -s 2 ".wl[61].w[0:1]"  0.51924703592269161 0.48075296407730833;
	setAttr -s 2 ".wl[62].w[0:1]"  0.52013992243605889 0.47986007756394111;
	setAttr -s 2 ".wl[63].w[0:1]"  0.52128970408652586 0.47871029591347425;
	setAttr -s 2 ".wl[64].w[0:1]"  0.5225995562495962 0.47740044375040375;
	setAttr -s 2 ".wl[65].w[0:1]"  0.52394684523222967 0.47605315476777044;
	setAttr -s 2 ".wl[66].w[0:1]"  0.52519279537902797 0.47480720462097198;
	setAttr -s 2 ".wl[67].w[0:1]"  0.52619853966296581 0.47380146033703424;
	setAttr -s 2 ".wl[68].w[0:1]"  0.52684519008286679 0.47315480991713332;
	setAttr -s 2 ".wl[69].w[0:1]"  0.52705347028530969 0.47294652971469031;
	setAttr -s 2 ".wl[70].w[0:1]"  0.52679777352658752 0.47320222647341259;
	setAttr -s 2 ".wl[71].w[0:1]"  0.52611071390715458 0.47388928609284536;
	setAttr -s 2 ".wl[72].w[0:1]"  0.52507687577497009 0.47492312422502991;
	setAttr -s 2 ".wl[73].w[0:1]"  0.52381770712722531 0.4761822928727748;
	setAttr -s 2 ".wl[74].w[0:1]"  0.5224717990125255 0.47752820098747456;
	setAttr -s 2 ".wl[75].w[0:1]"  0.52117555613092015 0.4788244438690798;
	setAttr -s 2 ".wl[76].w[0:1]"  0.52004826948005445 0.4799517305199455;
	setAttr -s 2 ".wl[77].w[0:1]"  0.51918349455017687 0.48081650544982313;
	setAttr -s 2 ".wl[78].w[0:1]"  0.51864626836932759 0.48135373163067235;
	setAttr -s 2 ".wl[79].w[0:1]"  0.51847405707267502 0.48152594292732503;
	setAttr -s 2 ".wl[80].w[0:1]"  0.54349250263127213 0.45650749736872787;
	setAttr -s 2 ".wl[81].w[0:1]"  0.54437269977415947 0.45562730022584047;
	setAttr -s 2 ".wl[82].w[0:1]"  0.54574322889494709 0.45425677110505291;
	setAttr -s 2 ".wl[83].w[0:1]"  0.54749138159823896 0.4525086184017611;
	setAttr -s 2 ".wl[84].w[0:1]"  0.54946298237634639 0.45053701762365361;
	setAttr -s 2 ".wl[85].w[0:1]"  0.55147093792871316 0.44852906207128684;
	setAttr -s 2 ".wl[86].w[0:1]"  0.55331106666950924 0.44668893333049076;
	setAttr -s 2 ".wl[87].w[0:1]"  0.55478483188545813 0.44521516811454193;
	setAttr -s 2 ".wl[88].w[0:1]"  0.55572579596603167 0.44427420403396833;
	setAttr -s 2 ".wl[89].w[0:1]"  0.55602463604713648 0.44397536395286358;
	setAttr -s 2 ".wl[90].w[0:1]"  0.55564653897399086 0.44435346102600914;
	setAttr -s 2 ".wl[91].w[0:1]"  0.55463691989180341 0.44536308010819659;
	setAttr -s 2 ".wl[92].w[0:1]"  0.55311347822803036 0.44688652177196969;
	setAttr -s 2 ".wl[93].w[0:1]"  0.55124733386184366 0.44875266613815634;
	setAttr -s 2 ".wl[94].w[0:1]"  0.54923771642620112 0.45076228357379894;
	setAttr -s 2 ".wl[95].w[0:1]"  0.54728624403226578 0.45271375596773428;
	setAttr -s 2 ".wl[96].w[0:1]"  0.54557554005613673 0.45442445994386332;
	setAttr -s 2 ".wl[97].w[0:1]"  0.54425471258386293 0.45574528741613701;
	setAttr -s 2 ".wl[98].w[0:1]"  0.54343176892878042 0.45656823107121963;
	setAttr -s 2 ".wl[99].w[0:1]"  0.54317096942242138 0.45682903057757868;
	setAttr -s 2 ".wl[100].w[0:1]"  0.57610073933432371 0.42389926066567629;
	setAttr -s 2 ".wl[101].w[0:1]"  0.57727330222354867 0.42272669777645128;
	setAttr -s 2 ".wl[102].w[0:1]"  0.57909080003554503 0.42090919996445497;
	setAttr -s 2 ".wl[103].w[0:1]"  0.58139797206499189 0.41860202793500811;
	setAttr -s 2 ".wl[104].w[0:1]"  0.58398676374707237 0.41601323625292763;
	setAttr -s 2 ".wl[105].w[0:1]"  0.5866098305531392 0.41339016944686074;
	setAttr -s 2 ".wl[106].w[0:1]"  0.58900227589393739 0.41099772410606256;
	setAttr -s 2 ".wl[107].w[0:1]"  0.59091046180257223 0.40908953819742788;
	setAttr -s 2 ".wl[108].w[0:1]"  0.592124294681873 0.407875705318127;
	setAttr -s 2 ".wl[109].w[0:1]"  0.59250689495127495 0.40749310504872505;
	setAttr -s 2 ".wl[110].w[0:1]"  0.59201508304188 0.40798491695812006;
	setAttr -s 2 ".wl[111].w[0:1]"  0.5907058416504144 0.40929415834958555;
	setAttr -s 2 ".wl[112].w[0:1]"  0.58872719385661743 0.41127280614338252;
	setAttr -s 2 ".wl[113].w[0:1]"  0.58629597840080094 0.41370402159919906;
	setAttr -s 2 ".wl[114].w[0:1]"  0.58366763441965497 0.41633236558034498;
	setAttr -s 2 ".wl[115].w[0:1]"  0.58110458405522269 0.41889541594477725;
	setAttr -s 2 ".wl[116].w[0:1]"  0.57884883714310753 0.42115116285689252;
	setAttr -s 2 ".wl[117].w[0:1]"  0.57710182660507636 0.42289817339492358;
	setAttr -s 2 ".wl[118].w[0:1]"  0.57601206375636216 0.42398793624363784;
	setAttr -s 2 ".wl[119].w[0:1]"  0.57566903816241333 0.42433096183758667;
	setAttr -s 2 ".wl[120].w[0:1]"  0.61580272324155794 0.38419727675844217;
	setAttr -s 2 ".wl[121].w[0:1]"  0.6172434566218602 0.3827565433781398;
	setAttr -s 2 ".wl[122].w[0:1]"  0.61946989938746133 0.38053010061253867;
	setAttr -s 2 ".wl[123].w[0:1]"  0.62228694081393954 0.37771305918606057;
	setAttr -s 2 ".wl[124].w[0:1]"  0.62543661542271278 0.37456338457728727;
	setAttr -s 2 ".wl[125].w[0:1]"  0.62861651990254974 0.37138348009745026;
	setAttr -s 2 ".wl[126].w[0:1]"  0.63150706175876981 0.36849293824123031;
	setAttr -s 2 ".wl[127].w[0:1]"  0.63380570205667375 0.36619429794332631;
	setAttr -s 2 ".wl[128].w[0:1]"  0.63526418756346892 0.36473581243653108;
	setAttr -s 2 ".wl[129].w[0:1]"  0.63572182189750148 0.36427817810249857;
	setAttr -s 2 ".wl[130].w[0:1]"  0.63512811051948315 0.36487188948051685;
	setAttr -s 2 ".wl[131].w[0:1]"  0.63355003629280737 0.36644996370719263;
	setAttr -s 2 ".wl[132].w[0:1]"  0.63116186907393002 0.36883813092607004;
	setAttr -s 2 ".wl[133].w[0:1]"  0.62822050658100059 0.37177949341899941;
	setAttr -s 2 ".wl[134].w[0:1]"  0.62503141153980035 0.37496858846019965;
	setAttr -s 2 ".wl[135].w[0:1]"  0.62191207224485079 0.37808792775514916;
	setAttr -s 2 ".wl[136].w[0:1]"  0.6191589415608445 0.3808410584391555;
	setAttr -s 2 ".wl[137].w[0:1]"  0.61702204427536389 0.38297795572463611;
	setAttr -s 2 ".wl[138].w[0:1]"  0.61568787421531534 0.3843121257846846;
	setAttr -s 2 ".wl[139].w[0:1]"  0.61526968214360922 0.38473031785639072;
	setAttr -s 2 ".wl[140].w[0:1]"  0.66175762916621195 0.338242370833788;
	setAttr -s 2 ".wl[141].w[0:1]"  0.66342601914210475 0.33657398085789519;
	setAttr -s 2 ".wl[142].w[0:1]"  0.66599799069270893 0.33400200930729107;
	setAttr -s 2 ".wl[143].w[0:1]"  0.66924307854984899 0.33075692145015106;
	setAttr -s 2 ".wl[144].w[0:1]"  0.67286006568364165 0.32713993431635835;
	setAttr -s 2 ".wl[145].w[0:1]"  0.67650006574775778 0.32349993425224216;
	setAttr -s 2 ".wl[146].w[0:1]"  0.6797988047243021 0.32020119527569785;
	setAttr -s 2 ".wl[147].w[0:1]"  0.68241513272449794 0.31758486727550206;
	setAttr -s 2 ".wl[148].w[0:1]"  0.68407159354834235 0.31592840645165765;
	setAttr -s 2 ".wl[149].w[0:1]"  0.68458972678972496 0.31541027321027509;
	setAttr -s 2 ".wl[150].w[0:1]"  0.683913651246295 0.316086348753705;
	setAttr -s 2 ".wl[151].w[0:1]"  0.68211769973144376 0.31788230026855624;
	setAttr -s 2 ".wl[152].w[0:1]"  0.67939576862696416 0.32060423137303579;
	setAttr -s 2 ".wl[153].w[0:1]"  0.67603558036165456 0.32396441963834544;
	setAttr -s 2 ".wl[154].w[0:1]"  0.67238238140563933 0.32761761859436073;
	setAttr -s 2 ".wl[155].w[0:1]"  0.6687988934149488 0.33120110658505125;
	setAttr -s 2 ".wl[156].w[0:1]"  0.66562782227021733 0.33437217772978278;
	setAttr -s 2 ".wl[157].w[0:1]"  0.66316150179110978 0.33683849820889022;
	setAttr -s 2 ".wl[158].w[0:1]"  0.66162009632427254 0.33837990367572746;
	setAttr -s 2 ".wl[159].w[0:1]"  0.66113819086710135 0.33886180913289859;
	setAttr -s 2 ".wl[160].w[0:1]"  0.71258642276865902 0.28741357723134103;
	setAttr -s 2 ".wl[161].w[0:1]"  0.71441665710838587 0.28558334289161413;
	setAttr -s 2 ".wl[162].w[0:1]"  0.71723150022211657 0.28276849977788343;
	setAttr -s 2 ".wl[163].w[0:1]"  0.7207730128526435 0.2792269871473565;
	setAttr -s 2 ".wl[164].w[0:1]"  0.72470775880841454 0.27529224119158546;
	setAttr -s 2 ".wl[165].w[0:1]"  0.72865438928293591 0.27134561071706403;
	setAttr -s 2 ".wl[166].w[0:1]"  0.73221960807348452 0.26778039192651554;
	setAttr -s 2 ".wl[167].w[0:1]"  0.73503953886597029 0.26496046113402982;
	setAttr -s 2 ".wl[168].w[0:1]"  0.73682103960317569 0.26317896039682431;
	setAttr -s 2 ".wl[169].w[0:1]"  0.73737693481896127 0.26262306518103878;
	setAttr -s 2 ".wl[170].w[0:1]"  0.73664884494785354 0.26335115505214651;
	setAttr -s 2 ".wl[171].w[0:1]"  0.73471454630298971 0.26528545369701029;
	setAttr -s 2 ".wl[172].w[0:1]"  0.73177772616673953 0.26822227383326047;
	setAttr -s 2 ".wl[173].w[0:1]"  0.72814290948068783 0.27185709051931223;
	setAttr -s 2 ".wl[174].w[0:1]"  0.724179243880265 0.27582075611973494;
	setAttr -s 2 ".wl[175].w[0:1]"  0.72027919612520908 0.27972080387479104;
	setAttr -s 2 ".wl[176].w[0:1]"  0.71681818997232816 0.28318181002767179;
	setAttr -s 2 ".wl[177].w[0:1]"  0.71412029538617428 0.28587970461382567;
	setAttr -s 2 ".wl[178].w[0:1]"  0.71243202617591495 0.28756797382408517;
	setAttr -s 2 ".wl[179].w[0:1]"  0.71190502045846982 0.28809497954153018;
	setAttr -s 2 ".wl[180].w[0:1]"  0.76615753380075868 0.23384246619924132;
	setAttr -s 2 ".wl[181].w[0:1]"  0.76805443323358691 0.23194556676641315;
	setAttr -s 2 ".wl[182].w[0:1]"  0.77096462354056328 0.22903537645943675;
	setAttr -s 2 ".wl[183].w[0:1]"  0.77461475082677766 0.22538524917322236;
	setAttr -s 2 ".wl[184].w[0:1]"  0.77865565826034622 0.22134434173965375;
	setAttr -s 2 ".wl[185].w[0:1]"  0.78269355034236665 0.21730644965763332;
	setAttr -s 2 ".wl[186].w[0:1]"  0.78632807972484253 0.2136719202751575;
	setAttr -s 2 ".wl[187].w[0:1]"  0.78919392520737519 0.21080607479262484;
	setAttr -s 2 ".wl[188].w[0:1]"  0.79100017385867039 0.20899982614132961;
	setAttr -s 2 ".wl[189].w[0:1]"  0.79156261379748372 0.20843738620251639;
	setAttr -s 2 ".wl[190].w[0:1]"  0.79082406048037046 0.20917593951962954;
	setAttr -s 2 ".wl[191].w[0:1]"  0.78886077115317521 0.21113922884682479;
	setAttr -s 2 ".wl[192].w[0:1]"  0.78587346719798923 0.21412653280201083;
	setAttr -s 2 ".wl[193].w[0:1]"  0.7821649584753152 0.21783504152468483;
	setAttr -s 2 ".wl[194].w[0:1]"  0.77810675947998731 0.22189324052001266;
	setAttr -s 2 ".wl[195].w[0:1]"  0.77409937422788178 0.22590062577211828;
	setAttr -s 2 ".wl[196].w[0:1]"  0.7705313943057357 0.22946860569426436;
	setAttr -s 2 ".wl[197].w[0:1]"  0.76774272063055049 0.23225727936944954;
	setAttr -s 2 ".wl[198].w[0:1]"  0.7659947713605022 0.23400522863949777;
	setAttr -s 2 ".wl[199].w[0:1]"  0.76544957853771478 0.23455042146228527;
	setAttr -s 2 ".wl[200].w[0:1]"  0.8195869081324948 0.18041309186750518;
	setAttr -s 2 ".wl[201].w[0:1]"  0.8214313797137911 0.17856862028620898;
	setAttr -s 2 ".wl[202].w[0:1]"  0.8242533980126201 0.17574660198737999;
	setAttr -s 2 ".wl[203].w[0:1]"  0.82778040776732942 0.17221959223267064;
	setAttr -s 2 ".wl[204].w[0:1]"  0.83166896129844625 0.1683310387015538;
	setAttr -s 2 ".wl[205].w[0:1]"  0.83553773353166816 0.16446226646833184;
	setAttr -s 2 ".wl[206].w[0:1]"  0.83900553926068611 0.16099446073931398;
	setAttr -s 2 ".wl[207].w[0:1]"  0.84173011254390784 0.15826988745609216;
	setAttr -s 2 ".wl[208].w[0:1]"  0.84344272113307794 0.15655727886692208;
	setAttr -s 2 ".wl[209].w[0:1]"  0.8439749640329004 0.1560250359670996;
	setAttr -s 2 ".wl[210].w[0:1]"  0.84327481225918599 0.15672518774081401;
	setAttr -s 2 ".wl[211].w[0:1]"  0.84141166619782726 0.15858833380217277;
	setAttr -s 2 ".wl[212].w[0:1]"  0.83856929427648486 0.16143070572351517;
	setAttr -s 2 ".wl[213].w[0:1]"  0.83502802331961035 0.16497197668038974;
	setAttr -s 2 ".wl[214].w[0:1]"  0.83113683341800548 0.16886316658199449;
	setAttr -s 2 ".wl[215].w[0:1]"  0.82727813437354514 0.17272186562645486;
	setAttr -s 2 ".wl[216].w[0:1]"  0.82382917444857506 0.17617082555142499;
	setAttr -s 2 ".wl[217].w[0:1]"  0.82112501003665805 0.178874989963342;
	setAttr -s 2 ".wl[218].w[0:1]"  0.81942656736165365 0.18057343263834638;
	setAttr -s 2 ".wl[219].w[0:1]"  0.81889692106063117 0.18110307893936881;
	setAttr -s 2 ".wl[220].w[0:1]"  0.86953930118638578 0.13046069881361425;
	setAttr -s 2 ".wl[221].w[0:1]"  0.87120560751360521 0.12879439248639479;
	setAttr -s 2 ".wl[222].w[0:1]"  0.87374725683047783 0.12625274316952215;
	setAttr -s 2 ".wl[223].w[0:1]"  0.87691101854833464 0.12308898145166526;
	setAttr -s 2 ".wl[224].w[0:1]"  0.8803825951223182 0.11961740487768187;
	setAttr -s 2 ".wl[225].w[0:1]"  0.88381916799861382 0.11618083200138622;
	setAttr -s 2 ".wl[226].w[0:1]"  0.88688477188665449 0.1131152281133455;
	setAttr -s 2 ".wl[227].w[0:1]"  0.88928335502629829 0.11071664497370169;
	setAttr -s 2 ".wl[228].w[0:1]"  0.89078646255415139 0.10921353744584865;
	setAttr -s 2 ".wl[229].w[0:1]"  0.89125268532508561 0.10874731467491444;
	setAttr -s 2 ".wl[230].w[0:1]"  0.89063860295318364 0.10936139704681631;
	setAttr -s 2 ".wl[231].w[0:1]"  0.88900214354653662 0.11099785645346334;
	setAttr -s 2 ".wl[232].w[0:1]"  0.8864978454201965 0.11350215457980348;
	setAttr -s 2 ".wl[233].w[0:1]"  0.88336465308977874 0.1166353469102212;
	setAttr -s 2 ".wl[234].w[0:1]"  0.87990527008244579 0.12009472991755417;
	setAttr -s 2 ".wl[235].w[0:1]"  0.87645786911701307 0.12354213088298691;
	setAttr -s 2 ".wl[236].w[0:1]"  0.87336255472669044 0.12663744527330964;
	setAttr -s 2 ".wl[237].w[0:1]"  0.87092666255134032 0.1290733374486597;
	setAttr -s 2 ".wl[238].w[0:1]"  0.86939290835507432 0.13060709164492565;
	setAttr -s 2 ".wl[239].w[0:1]"  0.86891449533817067 0.13108550466182936;
	setAttr -s 2 ".wl[240].w[0:1]"  0.91283329267075897 0.087166707329241006;
	setAttr -s 2 ".wl[241].w[0:1]"  0.91421564066213723 0.08578435933786277;
	setAttr -s 2 ".wl[242].w[0:1]"  0.91631689894140267 0.083683101058597331;
	setAttr -s 2 ".wl[243].w[0:1]"  0.91892050605954989 0.081079493940450109;
	setAttr -s 2 ".wl[244].w[0:1]"  0.9217620136837732 0.078237986316226762;
	setAttr -s 2 ".wl[245].w[0:1]"  0.9245587710362918 0.075441228963708182;
	setAttr -s 2 ".wl[246].w[0:1]"  0.92703985840820091 0.072960141591799046;
	setAttr -s 2 ".wl[247].w[0:1]"  0.92897189294320215 0.07102810705679781;
	setAttr -s 2 ".wl[248].w[0:1]"  0.93017841591117223 0.069821584088827757;
	setAttr -s 2 ".wl[249].w[0:1]"  0.93055187618545654 0.069448123814543433;
	setAttr -s 2 ".wl[250].w[0:1]"  0.93005952626145616 0.069940473738543854;
	setAttr -s 2 ".wl[251].w[0:1]"  0.92874506781842503 0.071254932181574998;
	setAttr -s 2 ".wl[252].w[0:1]"  0.92672625162300082 0.07327374837699914;
	setAttr -s 2 ".wl[253].w[0:1]"  0.92418816832157247 0.075811831678427491;
	setAttr -s 2 ".wl[254].w[0:1]"  0.9213702633135521 0.078629736686447807;
	setAttr -s 2 ".wl[255].w[0:1]"  0.91854620561953426 0.081453794380465697;
	setAttr -s 2 ".wl[256].w[0:1]"  0.91599732365409781 0.08400267634590225;
	setAttr -s 2 ".wl[257].w[0:1]"  0.91398285702322035 0.08601714297677969;
	setAttr -s 2 ".wl[258].w[0:1]"  0.91271077669147838 0.087289223308521527;
	setAttr -s 2 ".wl[259].w[0:1]"  0.91231372728994775 0.08768627271005229;
	setAttr -s 2 ".wl[260].w[0:1]"  0.94717845210102525 0.052821547898974787;
	setAttr -s 2 ".wl[261].w[0:1]"  0.94821664435765252 0.051783355642347505;
	setAttr -s 2 ".wl[262].w[0:1]"  0.94978869791194742 0.050211302088052565;
	setAttr -s 2 ".wl[263].w[0:1]"  0.95172646547526452 0.048273534524735484;
	setAttr -s 2 ".wl[264].w[0:1]"  0.95382829489032039 0.046171705109679641;
	setAttr -s 2 ".wl[265].w[0:1]"  0.9558834422217346 0.044116557778265481;
	setAttr -s 2 ".wl[266].w[0:1]"  0.95769503393872335 0.042304966061276608;
	setAttr -s 2 ".wl[267].w[0:1]"  0.9590979991542643 0.040902000845735705;
	setAttr -s 2 ".wl[268].w[0:1]"  0.95997059902632587 0.040029400973674169;
	setAttr -s 2 ".wl[269].w[0:1]"  0.96024008699441143 0.039759913005588607;
	setAttr -s 2 ".wl[270].w[0:1]"  0.95988457346059131 0.040115426539408687;
	setAttr -s 2 ".wl[271].w[0:1]"  0.95893329069067157 0.041066709309328431;
	setAttr -s 2 ".wl[272].w[0:1]"  0.95746605437714694 0.04253394562285312;
	setAttr -s 2 ".wl[273].w[0:1]"  0.95561100107348629 0.04438899892651367;
	setAttr -s 2 ".wl[274].w[0:1]"  0.95353820376532183 0.046461796234678165;
	setAttr -s 2 ".wl[275].w[0:1]"  0.95144729415470197 0.048552705845298041;
	setAttr -s 2 ".wl[276].w[0:1]"  0.94954883005088875 0.050451169949111266;
	setAttr -s 2 ".wl[277].w[0:1]"  0.94804106452910575 0.051958935470894238;
	setAttr -s 2 ".wl[278].w[0:1]"  0.94708575490420255 0.052914245095797507;
	setAttr -s 2 ".wl[279].w[0:1]"  0.94678725196088864 0.053212748039111434;
	setAttr -s 2 ".wl[280].w[0:1]"  0.97172996117062771 0.028270038829372308;
	setAttr -s 2 ".wl[281].w[0:1]"  0.97242239398327657 0.027577606016723467;
	setAttr -s 2 ".wl[282].w[0:1]"  0.97346627028795363 0.026533729712046348;
	setAttr -s 2 ".wl[283].w[0:1]"  0.97474522483206161 0.025254775167938365;
	setAttr -s 2 ".wl[284].w[0:1]"  0.97612247231908944 0.023877527680910626;
	setAttr -s 2 ".wl[285].w[0:1]"  0.97745869357111337 0.022541306428886722;
	setAttr -s 2 ".wl[286].w[0:1]"  0.97862762159539773 0.021372378404602245;
	setAttr -s 2 ".wl[287].w[0:1]"  0.97952689903176637 0.020473100968233699;
	setAttr -s 2 ".wl[288].w[0:1]"  0.98008349023510744 0.019916509764892638;
	setAttr -s 2 ".wl[289].w[0:1]"  0.98025494815740422 0.019745051842595788;
	setAttr -s 2 ".wl[290].w[0:1]"  0.9800286529609149 0.019971347039085069;
	setAttr -s 2 ".wl[291].w[0:1]"  0.97942145207820863 0.020578547921791347;
	setAttr -s 2 ".wl[292].w[0:1]"  0.97848007785919022 0.021519922140809757;
	setAttr -s 2 ".wl[293].w[0:1]"  0.97728174954087765 0.02271825045912234;
	setAttr -s 2 ".wl[294].w[0:1]"  0.97593245325732192 0.024067546742677977;
	setAttr -s 2 ".wl[295].w[0:1]"  0.97456083701800988 0.025439162981990185;
	setAttr -s 2 ".wl[296].w[0:1]"  0.97330669411181225 0.026693305888187812;
	setAttr -s 2 ".wl[297].w[0:1]"  0.97230492948096625 0.027695070519033721;
	setAttr -s 2 ".wl[298].w[0:1]"  0.97166772073269825 0.028332279267301797;
	setAttr -s 2 ".wl[299].w[0:1]"  0.97146832882388801 0.028531671176111988;
	setAttr -s 2 ".wl[300].w[0:1]"  0.98719553982075736 0.012804460179242631;
	setAttr -s 2 ".wl[301].w[0:1]"  0.98759315841920925 0.012406841580790766;
	setAttr -s 2 ".wl[302].w[0:1]"  0.98818935949776965 0.011810640502230412;
	setAttr -s 2 ".wl[303].w[0:1]"  0.98891436956593815 0.011085630434061857;
	setAttr -s 2 ".wl[304].w[0:1]"  0.9896880377440066 0.010311962255993429;
	setAttr -s 2 ".wl[305].w[0:1]"  0.99043122637170744 0.0095687736282926133;
	setAttr -s 2 ".wl[306].w[0:1]"  0.99107497552566348 0.0089250244743365095;
	setAttr -s 2 ".wl[307].w[0:1]"  0.9915659109417857 0.0084340890582143471;
	setAttr -s 2 ".wl[308].w[0:1]"  0.99186779729821706 0.0081322027017829337;
	setAttr -s 2 ".wl[309].w[0:1]"  0.99196047291841771 0.008039527081582315;
	setAttr -s 2 ".wl[310].w[0:1]"  0.9918381103122742 0.0081618896877257881;
	setAttr -s 2 ".wl[311].w[0:1]"  0.99150850504228616 0.0084914949577137994;
	setAttr -s 2 ".wl[312].w[0:1]"  0.99099397011900847 0.0090060298809914903;
	setAttr -s 2 ".wl[313].w[0:1]"  0.99033308459615443 0.0096669154038455368;
	setAttr -s 2 ".wl[314].w[0:1]"  0.98958150336831896 0.010418496631681004;
	setAttr -s 2 ".wl[315].w[0:1]"  0.98880992997881134 0.011190070021188629;
	setAttr -s 2 ".wl[316].w[0:1]"  0.98809816823309982 0.01190183176690022;
	setAttr -s 2 ".wl[317].w[0:1]"  0.98752557452420686 0.012474425475793112;
	setAttr -s 2 ".wl[318].w[0:1]"  0.98715957499211848 0.012840425007881512;
	setAttr -s 2 ".wl[319].w[0:1]"  0.98704481932130794 0.012955180678692044;
	setAttr -s 2 ".wl[320].w[0:1]"  0.99546070124513197 0.0045392987548680567;
	setAttr -s 2 ".wl[321].w[0:1]"  0.99564601935838692 0.0043539806416130859;
	setAttr -s 2 ".wl[322].w[0:1]"  0.99592184187519972 0.0040781581248002423;
	setAttr -s 2 ".wl[323].w[0:1]"  0.99625376004926247 0.0037462399507374989;
	setAttr -s 2 ".wl[324].w[0:1]"  0.99660338640249291 0.003396613597507142;
	setAttr -s 2 ".wl[325].w[0:1]"  0.99693438042142724 0.0030656195785728002;
	setAttr -s 2 ".wl[326].w[0:1]"  0.99721685864653586 0.002783141353464151;
	setAttr -s 2 ".wl[327].w[0:1]"  0.99742939918050133 0.0025706008194986605;
	setAttr -s 2 ".wl[328].w[0:1]"  0.99755876490028295 0.0024412350997171451;
	setAttr -s 2 ".wl[329].w[0:1]"  0.99759826658273809 0.0024017334172618597;
	setAttr -s 2 ".wl[330].w[0:1]"  0.99754609127073179 0.0024539087292682264;
	setAttr -s 2 ".wl[331].w[0:1]"  0.99740467777485264 0.0025953222251474165;
	setAttr -s 2 ".wl[332].w[0:1]"  0.99718152093785273 0.0028184790621473108;
	setAttr -s 2 ".wl[333].w[0:1]"  0.99689091162966537 0.0031090883703346309;
	setAttr -s 2 ".wl[334].w[0:1]"  0.99655545802311607 0.0034445419768839099;
	setAttr -s 2 ".wl[335].w[0:1]"  0.99620608762038265 0.0037939123796173536;
	setAttr -s 2 ".wl[336].w[0:1]"  0.99587970423049754 0.0041202957695024396;
	setAttr -s 2 ".wl[337].w[0:1]"  0.99561450021859588 0.0043854997814041594;
	setAttr -s 2 ".wl[338].w[0:1]"  0.99544383150052385 0.0045561684994761204;
	setAttr -s 2 ".wl[339].w[0:1]"  0.9953901604620633 0.004609839537936769;
	setAttr -s 2 ".wl[340].w[0:1]"  0.99893611907600743 0.0010638809239924571;
	setAttr -s 2 ".wl[341].w[0:1]"  0.99899741051738333 0.0010025894826166876;
	setAttr -s 2 ".wl[342].w[0:1]"  0.99908753183281995 0.00091246816718005403;
	setAttr -s 2 ".wl[343].w[0:1]"  0.99919407761495938 0.00080592238504071355;
	setAttr -s 2 ".wl[344].w[0:1]"  0.99930378701992062 0.00069621298007932822;
	setAttr -s 2 ".wl[345].w[0:1]"  0.9994049266821351 0.00059507331786487071;
	setAttr -s 2 ".wl[346].w[0:1]"  0.9994888320845583 0.00051116791544174778;
	setAttr -s 2 ".wl[347].w[0:1]"  0.99955029332625434 0.0004497066737457085;
	setAttr -s 2 ".wl[348].w[0:1]"  0.99958691934208954 0.00041308065791043779;
	setAttr -s 2 ".wl[349].w[0:1]"  0.99959797711013876 0.00040202288986120348;
	setAttr -s 2 ".wl[350].w[0:1]"  0.99958336099909162 0.00041663900090844542;
	setAttr -s 2 ".wl[351].w[0:1]"  0.99954322633959203 0.00045677366040803734;
	setAttr -s 2 ".wl[352].w[0:1]"  0.99947846719568623 0.00052153280431381998;
	setAttr -s 2 ".wl[353].w[0:1]"  0.99939180140663408 0.0006081985933659652;
	setAttr -s 2 ".wl[354].w[0:1]"  0.99928889625691675 0.00071110374308323539;
	setAttr -s 2 ".wl[355].w[0:1]"  0.99917888561280821 0.00082111438719181351;
	setAttr -s 2 ".wl[356].w[0:1]"  0.99907382327919547 0.00092617672080455788;
	setAttr -s 2 ".wl[357].w[0:1]"  0.99898700053772216 0.0010129994622778559;
	setAttr -s 2 ".wl[358].w[0:1]"  0.99893049569012971 0.0010695043098702707;
	setAttr -s 2 ".wl[359].w[0:1]"  0.99891263484263482 0.0010873651573652088;
	setAttr -s 2 ".wl[360].w[0:1]"  0.99989849813126852 0.00010150186873156858;
	setAttr -s 2 ".wl[361].w[0:1]"  0.99990802584819571 9.197415180431502e-005;
	setAttr -s 2 ".wl[362].w[0:1]"  0.9999216679856181 7.8332014381944252e-005;
	setAttr -s 2 ".wl[363].w[0:1]"  0.99993715275340778 6.2847246592190911e-005;
	setAttr -s 2 ".wl[364].w[0:1]"  0.99995222816044471 4.777183955527241e-005;
	setAttr -s 2 ".wl[365].w[0:1]"  0.99996516404152835 3.4835958471690485e-005;
	setAttr -s 2 ".wl[366].w[0:1]"  0.99997502004554795 2.4979954452030935e-005;
	setAttr -s 2 ".wl[367].w[0:1]"  0.99998161440653222 1.8385593467852052e-005;
	setAttr -s 2 ".wl[368].w[0:1]"  0.99998524269052036 1.4757309479663365e-005;
	setAttr -s 2 ".wl[369].w[0:1]"  0.99998628832626169 1.3711673738262576e-005;
	setAttr -s 2 ".wl[370].w[0:1]"  0.99998490147342856 1.5098526571483874e-005;
	setAttr -s 2 ".wl[371].w[0:1]"  0.99998088742173186 1.9112578268149693e-005;
	setAttr -s 2 ".wl[372].w[0:1]"  0.99997385259958071 2.6147400419332344e-005;
	setAttr -s 2 ".wl[373].w[0:1]"  0.99996354501091156 3.6454989088419675e-005;
	setAttr -s 2 ".wl[374].w[0:1]"  0.99995023914940595 4.9760850594016626e-005;
	setAttr -s 2 ".wl[375].w[0:1]"  0.99993498924404389 6.5010755956073418e-005;
	setAttr -s 2 ".wl[376].w[0:1]"  0.99991961955208297 8.0380447916981987e-005;
	setAttr -s 2 ".wl[377].w[0:1]"  0.99990641794240065 9.3582057599367183e-005;
	setAttr -s 2 ".wl[378].w[0:1]"  0.99989761255514764 0.00010238744485242438;
	setAttr -s 2 ".wl[379].w[0:1]"  0.99989479748088117 0.0001052025191188954;
	setAttr -s 2 ".wl[380].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[381].w[0:1]"  0.99999983066773745 1.69332262527282e-007;
	setAttr -s 2 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.019413816196323545 0.99981153411065216 0 -0 -0.99981153411065216 0.019413816196323545 -0 0
		 0 -0 1 -0 13.538344947577952 -9.6322117586671112 -8.484557445367285 1;
	setAttr ".pm[1]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -9.4733799232408895 -8.2733473302894804 -8.4845574453672814 1;
	setAttr ".gm" -type "matrix" 0.83345942739160117 0 0 0 0 0.83345942739160117 0 0
		 0 0 0.83345942739160117 0 9.4781027716910256 10.905914168998972 8.4869591101675539 1;
	setAttr -s 2 ".ma";
	setAttr -s 2 ".dpf[0:1]"  4 4;
	setAttr -s 2 ".lw";
	setAttr -s 2 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr ".nw" 2;
createNode tweak -n "tweak7";
createNode objectSet -n "skinCluster7Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster7GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster7GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet7";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId14";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts14";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose7";
	setAttr -s 2 ".wm";
	setAttr -s 2 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 9.367565474896919 13.722791420003933
		 8.4845574453672832 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.70020932006210701 0.7139376079869737 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 5.450471317638697 -5.5511151231257827e-016
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70020932006210701 0.7139376079869737 1
		 1 1 yes;
	setAttr -s 2 ".m";
	setAttr -s 2 ".p";
	setAttr ".bp" yes;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :initialShadingGroup;
	setAttr -s 6 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
connectAttr "skinCluster2GroupId.id" "pCylinderShape1.iog.og[0].gid";
connectAttr "skinCluster2Set.mwc" "pCylinderShape1.iog.og[0].gco";
connectAttr "groupId4.id" "pCylinderShape1.iog.og[1].gid";
connectAttr "tweakSet2.mwc" "pCylinderShape1.iog.og[1].gco";
connectAttr "skinCluster2.og[0]" "pCylinderShape1.i";
connectAttr "tweak2.vl[0].vt[0]" "pCylinderShape1.twl";
connectAttr "polyCylinder1.out" "pCylinderShape1Orig.i";
connectAttr "skinCluster1GroupId.id" "pSphereShape1.iog.og[0].gid";
connectAttr "skinCluster1Set.mwc" "pSphereShape1.iog.og[0].gco";
connectAttr "groupId2.id" "pSphereShape1.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "pSphereShape1.iog.og[1].gco";
connectAttr "skinCluster1.og[0]" "pSphereShape1.i";
connectAttr "tweak1.vl[0].vt[0]" "pSphereShape1.twl";
connectAttr "polySphere1.out" "pSphereShape1Orig.i";
connectAttr "baby_head.s" "joint3.is";
connectAttr "joint3.s" "joint4.is";
connectAttr "joint3.s" "baby_shoulder.is";
connectAttr "baby_shoulder.s" "baby_elbow.is";
connectAttr "baby_elbow.s" "baby_wrist.is";
connectAttr "baby_wrist.tx" "effector1.tx";
connectAttr "baby_wrist.ty" "effector1.ty";
connectAttr "baby_wrist.tz" "effector1.tz";
connectAttr "skinCluster3GroupId.id" "pCylinderShape2.iog.og[4].gid";
connectAttr "skinCluster3Set.mwc" "pCylinderShape2.iog.og[4].gco";
connectAttr "groupId6.id" "pCylinderShape2.iog.og[5].gid";
connectAttr "tweakSet3.mwc" "pCylinderShape2.iog.og[5].gco";
connectAttr "skinCluster3.og[0]" "pCylinderShape2.i";
connectAttr "tweak3.vl[0].vt[0]" "pCylinderShape2.twl";
connectAttr "polySplitRing8.out" "pCylinderShape2Orig.i";
connectAttr "baby_shoulder.msg" "baby_ikhandle.hsj";
connectAttr "effector1.hp" "baby_ikhandle.hee";
connectAttr "ikSCsolver.msg" "baby_ikhandle.hsv";
connectAttr "skinCluster5GroupId.id" "pCylinderShape3.iog.og[0].gid";
connectAttr "skinCluster5Set.mwc" "pCylinderShape3.iog.og[0].gco";
connectAttr "groupId10.id" "pCylinderShape3.iog.og[1].gid";
connectAttr "tweakSet5.mwc" "pCylinderShape3.iog.og[1].gco";
connectAttr "skinCluster5.og[0]" "pCylinderShape3.i";
connectAttr "tweak5.vl[0].vt[0]" "pCylinderShape3.twl";
connectAttr "polyCylinder3.out" "pCylinderShape3Orig.i";
connectAttr "skinCluster7GroupId.id" "pSphereShape2.iog.og[4].gid";
connectAttr "skinCluster7Set.mwc" "pSphereShape2.iog.og[4].gco";
connectAttr "groupId14.id" "pSphereShape2.iog.og[5].gid";
connectAttr "tweakSet7.mwc" "pSphereShape2.iog.og[5].gco";
connectAttr "skinCluster7.og[0]" "pSphereShape2.i";
connectAttr "tweak7.vl[0].vt[0]" "pSphereShape2.twl";
connectAttr "polySphere2.out" "pSphereShape2Orig.i";
connectAttr "skinCluster6GroupId.id" "pPipeShape1.iog.og[0].gid";
connectAttr "skinCluster6Set.mwc" "pPipeShape1.iog.og[0].gco";
connectAttr "groupId12.id" "pPipeShape1.iog.og[1].gid";
connectAttr "tweakSet6.mwc" "pPipeShape1.iog.og[1].gco";
connectAttr "skinCluster6.og[0]" "pPipeShape1.i";
connectAttr "tweak6.vl[0].vt[0]" "pPipeShape1.twl";
connectAttr "polySplitRing15.out" "pPipeShape1Orig.i";
connectAttr "mother_shoulder.msg" "mother_ikhandle.hsj";
connectAttr "effector2.hp" "mother_ikhandle.hee";
connectAttr "ikSCsolver.msg" "mother_ikhandle.hsv";
connectAttr "mother_head.s" "joint16.is";
connectAttr "mother_head.s" "joint10.is";
connectAttr "joint10.s" "joint11.is";
connectAttr "joint10.s" "mother_shoulder.is";
connectAttr "mother_shoulder.s" "mother_elbow.is";
connectAttr "mother_elbow.s" "mother_wrist.is";
connectAttr "mother_wrist.tx" "effector2.tx";
connectAttr "mother_wrist.ty" "effector2.ty";
connectAttr "mother_wrist.tz" "effector2.tz";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "baby_head.wm" "skinCluster1.ma[0]";
connectAttr "joint2.wm" "skinCluster1.ma[1]";
connectAttr "baby_head.liw" "skinCluster1.lw[0]";
connectAttr "joint2.liw" "skinCluster1.lw[1]";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "pSphereShape1.iog.og[0]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "pSphereShape1.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "pSphereShape1Orig.w" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "baby_head.msg" "bindPose1.m[0]";
connectAttr "joint2.msg" "bindPose1.m[1]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "baby_head.bps" "bindPose1.wm[0]";
connectAttr "joint2.bps" "bindPose1.wm[1]";
connectAttr "skinCluster2GroupParts.og" "skinCluster2.ip[0].ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2.ip[0].gi";
connectAttr "bindPose2.msg" "skinCluster2.bp";
connectAttr "joint3.wm" "skinCluster2.ma[0]";
connectAttr "joint4.wm" "skinCluster2.ma[1]";
connectAttr "joint3.liw" "skinCluster2.lw[0]";
connectAttr "joint4.liw" "skinCluster2.lw[1]";
connectAttr "groupParts4.og" "tweak2.ip[0].ig";
connectAttr "groupId4.id" "tweak2.ip[0].gi";
connectAttr "skinCluster2GroupId.msg" "skinCluster2Set.gn" -na;
connectAttr "pCylinderShape1.iog.og[0]" "skinCluster2Set.dsm" -na;
connectAttr "skinCluster2.msg" "skinCluster2Set.ub[0]";
connectAttr "tweak2.og[0]" "skinCluster2GroupParts.ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2GroupParts.gi";
connectAttr "groupId4.msg" "tweakSet2.gn" -na;
connectAttr "pCylinderShape1.iog.og[1]" "tweakSet2.dsm" -na;
connectAttr "tweak2.msg" "tweakSet2.ub[0]";
connectAttr "pCylinderShape1Orig.w" "groupParts4.ig";
connectAttr "groupId4.id" "groupParts4.gi";
connectAttr "joint3.msg" "bindPose2.m[0]";
connectAttr "joint4.msg" "bindPose2.m[1]";
connectAttr "bindPose2.w" "bindPose2.p[0]";
connectAttr "bindPose2.m[0]" "bindPose2.p[1]";
connectAttr "joint3.bps" "bindPose2.wm[0]";
connectAttr "joint4.bps" "bindPose2.wm[1]";
connectAttr "polyCylinder2.out" "polySplitRing1.ip";
connectAttr "pCylinderShape2.wm" "polySplitRing1.mp";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "pCylinderShape2.wm" "polySplitRing2.mp";
connectAttr "polySplitRing2.out" "polySplitRing3.ip";
connectAttr "pCylinderShape2.wm" "polySplitRing3.mp";
connectAttr "polySplitRing3.out" "polySplitRing4.ip";
connectAttr "pCylinderShape2.wm" "polySplitRing4.mp";
connectAttr "polySplitRing4.out" "polySplitRing5.ip";
connectAttr "pCylinderShape2.wm" "polySplitRing5.mp";
connectAttr "polySplitRing5.out" "polySplitRing6.ip";
connectAttr "pCylinderShape2.wm" "polySplitRing6.mp";
connectAttr "polySplitRing6.out" "polySplitRing7.ip";
connectAttr "pCylinderShape2.wm" "polySplitRing7.mp";
connectAttr "polySplitRing7.out" "polySplitRing8.ip";
connectAttr "pCylinderShape2.wm" "polySplitRing8.mp";
connectAttr "skinCluster3GroupParts.og" "skinCluster3.ip[0].ig";
connectAttr "skinCluster3GroupId.id" "skinCluster3.ip[0].gi";
connectAttr "bindPose3.msg" "skinCluster3.bp";
connectAttr "baby_shoulder.wm" "skinCluster3.ma[0]";
connectAttr "baby_elbow.wm" "skinCluster3.ma[1]";
connectAttr "baby_wrist.wm" "skinCluster3.ma[2]";
connectAttr "baby_shoulder.liw" "skinCluster3.lw[0]";
connectAttr "baby_elbow.liw" "skinCluster3.lw[1]";
connectAttr "baby_wrist.liw" "skinCluster3.lw[2]";
connectAttr "groupParts6.og" "tweak3.ip[0].ig";
connectAttr "groupId6.id" "tweak3.ip[0].gi";
connectAttr "skinCluster3GroupId.msg" "skinCluster3Set.gn" -na;
connectAttr "pCylinderShape2.iog.og[4]" "skinCluster3Set.dsm" -na;
connectAttr "skinCluster3.msg" "skinCluster3Set.ub[0]";
connectAttr "tweak3.og[0]" "skinCluster3GroupParts.ig";
connectAttr "skinCluster3GroupId.id" "skinCluster3GroupParts.gi";
connectAttr "groupId6.msg" "tweakSet3.gn" -na;
connectAttr "pCylinderShape2.iog.og[5]" "tweakSet3.dsm" -na;
connectAttr "tweak3.msg" "tweakSet3.ub[0]";
connectAttr "pCylinderShape2Orig.w" "groupParts6.ig";
connectAttr "groupId6.id" "groupParts6.gi";
connectAttr "baby_shoulder.msg" "bindPose3.m[0]";
connectAttr "baby_elbow.msg" "bindPose3.m[1]";
connectAttr "baby_wrist.msg" "bindPose3.m[2]";
connectAttr "bindPose3.w" "bindPose3.p[0]";
connectAttr "bindPose3.m[0]" "bindPose3.p[1]";
connectAttr "bindPose3.m[1]" "bindPose3.p[2]";
connectAttr "baby_shoulder.bps" "bindPose3.wm[0]";
connectAttr "baby_elbow.bps" "bindPose3.wm[1]";
connectAttr "baby_wrist.bps" "bindPose3.wm[2]";
connectAttr "skinCluster5GroupParts.og" "skinCluster5.ip[0].ig";
connectAttr "skinCluster5GroupId.id" "skinCluster5.ip[0].gi";
connectAttr "bindPose5.msg" "skinCluster5.bp";
connectAttr "joint10.wm" "skinCluster5.ma[0]";
connectAttr "joint11.wm" "skinCluster5.ma[1]";
connectAttr "joint10.liw" "skinCluster5.lw[0]";
connectAttr "joint11.liw" "skinCluster5.lw[1]";
connectAttr "groupParts10.og" "tweak5.ip[0].ig";
connectAttr "groupId10.id" "tweak5.ip[0].gi";
connectAttr "skinCluster5GroupId.msg" "skinCluster5Set.gn" -na;
connectAttr "pCylinderShape3.iog.og[0]" "skinCluster5Set.dsm" -na;
connectAttr "skinCluster5.msg" "skinCluster5Set.ub[0]";
connectAttr "tweak5.og[0]" "skinCluster5GroupParts.ig";
connectAttr "skinCluster5GroupId.id" "skinCluster5GroupParts.gi";
connectAttr "groupId10.msg" "tweakSet5.gn" -na;
connectAttr "pCylinderShape3.iog.og[1]" "tweakSet5.dsm" -na;
connectAttr "tweak5.msg" "tweakSet5.ub[0]";
connectAttr "pCylinderShape3Orig.w" "groupParts10.ig";
connectAttr "groupId10.id" "groupParts10.gi";
connectAttr "joint10.msg" "bindPose5.m[0]";
connectAttr "joint11.msg" "bindPose5.m[1]";
connectAttr "bindPose5.w" "bindPose5.p[0]";
connectAttr "bindPose5.m[0]" "bindPose5.p[1]";
connectAttr "joint10.bps" "bindPose5.wm[0]";
connectAttr "joint11.bps" "bindPose5.wm[1]";
connectAttr "polyPipe1.out" "polySplitRing9.ip";
connectAttr "pPipeShape1.wm" "polySplitRing9.mp";
connectAttr "polySplitRing9.out" "polySplitRing10.ip";
connectAttr "pPipeShape1.wm" "polySplitRing10.mp";
connectAttr "polySplitRing10.out" "polySplitRing11.ip";
connectAttr "pPipeShape1.wm" "polySplitRing11.mp";
connectAttr "polySplitRing11.out" "polySplitRing12.ip";
connectAttr "pPipeShape1.wm" "polySplitRing12.mp";
connectAttr "polySplitRing12.out" "polySplitRing13.ip";
connectAttr "pPipeShape1.wm" "polySplitRing13.mp";
connectAttr "polySplitRing13.out" "polySplitRing14.ip";
connectAttr "pPipeShape1.wm" "polySplitRing14.mp";
connectAttr "polySplitRing14.out" "polySplitRing15.ip";
connectAttr "pPipeShape1.wm" "polySplitRing15.mp";
connectAttr "skinCluster6GroupParts.og" "skinCluster6.ip[0].ig";
connectAttr "skinCluster6GroupId.id" "skinCluster6.ip[0].gi";
connectAttr "bindPose6.msg" "skinCluster6.bp";
connectAttr "mother_shoulder.wm" "skinCluster6.ma[0]";
connectAttr "mother_elbow.wm" "skinCluster6.ma[1]";
connectAttr "mother_wrist.wm" "skinCluster6.ma[2]";
connectAttr "mother_shoulder.liw" "skinCluster6.lw[0]";
connectAttr "mother_elbow.liw" "skinCluster6.lw[1]";
connectAttr "mother_wrist.liw" "skinCluster6.lw[2]";
connectAttr "groupParts12.og" "tweak6.ip[0].ig";
connectAttr "groupId12.id" "tweak6.ip[0].gi";
connectAttr "skinCluster6GroupId.msg" "skinCluster6Set.gn" -na;
connectAttr "pPipeShape1.iog.og[0]" "skinCluster6Set.dsm" -na;
connectAttr "skinCluster6.msg" "skinCluster6Set.ub[0]";
connectAttr "tweak6.og[0]" "skinCluster6GroupParts.ig";
connectAttr "skinCluster6GroupId.id" "skinCluster6GroupParts.gi";
connectAttr "groupId12.msg" "tweakSet6.gn" -na;
connectAttr "pPipeShape1.iog.og[1]" "tweakSet6.dsm" -na;
connectAttr "tweak6.msg" "tweakSet6.ub[0]";
connectAttr "pPipeShape1Orig.w" "groupParts12.ig";
connectAttr "groupId12.id" "groupParts12.gi";
connectAttr "mother_shoulder.msg" "bindPose6.m[0]";
connectAttr "mother_elbow.msg" "bindPose6.m[1]";
connectAttr "mother_wrist.msg" "bindPose6.m[2]";
connectAttr "bindPose6.w" "bindPose6.p[0]";
connectAttr "bindPose6.m[0]" "bindPose6.p[1]";
connectAttr "bindPose6.m[1]" "bindPose6.p[2]";
connectAttr "mother_shoulder.bps" "bindPose6.wm[0]";
connectAttr "mother_elbow.bps" "bindPose6.wm[1]";
connectAttr "mother_wrist.bps" "bindPose6.wm[2]";
connectAttr "skinCluster7GroupParts.og" "skinCluster7.ip[0].ig";
connectAttr "skinCluster7GroupId.id" "skinCluster7.ip[0].gi";
connectAttr "bindPose7.msg" "skinCluster7.bp";
connectAttr "mother_head.wm" "skinCluster7.ma[0]";
connectAttr "joint16.wm" "skinCluster7.ma[1]";
connectAttr "mother_head.liw" "skinCluster7.lw[0]";
connectAttr "joint16.liw" "skinCluster7.lw[1]";
connectAttr "groupParts14.og" "tweak7.ip[0].ig";
connectAttr "groupId14.id" "tweak7.ip[0].gi";
connectAttr "skinCluster7GroupId.msg" "skinCluster7Set.gn" -na;
connectAttr "pSphereShape2.iog.og[4]" "skinCluster7Set.dsm" -na;
connectAttr "skinCluster7.msg" "skinCluster7Set.ub[0]";
connectAttr "tweak7.og[0]" "skinCluster7GroupParts.ig";
connectAttr "skinCluster7GroupId.id" "skinCluster7GroupParts.gi";
connectAttr "groupId14.msg" "tweakSet7.gn" -na;
connectAttr "pSphereShape2.iog.og[5]" "tweakSet7.dsm" -na;
connectAttr "tweak7.msg" "tweakSet7.ub[0]";
connectAttr "pSphereShape2Orig.w" "groupParts14.ig";
connectAttr "groupId14.id" "groupParts14.gi";
connectAttr "mother_head.msg" "bindPose7.m[0]";
connectAttr "joint16.msg" "bindPose7.m[1]";
connectAttr "bindPose7.w" "bindPose7.p[0]";
connectAttr "bindPose7.m[0]" "bindPose7.p[1]";
connectAttr "mother_head.bps" "bindPose7.wm[0]";
connectAttr "joint16.bps" "bindPose7.wm[1]";
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPipeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "ikSCsolver.msg" ":ikSystem.sol" -na;
// End of Test Avatar.ma
