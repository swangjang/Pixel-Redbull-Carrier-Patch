SKIPMOUNT=false
PROPFILE=true
POSTFSDATA=false
LATESTARTSERVICE=false

rm -r /data/vendor/radio
rm -r /data/vendor/modem_fdr
rm /data/vendor/radio/iccid_0
rm /data/vendor/radio/iccid_1
rm /data/vendor/radio/qcril.db
rm /data/vendor/radio/qcril_backup.db


unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
  
set_permissions() {
  # The following is the default rule, DO NOT remove
  set_perm_recursive $MODPATH 0 0 0755 0644
  
  # Here are some examples:
  # set_perm_recursive  $MODPATH/system/lib       0     0       0755      0644
  # set_perm  $MODPATH/system/bin/app_process32   0     2000    0755      u:object_r:zygote_exec:s0
  # set_perm  $MODPATH/system/bin/dex2oat         0     2000    0755      u:object_r:dex2oat_exec:s0
  # set_perm  $MODPATH/system/lib/libart.so       0     0       0644
  
  # directory :   0   2000  0755   u:object_r:vendor_file:s0
  # file      :   0   0     0644   u:object_r:vendor_file:s0
  
  # set_perm_recursive <directory> <owner> <group> <dirpermission> <filepermission> [context]
  set_perm_recursive $MODPATH 0 2000 0755 0644 u:object_r:vendor_file:s0
  
  # set_perm <target> <owner> <group> <permission> [context]
  local FILE
  find $MODPATH/system/vendor/rfs/msm/mpss/readonly/vendor/mbn/mcfg_sw -type f -o -type l 2>/dev/null | while read FILE; do
  set_perm "$FILE" 0 0 0644 u:object_r:vendor_file:s0
  done
}
