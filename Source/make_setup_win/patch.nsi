!macro NSISPGPatchFile PATCHDATA SOURCEFILE TEMPFILE
  InitPluginsDir
  File "/oname=$PLUGINSDIR\${TEMPFILE}.patchFile" "${PATCHDATA}"
  vpatch::vpatchfile "$PLUGINSDIR\${TEMPFILE}.patchFile" "${SOURCEFILE}" "${TEMPFILE}"
  Pop $1
  DetailPrint $1
  StrCpy $1 $1 2
  StrCmp $1 "OK" +2
  SetErrors
  IfFileExists "${TEMPFILE}" +1 +3
  Delete "${SOURCEFILE}"
  Rename /REBOOTOK "${TEMPFILE}" "${SOURCEFILE}"
  Delete "$PLUGINSDIR\${TEMPFILE}.patchFile"
!macroend

Function patchDirectoriesAdded
  CreateDirectory "${PATCH_INSTALL_ROOT}\doc"
  CreateDirectory "${PATCH_INSTALL_ROOT}\doc\documentation"
  CreateDirectory "${PATCH_INSTALL_ROOT}\doc\documentation\Documentation de Script"
  CreateDirectory "${PATCH_INSTALL_ROOT}\doc\tutorial"
  CreateDirectory "${PATCH_INSTALL_ROOT}\doc\tutorial\indoor"
  CreateDirectory "${PATCH_INSTALL_ROOT}\doc\tutorial\indoor\house"
  CreateDirectory "${PATCH_INSTALL_ROOT}\doc\tutorial\indoor_self_intersection"
  CreateDirectory "${PATCH_INSTALL_ROOT}\doc\tutorial\indoor_self_intersection\Elmia_tutorial"
  CreateDirectory "${PATCH_INSTALL_ROOT}\doc\tutorial\material_import_samples"
  CreateDirectory "${PATCH_INSTALL_ROOT}\doc\tutorial\outdoor"
  CreateDirectory "${PATCH_INSTALL_ROOT}\doc\tutorial\ScreenShots"
  CreateDirectory "${PATCH_INSTALL_ROOT}\doc\tutorial\ScriptTutorial"
  CreateDirectory "${PATCH_INSTALL_ROOT}\doc\tutorial\ScriptTutorial\recp_res_norm"
  CreateDirectory "${PATCH_INSTALL_ROOT}\doc\tutorial\ScriptTutorial\recp_res_norm\locale"
  CreateDirectory "${PATCH_INSTALL_ROOT}\doc\tutorial\ScriptTutorial\recp_res_norm\locale\fr_FR"
  CreateDirectory "${PATCH_INSTALL_ROOT}\doc\tutorial\ScriptTutorial\recp_res_norm\locale\fr_FR\LC_MESSAGES"
  CreateDirectory "${PATCH_INSTALL_ROOT}\doc\tutorial\ScriptTutorial\user_core"
  CreateDirectory "${PATCH_INSTALL_ROOT}\doc\tutorial\ScriptTutorial\user_core\locale"
  CreateDirectory "${PATCH_INSTALL_ROOT}\doc\tutorial\ScriptTutorial\user_core\locale\fr_FR"
  CreateDirectory "${PATCH_INSTALL_ROOT}\doc\tutorial\ScriptTutorial\user_core\locale\fr_FR\LC_MESSAGES"
  CreateDirectory "${PATCH_INSTALL_ROOT}\locale"
  CreateDirectory "${PATCH_INSTALL_ROOT}\locale\en_US"
  CreateDirectory "${PATCH_INSTALL_ROOT}\locale\fr_FR"
  CreateDirectory "${PATCH_INSTALL_ROOT}\locale\it_IT"
FunctionEnd

Function patchDirectoriesRemoved
  RMDir /r "${PATCH_INSTALL_ROOT}\en_US"
  RMDir /r "${PATCH_INSTALL_ROOT}\fr_FR"
  RMDir /r "${PATCH_INSTALL_ROOT}\it_IT"
FunctionEnd

