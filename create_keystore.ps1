# manual setting
$KEYTOOL="C:\Users\name\.jdks\openjdk-18.0.2.1\bin\keytool.exe"
$KEYSTORE_PASS="changeme"
$KEYSTORE_ALIAS="alias"
$KEYSTORE_PATH=".keystore"
$EXPORT_PATH=".export"

# X.500(DNAME) setting
$COMMON_NAME="Tarou" # 姓名
$ORGANIZATION_UNIT="Develop Team" # 組織単位名
$ORGANIZATION_NAME="Minowa Corporation" # 組織名
$LOCALITY_NAME ="Minato Ward" # 都市名または地域名
$STATE_NAME ="Tokyo" # 都道府県名または州名
$COUNTRY="JP" # 2文字の国コード

# make dname
$DNAME="CN="+ $COMMON_NAME
$DNAME+=", OU="+ $ORGANIZATION_UNIT
$DNAME+=", O="+ $ORGANIZATION_NAME
$DNAME+=", L="+ $LOCALITY_NAME
$DNAME+=", ST="+ $STATE_NAME
$DNAME+=", C="+ $COUNTRY

# create keystore
. $KEYTOOL -genkeypair -alias $KEYSTORE_ALIAS -keystore $KEYSTORE_PATH -keyalg RSA -storetype pkcs12 -dname "$DNAME" -storepass $KEYSTORE_PASS

# export certificate
. $KEYTOOL -exportcert -alias $KEYSTORE_ALIAS -file $EXPORT_PATH -keystore $KEYSTORE_PATH -storepass $KEYSTORE_PASS