# manual setting
TRUSTSTORE_PATH=".truststore"
EXPORT_PATH=".export"
KEYSTORE_PASS="changepass"
KEYTOOL=/home/jre/bin/keytool

$KEYTOOL -importcert -file $EXPORT_PATH -keystore $TRUSTSTORE_PATH -storepass $KEYSTORE_PASS