Function patchFilesAdded
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\documentation"
  File "${PATCH_SOURCE_ROOT}\doc\documentation\manuel_I_Simpa.pdf"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\documentation"
  File "${PATCH_SOURCE_ROOT}\doc\documentation\SPPS_manuel.pdf"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\documentation\Documentation de Script"
  File "${PATCH_SOURCE_ROOT}\doc\documentation\Documentation de Script\I-SIMPA_ScriptingGuide_en.chm"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\documentation\Documentation de Script"
  File "${PATCH_SOURCE_ROOT}\doc\documentation\Documentation de Script\I-SIMPA_ScriptingGuide_en.pdf"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\documentation\Documentation de Script"
  File "${PATCH_SOURCE_ROOT}\doc\documentation\Documentation de Script\I-SIMPA_ScriptingGuide_fr.chm"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\documentation\Documentation de Script"
  File "${PATCH_SOURCE_ROOT}\doc\documentation\Documentation de Script\I-SIMPA_ScriptingGuide_fr.pdf"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\documentation\Documentation de Script"
  File "${PATCH_SOURCE_ROOT}\doc\documentation\Documentation de Script\LibSimpa.chm"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\documentation\Documentation de Script"
  File "${PATCH_SOURCE_ROOT}\doc\documentation\Documentation de Script\LibSimpa.pdf"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\tutorial"
  File "${PATCH_SOURCE_ROOT}\doc\tutorial\indoor_and_outdoor.proj"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\tutorial"
  File "${PATCH_SOURCE_ROOT}\doc\tutorial\skp_to_dxf.rb"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\tutorial\indoor"
  File "${PATCH_SOURCE_ROOT}\doc\tutorial\indoor\coffrage.proj"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\tutorial\indoor"
  File "${PATCH_SOURCE_ROOT}\doc\tutorial\indoor\Demo_Cinema.3ds"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\tutorial\indoor"
  File "${PATCH_SOURCE_ROOT}\doc\tutorial\indoor\IndoorProject.proj"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\tutorial\indoor"
  File "${PATCH_SOURCE_ROOT}\doc\tutorial\indoor\Industrial.proj"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\tutorial\indoor"
  File "${PATCH_SOURCE_ROOT}\doc\tutorial\indoor\Industrial_Material.li8"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\tutorial\indoor"
  File "${PATCH_SOURCE_ROOT}\doc\tutorial\indoor\LocalIndustriel.ply"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\tutorial\indoor"
  File "${PATCH_SOURCE_ROOT}\doc\tutorial\indoor\theater.ply"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\tutorial\indoor\house"
  File "${PATCH_SOURCE_ROOT}\doc\tutorial\indoor\house\Carpet_P.jpg"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\tutorial\indoor\house"
  File "${PATCH_SOURCE_ROOT}\doc\tutorial\indoor\house\house.3ds"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\tutorial\indoor\house"
  File "${PATCH_SOURCE_ROOT}\doc\tutorial\indoor\house\house_closedwalls.3ds"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\tutorial\indoor\house"
  File "${PATCH_SOURCE_ROOT}\doc\tutorial\indoor\house\house_vols_open.3ds"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\tutorial\indoor\house"
  File "${PATCH_SOURCE_ROOT}\doc\tutorial\indoor\house\Metal_Al.jpg"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\tutorial\indoor\house"
  File "${PATCH_SOURCE_ROOT}\doc\tutorial\indoor\house\Thumbs.db"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\tutorial\indoor\house"
  File "${PATCH_SOURCE_ROOT}\doc\tutorial\indoor\house\Tile_Lim.jpg"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\tutorial\indoor\house"
  File "${PATCH_SOURCE_ROOT}\doc\tutorial\indoor\house\Wood_Che.jpg"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\tutorial\indoor\house"
  File "${PATCH_SOURCE_ROOT}\doc\tutorial\indoor\house\Wood_OSB.jpg"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\tutorial\indoor_self_intersection\Elmia_tutorial"
  File "${PATCH_SOURCE_ROOT}\doc\tutorial\indoor_self_intersection\Elmia_tutorial\elmia.ply"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\tutorial\indoor_self_intersection\Elmia_tutorial"
  File "${PATCH_SOURCE_ROOT}\doc\tutorial\indoor_self_intersection\Elmia_tutorial\elmia_coordinates.xls"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\tutorial\indoor_self_intersection\Elmia_tutorial"
  File "${PATCH_SOURCE_ROOT}\doc\tutorial\indoor_self_intersection\Elmia_tutorial\elmia_final.proj"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\tutorial\indoor_self_intersection\Elmia_tutorial"
  File "${PATCH_SOURCE_ROOT}\doc\tutorial\indoor_self_intersection\Elmia_tutorial\elmia_stage.jpg"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\tutorial\indoor_self_intersection\Elmia_tutorial"
  File "${PATCH_SOURCE_ROOT}\doc\tutorial\indoor_self_intersection\Elmia_tutorial\elmiahall.jpg"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\tutorial\indoor_self_intersection\Elmia_tutorial"
  File "${PATCH_SOURCE_ROOT}\doc\tutorial\indoor_self_intersection\Elmia_tutorial\material_catt.txt"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\tutorial\indoor_self_intersection\Elmia_tutorial"
  File "${PATCH_SOURCE_ROOT}\doc\tutorial\indoor_self_intersection\Elmia_tutorial\mesured.ods"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\tutorial\indoor_self_intersection\Elmia_tutorial"
  File "${PATCH_SOURCE_ROOT}\doc\tutorial\indoor_self_intersection\Elmia_tutorial\readme.txt"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\tutorial\indoor_self_intersection\Elmia_tutorial"
  File "${PATCH_SOURCE_ROOT}\doc\tutorial\indoor_self_intersection\Elmia_tutorial\speaker_s1.jpg"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\tutorial\material_import_samples"
  File "${PATCH_SOURCE_ROOT}\doc\tutorial\material_import_samples\Beranek_abs.txt"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\tutorial\material_import_samples"
  File "${PATCH_SOURCE_ROOT}\doc\tutorial\material_import_samples\Material.li8"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\tutorial\outdoor"
  File "${PATCH_SOURCE_ROOT}\doc\tutorial\outdoor\RealCityWithSkyCentre.3ds"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\tutorial\outdoor"
  File "${PATCH_SOURCE_ROOT}\doc\tutorial\outdoor\StreetComplex.bin"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\tutorial\ScreenShots"
  File "${PATCH_SOURCE_ROOT}\doc\tutorial\ScreenShots\PannelGain.png"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\tutorial\ScreenShots"
  File "${PATCH_SOURCE_ROOT}\doc\tutorial\ScreenShots\PannelGain2.png"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\tutorial\ScreenShots"
  File "${PATCH_SOURCE_ROOT}\doc\tutorial\ScreenShots\ReverberationTimeMap.png"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\tutorial\ScreenShots"
  File "${PATCH_SOURCE_ROOT}\doc\tutorial\ScreenShots\SoundLevel.png"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\tutorial\ScreenShots"
  File "${PATCH_SOURCE_ROOT}\doc\tutorial\ScreenShots\TexturedModel.png"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\tutorial\ScreenShots"
  File "${PATCH_SOURCE_ROOT}\doc\tutorial\ScreenShots\Thumbs.db"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\tutorial\ScriptTutorial"
  File "${PATCH_SOURCE_ROOT}\doc\tutorial\ScriptTutorial\ReadSurfReceiver.py"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\tutorial\ScriptTutorial\recp_res_norm"
  File "${PATCH_SOURCE_ROOT}\doc\tutorial\ScriptTutorial\recp_res_norm\__init__.py"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\tutorial\ScriptTutorial\recp_res_norm"
  File "${PATCH_SOURCE_ROOT}\doc\tutorial\ScriptTutorial\recp_res_norm\__init__.pyc"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\tutorial\ScriptTutorial\recp_res_norm"
  File "${PATCH_SOURCE_ROOT}\doc\tutorial\ScriptTutorial\recp_res_norm\__ui_startup__.py"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\tutorial\ScriptTutorial\recp_res_norm\locale\fr_FR\LC_MESSAGES"
  File "${PATCH_SOURCE_ROOT}\doc\tutorial\ScriptTutorial\recp_res_norm\locale\fr_FR\LC_MESSAGES\messages.mo"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\tutorial\ScriptTutorial\recp_res_norm\locale\fr_FR\LC_MESSAGES"
  File "${PATCH_SOURCE_ROOT}\doc\tutorial\ScriptTutorial\recp_res_norm\locale\fr_FR\LC_MESSAGES\messages.po"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\tutorial\ScriptTutorial\user_core"
  File "${PATCH_SOURCE_ROOT}\doc\tutorial\ScriptTutorial\user_core\__init_.py"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\tutorial\ScriptTutorial\user_core\locale\fr_FR\LC_MESSAGES"
  File "${PATCH_SOURCE_ROOT}\doc\tutorial\ScriptTutorial\user_core\locale\fr_FR\LC_MESSAGES\messages.mo"
  SetOutPath "${PATCH_INSTALL_ROOT}\doc\tutorial\ScriptTutorial\user_core\locale\fr_FR\LC_MESSAGES"
  File "${PATCH_SOURCE_ROOT}\doc\tutorial\ScriptTutorial\user_core\locale\fr_FR\LC_MESSAGES\messages.po"
  SetOutPath "${PATCH_INSTALL_ROOT}\locale\en_US"
  File "${PATCH_SOURCE_ROOT}\locale\en_US\internat.mo"
  SetOutPath "${PATCH_INSTALL_ROOT}\locale\en_US"
  File "${PATCH_SOURCE_ROOT}\locale\en_US\internat.po"
  SetOutPath "${PATCH_INSTALL_ROOT}\locale\fr_FR"
  File "${PATCH_SOURCE_ROOT}\locale\fr_FR\internat.mo"
  SetOutPath "${PATCH_INSTALL_ROOT}\locale\fr_FR"
  File "${PATCH_SOURCE_ROOT}\locale\fr_FR\internat.po"
  SetOutPath "${PATCH_INSTALL_ROOT}\locale\it_IT"
  File "${PATCH_SOURCE_ROOT}\locale\it_IT\allfuzy.py"
  SetOutPath "${PATCH_INSTALL_ROOT}\locale\it_IT"
  File "${PATCH_SOURCE_ROOT}\locale\it_IT\internat.7z"
  SetOutPath "${PATCH_INSTALL_ROOT}\locale\it_IT"
  File "${PATCH_SOURCE_ROOT}\locale\it_IT\internat.mo"
  SetOutPath "${PATCH_INSTALL_ROOT}\locale\it_IT"
  File "${PATCH_SOURCE_ROOT}\locale\it_IT\internat.po"
