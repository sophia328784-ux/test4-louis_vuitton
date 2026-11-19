.class public Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lorg/json/JSONObject;

.field public final c:Ljava/util/HashMap;

.field public final d:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;->d:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;->a:Landroid/content/Context;

    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p2}, Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;->b:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "Could not parse file"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final a(B)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%02X"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;->b:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_0

    :catch_0
    const/4 v0, 0x0

    :cond_0
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;->b(Lorg/json/JSONObject;)Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;

    move-result-object v0

    iget-object p0, p0, Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-void
.end method

.method public b(Lorg/json/JSONObject;)Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;
    .locals 10

    const-string v0, "firmware"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "firmwareAddr"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v1, "bootloader"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bootloaderAddr"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v2, "bootloaderUpdater"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "bootloaderUpdaterAddr"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

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

    invoke-direct/range {v2 .. v9}, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;-><init>(Ljava/lang/String;[BI[BI[BI)V

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

.method public final c(Lcom/lightup/sdk/device/model/device/DeviceId;)Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;
    .locals 3

    invoke-virtual {p1}, Lcom/lightup/sdk/device/model/device/DeviceId;->getHardwareVersion()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    iget-object v2, p0, Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;->a(B)V

    :cond_0
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Lcom/lightup/sdk/device/utils/firmware/UnsupportedDeviceException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not find a matching firmware bundle: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/lightup/sdk/device/utils/firmware/UnsupportedDeviceException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d(Lcom/lightup/sdk/device/model/device/DeviceId;)Ljava/util/List;
    .locals 6

    invoke-virtual {p1}, Lcom/lightup/sdk/device/model/device/DeviceId;->getHardwareVersion()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    iget-object v2, p0, Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;->d:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "%02X"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object v3, p0, Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;->b:Lorg/json/JSONObject;

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-nez v3, :cond_0

    :catch_0
    const/4 v1, 0x0

    :cond_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    :try_start_1
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_2

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;->b(Lorg/json/JSONObject;)Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-virtual {v2, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_3
    :goto_1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_4

    return-object p0

    :cond_4
    new-instance p0, Lcom/lightup/sdk/device/utils/firmware/UnsupportedDeviceException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not find firmware bundles for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/lightup/sdk/device/utils/firmware/UnsupportedDeviceException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public e(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;II)Lcom/lightup/sdk/device/features/process/ProcessFeature;
    .locals 0

    new-instance p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;

    invoke-direct/range {p0 .. p5}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevicesManager;Lcom/lightup/sdk/device/devicemanagement/BLEDevice;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;II)V

    return-object p0
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string p1, "packages.json"

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

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
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

.method public g(Lcom/lightup/sdk/device/model/device/DeviceId;Lcom/lightup/sdk/device/model/device/BLEDeviceFirmwareChecksums;)Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;->c(Lcom/lightup/sdk/device/model/device/DeviceId;)Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;

    move-result-object v0

    iget-object v1, p2, Lcom/lightup/sdk/device/model/device/BLEDeviceFirmwareChecksums;->firmwareChecksum:[B

    iget-object v2, v0, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;->d:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/lightup/sdk/device/model/device/BLEDeviceFirmwareChecksums;->bootloaderChecksum:[B

    iget-object v0, v0, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;->j:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;->NONE:Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;->d(Lcom/lightup/sdk/device/model/device/DeviceId;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;

    iget-object v0, p2, Lcom/lightup/sdk/device/model/device/BLEDeviceFirmwareChecksums;->firmwareChecksum:[B

    iget-object v1, p1, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;->d:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/lightup/sdk/device/model/device/BLEDeviceFirmwareChecksums;->bootloaderChecksum:[B

    iget-object p1, p1, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;->j:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p0, Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;->UPDATE_POSSIBLE:Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;

    return-object p0

    :cond_2
    sget-object p0, Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;->UPDATE_NOT_POSSIBLE:Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;

    return-object p0
.end method
