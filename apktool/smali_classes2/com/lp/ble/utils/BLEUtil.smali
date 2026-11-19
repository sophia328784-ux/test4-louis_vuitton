.class public Lcom/lp/ble/utils/BLEUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 75

    const-string v73, "TH"

    const-string v74, "UM"

    const-string v1, "JP"

    const-string v2, "CA"

    const-string v3, "FR"

    const-string v4, "MX"

    const-string v5, "GT"

    const-string v6, "SV"

    const-string v7, "BG"

    const-string v8, "FI"

    const-string v9, "KW"

    const-string v10, "MT"

    const-string v11, "PL"

    const-string v12, "SI"

    const-string v13, "UA"

    const-string v14, "PH"

    const-string v15, "VN"

    const-string v16, "KR"

    const-string v17, "GB"

    const-string v18, "ES"

    const-string v19, "BR"

    const-string v20, "PA"

    const-string v21, "NI"

    const-string v22, "HR"

    const-string v23, "GR"

    const-string v24, "LV"

    const-string v25, "MA"

    const-string v26, "PT"

    const-string v27, "ZA"

    const-string v28, "AE"

    const-string v29, "SG"

    const-string v30, "AU"

    const-string v31, "IN"

    const-string v32, "DE"

    const-string v33, "IT"

    const-string v34, "XZ"

    const-string v35, "PE"

    const-string v36, "BH"

    const-string v37, "CZ"

    const-string v38, "HU"

    const-string v39, "LI"

    const-string v40, "NL"

    const-string v41, "RO"

    const-string v42, "SE"

    const-string v43, "HK"

    const-string v44, "KR"

    const-string v45, "AT"

    const-string v46, "US"

    const-string v47, "CN"

    const-string v48, "RU"

    const-string v49, "PR"

    const-string v50, "AR"

    const-string v51, "BY"

    const-string v52, "DK"

    const-string v53, "IS"

    const-string v54, "LT"

    const-string v55, "NO"

    const-string v56, "SA"

    const-string v57, "CH"

    const-string v58, "ID"

    const-string v59, "TW"

    const-string v60, "NZ"

    const-string v61, "AU"

    const-string v62, "IE"

    const-string v63, "CO"

    const-string v64, "EC"

    const-string v65, "BE"

    const-string v66, "EE"

    const-string v67, "IL"

    const-string v68, "LU"

    const-string v69, "OM"

    const-string v70, "SK"

    const-string v71, "TN"

    const-string v72, "MY"

    filled-new-array/range {v1 .. v74}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lp/ble/utils/BLEUtil;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)I
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    shl-int/lit8 v0, v0, 0x8

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static b([B)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    shl-int/lit8 v1, v1, 0x8

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static c(II[B)[B
    .locals 2

    new-array v0, p1, [B

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p2, p0, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(I)Lcom/lp/ble/manager/BLEConnectApResult;
    .locals 1

    sget-object v0, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_AP_OTHER_ERROR:Lcom/lp/ble/manager/BLEConnectApResult;

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    return-object v0

    :pswitch_1
    sget-object p0, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_AP_RETRY:Lcom/lp/ble/manager/BLEConnectApResult;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_Type_Found_Device_But_Not_Online:Lcom/lp/ble/manager/BLEConnectApResult;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_Type_User_Close_Bluetooth:Lcom/lp/ble/manager/BLEConnectApResult;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_Type_Connect_Router_Success_App_Not_Found:Lcom/lp/ble/manager/BLEConnectApResult;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_AP_PARAMETER_ERROR:Lcom/lp/ble/manager/BLEConnectApResult;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_AP_NO_SUPPORT_SECRET:Lcom/lp/ble/manager/BLEConnectApResult;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_AP_PASSWORD_ERROR:Lcom/lp/ble/manager/BLEConnectApResult;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_AP_DHCP_TIMEOUT:Lcom/lp/ble/manager/BLEConnectApResult;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_AP_WIFI_TIMEOUT:Lcom/lp/ble/manager/BLEConnectApResult;

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_AP_NO_SSID:Lcom/lp/ble/manager/BLEConnectApResult;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static e()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    :try_start_0
    sget-object v1, Lcom/lp/ble/BLEManager;->c:Lcom/lp/ble/BLEManager;

    iget-object v1, v1, Lcom/lp/ble/BLEManager;->a:Landroid/app/Application;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-static {v0}, Lcom/lp/ble/utils/BLEUtil;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    :catchall_0
    invoke-static {v0}, Lcom/lp/ble/utils/BLEUtil;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "XZ"

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x4a

    if-ge v0, v2, :cond_2

    sget-object v2, Lcom/lp/ble/utils/BLEUtil;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static g([Landroid/os/ParcelUuid;)Z
    .locals 6

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    invoke-virtual {v4}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0000A501-0000-1000-8000-00805F9B34FB"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_1
    return v0
.end method

.method public static h(Ljava/lang/String;Lcom/lp/ble/config/BleScanConfig;Lcom/lp/ble/config/DeviceFilter;Landroid/bluetooth/BluetoothDevice;I[B)Lcom/lp/ble/entity/LPBluetoothDevice;
    .locals 8

    const/4 p1, 0x0

    if-nez p3, :cond_0

    goto/16 :goto_d

    :cond_0
    const/4 p4, 0x0

    const/16 v0, 0xff

    if-nez p5, :cond_1

    move-object v2, p1

    goto :goto_2

    :cond_1
    move-object v2, p1

    move v1, p4

    :goto_0
    :try_start_0
    array-length v3, p5

    if-ge v1, v3, :cond_4

    add-int/lit8 v3, v1, 0x1

    aget-byte v4, p5, v1

    and-int/2addr v4, v0

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v1, 0x2

    aget-byte v3, p5, v3

    and-int/2addr v3, v0

    if-eq v3, v0, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x3

    aget-byte v1, p5, v1

    aget-byte v1, p5, v5

    invoke-static {v5, v4, p5}, Lcom/lp/ble/utils/BLEUtil;->c(II[B)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int v1, v5, v4

    goto :goto_0

    :catch_0
    invoke-static {p5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    :cond_4
    :goto_2
    if-nez p5, :cond_5

    move-object v3, p1

    goto :goto_5

    :cond_5
    move-object v3, p1

    move v1, p4

    :goto_3
    :try_start_1
    array-length v4, p5

    if-ge v1, v4, :cond_8

    add-int/lit8 v4, v1, 0x1

    aget-byte v5, p5, v1

    and-int/2addr v5, v0

    if-nez v5, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v1, v1, 0x2

    aget-byte v4, p5, v4

    and-int/2addr v4, v0

    const/4 v6, 0x3

    if-eq v4, v6, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {v1, v5, p5}, Lcom/lp/ble/utils/BLEUtil;->c(II[B)[B

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    add-int/2addr v1, v5

    goto :goto_3

    :catch_1
    invoke-static {p5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    :cond_8
    :goto_5
    new-instance v1, Lcom/lp/ble/entity/LPBluetoothDevice$Builder;

    invoke-direct {v1}, Lcom/lp/ble/entity/LPBluetoothDevice$Builder;-><init>()V

    iput-object p3, v1, Lcom/lp/ble/entity/LPBluetoothDevice$Builder;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/lp/ble/entity/LPBluetoothDevice$Builder;->b:Ljava/lang/String;

    iput-object v2, v1, Lcom/lp/ble/entity/LPBluetoothDevice$Builder;->c:[B

    invoke-virtual {v1}, Lcom/lp/ble/entity/LPBluetoothDevice$Builder;->a()Lcom/lp/ble/entity/LPBluetoothDevice;

    move-result-object v1

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v5

    invoke-static {v5}, Lcom/lp/ble/utils/BLEUtil;->g([Landroid/os/ParcelUuid;)Z

    move-result v5

    const-string v6, "LP"

    if-eqz v5, :cond_9

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto/16 :goto_d

    :cond_9
    const/4 v4, 0x2

    if-eqz v3, :cond_c

    array-length v5, v3

    if-lez v5, :cond_c

    invoke-static {v3}, Lcom/lp/ble/utils/HexUtil;->a([B)Ljava/lang/String;

    move-result-object v5

    const-string v7, "1218"

    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, "LP RC"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    goto/16 :goto_d

    :cond_a
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v7

    invoke-static {v7}, Lcom/lp/ble/utils/BLEUtil;->g([Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    goto/16 :goto_d

    :cond_b
    if-eqz v2, :cond_c

    array-length v6, v2

    if-ne v6, v4, :cond_c

    invoke-static {v2}, Lcom/lp/ble/utils/HexUtil;->a([B)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    const/16 v7, 0x4c50

    if-ne v6, v7, :cond_c

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WiiM"

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-static {p5}, Lcom/lp/ble/utils/HexUtil;->a([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/lp/ble/utils/BLELog;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    goto :goto_6

    :cond_c
    if-eqz p2, :cond_d

    invoke-virtual {v1}, Lcom/lp/ble/entity/LPBluetoothDevice;->a()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-static {p5}, Lcom/lp/ble/utils/HexUtil;->a([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/lp/ble/utils/BLELog;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    goto :goto_6

    :cond_d
    if-eqz p2, :cond_f

    iget p2, v1, Lcom/lp/ble/entity/LPBluetoothDevice;->d:I

    const/16 v5, 0x4c51

    if-ne p2, v5, :cond_f

    iget p2, v1, Lcom/lp/ble/entity/LPBluetoothDevice;->e:I

    if-lez p2, :cond_f

    invoke-static {p5}, Lcom/lp/ble/utils/HexUtil;->a([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/lp/ble/utils/BLELog;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    :cond_e
    :goto_6
    return-object v1

    :cond_f
    const-string p2, ""

    if-eqz p5, :cond_15

    array-length v1, p5

    if-gtz v1, :cond_10

    goto :goto_8

    :cond_10
    move v1, p4

    :goto_7
    array-length v5, p5

    if-ge v1, v5, :cond_15

    add-int/lit8 v5, v1, 0x1

    aget-byte v6, p5, v1

    if-nez v6, :cond_11

    goto :goto_8

    :cond_11
    aget-byte v7, p5, v5

    and-int/2addr v7, v0

    if-nez v7, :cond_12

    goto :goto_8

    :cond_12
    add-int/lit8 v1, v1, 0x2

    add-int/2addr v5, v6

    if-le v1, v5, :cond_13

    goto :goto_8

    :cond_13
    invoke-static {p5, v1, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    if-ne v7, v0, :cond_14

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_9

    :cond_14
    move v1, v5

    goto :goto_7

    :cond_15
    :goto_8
    move-object v5, p2

    :goto_9
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, "linkp"

    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "e\u0006inkp"

    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_16
    new-instance p1, Lcom/lp/ble/entity/LPBluetoothDevice$Builder;

    invoke-direct {p1}, Lcom/lp/ble/entity/LPBluetoothDevice$Builder;-><init>()V

    iput-object p3, p1, Lcom/lp/ble/entity/LPBluetoothDevice$Builder;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/lp/ble/entity/LPBluetoothDevice$Builder;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lp/ble/entity/LPBluetoothDevice$Builder;->a()Lcom/lp/ble/entity/LPBluetoothDevice;

    move-result-object p1

    invoke-static {p5}, Lcom/lp/ble/utils/HexUtil;->a([B)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/lp/ble/utils/BLELog;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_17

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    :cond_17
    return-object p1

    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_1c

    array-length p2, v2

    if-gtz p2, :cond_19

    goto :goto_b

    :cond_19
    move p2, p4

    :goto_a
    array-length v5, v2

    if-ge p2, v5, :cond_1b

    aget-byte v5, v2, p2

    and-int/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v4, :cond_1a

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1a
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    :cond_1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_c

    :cond_1c
    :goto_b
    move-object p2, p1

    :goto_c
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_1e

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p4

    const-string v0, "0f6da118"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1e

    new-instance p1, Lcom/lp/ble/entity/LPBluetoothDevice$Builder;

    invoke-direct {p1}, Lcom/lp/ble/entity/LPBluetoothDevice$Builder;-><init>()V

    iput-object p3, p1, Lcom/lp/ble/entity/LPBluetoothDevice$Builder;->a:Landroid/bluetooth/BluetoothDevice;

    iput-object p2, p1, Lcom/lp/ble/entity/LPBluetoothDevice$Builder;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lp/ble/entity/LPBluetoothDevice$Builder;->a()Lcom/lp/ble/entity/LPBluetoothDevice;

    move-result-object p1

    invoke-static {p5}, Lcom/lp/ble/utils/HexUtil;->a([B)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/lp/ble/utils/BLELog;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1d

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    :cond_1d
    return-object p1

    :cond_1e
    if-eqz v3, :cond_1f

    array-length p0, v3

    if-lt p0, v4, :cond_1f

    invoke-static {v3}, Lcom/lp/ble/utils/HexUtil;->a([B)Ljava/lang/String;

    move-result-object p0

    const-string p2, "A0FE"

    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    :cond_1f
    :goto_d
    return-object p1
.end method

.method public static i([B)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 p0, 0x0

    :try_start_0
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p0, 0x100

    :try_start_1
    new-array p0, p0, [B

    :goto_0
    invoke-virtual {v2, p0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v0, p0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p0

    :catchall_1
    move-exception v2

    move-object v5, v2

    move-object v2, p0

    move-object p0, v5

    goto :goto_3

    :catch_2
    move-exception v2

    move-object v5, v2

    move-object v2, p0

    move-object p0, v5

    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    sget-object v3, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    return-object p0

    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_4
    throw p0
.end method
