# manual setting
$TRUSTSTORE_PATH=".truststore"
$EXPORT_PATH=".export"
$KEYSTORE_PASS="changepass"
$KEYTOOL="C:\Program Files (x86)\jre\bin\keytool.exe"

. $KEYTOOL -importcert -file $EXPORT_PATH -keystore $TRUSTSTORE_PATH -storepass $KEYSTORE_PASS