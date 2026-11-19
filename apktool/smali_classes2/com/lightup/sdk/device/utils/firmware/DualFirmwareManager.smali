.class public Lcom/lightup/sdk/device/utils/firmware/DualFirmwareManager;
.super Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final b(Lorg/json/JSONObject;)Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;
    .locals 9

    const-string v0, "firmware_1"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "firmware_addr_1"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v1, "firmware_2"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "firmware_addr_2"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v2, "recovery"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v3}, Lcom/lightup/sdk/device/utils/communication/ByteUtils;->f(Ljava/io/InputStream;)[B

    move-result-object v4

    invoke-static {v1}, Lcom/lightup/sdk/device/utils/communication/ByteUtils;->f(Ljava/io/InputStream;)[B

    move-result-object v6

    invoke-static {p0}, Lcom/lightup/sdk/device/utils/communication/ByteUtils;->f(Ljava/io/InputStream;)[B

    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    new-instance v2, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;

    const-string p0, "name"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {v2 .. v8}, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;-><init>(Ljava/lang/String;[BI[BI[B)V

    return-object v2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object p1, v0

    if-eqz p0, :cond_0

    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_0

    :catchall_3
    move-exception v0

    move-object p0, v0

    :try_start_6
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_1
    if-eqz v1, :cond_1

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception v0

    move-object p1, v0

    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_3
    if-eqz v3, :cond_2

    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    throw p0
.end method

.method public final e(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;II)Lcom/lightup/sdk/device/features/process/ProcessFeature;
    .locals 0

    new-instance p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;

    invoke-direct {p0, p1, p2, p4, p3}, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;Lcom/lightup/sdk/device/devicemanagement/BLEDevice;ILcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;)V

    return-object p0
.end method

.method public final f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "firmwares"

    const-string v1, ".json"

    invoke-static {v0, p1, v1}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    iget-object p0, p0, Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p1

    new-array p1, p1, [B

    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_0

    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "Could not read file"

    invoke-static {p1, p0}, Laz;->s(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final g(Lcom/lightup/sdk/device/model/device/DeviceId;Lcom/lightup/sdk/device/model/device/BLEDeviceFirmwareChecksums;)Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;->c(Lcom/lightup/sdk/device/model/device/DeviceId;)Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;

    move-result-object v0

    iget-object v1, p2, Lcom/lightup/sdk/device/model/device/BLEDeviceFirmwareChecksums;->firmwareChecksum:[B

    const/4 v2, 0x4

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;->UPDATE_POSSIBLE:Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;

    return-object p0

    :cond_0
    iget-object v1, p2, Lcom/lightup/sdk/device/model/device/BLEDeviceFirmwareChecksums;->firmwareChecksum:[B

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p0, Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;->NONE:Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;

    return-object p0

    :cond_1
    iget-object v1, p2, Lcom/lightup/sdk/device/model/device/BLEDeviceFirmwareChecksums;->firmwareChecksum:[B

    iget-object v2, v0, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;->d:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p2, Lcom/lightup/sdk/device/model/device/BLEDeviceFirmwareChecksums;->firmwareChecksum:[B

    iget-object v2, v0, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;->g:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p2, Lcom/lightup/sdk/device/model/device/BLEDeviceFirmwareChecksums;->firmwareChecksum:[B

    iget-object v0, v0, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;->j:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;->UPDATE_POSSIBLE:Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;

    return-object p0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;->d(Lcom/lightup/sdk/device/model/device/DeviceId;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;

    iget-object v0, p2, Lcom/lightup/sdk/device/model/device/BLEDeviceFirmwareChecksums;->firmwareChecksum:[B

    iget-object v1, p1, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;->j:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p0, Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;->UPDATE_POSSIBLE:Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;

    return-object p0

    :cond_5
    iget-object v0, p2, Lcom/lightup/sdk/device/model/device/BLEDeviceFirmwareChecksums;->firmwareChecksum:[B

    iget-object v1, p1, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;->d:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p2, Lcom/lightup/sdk/device/model/device/BLEDeviceFirmwareChecksums;->firmwareChecksum:[B

    iget-object p1, p1, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;->g:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_6
    sget-object p0, Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;->UPDATE_POSSIBLE:Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;

    return-object p0

    :cond_7
    sget-object p0, Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;->UPDATE_NOT_POSSIBLE:Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;

    return-object p0

    :cond_8
    :goto_0
    sget-object p0, Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;->NONE:Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;

    return-object p0

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
