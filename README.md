A Magisk module to enable VoLTE switches in the settings, add support for Chinese and Korean SIM Cards for Pixel 4a (5G) and Pixel 5.
This is a module made in theory. I don't know if it will work in China or Korea. 
Please test and report to @swangjang at XDA
This is a systemless install so you can revert back by uninstalling the module.
----------------------------------------------------------
This module does 3 things:
   
1. Add Chinese and Korean Carrier mbn files to the device

2. Update this file:
    /system/vendor/rfs/msm/mpss/readonly/vendor/mbn/mcfg_sw/mbn_sw.txt 
    to include Chinese and Korean carrier mbn files  

3. add build properties:
    persist.dbg.ims_volte_enable=1
    persist.dbg.volte_avail_ovr=1
    persist.dbg.vt_avail_ovr=1
    persist.dbg.wfc_avail_ovr=1
    persist.radio.rat_on=combine
    persist.radio.data_ltd_sys_ind=1
    persist.radio.data_con_rprt=1
    persist.radio.calls.on.ims=1
----------------------------------------------------------
Download as zip and flash in magisk manager.
----------------------------------------------------------

픽셀 4a (5G) 와 필셀 5 를 위한 매지스크 모듈.
이 모듈은 위 기기를 중국과 한국에서 사용 가능하게 하도록 만든 모듈입니다. 
저는 중국이나 한국에 거주하지 않아, 이론적으로 만든 모듈입니다.
되는지 안되는지 테스트 해 주시고 XDA 에 @swangjang 에 답변해 주시면 감사하겠습니다.
----------------------------------------------------------
Pixel, China, Korea, Patch
픽셀5 패치
픽셀4 패치
