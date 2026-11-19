.class public Lcom/lp/ble/manager/LPBLEManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static instance:Lcom/lp/ble/manager/LPBLEManager;


# instance fields
.field private MultiCmdId:I

.field private final SplitCharacter:Ljava/lang/String;

.field characteristicChangedListener:Lcom/lp/ble/BLECharacteristicChangedListener;

.field failedCallback:Z

.field private handler:Landroid/os/Handler;

.field private isiEastSpecial:Z

.field listener:Lcom/lp/ble/manager/LPConnectWiFiListener;

.field private lpBluetoothDevice:Lcom/lp/ble/entity/LPBluetoothDevice;

.field private lpbleConfig:Lcom/lp/ble/manager/LPBLEConfig;

.field private mBLEConnector:Lcom/lp/ble/BLEConnector;

.field mBLEInfo:Lcom/lp/ble/manager/ConnectBLEInfo;

.field private mNeedHexStr:Z

.field private scanListener:Lcom/lp/ble/manager/LPBLEScanListener;

.field private version:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1.0.1"

    iput-object v0, p0, Lcom/lp/ble/manager/LPBLEManager;->version:Ljava/lang/String;

    const-string v0, "######"

    iput-object v0, p0, Lcom/lp/ble/manager/LPBLEManager;->SplitCharacter:Ljava/lang/String;

    new-instance v0, Lcom/lp/ble/manager/LPBLEManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lp/ble/manager/LPBLEManager$1;-><init>(Lcom/lp/ble/manager/LPBLEManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lp/ble/manager/LPBLEManager;->handler:Landroid/os/Handler;

    const v0, 0x18a92

    iput v0, p0, Lcom/lp/ble/manager/LPBLEManager;->MultiCmdId:I

    new-instance v0, Lcom/lp/ble/manager/LPBLEManager$8;

    invoke-direct {v0, p0}, Lcom/lp/ble/manager/LPBLEManager$8;-><init>(Lcom/lp/ble/manager/LPBLEManager;)V

    iput-object v0, p0, Lcom/lp/ble/manager/LPBLEManager;->characteristicChangedListener:Lcom/lp/ble/BLECharacteristicChangedListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lp/ble/manager/LPBLEManager;->failedCallback:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEInfo:Lcom/lp/ble/manager/ConnectBLEInfo;

    return-void
.end method

.method public static bridge synthetic a(Lcom/lp/ble/manager/LPBLEManager;)I
    .locals 0

    iget p0, p0, Lcom/lp/ble/manager/LPBLEManager;->MultiCmdId:I

    return p0
.end method

.method public static bridge synthetic b(Lcom/lp/ble/manager/LPBLEManager;)Lcom/lp/ble/entity/LPBluetoothDevice;
    .locals 0

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager;->lpBluetoothDevice:Lcom/lp/ble/entity/LPBluetoothDevice;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/lp/ble/manager/LPBLEManager;)Lcom/lp/ble/manager/LPBLEConfig;
    .locals 0

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager;->lpbleConfig:Lcom/lp/ble/manager/LPBLEConfig;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/lp/ble/manager/LPBLEManager;)Lcom/lp/ble/BLEConnector;
    .locals 0

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEConnector:Lcom/lp/ble/BLEConnector;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/lp/ble/manager/LPBLEManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/lp/ble/manager/LPBLEManager;->mNeedHexStr:Z

    return p0
.end method

.method public static bridge synthetic f(Lcom/lp/ble/manager/LPBLEManager;)Lcom/lp/ble/manager/LPBLEScanListener;
    .locals 0

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager;->scanListener:Lcom/lp/ble/manager/LPBLEScanListener;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/lp/ble/manager/LPBLEManager;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lp/ble/manager/LPBLEManager;->mNeedHexStr:Z

    return-void
.end method