FunctionEnd

Function patchFilesRemoved
  Delete "${PATCH_INSTALL_ROOT}\en_US\internat.mo"
  Delete "${PATCH_INSTALL_ROOT}\en_US\internat.po"
  Delete "${PATCH_INSTALL_ROOT}\fr_FR\internat.mo"
  Delete "${PATCH_INSTALL_ROOT}\fr_FR\internat.po"
  Delete "${PATCH_INSTALL_ROOT}\it_IT\allfuzy.py"
  Delete "${PATCH_INSTALL_ROOT}\it_IT\internat.7z"
  Delete "${PATCH_INSTALL_ROOT}\it_IT\internat.mo"
  Delete "${PATCH_INSTALL_ROOT}\it_IT\internat.po"
  Delete "${PATCH_INSTALL_ROOT}\libsimpa\_libsimpa.pyd.intermediate.manifest"
  Delete "${PATCH_INSTALL_ROOT}\meshing\vmr\Thumbs.db"
  Delete "${PATCH_INSTALL_ROOT}\Tutorial\ScriptTutorial\recp_res_norm\__init__.pyc"
FunctionEnd

Function patchFilesModified
  InitPluginsDir

  ;Patching "core\sppsNantes\sppsNantes.exe" using patch file "core\sppsNantes\sppsNantes.exe.pat"
  DetailPrint "Patching ${PATCH_INSTALL_ROOT}\core\sppsNantes\sppsNantes.exe"
  !insertmacro NSISPGPatchFile "${PATCH_FILES_ROOT}\core\sppsNantes\sppsNantes.exe.pat" "${PATCH_INSTALL_ROOT}\core\sppsNantes\sppsNantes.exe" "sppsNantes.exe.tmp"

  ;Patching "core\theorie_classique\TheorieClassique.exe" using patch file "core\theorie_classique\TheorieClassique.exe.pat"
  DetailPrint "Patching ${PATCH_INSTALL_ROOT}\core\theorie_classique\TheorieClassique.exe"
  !insertmacro NSISPGPatchFile "${PATCH_FILES_ROOT}\core\theorie_classique\TheorieClassique.exe.pat" "${PATCH_INSTALL_ROOT}\core\theorie_classique\TheorieClassique.exe" "TheorieClassique.exe.tmp"

  ;Patching "libsimpa\__init__.pyc" using patch file "libsimpa\__init__.pyc.pat"
  DetailPrint "Patching ${PATCH_INSTALL_ROOT}\libsimpa\__init__.pyc"
  !insertmacro NSISPGPatchFile "${PATCH_FILES_ROOT}\libsimpa\__init__.pyc.pat" "${PATCH_INSTALL_ROOT}\libsimpa\__init__.pyc" "__init__.pyc.tmp"

  ;Patching "libsimpa\_libsimpa.exp" using patch file "libsimpa\_libsimpa.exp.pat"
  DetailPrint "Patching ${PATCH_INSTALL_ROOT}\libsimpa\_libsimpa.exp"
  !insertmacro NSISPGPatchFile "${PATCH_FILES_ROOT}\libsimpa\_libsimpa.exp.pat" "${PATCH_INSTALL_ROOT}\libsimpa\_libsimpa.exp" "_libsimpa.exp.tmp"

  ;Patching "libsimpa\_libsimpa.lib" using patch file "libsimpa\_libsimpa.lib.pat"
  DetailPrint "Patching ${PATCH_INSTALL_ROOT}\libsimpa\_libsimpa.lib"
  !insertmacro NSISPGPatchFile "${PATCH_FILES_ROOT}\libsimpa\_libsimpa.lib.pat" "${PATCH_INSTALL_ROOT}\libsimpa\_libsimpa.lib" "_libsimpa.lib.tmp"

  ;Patching "libsimpa\_libsimpa.pyd" using patch file "libsimpa\_libsimpa.pyd.pat"
  DetailPrint "Patching ${PATCH_INSTALL_ROOT}\libsimpa\_libsimpa.pyd"
  !insertmacro NSISPGPatchFile "${PATCH_FILES_ROOT}\libsimpa\_libsimpa.pyd.pat" "${PATCH_INSTALL_ROOT}\libsimpa\_libsimpa.pyd" "_libsimpa.pyd.tmp"

  ;Patching "libsimpa\vec3.pyc" using patch file "libsimpa\vec3.pyc.pat"
  DetailPrint "Patching ${PATCH_INSTALL_ROOT}\libsimpa\vec3.pyc"
  !insertmacro NSISPGPatchFile "${PATCH_FILES_ROOT}\libsimpa\vec3.pyc.pat" "${PATCH_INSTALL_ROOT}\libsimpa\vec3.pyc" "vec3.pyc.tmp"

  ;Patching "meshing\tetgen\Preprocess.exe" using patch file "meshing\tetgen\Preprocess.exe.pat"
  DetailPrint "Patching ${PATCH_INSTALL_ROOT}\meshing\tetgen\Preprocess.exe"
  !insertmacro NSISPGPatchFile "${PATCH_FILES_ROOT}\meshing\tetgen\Preprocess.exe.pat" "${PATCH_INSTALL_ROOT}\meshing\tetgen\Preprocess.exe" "Preprocess.exe.tmp"

  ;Patching "meshing\vmr\VolumetricMeshRepair.exe" using patch file "meshing\vmr\VolumetricMeshRepair.exe.pat"
  DetailPrint "Patching ${PATCH_INSTALL_ROOT}\meshing\vmr\VolumetricMeshRepair.exe"
  !insertmacro NSISPGPatchFile "${PATCH_FILES_ROOT}\meshing\vmr\VolumetricMeshRepair.exe.pat" "${PATCH_INSTALL_ROOT}\meshing\vmr\VolumetricMeshRepair.exe" "VolumetricMeshRepair.exe.tmp"

  ;Patching "SystemScript\uilocale\__init__.pyc" using patch file "SystemScript\uilocale\__init__.pyc.pat"
  DetailPrint "Patching ${PATCH_INSTALL_ROOT}\SystemScript\uilocale\__init__.pyc"
  !insertmacro NSISPGPatchFile "${PATCH_FILES_ROOT}\SystemScript\uilocale\__init__.pyc.pat" "${PATCH_INSTALL_ROOT}\SystemScript\uilocale\__init__.pyc" "__init__.pyc.tmp"

  ;Patching "UserScript\job_tool\locale\en_US\LC_MESSAGES\messages.mo" using patch file "UserScript\job_tool\locale\en_US\LC_MESSAGES\messages.mo.pat"
  DetailPrint "Patching ${PATCH_INSTALL_ROOT}\UserScript\job_tool\locale\en_US\LC_MESSAGES\messages.mo"
  !insertmacro NSISPGPatchFile "${PATCH_FILES_ROOT}\UserScript\job_tool\locale\en_US\LC_MESSAGES\messages.mo.pat" "${PATCH_INSTALL_ROOT}\UserScript\job_tool\locale\en_US\LC_MESSAGES\messages.mo" "messages.mo.tmp"

  ;Patching "UserScript\job_tool\locale\en_US\LC_MESSAGES\messages.po" using patch file "UserScript\job_tool\locale\en_US\LC_MESSAGES\messages.po.pat"
  DetailPrint "Patching ${PATCH_INSTALL_ROOT}\UserScript\job_tool\locale\en_US\LC_MESSAGES\messages.po"
  !insertmacro NSISPGPatchFile "${PATCH_FILES_ROOT}\UserScript\job_tool\locale\en_US\LC_MESSAGES\messages.po.pat" "${PATCH_INSTALL_ROOT}\UserScript\job_tool\locale\en_US\LC_MESSAGES\messages.po" "messages.po.tmp"

  ;Patching "UserScript\job_tool\locale\fr_FR\LC_MESSAGES\messages.mo" using patch file "UserScript\job_tool\locale\fr_FR\LC_MESSAGES\messages.mo.pat"
  DetailPrint "Patching ${PATCH_INSTALL_ROOT}\UserScript\job_tool\locale\fr_FR\LC_MESSAGES\messages.mo"
  !insertmacro NSISPGPatchFile "${PATCH_FILES_ROOT}\UserScript\job_tool\locale\fr_FR\LC_MESSAGES\messages.mo.pat" "${PATCH_INSTALL_ROOT}\UserScript\job_tool\locale\fr_FR\LC_MESSAGES\messages.mo" "messages.mo.tmp"

  ;Patching "UserScript\job_tool\locale\fr_FR\LC_MESSAGES\messages.po" using patch file "UserScript\job_tool\locale\fr_FR\LC_MESSAGES\messages.po.pat"
  DetailPrint "Patching ${PATCH_INSTALL_ROOT}\UserScript\job_tool\locale\fr_FR\LC_MESSAGES\messages.po"
  !insertmacro NSISPGPatchFile "${PATCH_FILES_ROOT}\UserScript\job_tool\locale\fr_FR\LC_MESSAGES\messages.po.pat" "${PATCH_INSTALL_ROOT}\UserScript\job_tool\locale\fr_FR\LC_MESSAGES\messages.po" "messages.po.tmp"

  ;Patching "UserScript\job_tool\__init__.py" using patch file "UserScript\job_tool\__init__.py.pat"
  DetailPrint "Patching ${PATCH_INSTALL_ROOT}\UserScript\job_tool\__init__.py"
  !insertmacro NSISPGPatchFile "${PATCH_FILES_ROOT}\UserScript\job_tool\__init__.py.pat" "${PATCH_INSTALL_ROOT}\UserScript\job_tool\__init__.py" "__init__.py.tmp"

  ;Patching "UserScript\job_tool\__init__.pyc" using patch file "UserScript\job_tool\__init__.pyc.pat"
  DetailPrint "Patching ${PATCH_INSTALL_ROOT}\UserScript\job_tool\__init__.pyc"
  !insertmacro NSISPGPatchFile "${PATCH_FILES_ROOT}\UserScript\job_tool\__init__.pyc.pat" "${PATCH_INSTALL_ROOT}\UserScript\job_tool\__init__.pyc" "__init__.pyc.tmp"

  ;Patching "UserScript\moveto_vertex\locale\en_US\LC_MESSAGES\messages.mo" using patch file "UserScript\moveto_vertex\locale\en_US\LC_MESSAGES\messages.mo.pat"
  DetailPrint "Patching ${PATCH_INSTALL_ROOT}\UserScript\moveto_vertex\locale\en_US\LC_MESSAGES\messages.mo"
  !insertmacro NSISPGPatchFile "${PATCH_FILES_ROOT}\UserScript\moveto_vertex\locale\en_US\LC_MESSAGES\messages.mo.pat" "${PATCH_INSTALL_ROOT}\UserScript\moveto_vertex\locale\en_US\LC_MESSAGES\messages.mo" "messages.mo.tmp"

  ;Patching "UserScript\moveto_vertex\locale\en_US\LC_MESSAGES\messages.po" using patch file "UserScript\moveto_vertex\locale\en_US\LC_MESSAGES\messages.po.pat"
  DetailPrint "Patching ${PATCH_INSTALL_ROOT}\UserScript\moveto_vertex\locale\en_US\LC_MESSAGES\messages.po"
  !insertmacro NSISPGPatchFile "${PATCH_FILES_ROOT}\UserScript\moveto_vertex\locale\en_US\LC_MESSAGES\messages.po.pat" "${PATCH_INSTALL_ROOT}\UserScript\moveto_vertex\locale\en_US\LC_MESSAGES\messages.po" "messages.po.tmp"

  ;Patching "UserScript\moveto_vertex\locale\fr_FR\LC_MESSAGES\messages.mo" using patch file "UserScript\moveto_vertex\locale\fr_FR\LC_MESSAGES\messages.mo.pat"
  DetailPrint "Patching ${PATCH_INSTALL_ROOT}\UserScript\moveto_vertex\locale\fr_FR\LC_MESSAGES\messages.mo"
  !insertmacro NSISPGPatchFile "${PATCH_FILES_ROOT}\UserScript\moveto_vertex\locale\fr_FR\LC_MESSAGES\messages.mo.pat" "${PATCH_INSTALL_ROOT}\UserScript\moveto_vertex\locale\fr_FR\LC_MESSAGES\messages.mo" "messages.mo.tmp"

  ;Patching "UserScript\moveto_vertex\locale\fr_FR\LC_MESSAGES\messages.po" using patch file "UserScript\moveto_vertex\locale\fr_FR\LC_MESSAGES\messages.po.pat"
  DetailPrint "Patching ${PATCH_INSTALL_ROOT}\UserScript\moveto_vertex\locale\fr_FR\LC_MESSAGES\messages.po"
  !insertmacro NSISPGPatchFile "${PATCH_FILES_ROOT}\UserScript\moveto_vertex\locale\fr_FR\LC_MESSAGES\messages.po.pat" "${PATCH_INSTALL_ROOT}\UserScript\moveto_vertex\locale\fr_FR\LC_MESSAGES\messages.po" "messages.po.tmp"

  ;Patching "UserScript\moveto_vertex\__init__.pyc" using patch file "UserScript\moveto_vertex\__init__.pyc.pat"
  DetailPrint "Patching ${PATCH_INSTALL_ROOT}\UserScript\moveto_vertex\__init__.pyc"
  !insertmacro NSISPGPatchFile "${PATCH_FILES_ROOT}\UserScript\moveto_vertex\__init__.pyc.pat" "${PATCH_INSTALL_ROOT}\UserScript\moveto_vertex\__init__.pyc" "__init__.pyc.tmp"

  ;Patching "UserScript\preceiv_sourceTracker\locale\en_US\LC_MESSAGES\messages.mo" using patch file "UserScript\preceiv_sourceTracker\locale\en_US\LC_MESSAGES\messages.mo.pat"
  DetailPrint "Patching ${PATCH_INSTALL_ROOT}\UserScript\preceiv_sourceTracker\locale\en_US\LC_MESSAGES\messages.mo"
  !insertmacro NSISPGPatchFile "${PATCH_FILES_ROOT}\UserScript\preceiv_sourceTracker\locale\en_US\LC_MESSAGES\messages.mo.pat" "${PATCH_INSTALL_ROOT}\UserScript\preceiv_sourceTracker\locale\en_US\LC_MESSAGES\messages.mo" "messages.mo.tmp"

  ;Patching "UserScript\preceiv_sourceTracker\locale\en_US\LC_MESSAGES\messages.po" using patch file "UserScript\preceiv_sourceTracker\locale\en_US\LC_MESSAGES\messages.po.pat"
  DetailPrint "Patching ${PATCH_INSTALL_ROOT}\UserScript\preceiv_sourceTracker\locale\en_US\LC_MESSAGES\messages.po"
  !insertmacro NSISPGPatchFile "${PATCH_FILES_ROOT}\UserScript\preceiv_sourceTracker\locale\en_US\LC_MESSAGES\messages.po.pat" "${PATCH_INSTALL_ROOT}\UserScript\preceiv_sourceTracker\locale\en_US\LC_MESSAGES\messages.po" "messages.po.tmp"

  ;Patching "UserScript\preceiv_sourceTracker\locale\fr_FR\LC_MESSAGES\messages.mo" using patch file "UserScript\preceiv_sourceTracker\locale\fr_FR\LC_MESSAGES\messages.mo.pat"
  DetailPrint "Patching ${PATCH_INSTALL_ROOT}\UserScript\preceiv_sourceTracker\locale\fr_FR\LC_MESSAGES\messages.mo"
  !insertmacro NSISPGPatchFile "${PATCH_FILES_ROOT}\UserScript\preceiv_sourceTracker\locale\fr_FR\LC_MESSAGES\messages.mo.pat" "${PATCH_INSTALL_ROOT}\UserScript\preceiv_sourceTracker\locale\fr_FR\LC_MESSAGES\messages.mo" "messages.mo.tmp"

  ;Patching "UserScript\preceiv_sourceTracker\locale\fr_FR\LC_MESSAGES\messages.po" using patch file "UserScript\preceiv_sourceTracker\locale\fr_FR\LC_MESSAGES\messages.po.pat"
  DetailPrint "Patching ${PATCH_INSTALL_ROOT}\UserScript\preceiv_sourceTracker\locale\fr_FR\LC_MESSAGES\messages.po"
  !insertmacro NSISPGPatchFile "${PATCH_FILES_ROOT}\UserScript\preceiv_sourceTracker\locale\fr_FR\LC_MESSAGES\messages.po.pat" "${PATCH_INSTALL_ROOT}\UserScript\preceiv_sourceTracker\locale\fr_FR\LC_MESSAGES\messages.po" "messages.po.tmp"

  ;Patching "UserScript\preceiv_sourceTracker\__init__.py" using patch file "UserScript\preceiv_sourceTracker\__init__.py.pat"
  DetailPrint "Patching ${PATCH_INSTALL_ROOT}\UserScript\preceiv_sourceTracker\__init__.py"
  !insertmacro NSISPGPatchFile "${PATCH_FILES_ROOT}\UserScript\preceiv_sourceTracker\__init__.py.pat" "${PATCH_INSTALL_ROOT}\UserScript\preceiv_sourceTracker\__init__.py" "__init__.py.tmp"

  ;Patching "UserScript\preceiv_sourceTracker\__init__.pyc" using patch file "UserScript\preceiv_sourceTracker\__init__.pyc.pat"
  DetailPrint "Patching ${PATCH_INSTALL_ROOT}\UserScript\preceiv_sourceTracker\__init__.pyc"
  !insertmacro NSISPGPatchFile "${PATCH_FILES_ROOT}\UserScript\preceiv_sourceTracker\__init__.pyc.pat" "${PATCH_INSTALL_ROOT}\UserScript\preceiv_sourceTracker\__init__.pyc" "__init__.pyc.tmp"

  ;Patching "UserScript\recp_res_tool\__init__.pyc" using patch file "UserScript\recp_res_tool\__init__.pyc.pat"
  DetailPrint "Patching ${PATCH_INSTALL_ROOT}\UserScript\recp_res_tool\__init__.pyc"
  !insertmacro NSISPGPatchFile "${PATCH_FILES_ROOT}\UserScript\recp_res_tool\__init__.pyc.pat" "${PATCH_INSTALL_ROOT}\UserScript\recp_res_tool\__init__.pyc" "__init__.pyc.tmp"

  ;Patching "UserScript\recp_tool\locale\en_US\LC_MESSAGES\messages.mo" using patch file "UserScript\recp_tool\locale\en_US\LC_MESSAGES\messages.mo.pat"
  DetailPrint "Patching ${PATCH_INSTALL_ROOT}\UserScript\recp_tool\locale\en_US\LC_MESSAGES\messages.mo"
  !insertmacro NSISPGPatchFile "${PATCH_FILES_ROOT}\UserScript\recp_tool\locale\en_US\LC_MESSAGES\messages.mo.pat" "${PATCH_INSTALL_ROOT}\UserScript\recp_tool\locale\en_US\LC_MESSAGES\messages.mo" "messages.mo.tmp"

  ;Patching "UserScript\recp_tool\locale\en_US\LC_MESSAGES\messages.po" using patch file "UserScript\recp_tool\locale\en_US\LC_MESSAGES\messages.po.pat"
  DetailPrint "Patching ${PATCH_INSTALL_ROOT}\UserScript\recp_tool\locale\en_US\LC_MESSAGES\messages.po"
  !insertmacro NSISPGPatchFile "${PATCH_FILES_ROOT}\UserScript\recp_tool\locale\en_US\LC_MESSAGES\messages.po.pat" "${PATCH_INSTALL_ROOT}\UserScript\recp_tool\locale\en_US\LC_MESSAGES\messages.po" "messages.po.tmp"

  ;Patching "UserScript\recp_tool\locale\fr_FR\LC_MESSAGES\messages.mo" using patch file "UserScript\recp_tool\locale\fr_FR\LC_MESSAGES\messages.mo.pat"
  DetailPrint "Patching ${PATCH_INSTALL_ROOT}\UserScript\recp_tool\locale\fr_FR\LC_MESSAGES\messages.mo"
  !insertmacro NSISPGPatchFile "${PATCH_FILES_ROOT}\UserScript\recp_tool\locale\fr_FR\LC_MESSAGES\messages.mo.pat" "${PATCH_INSTALL_ROOT}\UserScript\recp_tool\locale\fr_FR\LC_MESSAGES\messages.mo" "messages.mo.tmp"

  ;Patching "UserScript\recp_tool\locale\fr_FR\LC_MESSAGES\messages.po" using patch file "UserScript\recp_tool\locale\fr_FR\LC_MESSAGES\messages.po.pat"
  DetailPrint "Patching ${PATCH_INSTALL_ROOT}\UserScript\recp_tool\locale\fr_FR\LC_MESSAGES\messages.po"
  !insertmacro NSISPGPatchFile "${PATCH_FILES_ROOT}\UserScript\recp_tool\locale\fr_FR\LC_MESSAGES\messages.po.pat" "${PATCH_INSTALL_ROOT}\UserScript\recp_tool\locale\fr_FR\LC_MESSAGES\messages.po" "messages.po.tmp"

  ;Patching "UserScript\recp_tool\__init__.py" using patch file "UserScript\recp_tool\__init__.py.pat"
  DetailPrint "Patching ${PATCH_INSTALL_ROOT}\UserScript\recp_tool\__init__.py"
  !insertmacro NSISPGPatchFile "${PATCH_FILES_ROOT}\UserScript\recp_tool\__init__.py.pat" "${PATCH_INSTALL_ROOT}\UserScript\recp_tool\__init__.py" "__init__.py.tmp"

  ;Patching "UserScript\recp_tool\__init__.pyc" using patch file "UserScript\recp_tool\__init__.pyc.pat"
  DetailPrint "Patching ${PATCH_INSTALL_ROOT}\UserScript\recp_tool\__init__.pyc"
  !insertmacro NSISPGPatchFile "${PATCH_FILES_ROOT}\UserScript\recp_tool\__init__.pyc.pat" "${PATCH_INSTALL_ROOT}\UserScript\recp_tool\__init__.pyc" "__init__.pyc.tmp"

  ;Patching "UserScript\source_tools\locale\en_US\LC_MESSAGES\messages.mo" using patch file "UserScript\source_tools\locale\en_US\LC_MESSAGES\messages.mo.pat"
  DetailPrint "Patching ${PATCH_INSTALL_ROOT}\UserScript\source_tools\locale\en_US\LC_MESSAGES\messages.mo"
  !insertmacro NSISPGPatchFile "${PATCH_FILES_ROOT}\UserScript\source_tools\locale\en_US\LC_MESSAGES\messages.mo.pat" "${PATCH_INSTALL_ROOT}\UserScript\source_tools\locale\en_US\LC_MESSAGES\messages.mo" "messages.mo.tmp"

  ;Patching "UserScript\source_tools\locale\en_US\LC_MESSAGES\messages.po" using patch file "UserScript\source_tools\locale\en_US\LC_MESSAGES\messages.po.pat"
  DetailPrint "Patching ${PATCH_INSTALL_ROOT}\UserScript\source_tools\locale\en_US\LC_MESSAGES\messages.po"
  !insertmacro NSISPGPatchFile "${PATCH_FILES_ROOT}\UserScript\source_tools\locale\en_US\LC_MESSAGES\messages.po.pat" "${PATCH_INSTALL_ROOT}\UserScript\source_tools\locale\en_US\LC_MESSAGES\messages.po" "messages.po.tmp"

  ;Patching "UserScript\source_tools\locale\fr_FR\LC_MESSAGES\messages.mo" using patch file "UserScript\source_tools\locale\fr_FR\LC_MESSAGES\messages.mo.pat"
  DetailPrint "Patching ${PATCH_INSTALL_ROOT}\UserScript\source_tools\locale\fr_FR\LC_MESSAGES\messages.mo"
  !insertmacro NSISPGPatchFile "${PATCH_FILES_ROOT}\UserScript\source_tools\locale\fr_FR\LC_MESSAGES\messages.mo.pat" "${PATCH_INSTALL_ROOT}\UserScript\source_tools\locale\fr_FR\LC_MESSAGES\messages.mo" "messages.mo.tmp"

  ;Patching "UserScript\source_tools\locale\fr_FR\LC_MESSAGES\messages.po" using patch file "UserScript\source_tools\locale\fr_FR\LC_MESSAGES\messages.po.pat"
  DetailPrint "Patching ${PATCH_INSTALL_ROOT}\UserScript\source_tools\locale\fr_FR\LC_MESSAGES\messages.po"
  !insertmacro NSISPGPatchFile "${PATCH_FILES_ROOT}\UserScript\source_tools\locale\fr_FR\LC_MESSAGES\messages.po.pat" "${PATCH_INSTALL_ROOT}\UserScript\source_tools\locale\fr_FR\LC_MESSAGES\messages.po" "messages.po.tmp"

  ;Patching "UserScript\source_tools\__init__.py" using patch file "UserScript\source_tools\__init__.py.pat"
  DetailPrint "Patching ${PATCH_INSTALL_ROOT}\UserScript\source_tools\__init__.py"
  !insertmacro NSISPGPatchFile "${PATCH_FILES_ROOT}\UserScript\source_tools\__init__.py.pat" "${PATCH_INSTALL_ROOT}\UserScript\source_tools\__init__.py" "__init__.py.tmp"

  ;Patching "UserScript\source_tools\__init__.pyc" using patch file "UserScript\source_tools\__init__.pyc.pat"
  DetailPrint "Patching ${PATCH_INSTALL_ROOT}\UserScript\source_tools\__init__.pyc"
  !insertmacro NSISPGPatchFile "${PATCH_FILES_ROOT}\UserScript\source_tools\__init__.pyc.pat" "${PATCH_INSTALL_ROOT}\UserScript\source_tools\__init__.pyc" "__init__.pyc.tmp"

  ;Patching "UserScript\SppsReportSample\locale\en_US\LC_MESSAGES\messages.mo" using patch file "UserScript\SppsReportSample\locale\en_US\LC_MESSAGES\messages.mo.pat"
  DetailPrint "Patching ${PATCH_INSTALL_ROOT}\UserScript\SppsReportSample\locale\en_US\LC_MESSAGES\messages.mo"
  !insertmacro NSISPGPatchFile "${PATCH_FILES_ROOT}\UserScript\SppsReportSample\locale\en_US\LC_MESSAGES\messages.mo.pat" "${PATCH_INSTALL_ROOT}\UserScript\SppsReportSample\locale\en_US\LC_MESSAGES\messages.mo" "messages.mo.tmp"

  ;Patching "UserScript\SppsReportSample\locale\en_US\LC_MESSAGES\messages.po" using patch file "UserScript\SppsReportSample\locale\en_US\LC_MESSAGES\messages.po.pat"
  DetailPrint "Patching ${PATCH_INSTALL_ROOT}\UserScript\SppsReportSample\locale\en_US\LC_MESSAGES\messages.po"
  !insertmacro NSISPGPatchFile "${PATCH_FILES_ROOT}\UserScript\SppsReportSample\locale\en_US\LC_MESSAGES\messages.po.pat" "${PATCH_INSTALL_ROOT}\UserScript\SppsReportSample\locale\en_US\LC_MESSAGES\messages.po" "messages.po.tmp"

  ;Patching "UserScript\SppsReportSample\locale\fr_FR\LC_MESSAGES\messages.mo" using patch file "UserScript\SppsReportSample\locale\fr_FR\LC_MESSAGES\messages.mo.pat"
  DetailPrint "Patching ${PATCH_INSTALL_ROOT}\UserScript\SppsReportSample\locale\fr_FR\LC_MESSAGES\messages.mo"
  !insertmacro NSISPGPatchFile "${PATCH_FILES_ROOT}\UserScript\SppsReportSample\locale\fr_FR\LC_MESSAGES\messages.mo.pat" "${PATCH_INSTALL_ROOT}\UserScript\SppsReportSample\locale\fr_FR\LC_MESSAGES\messages.mo" "messages.mo.tmp"

  ;Patching "UserScript\SppsReportSample\locale\fr_FR\LC_MESSAGES\messages.po" using patch file "UserScript\SppsReportSample\locale\fr_FR\LC_MESSAGES\messages.po.pat"
  DetailPrint "Patching ${PATCH_INSTALL_ROOT}\UserScript\SppsReportSample\locale\fr_FR\LC_MESSAGES\messages.po"
  !insertmacro NSISPGPatchFile "${PATCH_FILES_ROOT}\UserScript\SppsReportSample\locale\fr_FR\LC_MESSAGES\messages.po.pat" "${PATCH_INSTALL_ROOT}\UserScript\SppsReportSample\locale\fr_FR\LC_MESSAGES\messages.po" "messages.po.tmp"

  ;Patching "UserScript\SppsReportSample\__init__.py" using patch file "UserScript\SppsReportSample\__init__.py.pat"
  DetailPrint "Patching ${PATCH_INSTALL_ROOT}\UserScript\SppsReportSample\__init__.py"
  !insertmacro NSISPGPatchFile "${PATCH_FILES_ROOT}\UserScript\SppsReportSample\__init__.py.pat" "${PATCH_INSTALL_ROOT}\UserScript\SppsReportSample\__init__.py" "__init__.py.tmp"

  ;Patching "UserScript\SppsReportSample\__init__.pyc" using patch file "UserScript\SppsReportSample\__init__.pyc.pat"
  DetailPrint "Patching ${PATCH_INSTALL_ROOT}\UserScript\SppsReportSample\__init__.pyc"
  !insertmacro NSISPGPatchFile "${PATCH_FILES_ROOT}\UserScript\SppsReportSample\__init__.pyc.pat" "${PATCH_INSTALL_ROOT}\UserScript\SppsReportSample\__init__.pyc" "__init__.pyc.tmp"

  ;Patching "UserScript\SppsReportSample\besttick.pyc" using patch file "UserScript\SppsReportSample\besttick.pyc.pat"
  DetailPrint "Patching ${PATCH_INSTALL_ROOT}\UserScript\SppsReportSample\besttick.pyc"
  !insertmacro NSISPGPatchFile "${PATCH_FILES_ROOT}\UserScript\SppsReportSample\besttick.pyc.pat" "${PATCH_INSTALL_ROOT}\UserScript\SppsReportSample\besttick.pyc" "besttick.pyc.tmp"

  ;Patching "UserScript\SppsReportSample\recsurf_report_stats.pyc" using patch file "UserScript\SppsReportSample\recsurf_report_stats.pyc.pat"
  DetailPrint "Patching ${PATCH_INSTALL_ROOT}\UserScript\SppsReportSample\recsurf_report_stats.pyc"
  !insertmacro NSISPGPatchFile "${PATCH_FILES_ROOT}\UserScript\SppsReportSample\recsurf_report_stats.pyc.pat" "${PATCH_INSTALL_ROOT}\UserScript\SppsReportSample\recsurf_report_stats.pyc" "recsurf_report_stats.pyc.tmp"

  ;Patching "change.log" using patch file "change.log.pat"
  DetailPrint "Patching ${PATCH_INSTALL_ROOT}\change.log"
  !insertmacro NSISPGPatchFile "${PATCH_FILES_ROOT}\change.log.pat" "${PATCH_INSTALL_ROOT}\change.log" "change.log.tmp"

  ;Patching "I-SIMPA.exe" using patch file "I-SIMPA.exe.pat"
  DetailPrint "Patching ${PATCH_INSTALL_ROOT}\I-SIMPA.exe"
  !insertmacro NSISPGPatchFile "${PATCH_FILES_ROOT}\I-SIMPA.exe.pat" "${PATCH_INSTALL_ROOT}\I-SIMPA.exe" "I-SIMPA.exe.tmp"

  ;Patching "Licence.rtf" using patch file "Licence.rtf.pat"
  DetailPrint "Patching ${PATCH_INSTALL_ROOT}\Licence.rtf"
  !insertmacro NSISPGPatchFile "${PATCH_FILES_ROOT}\Licence.rtf.pat" "${PATCH_INSTALL_ROOT}\Licence.rtf" "Licence.rtf.tmp"

  ;Patching "license.txt" using patch file "license.txt.pat"
  DetailPrint "Patching ${PATCH_INSTALL_ROOT}\license.txt"
  !insertmacro NSISPGPatchFile "${PATCH_FILES_ROOT}\license.txt.pat" "${PATCH_INSTALL_ROOT}\license.txt" "license.txt.tmp"

FunctionEnd
