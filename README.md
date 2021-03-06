A Magisk module (in testing) to enable 5G for Unlisted Countries, VoLTE switches in the settings and add support for Chinese and Korean SIM Cards for Pixel 4a (5G) and Pixel 5.

----------------------------------------------------------
This module will do the following:

1. Replace Wildcard mbn with an edited wildcard mbn with 5G enabled by default (wildcard is for unlisted countries)

2. Add Chinese and Korean Carrier mbn files to the device

3. Update this file:
    /system/vendor/rfs/msm/mpss/readonly/vendor/mbn/mcfg_sw/mbn_sw.txt 
    to include Chinese and Korean carrier mbn files  

4. Add build properties to forcibly enable some settings

----------------------------------------------------------
Download as zip and flash in magisk manager.

You may need to insert a different sim card to forcibly trigger a reloading of mbn file.
----------------------------------------------------------

픽셀 4a (5G) 와 필셀 5 를 위한 매지스크 모듈.
이 모듈은 위 기기를 중국과 한국에서 사용 가능하게 하도록 만든 모듈입니다. 
저는 중국이나 한국에 거주하지 않아, 이론적으로 만든 모듈입니다.
되는지 안되는지 테스트 해 주시고 XDA 에 @swangjang 에 답변해 주시면 감사하겠습니다.
