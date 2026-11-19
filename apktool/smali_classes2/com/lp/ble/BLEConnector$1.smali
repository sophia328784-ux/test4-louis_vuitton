.class Lcom/lp/ble/BLEConnector$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lp/ble/BLEConnector;-><init>(Lcom/lp/ble/entity/LPBluetoothDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lp/ble/BLEConnector;

.field private final uuid_service:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lp/ble/BLEConnector;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/lp/ble/BLEConnector$1;->this$0:Lcom/lp/ble/BLEConnector;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string p1, "0000fea0-0000-1000-8000-00805f9b34fb"

    iput-object p1, p0, Lcom/lp/ble/BLEConnector$1;->uuid_service:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    const-string v0, ""

    iget-object v1, p0, Lcom/lp/ble/BLEConnector$1;->this$0:Lcom/lp/ble/BLEConnector;

    iget-object v3, v1, Lcom/lp/ble/BLEConnector;->e:Lcom/clj/fastble/data/BleDevice;

    if-nez v3, :cond_0

    goto/16 :goto_0

    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x9

    if-ne v2, v4, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/clj/fastble/BleManager;->c()Lcom/clj/fastble/BleManager;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    new-instance v7, Lcom/lp/ble/BLEConnector$1$1;

    invoke-direct {v7, p0, p1}, Lcom/lp/ble/BLEConnector$1$1;-><init>(Lcom/lp/ble/BLEConnector$1;Ljava/lang/String;)V

    const/4 v6, 0x1

    const-string v4, "0128fe40-002f-11e5-87d0-0002a5d5c51b"

    invoke-virtual/range {v2 .. v7}, Lcom/clj/fastble/BleManager;->e(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;[BZLcom/clj/fastble/callback/BleWriteCallback;)V

    return-void

    :cond_1
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v4, :cond_2

    invoke-static {}, Lcom/clj/fastble/BleManager;->c()Lcom/clj/fastble/BleManager;

    move-result-object v2

    move v6, v5

    new-array v5, v4, [B

    aput-byte v4, v5, v6

    new-instance v7, Lcom/lp/ble/BLEConnector$1$2;

    invoke-direct {v7, p0}, Lcom/lp/ble/BLEConnector$1$2;-><init>(Lcom/lp/ble/BLEConnector$1;)V

    const/4 v6, 0x1

    const-string v4, "0228fe40-002f-11e5-87d0-0002a5d5c51b"

    invoke-virtual/range {v2 .. v7}, Lcom/clj/fastble/BleManager;->e(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;[BZLcom/clj/fastble/callback/BleWriteCallback;)V

    return-void

    :cond_2
    move v6, v5

    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {}, Lcom/clj/fastble/BleManager;->c()Lcom/clj/fastble/BleManager;

    move-result-object v2

    int-to-byte v1, v0

    new-array v5, v4, [B

    aput-byte v1, v5, v6

    new-instance v7, Lcom/lp/ble/BLEConnector$1$3;

    invoke-direct {v7, v0, p0, p1}, Lcom/lp/ble/BLEConnector$1$3;-><init>(ILcom/lp/ble/BLEConnector$1;[B)V

    const/4 v6, 0x1

    const-string v4, "156c6160-fab2-11e4-9fbb-0002a5d5c51b"

    invoke-virtual/range {v2 .. v7}, Lcom/clj/fastble/BleManager;->e(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;[BZLcom/clj/fastble/callback/BleWriteCallback;)V

    return-void

    :cond_3
    const/4 v5, 0x3

    if-ne v2, v5, :cond_4

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {}, Lcom/clj/fastble/BleManager;->c()Lcom/clj/fastble/BleManager;

    move-result-object v1

    new-instance v2, Lcom/lp/ble/BLEConnector$1$4;

    invoke-direct {v2, v0, p0, p1}, Lcom/lp/ble/BLEConnector$1$4;-><init>(ILcom/lp/ble/BLEConnector$1;[B)V

    const-string p0, "157c6160-fab2-11e4-9fbb-0002a5d5c51b"

    invoke-virtual {v1, v3, p0, v2}, Lcom/clj/fastble/BleManager;->d(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Lcom/clj/fastble/callback/BleReadCallback;)V

    return-void

    :cond_4
    const/4 v5, 0x4

    if-ne v2, v5, :cond_5

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {}, Lcom/clj/fastble/BleManager;->c()Lcom/clj/fastble/BleManager;

    move-result-object v2

    int-to-byte v5, v0

    new-array v4, v4, [B

    aput-byte v5, v4, v6

    new-instance v7, Lcom/lp/ble/BLEConnector$1$5;

    invoke-direct {v7, v0, p1, p0, v1}, Lcom/lp/ble/BLEConnector$1$5;-><init>(ILandroid/os/Bundle;Lcom/lp/ble/BLEConnector$1;[B)V

    const/4 v6, 0x1

    move-object v5, v4

    const-string v4, "1a6c6160-fab2-11e4-9fbb-0002a5d5c51b"

    invoke-virtual/range {v2 .. v7}, Lcom/clj/fastble/BleManager;->e(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;[BZLcom/clj/fastble/callback/BleWriteCallback;)V

    return-void

    :cond_5
    const/4 v4, 0x5

    if-ne v2, v4, :cond_6

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {}, Lcom/clj/fastble/BleManager;->c()Lcom/clj/fastble/BleManager;

    move-result-object v2

    new-instance v4, Lcom/lp/ble/BLEConnector$1$6;

    invoke-direct {v4, v0, p1, p0, v1}, Lcom/lp/ble/BLEConnector$1$6;-><init>(ILandroid/os/Bundle;Lcom/lp/ble/BLEConnector$1;[B)V

    const-string p0, "1a7c6160-fab2-11e4-9fbb-0002a5d5c51b"

    invoke-virtual {v2, v3, p0, v4}, Lcom/clj/fastble/BleManager;->d(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Lcom/clj/fastble/callback/BleReadCallback;)V

    return-void

    :cond_6
    const/4 v4, 0x6

    if-ne v2, v4, :cond_7

    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object p1

    const-string v4, "0328fe40-002f-11e5-87d0-0002a5d5c51b"

    if-eqz p1, :cond_a

    const-string v1, "ssid"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "password"

    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "wpa_auth"

    invoke-virtual {p1, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "wpa_cipher"

    invoke-virtual {p1, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v11, "public_key"

    invoke-virtual {p1, v11}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v11, p0, Lcom/lp/ble/BLEConnector$1;->this$0:Lcom/lp/ble/BLEConnector;

    invoke-virtual {v11}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    sget-object v11, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    :try_start_0
    const-string v11, "\n"

    invoke-virtual {p1, v11, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v11, "-----BEGIN PUBLIC KEY-----"

    invoke-virtual {p1, v11, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v11, "-----END PUBLIC KEY-----"

    invoke-virtual {p1, v11, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    iget-object v11, p0, Lcom/lp/ble/BLEConnector$1;->this$0:Lcom/lp/ble/BLEConnector;

    invoke-virtual {v11}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    invoke-static {v5, p1}, Lcom/lp/ble/utils/RsaEncryptUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "enc_passwd"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "wpa_id"

    invoke-virtual {v0, p1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "scan_ssid"

    invoke-virtual {v0, p1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/lp/ble/BLEConnector$1;->this$0:Lcom/lp/ble/BLEConnector;

    invoke-virtual {v0}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {}, Lcom/clj/fastble/BleManager;->c()Lcom/clj/fastble/BleManager;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    new-instance v7, Lcom/lp/ble/BLEConnector$1$7;

    invoke-direct {v7, p0, p1}, Lcom/lp/ble/BLEConnector$1$7;-><init>(Lcom/lp/ble/BLEConnector$1;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/clj/fastble/BleManager;->e(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;[BZLcom/clj/fastble/callback/BleWriteCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p0, p0, Lcom/lp/ble/BLEConnector$1;->this$0:Lcom/lp/ble/BLEConnector;

    invoke-virtual {p0}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    sget-object p0, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    return-void

    :cond_7
    const/4 p1, 0x7

    if-ne v2, p1, :cond_8

    invoke-static {}, Lcom/clj/fastble/BleManager;->c()Lcom/clj/fastble/BleManager;

    move-result-object p1

    new-instance v0, Lcom/lp/ble/BLEConnector$1$8;

    invoke-direct {v0, p0}, Lcom/lp/ble/BLEConnector$1$8;-><init>(Lcom/lp/ble/BLEConnector$1;)V

    const-string p0, "0c7c6160-fab2-11e4-9fbb-0002a5d5c51b"

    invoke-virtual {p1, v3, p0, v0}, Lcom/clj/fastble/BleManager;->d(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Lcom/clj/fastble/callback/BleReadCallback;)V

    return-void

    :cond_8
    const/16 p1, 0x8

    if-ne v2, p1, :cond_9

    invoke-static {}, Lcom/clj/fastble/BleManager;->c()Lcom/clj/fastble/BleManager;

    move-result-object p1

    new-instance v0, Lcom/lp/ble/BLEConnector$1$9;

    invoke-direct {v0, p0}, Lcom/lp/ble/BLEConnector$1$9;-><init>(Lcom/lp/ble/BLEConnector$1;)V

    const-string p0, "0d7c6160-fab2-11e4-9fbb-0002a5d5c51b"

    invoke-virtual {p1, v3, p0, v0}, Lcom/clj/fastble/BleManager;->d(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Lcom/clj/fastble/callback/BleReadCallback;)V

    return-void

    :cond_9
    const/16 p0, 0xa0

    if-ne v2, p0, :cond_a

    invoke-static {v1, v3}, Lcom/lp/ble/BLEConnector;->b(Lcom/lp/ble/BLEConnector;Lcom/clj/fastble/data/BleDevice;)V

    :cond_a
    :goto_0
    return-void
.end method