.method private getCommandInfo(Lcom/lp/ble/manager/ApItem;)Ljava/lang/String;
    .locals 12

    invoke-direct {p0}, Lcom/lp/ble/manager/LPBLEManager;->isBLEVersionMore102()Z

    move-result v0

    const-string v1, "android"

    const-string v2, "os"

    const-string v3, "appIP"

    const-string v4, "identity"

    const-string v5, "encry"

    const-string v6, "auth"

    const-string v7, "password"

    const-string v8, "pass"

    const-string v9, "ssid"

    if-eqz v0, :cond_5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v10, "sessionId"

    if-nez p1, :cond_0

    :try_start_0
    iget-object v11, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEInfo:Lcom/lp/ble/manager/ConnectBLEInfo;

    iget-object v11, v11, Lcom/lp/ble/manager/ConnectBLEInfo;->ssid:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_c

    :catch_0
    move-exception v9

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/lp/ble/manager/ApItem;->getSsid()Ljava/lang/String;

    move-result-object v11

    :goto_0
    invoke-virtual {v0, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v9, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEInfo:Lcom/lp/ble/manager/ConnectBLEInfo;

    invoke-virtual {v9}, Lcom/lp/ble/manager/ConnectBLEInfo;->getSessionId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :goto_2
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_3
    const-string v11, "######"

    invoke-static {v9, v11}, Ld21;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :try_start_2
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEInfo:Lcom/lp/ble/manager/ConnectBLEInfo;

    invoke-virtual {v0}, Lcom/lp/ble/manager/ConnectBLEInfo;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-boolean v0, p0, Lcom/lp/ble/manager/LPBLEManager;->mNeedHexStr:Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v10, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEInfo:Lcom/lp/ble/manager/ConnectBLEInfo;

    if-eqz v0, :cond_1

    :try_start_4
    iget-object v0, v10, Lcom/lp/ble/manager/ConnectBLEInfo;->password:Ljava/lang/String;

    invoke-static {v0}, Lcom/lp/ble/utils/HexUtil;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object v0, v11

    goto/16 :goto_b

    :catch_1
    move-exception p0

    move-object v0, v11

    goto :goto_9

    :cond_1
    iget-object v0, v10, Lcom/lp/ble/manager/ConnectBLEInfo;->password:Ljava/lang/String;

    :goto_4
    invoke-virtual {v11, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-boolean v0, p0, Lcom/lp/ble/manager/LPBLEManager;->mNeedHexStr:Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v8, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEInfo:Lcom/lp/ble/manager/ConnectBLEInfo;

    if-eqz v0, :cond_2

    :try_start_5
    iget-object v0, v8, Lcom/lp/ble/manager/ConnectBLEInfo;->password:Ljava/lang/String;

    invoke-static {v0}, Lcom/lp/ble/utils/HexUtil;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_2
    iget-object v0, v8, Lcom/lp/ble/manager/ConnectBLEInfo;->password:Ljava/lang/String;

    :goto_5
    invoke-virtual {v11, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEInfo:Lcom/lp/ble/manager/ConnectBLEInfo;

    iget-object v0, v0, Lcom/lp/ble/manager/ConnectBLEInfo;->auth:Ljava/lang/String;

    goto :goto_6

    :cond_3
    invoke-virtual {p1}, Lcom/lp/ble/manager/ApItem;->getAuth()Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {v11, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEInfo:Lcom/lp/ble/manager/ConnectBLEInfo;

    iget-object p1, p1, Lcom/lp/ble/manager/ConnectBLEInfo;->encry:Ljava/lang/String;

    goto :goto_7

    :cond_4
    invoke-virtual {p1}, Lcom/lp/ble/manager/ApItem;->getEncry()Ljava/lang/String;

    move-result-object p1

    :goto_7
    invoke-virtual {v11, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEInfo:Lcom/lp/ble/manager/ConnectBLEInfo;

    invoke-virtual {p1}, Lcom/lp/ble/manager/ConnectBLEInfo;->getIdentity()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/lp/ble/utils/HexUtil;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v11, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEInfo:Lcom/lp/ble/manager/ConnectBLEInfo;

    invoke-virtual {p0}, Lcom/lp/ble/manager/ConnectBLEInfo;->getAppIP()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v11, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v11, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {v9}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_8
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_a

    :catchall_2
    move-exception p0

    goto :goto_b

    :catch_2
    move-exception p0

    :goto_9
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-static {v9}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    :goto_a
    return-object p0

    :goto_b
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    throw p0

    :goto_c
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    throw p0

    :cond_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-nez p1, :cond_6

    :try_start_7
    iget-object v10, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEInfo:Lcom/lp/ble/manager/ConnectBLEInfo;

    iget-object v10, v10, Lcom/lp/ble/manager/ConnectBLEInfo;->ssid:Ljava/lang/String;

    goto :goto_d

    :catch_3
    move-exception p0

    goto :goto_12

    :cond_6
    invoke-virtual {p1}, Lcom/lp/ble/manager/ApItem;->getSsid()Ljava/lang/String;

    move-result-object v10

    :goto_d
    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-boolean v9, p0, Lcom/lp/ble/manager/LPBLEManager;->mNeedHexStr:Z
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_3

    iget-object v10, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEInfo:Lcom/lp/ble/manager/ConnectBLEInfo;

    if-eqz v9, :cond_7

    :try_start_8
    iget-object v9, v10, Lcom/lp/ble/manager/ConnectBLEInfo;->password:Ljava/lang/String;

    invoke-static {v9}, Lcom/lp/ble/utils/HexUtil;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_e

    :cond_7
    iget-object v9, v10, Lcom/lp/ble/manager/ConnectBLEInfo;->password:Ljava/lang/String;

    :goto_e
    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-boolean v8, p0, Lcom/lp/ble/manager/LPBLEManager;->mNeedHexStr:Z
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_3

    iget-object v9, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEInfo:Lcom/lp/ble/manager/ConnectBLEInfo;

    if-eqz v8, :cond_8

    :try_start_9
    iget-object v8, v9, Lcom/lp/ble/manager/ConnectBLEInfo;->password:Ljava/lang/String;

    invoke-static {v8}, Lcom/lp/ble/utils/HexUtil;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_f

    :cond_8
    iget-object v8, v9, Lcom/lp/ble/manager/ConnectBLEInfo;->password:Ljava/lang/String;

    :goto_f
    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-nez p1, :cond_9

    iget-object v7, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEInfo:Lcom/lp/ble/manager/ConnectBLEInfo;

    iget-object v7, v7, Lcom/lp/ble/manager/ConnectBLEInfo;->auth:Ljava/lang/String;

    goto :goto_10

    :cond_9
    invoke-virtual {p1}, Lcom/lp/ble/manager/ApItem;->getAuth()Ljava/lang/String;

    move-result-object v7

    :goto_10
    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEInfo:Lcom/lp/ble/manager/ConnectBLEInfo;

    iget-object p1, p1, Lcom/lp/ble/manager/ConnectBLEInfo;->encry:Ljava/lang/String;

    goto :goto_11

    :cond_a
    invoke-virtual {p1}, Lcom/lp/ble/manager/ApItem;->getEncry()Ljava/lang/String;

    move-result-object p1

    :goto_11
    invoke-virtual {v0, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEInfo:Lcom/lp/ble/manager/ConnectBLEInfo;

    invoke-virtual {p1}, Lcom/lp/ble/manager/ConnectBLEInfo;->getIdentity()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/lp/ble/utils/HexUtil;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEInfo:Lcom/lp/ble/manager/ConnectBLEInfo;

    invoke-virtual {p0}, Lcom/lp/ble/manager/ConnectBLEInfo;->getAppIP()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_13

    :goto_12
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_13
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCurrApItem(Ljava/util/List;Ljava/lang/String;)Lcom/lp/ble/manager/ApItem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lp/ble/manager/ApItem;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/lp/ble/manager/ApItem;"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lp/ble/manager/ApItem;

    invoke-virtual {v1}, Lcom/lp/ble/manager/ApItem;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/lp/ble/manager/ApItem;->getDisplaySSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/lp/ble/manager/ApItem;->getDisplaySSID()Ljava/lang/String;

    sget-object p0, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    return-object v1

    :cond_3
    :goto_2
    return-object p0
.end method

.method public static getInstance()Lcom/lp/ble/manager/LPBLEManager;
    .locals 2

    sget-object v0, Lcom/lp/ble/manager/LPBLEManager;->instance:Lcom/lp/ble/manager/LPBLEManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/lp/ble/manager/LPBLEManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/lp/ble/manager/LPBLEManager;->instance:Lcom/lp/ble/manager/LPBLEManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/lp/ble/manager/LPBLEManager;

    invoke-direct {v1}, Lcom/lp/ble/manager/LPBLEManager;-><init>()V

    sput-object v1, Lcom/lp/ble/manager/LPBLEManager;->instance:Lcom/lp/ble/manager/LPBLEManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/lp/ble/manager/LPBLEManager;->instance:Lcom/lp/ble/manager/LPBLEManager;

    return-object v0
.end method

.method private getWLANApInfo(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/lp/ble/manager/ApItem;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_4

    :cond_0
    :try_start_0
    const-class v0, Lcom/lp/ble/manager/ApInfo;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-object p1, v1

    :goto_0
    check-cast p1, Lcom/lp/ble/manager/ApInfo;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/lp/ble/manager/ApInfo;->getAplist()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_4

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lp/ble/manager/ApItem;

    if-eqz v2, :cond_3

    iget-boolean v3, p0, Lcom/lp/ble/manager/LPBLEManager;->isiEastSpecial:Z

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/lp/ble/manager/ApItem;->getSsid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lp/ble/utils/HexUtil;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lp/ble/manager/ApItem;->setSsid(Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_2
    invoke-virtual {v2}, Lcom/lp/ble/manager/ApItem;->getSsid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lp/ble/utils/HexUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lp/ble/manager/ApItem;->setDisplaySSID(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-object p1

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_4
    return-object v1
.end method

.method public static bridge synthetic h(Lcom/lp/ble/manager/LPBLEManager;Lcom/lp/ble/manager/ApItem;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/lp/ble/manager/LPBLEManager;->getCommandInfo(Lcom/lp/ble/manager/ApItem;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/lp/ble/manager/LPBLEManager;Ljava/util/List;Ljava/lang/String;)Lcom/lp/ble/manager/ApItem;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lp/ble/manager/LPBLEManager;->getCurrApItem(Ljava/util/List;Ljava/lang/String;)Lcom/lp/ble/manager/ApItem;

    move-result-object p0

    return-object p0
.end method

.method private isBLEVersionMore102()Z
    .locals 1

    const-string v0, "1.0.2"

    invoke-direct {p0, v0}, Lcom/lp/ble/manager/LPBLEManager;->isDevBLEVersionMoreThanInput(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isCommonInfoContainsKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method private isDevBLEVersionMoreThanInput(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/lp/ble/manager/LPBLEManager;->lpBluetoothDevice:Lcom/lp/ble/entity/LPBluetoothDevice;

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object v1, v1, Lcom/lp/ble/entity/LPBluetoothDevice;->l:Lcom/lp/ble/manager/LPBLEDeviceInfo;

    if-nez v1, :cond_2

    return v0

    :cond_2
    invoke-virtual {v1}, Lcom/lp/ble/manager/LPBLEDeviceInfo;->getCommonInfo()Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;

    move-result-object v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager;->lpBluetoothDevice:Lcom/lp/ble/entity/LPBluetoothDevice;

    iget-object p0, p0, Lcom/lp/ble/entity/LPBluetoothDevice;->l:Lcom/lp/ble/manager/LPBLEDeviceInfo;

    invoke-virtual {p0}, Lcom/lp/ble/manager/LPBLEDeviceInfo;->getCommonInfo()Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->getBleVersion()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v0

    :cond_4
    new-instance v1, Lcom/g00fy2/versioncompare/Version;

    invoke-direct {v1, p0}, Lcom/g00fy2/versioncompare/Version;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/g00fy2/versioncompare/Version;->isAtLeast(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method private isPasswordValid(Lcom/lp/ble/manager/ApItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEInfo:Lcom/lp/ble/manager/ConnectBLEInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/lp/ble/manager/ConnectBLEInfo;->password:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/lp/ble/manager/ApItem;->getAuth()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEInfo:Lcom/lp/ble/manager/ConnectBLEInfo;

    iget-object p0, p0, Lcom/lp/ble/manager/ConnectBLEInfo;->auth:Ljava/lang/String;

    :goto_0
    const-string p1, "OPEN"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "WPA3OWE"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_1
    return v1
.end method

.method public static bridge synthetic j(Lcom/lp/ble/manager/LPBLEManager;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/lp/ble/manager/LPBLEManager;->getWLANApInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/lp/ble/manager/LPBLEManager;Lcom/lp/ble/manager/ApItem;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/lp/ble/manager/LPBLEManager;->isPasswordValid(Lcom/lp/ble/manager/ApItem;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic l(Lcom/lp/ble/manager/LPBLEManager;Ljava/lang/String;)Lcom/lp/ble/manager/LPBLEDeviceInfo;
    .locals 0

    invoke-direct {p0, p1}, Lcom/lp/ble/manager/LPBLEManager;->parseCommonInfoGson(Ljava/lang/String;)Lcom/lp/ble/manager/LPBLEDeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Lcom/lp/ble/manager/LPBLEManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lp/ble/manager/LPBLEManager;->parseDeviceInfo(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic n(Lcom/lp/ble/manager/LPBLEManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/lp/ble/manager/LPBLEManager;->scan()V

    return-void
.end method

.method public static bridge synthetic o(Lcom/lp/ble/manager/LPBLEManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lp/ble/manager/LPBLEManager;->sendPWD(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic p(Lcom/lp/ble/manager/LPBLEManager;Ljava/lang/String;Lcom/lp/ble/manager/LPConnectWiFiListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lp/ble/manager/LPBLEManager;->setupResultOld(Ljava/lang/String;Lcom/lp/ble/manager/LPConnectWiFiListener;)V

    return-void
.end method

.method private parseCommonInfoGson(Ljava/lang/String;)Lcom/lp/ble/manager/LPBLEDeviceInfo;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    const-class v0, Lcom/lp/ble/manager/LPBLEDeviceInfo;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-object v0, v1

    :goto_0
    check-cast v0, Lcom/lp/ble/manager/LPBLEDeviceInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/lp/ble/manager/LPBLEDeviceInfo;->getCommonInfo()Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "first_oobe"

    invoke-direct {p0, p1, v2}, Lcom/lp/ble/manager/LPBLEManager;->isCommonInfoContainsKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Lcom/lp/ble/manager/LPBLEDeviceInfo;->getCommonInfo()Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/lp/ble/manager/LPBLEDeviceInfo$CommonInfo;->setFirst_oobe(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    return-object v0

    :catch_1
    :goto_1
    return-object v1
.end method

.method private parseDeviceInfo(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lp/ble/manager/LPBLEManager;->isiEastSpecial:Z

    const-string v1, "commonInfo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, "protocolVersion"

    if-nez v2, :cond_0

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "{\"commonInfo\":"

    const-string v5, "}"

    invoke-static {v2, p1, v5}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-boolean v3, p0, Lcom/lp/ble/manager/LPBLEManager;->isiEastSpecial:Z

    :cond_0
    iput-boolean v0, p0, Lcom/lp/ble/manager/LPBLEManager;->mNeedHexStr:Z

    :try_start_0
    invoke-direct {p0, p1}, Lcom/lp/ble/manager/LPBLEManager;->parseCommonInfoGson(Ljava/lang/String;)Lcom/lp/ble/manager/LPBLEDeviceInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v5, p0, Lcom/lp/ble/manager/LPBLEManager;->lpBluetoothDevice:Lcom/lp/ble/entity/LPBluetoothDevice;

    if-eqz v5, :cond_1

    iput-object v2, v5, Lcom/lp/ble/entity/LPBluetoothDevice;->l:Lcom/lp/ble/manager/LPBLEDeviceInfo;

    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, ""

    if-eqz p1, :cond_2

    :try_start_1
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v5

    :goto_0
    sget-object v1, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    const-string v1, "\\."

    invoke-virtual {p1, v1, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v1, 0x66

    if-le p1, v1, :cond_3

    move v0, v3

    :cond_3
    iput-boolean v0, p0, Lcom/lp/ble/manager/LPBLEManager;->mNeedHexStr:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    sget-object p0, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    return-void
.end method

.method private privateGetWLANList(Lcom/lp/ble/manager/LPBLEAPListListener;)V
    .locals 3

    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEConnector:Lcom/lp/ble/BLEConnector;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/lp/ble/manager/LPBLEManager$6;

    const/16 v2, 0x1007

    invoke-direct {v1, p0, p1, v2}, Lcom/lp/ble/manager/LPBLEManager$6;-><init>(Lcom/lp/ble/manager/LPBLEManager;Lcom/lp/ble/manager/LPBLEAPListListener;I)V

    const-string p1, "4103"

    invoke-virtual {v0, p1, v1}, Lcom/lp/ble/BLEConnector;->l(Ljava/lang/String;Lcom/lp/ble/BLECharacteristicChangedListener;)V

    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEConnector:Lcom/lp/ble/BLEConnector;

    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager;->lpBluetoothDevice:Lcom/lp/ble/entity/LPBluetoothDevice;

    iget v0, v0, Lcom/lp/ble/entity/LPBluetoothDevice;->d:I

    new-instance v1, Lcom/lp/ble/manager/LPBLEManager$7;

    invoke-direct {v1, p0}, Lcom/lp/ble/manager/LPBLEManager$7;-><init>(Lcom/lp/ble/manager/LPBLEManager;)V

    const-string p0, ""

    invoke-virtual {p1, v0, v2, p0, v1}, Lcom/lp/ble/BLEConnector;->n(IILjava/lang/String;Lcom/clj/fastble/callback/BleWriteCallback;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "mBLEConnector is null"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/lp/ble/manager/LPBLEAPListListener;->onFailed(Ljava/lang/Exception;)V

    return-void
.end method

.method private scan()V
    .locals 3

    sget-object v0, Lcom/lp/ble/BLEScanner;->f:Lcom/lp/ble/BLEScanner;

    sget-object v0, Lcom/lp/ble/BLEManager;->c:Lcom/lp/ble/BLEManager;

    iget-object v1, v0, Lcom/lp/ble/BLEManager;->a:Landroid/app/Application;

    const-string v2, "not call LPBLEManager.getInstance().init()"

    if-eqz v1, :cond_1

    sget-object v1, Lcom/lp/ble/BLEScanner;->f:Lcom/lp/ble/BLEScanner;

    invoke-virtual {v1}, Lcom/lp/ble/BLEScanner;->c()V

    iget-object v0, v0, Lcom/lp/ble/BLEManager;->a:Landroid/app/Application;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/lp/ble/manager/LPBLEManager$2;

    invoke-direct {v0, p0}, Lcom/lp/ble/manager/LPBLEManager$2;-><init>(Lcom/lp/ble/manager/LPBLEManager;)V

    invoke-virtual {v1, v0}, Lcom/lp/ble/BLEScanner;->b(Lcom/lp/ble/BLEScanListener;)V

    return-void

    :cond_0
    invoke-static {v2}, Lv7;->h(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {v2}, Lv7;->h(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized sendPWD(Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEConnector:Lcom/lp/ble/BLEConnector;

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager;->listener:Lcom/lp/ble/manager/LPConnectWiFiListener;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "BLEConnector is null."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/lp/ble/manager/LPConnectWiFiListener;->LPConnectFailed(Ljava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/lp/ble/manager/LPBLEManager;->isBLEVersionMore102()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lp/ble/manager/LPBLEManager;->failedCallback:Z

    const-string v1, "######"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_2

    array-length v3, v1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    aget-object v0, v1, v0

    const/4 v2, 0x1

    aget-object v1, v1, v2

    move-object v5, v1

    move-object v1, v0

    move v0, v2

    move-object v2, v5

    goto :goto_1

    :cond_2
    move-object v1, p1

    :goto_1
    if-eqz v0, :cond_3

    sget-object p1, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEConnector:Lcom/lp/ble/BLEConnector;

    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager;->lpBluetoothDevice:Lcom/lp/ble/entity/LPBluetoothDevice;

    iget v0, v0, Lcom/lp/ble/entity/LPBluetoothDevice;->d:I

    new-instance v3, Lcom/lp/ble/manager/LPBLEManager$9;

    invoke-direct {v3, p0, v2}, Lcom/lp/ble/manager/LPBLEManager$9;-><init>(Lcom/lp/ble/manager/LPBLEManager;Ljava/lang/String;)V

    const/16 v2, 0x1012

    invoke-virtual {p1, v0, v2, v1, v3}, Lcom/lp/ble/BLEConnector;->n(IILjava/lang/String;Lcom/clj/fastble/callback/BleWriteCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_2
    sget-object v0, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEConnector:Lcom/lp/ble/BLEConnector;

    iget-object v1, p0, Lcom/lp/ble/manager/LPBLEManager;->lpBluetoothDevice:Lcom/lp/ble/entity/LPBluetoothDevice;

    iget v1, v1, Lcom/lp/ble/entity/LPBluetoothDevice;->d:I

    new-instance v2, Lcom/lp/ble/manager/LPBLEManager$10;

    invoke-direct {v2, p0}, Lcom/lp/ble/manager/LPBLEManager$10;-><init>(Lcom/lp/ble/manager/LPBLEManager;)V

    const/16 v3, 0x1002

    invoke-virtual {v0, v1, v3, p1, v2}, Lcom/lp/ble/BLEConnector;->n(IILjava/lang/String;Lcom/clj/fastble/callback/BleWriteCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private setupResultOld(Ljava/lang/String;Lcom/lp/ble/manager/LPConnectWiFiListener;)V
    .locals 4

    const-string p0, "IP:"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ":UUID:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, p0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "IP"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "UUID"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "code"

    const-string p1, "0"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_AP_SUCCESS:Lcom/lp/ble/manager/BLEConnectApResult;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lcom/lp/ble/manager/LPConnectWiFiListener;->LPConnectResult(Lcom/lp/ble/manager/BLEConnectApResult;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "LP0.1:NETRES:ERR:CODE:"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "ble link error"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lcom/lp/ble/manager/LPConnectWiFiListener;->LPConnectFailed(Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    sget-object p0, Lcom/lp/ble/BLEManager;->c:Lcom/lp/ble/BLEManager;

    iget-object p0, p0, Lcom/lp/ble/BLEManager;->b:Lcom/lp/ble/statistic/StatisticCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/lp/ble/statistic/StatisticCallback;->a()V

    :cond_0
    return-void
.end method

.method public connectBLE(Lcom/lp/ble/entity/LPBluetoothDevice;Lcom/lp/ble/manager/LPConnectBLEListener;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lp/ble/manager/LPBLEManager;->mNeedHexStr:Z

    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEConnector:Lcom/lp/ble/BLEConnector;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lp/ble/BLEConnector;

    invoke-direct {v0, p1}, Lcom/lp/ble/BLEConnector;-><init>(Lcom/lp/ble/entity/LPBluetoothDevice;)V

    iput-object v0, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEConnector:Lcom/lp/ble/BLEConnector;

    :cond_0
    iput-object p1, p0, Lcom/lp/ble/manager/LPBLEManager;->lpBluetoothDevice:Lcom/lp/ble/entity/LPBluetoothDevice;

    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEConnector:Lcom/lp/ble/BLEConnector;

    new-instance v1, Lcom/lp/ble/manager/LPBLEManager$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/lp/ble/manager/LPBLEManager$5;-><init>(Lcom/lp/ble/manager/LPBLEManager;Lcom/lp/ble/manager/LPConnectBLEListener;Lcom/lp/ble/entity/LPBluetoothDevice;)V

    invoke-virtual {v0, v1}, Lcom/lp/ble/BLEConnector;->e(Lcom/lp/ble/BLEGattListener;)V

    return-void
.end method

.method public connectWLAN(Lcom/lp/ble/manager/ConnectBLEInfo;Lcom/lp/ble/manager/LPConnectWiFiListener;)V
    .locals 6

    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEInfo:Lcom/lp/ble/manager/ConnectBLEInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lp/ble/manager/ConnectBLEInfo;

    invoke-direct {v0}, Lcom/lp/ble/manager/ConnectBLEInfo;-><init>()V

    iput-object v0, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEInfo:Lcom/lp/ble/manager/ConnectBLEInfo;

    :cond_0
    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEInfo:Lcom/lp/ble/manager/ConnectBLEInfo;

    iget-object v1, p1, Lcom/lp/ble/manager/ConnectBLEInfo;->appIP:Ljava/lang/String;

    iput-object v1, v0, Lcom/lp/ble/manager/ConnectBLEInfo;->appIP:Ljava/lang/String;

    iget-object v1, p1, Lcom/lp/ble/manager/ConnectBLEInfo;->ssid:Ljava/lang/String;

    iput-object v1, v0, Lcom/lp/ble/manager/ConnectBLEInfo;->ssid:Ljava/lang/String;

    iget-object v1, p1, Lcom/lp/ble/manager/ConnectBLEInfo;->password:Ljava/lang/String;

    iput-object v1, v0, Lcom/lp/ble/manager/ConnectBLEInfo;->password:Ljava/lang/String;

    iget-object v1, p1, Lcom/lp/ble/manager/ConnectBLEInfo;->auth:Ljava/lang/String;

    iput-object v1, v0, Lcom/lp/ble/manager/ConnectBLEInfo;->auth:Ljava/lang/String;

    iget-object v1, p1, Lcom/lp/ble/manager/ConnectBLEInfo;->encry:Ljava/lang/String;

    iput-object v1, v0, Lcom/lp/ble/manager/ConnectBLEInfo;->encry:Ljava/lang/String;

    iget-boolean v1, p1, Lcom/lp/ble/manager/ConnectBLEInfo;->bOtherNetwork:Z

    iput-boolean v1, v0, Lcom/lp/ble/manager/ConnectBLEInfo;->bOtherNetwork:Z

    iget-object v1, p1, Lcom/lp/ble/manager/ConnectBLEInfo;->identity:Ljava/lang/String;

    iput-object v1, v0, Lcom/lp/ble/manager/ConnectBLEInfo;->identity:Ljava/lang/String;

    iget-object v0, p1, Lcom/lp/ble/manager/ConnectBLEInfo;->sessionId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEInfo:Lcom/lp/ble/manager/ConnectBLEInfo;

    iput-object p1, v0, Lcom/lp/ble/manager/ConnectBLEInfo;->sessionId:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEInfo:Lcom/lp/ble/manager/ConnectBLEInfo;

    iget-object p1, p1, Lcom/lp/ble/manager/ConnectBLEInfo;->sessionId:Ljava/lang/String;

    iput-object p1, v0, Lcom/lp/ble/manager/ConnectBLEInfo;->sessionId:Ljava/lang/String;

    :goto_0
    iput-object p2, p0, Lcom/lp/ble/manager/LPBLEManager;->listener:Lcom/lp/ble/manager/LPConnectWiFiListener;

    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEConnector:Lcom/lp/ble/BLEConnector;

    if-nez p1, :cond_2

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "mBLEConnector is null"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lcom/lp/ble/manager/LPConnectWiFiListener;->LPConnectFailed(Ljava/lang/Exception;)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/lp/ble/manager/LPBLEManager;->MultiCmdId:I

    invoke-static {v2, v1, v0}, La;->i(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/lp/ble/manager/LPBLEManager;->characteristicChangedListener:Lcom/lp/ble/BLECharacteristicChangedListener;

    invoke-virtual {p1, v0, v2}, Lcom/lp/ble/BLEConnector;->m(Ljava/lang/String;Lcom/lp/ble/BLECharacteristicChangedListener;)V

    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEConnector:Lcom/lp/ble/BLEConnector;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/lp/ble/manager/LPBLEManager;->MultiCmdId:I

    invoke-static {v2, v1, v0}, La;->i(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/lp/ble/manager/LPBLEManager;->characteristicChangedListener:Lcom/lp/ble/BLECharacteristicChangedListener;

    invoke-virtual {p1, v0, v2}, Lcom/lp/ble/BLEConnector;->l(Ljava/lang/String;Lcom/lp/ble/BLECharacteristicChangedListener;)V

    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager;->lpBluetoothDevice:Lcom/lp/ble/entity/LPBluetoothDevice;

    invoke-virtual {p1}, Lcom/lp/ble/entity/LPBluetoothDevice;->a()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager;->lpBluetoothDevice:Lcom/lp/ble/entity/LPBluetoothDevice;

    iget-object p1, p1, Lcom/lp/ble/entity/LPBluetoothDevice;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    sget-object p1, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEConnector:Lcom/lp/ble/BLEConnector;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager;->lpBluetoothDevice:Lcom/lp/ble/entity/LPBluetoothDevice;

    iget-object p2, p1, Lcom/lp/ble/entity/LPBluetoothDevice;->c:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v2, "\n"

    if-nez p2, :cond_3

    iget-object p1, p1, Lcom/lp/ble/entity/LPBluetoothDevice;->c:Ljava/lang/String;

    const-string p2, "1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEConnector:Lcom/lp/ble/BLEConnector;

    iget-object p2, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEInfo:Lcom/lp/ble/manager/ConnectBLEInfo;

    iget-object v3, p2, Lcom/lp/ble/manager/ConnectBLEInfo;->sessionId:Ljava/lang/String;

    iget-object p2, p2, Lcom/lp/ble/manager/ConnectBLEInfo;->ssid:Ljava/lang/String;

    const-string v4, "LP0.1:NNETS:SSID:"

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {p2}, Lcom/lp/ble/utils/HexUtil;->b([B)Ljava/lang/String;

    move-result-object p2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":SESSIONID:"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    new-instance p2, Lcom/lp/ble/manager/LPBLEManager$11;

    invoke-direct {p2, p0}, Lcom/lp/ble/manager/LPBLEManager$11;-><init>(Lcom/lp/ble/manager/LPBLEManager;)V

    invoke-virtual {p1, p2, v0}, Lcom/lp/ble/BLEConnector;->o(Lcom/clj/fastble/callback/BleWriteCallback;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_3
    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEConnector:Lcom/lp/ble/BLEConnector;

    iget-object p2, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEInfo:Lcom/lp/ble/manager/ConnectBLEInfo;

    iget-object v3, p2, Lcom/lp/ble/manager/ConnectBLEInfo;->ssid:Ljava/lang/String;

    iget-object p2, p2, Lcom/lp/ble/manager/ConnectBLEInfo;->password:Ljava/lang/String;

    const-string v4, "LP0.1:NET:SSID:"

    :try_start_1
    sget-object v5, Lcom/lp/ble/utils/AesCBC;->a:Lcom/lp/ble/utils/AesCBC;

    if-nez v5, :cond_4

    new-instance v5, Lcom/lp/ble/utils/AesCBC;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    sput-object v5, Lcom/lp/ble/utils/AesCBC;->a:Lcom/lp/ble/utils/AesCBC;

    :cond_4
    const-string v5, "~linkplayble@#=="

    invoke-static {p2, v5}, Lcom/lp/ble/utils/AesCBC;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/lp/ble/utils/HexUtil;->b([B)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":PASS:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    new-instance p2, Lcom/lp/ble/manager/LPBLEManager$12;

    invoke-direct {p2, p0}, Lcom/lp/ble/manager/LPBLEManager$12;-><init>(Lcom/lp/ble/manager/LPBLEManager;)V

    invoke-virtual {p1, p2, v0}, Lcom/lp/ble/BLEConnector;->o(Lcom/clj/fastble/callback/BleWriteCallback;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    sget-object p1, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEConnector:Lcom/lp/ble/BLEConnector;

    if-eqz p1, :cond_7

    iget-object v2, p1, Lcom/lp/ble/BLEConnector;->a:Lcom/lp/ble/entity/LPBluetoothDevice;

    iget-boolean v2, v2, Lcom/lp/ble/entity/LPBluetoothDevice;->a:Z

    if-eqz v2, :cond_7

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/lp/ble/manager/LPBLEManager;->mNeedHexStr:Z

    invoke-direct {p0, v0}, Lcom/lp/ble/manager/LPBLEManager;->isPasswordValid(Lcom/lp/ble/manager/ApItem;)Z

    move-result p1

    if-nez p1, :cond_6

    if-eqz p2, :cond_8

    sget-object p0, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_NEED_PASSWORD_ERROR:Lcom/lp/ble/manager/BLEConnectApResult;

    const-string p1, "need password"

    invoke-interface {p2, p0, p1}, Lcom/lp/ble/manager/LPConnectWiFiListener;->LPConnectResult(Lcom/lp/ble/manager/BLEConnectApResult;Ljava/lang/String;)V

    return-void

    :cond_6
    invoke-direct {p0, v0}, Lcom/lp/ble/manager/LPBLEManager;->getCommandInfo(Lcom/lp/ble/manager/ApItem;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/lp/ble/manager/LPBLEManager;->sendPWD(Ljava/lang/String;)V

    return-void

    :cond_7
    if-eqz p1, :cond_8

    iget-object p2, p0, Lcom/lp/ble/manager/LPBLEManager;->lpBluetoothDevice:Lcom/lp/ble/entity/LPBluetoothDevice;

    iget p2, p2, Lcom/lp/ble/entity/LPBluetoothDevice;->d:I

    new-instance v0, Lcom/lp/ble/manager/LPBLEManager$13;

    invoke-direct {v0, p0}, Lcom/lp/ble/manager/LPBLEManager$13;-><init>(Lcom/lp/ble/manager/LPBLEManager;)V

    const/16 p0, 0x1001

    invoke-virtual {p1, p2, p0, v1, v0}, Lcom/lp/ble/BLEConnector;->n(IILjava/lang/String;Lcom/clj/fastble/callback/BleWriteCallback;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public connectWLAN(Ljava/lang/String;Ljava/lang/String;Lcom/lp/ble/manager/LPConnectWiFiListener;)V
    .locals 6

    .line 376
    const-string v3, ""

    const-string v4, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/lp/ble/manager/LPBLEManager;->connectWLAN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lp/ble/manager/LPConnectWiFiListener;)V

    return-void
.end method

.method public connectWLAN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lp/ble/manager/LPConnectWiFiListener;)V
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEConnector:Lcom/lp/ble/BLEConnector;

    if-nez v0, :cond_1

    if-eqz p5, :cond_0

    .line 363
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "ble connector is null"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p5, p0}, Lcom/lp/ble/manager/LPConnectWiFiListener;->LPConnectFailed(Ljava/lang/Exception;)V

    :cond_0
    return-void

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEInfo:Lcom/lp/ble/manager/ConnectBLEInfo;

    if-nez v0, :cond_2

    .line 365
    new-instance v0, Lcom/lp/ble/manager/ConnectBLEInfo;

    invoke-direct {v0}, Lcom/lp/ble/manager/ConnectBLEInfo;-><init>()V

    iput-object v0, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEInfo:Lcom/lp/ble/manager/ConnectBLEInfo;

    .line 366
    :cond_2
    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEInfo:Lcom/lp/ble/manager/ConnectBLEInfo;

    const-string v1, ""

    iput-object v1, v0, Lcom/lp/ble/manager/ConnectBLEInfo;->appIP:Ljava/lang/String;

    .line 367
    iput-object p1, v0, Lcom/lp/ble/manager/ConnectBLEInfo;->ssid:Ljava/lang/String;

    .line 368
    iput-object p2, v0, Lcom/lp/ble/manager/ConnectBLEInfo;->password:Ljava/lang/String;

    .line 369
    iput-object p3, v0, Lcom/lp/ble/manager/ConnectBLEInfo;->auth:Ljava/lang/String;

    .line 370
    iput-object p4, v0, Lcom/lp/ble/manager/ConnectBLEInfo;->encry:Ljava/lang/String;

    const/4 p1, 0x0

    .line 371
    iput-boolean p1, v0, Lcom/lp/ble/manager/ConnectBLEInfo;->bOtherNetwork:Z

    .line 372
    iput-object v1, v0, Lcom/lp/ble/manager/ConnectBLEInfo;->identity:Ljava/lang/String;

    .line 373
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    const-wide/16 v0, 0x3e8

    div-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 374
    iget-object p2, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEInfo:Lcom/lp/ble/manager/ConnectBLEInfo;

    iput-object p1, p2, Lcom/lp/ble/manager/ConnectBLEInfo;->sessionId:Ljava/lang/String;

    .line 375
    invoke-virtual {p0, p2, p5}, Lcom/lp/ble/manager/LPBLEManager;->connectWLAN(Lcom/lp/ble/manager/ConnectBLEInfo;Lcom/lp/ble/manager/LPConnectWiFiListener;)V

    return-void
.end method

.method public disConnect()V
    .locals 5

    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEConnector:Lcom/lp/ble/BLEConnector;

    if-eqz v0, :cond_5

    iget-object v1, v0, Lcom/lp/ble/BLEConnector;->f:Lcom/lp/ble/RequestManger;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/lp/ble/RequestManger;->a:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->quit()Z

    iget-object v1, v1, Lcom/lp/ble/RequestManger;->b:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, v0, Lcom/lp/ble/BLEConnector;->b:Landroid/os/Handler;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    iget-object v1, v0, Lcom/lp/ble/BLEConnector;->c:Landroid/os/Handler;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    iput-object v2, v0, Lcom/lp/ble/BLEConnector;->i:Lcom/lp/ble/BLEGattListener;

    iget-object v1, v0, Lcom/lp/ble/BLEConnector;->e:Lcom/clj/fastble/data/BleDevice;

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Lcom/lp/ble/BLEConnector;->f(Lcom/clj/fastble/data/BleDevice;)V

    invoke-static {}, Lcom/lp/ble/BLEManager;->c()V

    sget-object v1, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    invoke-static {}, Lcom/clj/fastble/BleManager;->c()Lcom/clj/fastble/BleManager;

    move-result-object v1

    iget-object v3, v0, Lcom/lp/ble/BLEConnector;->e:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v1, v3}, Lcom/clj/fastble/BleManager;->b(Lcom/clj/fastble/data/BleDevice;)V

    iput-object v2, v0, Lcom/lp/ble/BLEConnector;->e:Lcom/clj/fastble/data/BleDevice;

    :cond_3
    iget-object v1, v0, Lcom/lp/ble/BLEConnector;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/lp/ble/BLEConnector;->k:Z

    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager;->characteristicChangedListener:Lcom/lp/ble/BLECharacteristicChangedListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEConnector:Lcom/lp/ble/BLEConnector;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/lp/ble/manager/LPBLEManager;->MultiCmdId:I

    const-string v4, ""

    invoke-static {v3, v4, v1}, La;->i(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/lp/ble/manager/LPBLEManager;->characteristicChangedListener:Lcom/lp/ble/BLECharacteristicChangedListener;

    invoke-virtual {v0, v1, v3}, Lcom/lp/ble/BLEConnector;->m(Ljava/lang/String;Lcom/lp/ble/BLECharacteristicChangedListener;)V

    :cond_4
    iput-object v2, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEConnector:Lcom/lp/ble/BLEConnector;

    :cond_5
    return-void
.end method

.method public disConnectAll()V
    .locals 5

    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEConnector:Lcom/lp/ble/BLEConnector;

    if-eqz v0, :cond_7

    iget-object v1, v0, Lcom/lp/ble/BLEConnector;->f:Lcom/lp/ble/RequestManger;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/lp/ble/RequestManger;->a:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->quit()Z

    iget-object v1, v1, Lcom/lp/ble/RequestManger;->b:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, v0, Lcom/lp/ble/BLEConnector;->b:Landroid/os/Handler;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    iget-object v1, v0, Lcom/lp/ble/BLEConnector;->c:Landroid/os/Handler;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    iput-object v2, v0, Lcom/lp/ble/BLEConnector;->i:Lcom/lp/ble/BLEGattListener;

    iget-object v1, v0, Lcom/lp/ble/BLEConnector;->e:Lcom/clj/fastble/data/BleDevice;

    if-eqz v1, :cond_5

    invoke-virtual {v0, v1}, Lcom/lp/ble/BLEConnector;->f(Lcom/clj/fastble/data/BleDevice;)V

    invoke-static {}, Lcom/lp/ble/BLEManager;->c()V

    sget-object v1, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    invoke-static {}, Lcom/clj/fastble/BleManager;->c()Lcom/clj/fastble/BleManager;

    move-result-object v1

    iget-object v3, v0, Lcom/lp/ble/BLEConnector;->e:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v1, v3}, Lcom/clj/fastble/BleManager;->b(Lcom/clj/fastble/data/BleDevice;)V

    invoke-static {}, Lcom/clj/fastble/BleManager;->c()Lcom/clj/fastble/BleManager;

    move-result-object v1

    iget-object v1, v1, Lcom/clj/fastble/BleManager;->d:Lcom/clj/fastble/bluetooth/MultipleBluetoothController;

    if-eqz v1, :cond_4

    monitor-enter v1

    :try_start_0
    iget-object v3, v1, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->a:Lcom/clj/fastble/utils/BleLruHashMap;

    invoke-virtual {v3}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-virtual {v4}, Lcom/clj/fastble/bluetooth/BleBluetooth;->c()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_3
    iget-object v3, v1, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->a:Lcom/clj/fastble/utils/BleLruHashMap;

    invoke-virtual {v3}, Ljava/util/AbstractMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    goto :goto_2

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_4
    :goto_2
    iput-object v2, v0, Lcom/lp/ble/BLEConnector;->e:Lcom/clj/fastble/data/BleDevice;

    :cond_5
    iget-object v1, v0, Lcom/lp/ble/BLEConnector;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/lp/ble/BLEConnector;->k:Z

    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager;->characteristicChangedListener:Lcom/lp/ble/BLECharacteristicChangedListener;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEConnector:Lcom/lp/ble/BLEConnector;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/lp/ble/manager/LPBLEManager;->MultiCmdId:I

    const-string v4, ""

    invoke-static {v3, v4, v1}, La;->i(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/lp/ble/manager/LPBLEManager;->characteristicChangedListener:Lcom/lp/ble/BLECharacteristicChangedListener;

    invoke-virtual {v0, v1, v3}, Lcom/lp/ble/BLEConnector;->m(Ljava/lang/String;Lcom/lp/ble/BLECharacteristicChangedListener;)V

    :cond_6
    iput-object v2, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEConnector:Lcom/lp/ble/BLEConnector;

    :cond_7
    return-void
.end method

.method public getSplitCharacter()Ljava/lang/String;
    .locals 0

    const-string p0, "######"

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager;->version:Ljava/lang/String;

    return-object p0
.end method

.method public getWLANList(Lcom/lp/ble/manager/LPBLEAPListListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lp/ble/manager/LPBLEManager;->privateGetWLANList(Lcom/lp/ble/manager/LPBLEAPListListener;)V

    return-void
.end method

.method public init(Landroid/app/Application;)V
    .locals 1

    new-instance v0, Lcom/lp/ble/manager/LPBLEConfig;

    invoke-direct {v0}, Lcom/lp/ble/manager/LPBLEConfig;-><init>()V

    iput-object v0, p0, Lcom/lp/ble/manager/LPBLEManager;->lpbleConfig:Lcom/lp/ble/manager/LPBLEConfig;

    const/4 p0, 0x0

    iput-boolean p0, v0, Lcom/lp/ble/manager/LPBLEConfig;->bHexPasswordCommand:Z

    sget-object p0, Lcom/lp/ble/BLEManager;->c:Lcom/lp/ble/BLEManager;

    invoke-virtual {p0, p1}, Lcom/lp/ble/BLEManager;->b(Landroid/app/Application;)V

    return-void
.end method

.method public init(Landroid/app/Application;Lcom/lp/ble/manager/LPBLEConfig;)V
    .locals 0

    .line 16
    iput-object p2, p0, Lcom/lp/ble/manager/LPBLEManager;->lpbleConfig:Lcom/lp/ble/manager/LPBLEConfig;

    .line 17
    sget-object p0, Lcom/lp/ble/BLEManager;->c:Lcom/lp/ble/BLEManager;

    .line 18
    invoke-virtual {p0, p1}, Lcom/lp/ble/BLEManager;->b(Landroid/app/Application;)V

    return-void
.end method

.method public isBluetoothEnable()Z
    .locals 0

    sget-object p0, Lcom/lp/ble/BLEManager;->c:Lcom/lp/ble/BLEManager;

    invoke-virtual {p0}, Lcom/lp/ble/BLEManager;->a()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isConnect()Z
    .locals 0

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEConnector:Lcom/lp/ble/BLEConnector;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/lp/ble/BLEConnector;->h()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public sendCustomerCMD(ILjava/lang/String;Lcom/lp/ble/manager/LPBLEResultListener;)V
    .locals 3

    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEConnector:Lcom/lp/ble/BLEConnector;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-static {p1, v1}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lp/ble/manager/LPBLEManager$3;

    invoke-direct {v2, p0, p1, p3}, Lcom/lp/ble/manager/LPBLEManager$3;-><init>(Lcom/lp/ble/manager/LPBLEManager;ILcom/lp/ble/manager/LPBLEResultListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/lp/ble/BLEConnector;->l(Ljava/lang/String;Lcom/lp/ble/BLECharacteristicChangedListener;)V

    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager;->mBLEConnector:Lcom/lp/ble/BLEConnector;

    iget-object v1, p0, Lcom/lp/ble/manager/LPBLEManager;->lpBluetoothDevice:Lcom/lp/ble/entity/LPBluetoothDevice;

    iget v1, v1, Lcom/lp/ble/entity/LPBluetoothDevice;->d:I

    new-instance v2, Lcom/lp/ble/manager/LPBLEManager$4;

    invoke-direct {v2, p0, p1, p3}, Lcom/lp/ble/manager/LPBLEManager$4;-><init>(Lcom/lp/ble/manager/LPBLEManager;ILcom/lp/ble/manager/LPBLEResultListener;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/lp/ble/BLEConnector;->n(IILjava/lang/String;Lcom/clj/fastble/callback/BleWriteCallback;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "mBLEConnector is null"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p0}, Lcom/lp/ble/manager/LPBLEResultListener;->onFailed(Ljava/lang/Exception;)V

    return-void
.end method

.method public setOOBEDone(Lcom/lp/ble/manager/LPBLEResultListener;)V
    .locals 2

    const-string v0, "{\"oobe\": \"1\"}"

    const/16 v1, 0x100c

    invoke-virtual {p0, v1, v0, p1}, Lcom/lp/ble/manager/LPBLEManager;->sendCustomerCMD(ILjava/lang/String;Lcom/lp/ble/manager/LPBLEResultListener;)V

    return-void
.end method

.method public setStatisticCallback(Lcom/lp/ble/statistic/StatisticCallback;)V
    .locals 0

    sget-object p0, Lcom/lp/ble/BLEManager;->c:Lcom/lp/ble/BLEManager;

    iput-object p1, p0, Lcom/lp/ble/BLEManager;->b:Lcom/lp/ble/statistic/StatisticCallback;

    return-void
.end method

.method public startScan(Lcom/lp/ble/manager/LPBLEScanListener;)V
    .locals 2

    iput-object p1, p0, Lcom/lp/ble/manager/LPBLEManager;->scanListener:Lcom/lp/ble/manager/LPBLEScanListener;

    invoke-direct {p0}, Lcom/lp/ble/manager/LPBLEManager;->scan()V

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager;->handler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/4 p1, 0x4

    const-wide/32 v0, 0x3a980

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public stopScan()V
    .locals 1

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager;->handler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    sget-object p0, Lcom/lp/ble/BLEScanner;->f:Lcom/lp/ble/BLEScanner;

    sget-object p0, Lcom/lp/ble/BLEManager;->c:Lcom/lp/ble/BLEManager;

    iget-object p0, p0, Lcom/lp/ble/BLEManager;->a:Landroid/app/Application;

    if-eqz p0, :cond_1

    sget-object p0, Lcom/lp/ble/BLEScanner;->f:Lcom/lp/ble/BLEScanner;

    invoke-virtual {p0}, Lcom/lp/ble/BLEScanner;->c()V

    return-void

    :cond_1
    const-string p0, "not call LPBLEManager.getInstance().init()"

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    return-void
.end method
