rm /data/vendor/modem_fdr/fdr_check
rm -r /data/vendor/radio
rm /data/vendor/radio/iccid_0
rm /data/vendor/radio/iccid_1
rm /data/vendor/radio/qcril.db
rm /data/vendor/radio/qcril_backup.db
REPLACE="
/system/vendor/rfs/msm/mpss/readonly/vendor/mbn/mcfg_sw
/vendor/rfs/msm/mpss/readonly/vendor/mbn/mcfg_sw
"
settings put global captive_portal_mode 0