rm -r /data/vendor/modem_fdr
rm -r /data/vendor/radio

REPLACE="
/system/vendor/rfs/msm/mpss/readonly/vendor/mbn/mcfg_sw
/vendor/rfs/msm/mpss/readonly/vendor/mbn/mcfg_sw
"

set_perm_recursive $MODPATH/system/vendor/rfs/msm/mpss/readonly/vendor/mbn/mcfg_sw 0 0 0755 0644 u:object_r:vendor_file:s0
set_perm_recursive $MODPATH/vendor/rfs/msm/mpss/readonly/vendor/mbn/mcfg_sw 0 0 0755 0644 u:object_r:vendor_file:s0
settings put global captive_portal_mode 0