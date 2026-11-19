.class Lcom/lp/ble/manager/LPBLEManager$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lp/ble/BLECharacteristicChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lp/ble/manager/LPBLEManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lp/ble/manager/LPBLEManager;


# direct methods
.method public constructor <init>(Lcom/lp/ble/manager/LPBLEManager;)V
    .locals 0

    iput-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDeviceInfo()V
    .locals 3

    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {v0}, Lcom/lp/ble/manager/LPBLEManager;->e(Lcom/lp/ble/manager/LPBLEManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/lp/ble/manager/LPBLEManager$8;->sendWiFiInfoCommand(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lp/ble/manager/LPBLEManager;->k(Lcom/lp/ble/manager/LPBLEManager;Lcom/lp/ble/manager/ApItem;)Z

    move-result v0

    iget-object v2, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    if-nez v0, :cond_2

    iget-object p0, v2, Lcom/lp/ble/manager/LPBLEManager;->listener:Lcom/lp/ble/manager/LPConnectWiFiListener;

    if-eqz p0, :cond_1

    sget-object v0, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_NEED_PASSWORD_ERROR:Lcom/lp/ble/manager/BLEConnectApResult;

    const-string v1, "need password"

    invoke-interface {p0, v0, v1}, Lcom/lp/ble/manager/LPConnectWiFiListener;->LPConnectResult(Lcom/lp/ble/manager/BLEConnectApResult;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    invoke-static {v2, v1}, Lcom/lp/ble/manager/LPBLEManager;->h(Lcom/lp/ble/manager/LPBLEManager;Lcom/lp/ble/manager/ApItem;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {p0, v0}, Lcom/lp/ble/manager/LPBLEManager;->o(Lcom/lp/ble/manager/LPBLEManager;Ljava/lang/String;)V

    return-void
.end method

.method private getWLNListInfo(I)V
    .locals 2

    sget-object p1, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    iget-object v0, p1, Lcom/lp/ble/manager/LPBLEManager;->mBLEInfo:Lcom/lp/ble/manager/ConnectBLEInfo;

    iget-boolean v0, v0, Lcom/lp/ble/manager/ConnectBLEInfo;->bOtherNetwork:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/lp/ble/manager/LPBLEManager;->k(Lcom/lp/ble/manager/LPBLEManager;Lcom/lp/ble/manager/ApItem;)Z

    move-result p1

    iget-object v1, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    if-nez p1, :cond_1

    iget-object p0, v1, Lcom/lp/ble/manager/LPBLEManager;->listener:Lcom/lp/ble/manager/LPConnectWiFiListener;

    if-eqz p0, :cond_0

    sget-object p1, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_NEED_PASSWORD_ERROR:Lcom/lp/ble/manager/BLEConnectApResult;

    const-string v0, "need password"

    invoke-interface {p0, p1, v0}, Lcom/lp/ble/manager/LPConnectWiFiListener;->LPConnectResult(Lcom/lp/ble/manager/BLEConnectApResult;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {v1, v0}, Lcom/lp/ble/manager/LPBLEManager;->h(Lcom/lp/ble/manager/LPBLEManager;Lcom/lp/ble/manager/ApItem;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {p0, p1}, Lcom/lp/ble/manager/LPBLEManager;->o(Lcom/lp/ble/manager/LPBLEManager;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v0, Lcom/lp/ble/manager/LPBLEManager$8$7;

    invoke-direct {v0, p0}, Lcom/lp/ble/manager/LPBLEManager$8$7;-><init>(Lcom/lp/ble/manager/LPBLEManager$8;)V

    invoke-virtual {p1, v0}, Lcom/lp/ble/manager/LPBLEManager;->getWLANList(Lcom/lp/ble/manager/LPBLEAPListListener;)V

    return-void
.end method

.method private sendWiFiInfoCommand(I)V
    .locals 2

    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {v0}, Lcom/lp/ble/manager/LPBLEManager;->b(Lcom/lp/ble/manager/LPBLEManager;)Lcom/lp/ble/entity/LPBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lp/ble/entity/LPBluetoothDevice;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    iget-object v0, v0, Lcom/lp/ble/manager/LPBLEManager;->mBLEInfo:Lcom/lp/ble/manager/ConnectBLEInfo;

    iget-object v0, v0, Lcom/lp/ble/manager/ConnectBLEInfo;->auth:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    iget-object v0, v0, Lcom/lp/ble/manager/LPBLEManager;->mBLEInfo:Lcom/lp/ble/manager/ConnectBLEInfo;

    iget-object v0, v0, Lcom/lp/ble/manager/ConnectBLEInfo;->encry:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/lp/ble/manager/LPBLEManager$8;->getWLNListInfo(I)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/lp/ble/manager/LPBLEManager;->k(Lcom/lp/ble/manager/LPBLEManager;Lcom/lp/ble/manager/ApItem;)Z

    move-result p1

    iget-object v1, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    if-nez p1, :cond_3

    iget-object p0, v1, Lcom/lp/ble/manager/LPBLEManager;->listener:Lcom/lp/ble/manager/LPConnectWiFiListener;

    if-eqz p0, :cond_2

    sget-object p1, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_NEED_PASSWORD_ERROR:Lcom/lp/ble/manager/BLEConnectApResult;

    const-string v0, "need password"

    invoke-interface {p0, p1, v0}, Lcom/lp/ble/manager/LPConnectWiFiListener;->LPConnectResult(Lcom/lp/ble/manager/BLEConnectApResult;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    invoke-static {v1, v0}, Lcom/lp/ble/manager/LPBLEManager;->h(Lcom/lp/ble/manager/LPBLEManager;Lcom/lp/ble/manager/ApItem;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {p0, p1}, Lcom/lp/ble/manager/LPBLEManager;->o(Lcom/lp/ble/manager/LPBLEManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(ILjava/lang/String;)V
    .locals 5

    .line 421
    const-string v0, "code"

    sget-object v1, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    .line 422
    const-string v1, "need password"

    const/4 v2, 0x0

    const/16 v3, 0x1003

    if-ne p1, v3, :cond_5

    .line 423
    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {p1}, Lcom/lp/ble/manager/LPBLEManager;->b(Lcom/lp/ble/manager/LPBLEManager;)Lcom/lp/ble/entity/LPBluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lp/ble/entity/LPBluetoothDevice;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    iget-object p1, p1, Lcom/lp/ble/manager/LPBLEManager;->mBLEInfo:Lcom/lp/ble/manager/ConnectBLEInfo;

    iget-object p1, p1, Lcom/lp/ble/manager/ConnectBLEInfo;->auth:Ljava/lang/String;

    .line 424
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    iget-object p1, p1, Lcom/lp/ble/manager/LPBLEManager;->mBLEInfo:Lcom/lp/ble/manager/ConnectBLEInfo;

    iget-object p1, p1, Lcom/lp/ble/manager/ConnectBLEInfo;->encry:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 425
    :cond_0
    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    iget-object p2, p1, Lcom/lp/ble/manager/LPBLEManager;->mBLEInfo:Lcom/lp/ble/manager/ConnectBLEInfo;

    iget-boolean p2, p2, Lcom/lp/ble/manager/ConnectBLEInfo;->bOtherNetwork:Z

    if-eqz p2, :cond_2

    .line 426
    invoke-static {p1, v2}, Lcom/lp/ble/manager/LPBLEManager;->k(Lcom/lp/ble/manager/LPBLEManager;Lcom/lp/ble/manager/ApItem;)Z

    move-result p1

    .line 427
    iget-object p2, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    if-nez p1, :cond_1

    .line 428
    iget-object p0, p2, Lcom/lp/ble/manager/LPBLEManager;->listener:Lcom/lp/ble/manager/LPConnectWiFiListener;

    if-eqz p0, :cond_f

    .line 429
    sget-object p1, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_NEED_PASSWORD_ERROR:Lcom/lp/ble/manager/BLEConnectApResult;

    invoke-interface {p0, p1, v1}, Lcom/lp/ble/manager/LPConnectWiFiListener;->LPConnectResult(Lcom/lp/ble/manager/BLEConnectApResult;Ljava/lang/String;)V

    return-void

    .line 430
    :cond_1
    invoke-static {p2, v2}, Lcom/lp/ble/manager/LPBLEManager;->h(Lcom/lp/ble/manager/LPBLEManager;Lcom/lp/ble/manager/ApItem;)Ljava/lang/String;

    move-result-object p1

    .line 431
    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {p0, p1}, Lcom/lp/ble/manager/LPBLEManager;->o(Lcom/lp/ble/manager/LPBLEManager;Ljava/lang/String;)V

    return-void

    .line 432
    :cond_2
    new-instance p2, Lcom/lp/ble/manager/LPBLEManager$8$1;

    invoke-direct {p2, p0}, Lcom/lp/ble/manager/LPBLEManager$8$1;-><init>(Lcom/lp/ble/manager/LPBLEManager$8;)V

    invoke-virtual {p1, p2}, Lcom/lp/ble/manager/LPBLEManager;->getWLANList(Lcom/lp/ble/manager/LPBLEAPListListener;)V

    return-void

    .line 433
    :cond_3
    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {p1, v2}, Lcom/lp/ble/manager/LPBLEManager;->k(Lcom/lp/ble/manager/LPBLEManager;Lcom/lp/ble/manager/ApItem;)Z

    move-result p1

    .line 434
    iget-object p2, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    if-nez p1, :cond_4

    .line 435
    iget-object p0, p2, Lcom/lp/ble/manager/LPBLEManager;->listener:Lcom/lp/ble/manager/LPConnectWiFiListener;

    if-eqz p0, :cond_f

    .line 436
    sget-object p1, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_NEED_PASSWORD_ERROR:Lcom/lp/ble/manager/BLEConnectApResult;

    invoke-interface {p0, p1, v1}, Lcom/lp/ble/manager/LPConnectWiFiListener;->LPConnectResult(Lcom/lp/ble/manager/BLEConnectApResult;Ljava/lang/String;)V

    return-void

    .line 437
    :cond_4
    invoke-static {p2, v2}, Lcom/lp/ble/manager/LPBLEManager;->h(Lcom/lp/ble/manager/LPBLEManager;Lcom/lp/ble/manager/ApItem;)Ljava/lang/String;

    move-result-object p1

    .line 438
    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {p0, p1}, Lcom/lp/ble/manager/LPBLEManager;->o(Lcom/lp/ble/manager/LPBLEManager;Ljava/lang/String;)V

    return-void

    :cond_5
    const/16 v4, 0x1005

    if-ne p1, v4, :cond_6

    .line 439
    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager;->listener:Lcom/lp/ble/manager/LPConnectWiFiListener;

    if-eqz p0, :cond_f

    .line 440
    sget-object p1, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_AP_START:Lcom/lp/ble/manager/BLEConnectApResult;

    invoke-interface {p0, p1, p2}, Lcom/lp/ble/manager/LPConnectWiFiListener;->LPConnectResult(Lcom/lp/ble/manager/BLEConnectApResult;Ljava/lang/String;)V

    return-void

    :cond_6
    const/16 v4, 0x1006

    if-ne p1, v4, :cond_8

    .line 441
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 443
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    if-nez p1, :cond_7

    .line 445
    :try_start_1
    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager;->listener:Lcom/lp/ble/manager/LPConnectWiFiListener;

    if-eqz p0, :cond_f

    .line 446
    sget-object p1, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_AP_SUCCESS:Lcom/lp/ble/manager/BLEConnectApResult;

    invoke-interface {p0, p1, p2}, Lcom/lp/ble/manager/LPConnectWiFiListener;->LPConnectResult(Lcom/lp/ble/manager/BLEConnectApResult;Ljava/lang/String;)V

    return-void

    .line 447
    :cond_7
    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager;->listener:Lcom/lp/ble/manager/LPConnectWiFiListener;

    if-eqz p0, :cond_f

    .line 448
    invoke-static {p1}, Lcom/lp/ble/utils/BLEUtil;->d(I)Lcom/lp/ble/manager/BLEConnectApResult;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/lp/ble/manager/LPConnectWiFiListener;->LPConnectResult(Lcom/lp/ble/manager/BLEConnectApResult;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 449
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :cond_8
    const/16 v0, 0x1001

    if-ne p1, v0, :cond_e

    .line 450
    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {p1, p2}, Lcom/lp/ble/manager/LPBLEManager;->m(Lcom/lp/ble/manager/LPBLEManager;Ljava/lang/String;)V

    .line 451
    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {p1}, Lcom/lp/ble/manager/LPBLEManager;->c(Lcom/lp/ble/manager/LPBLEManager;)Lcom/lp/ble/manager/LPBLEConfig;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 452
    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {p1}, Lcom/lp/ble/manager/LPBLEManager;->c(Lcom/lp/ble/manager/LPBLEManager;)Lcom/lp/ble/manager/LPBLEConfig;

    move-result-object p1

    iget-boolean p1, p1, Lcom/lp/ble/manager/LPBLEConfig;->bHexPasswordCommand:Z

    .line 453
    iget-object p2, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    if-eqz p1, :cond_9

    .line 454
    invoke-static {p2}, Lcom/lp/ble/manager/LPBLEManager;->g(Lcom/lp/ble/manager/LPBLEManager;)V

    .line 455
    invoke-direct {p0}, Lcom/lp/ble/manager/LPBLEManager$8;->getDeviceInfo()V

    return-void

    .line 456
    :cond_9
    invoke-static {p2}, Lcom/lp/ble/manager/LPBLEManager;->c(Lcom/lp/ble/manager/LPBLEManager;)Lcom/lp/ble/manager/LPBLEConfig;

    move-result-object p1

    iget-boolean p1, p1, Lcom/lp/ble/manager/LPBLEConfig;->bNeedCountryCode:Z

    if-nez p1, :cond_d

    .line 457
    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {p1}, Lcom/lp/ble/manager/LPBLEManager;->b(Lcom/lp/ble/manager/LPBLEManager;)Lcom/lp/ble/entity/LPBluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lp/ble/entity/LPBluetoothDevice;->a()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    iget-object p1, p1, Lcom/lp/ble/manager/LPBLEManager;->mBLEInfo:Lcom/lp/ble/manager/ConnectBLEInfo;

    iget-object p1, p1, Lcom/lp/ble/manager/ConnectBLEInfo;->auth:Ljava/lang/String;

    .line 458
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    iget-object p1, p1, Lcom/lp/ble/manager/LPBLEManager;->mBLEInfo:Lcom/lp/ble/manager/ConnectBLEInfo;

    iget-object p1, p1, Lcom/lp/ble/manager/ConnectBLEInfo;->encry:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 459
    :cond_a
    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    new-instance p2, Lcom/lp/ble/manager/LPBLEManager$8$2;

    invoke-direct {p2, p0}, Lcom/lp/ble/manager/LPBLEManager$8$2;-><init>(Lcom/lp/ble/manager/LPBLEManager$8;)V

    invoke-virtual {p1, p2}, Lcom/lp/ble/manager/LPBLEManager;->getWLANList(Lcom/lp/ble/manager/LPBLEAPListListener;)V

    return-void

    .line 460
    :cond_b
    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {p1, v2}, Lcom/lp/ble/manager/LPBLEManager;->k(Lcom/lp/ble/manager/LPBLEManager;Lcom/lp/ble/manager/ApItem;)Z

    move-result p1

    .line 461
    iget-object p2, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    if-nez p1, :cond_c

    .line 462
    iget-object p0, p2, Lcom/lp/ble/manager/LPBLEManager;->listener:Lcom/lp/ble/manager/LPConnectWiFiListener;

    if-eqz p0, :cond_f

    .line 463
    sget-object p1, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_NEED_PASSWORD_ERROR:Lcom/lp/ble/manager/BLEConnectApResult;

    invoke-interface {p0, p1, v1}, Lcom/lp/ble/manager/LPConnectWiFiListener;->LPConnectResult(Lcom/lp/ble/manager/BLEConnectApResult;Ljava/lang/String;)V

    return-void

    .line 464
    :cond_c
    invoke-static {p2, v2}, Lcom/lp/ble/manager/LPBLEManager;->h(Lcom/lp/ble/manager/LPBLEManager;Lcom/lp/ble/manager/ApItem;)Ljava/lang/String;

    move-result-object p1

    .line 465
    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {p0, p1}, Lcom/lp/ble/manager/LPBLEManager;->o(Lcom/lp/ble/manager/LPBLEManager;Ljava/lang/String;)V

    return-void

    .line 466
    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "{\n\"code\":\""

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 467
    invoke-static {}, Lcom/lp/ble/utils/BLEUtil;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\",\n\"ccode\":\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-static {}, Lcom/lp/ble/utils/BLEUtil;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\",\n}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 469
    iget-object p2, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {p2}, Lcom/lp/ble/manager/LPBLEManager;->d(Lcom/lp/ble/manager/LPBLEManager;)Lcom/lp/ble/BLEConnector;

    move-result-object p2

    if-eqz p2, :cond_f

    .line 470
    iget-object p2, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {p2}, Lcom/lp/ble/manager/LPBLEManager;->d(Lcom/lp/ble/manager/LPBLEManager;)Lcom/lp/ble/BLEConnector;

    move-result-object p2

    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {v0}, Lcom/lp/ble/manager/LPBLEManager;->b(Lcom/lp/ble/manager/LPBLEManager;)Lcom/lp/ble/entity/LPBluetoothDevice;

    move-result-object v0

    .line 471
    iget v0, v0, Lcom/lp/ble/entity/LPBluetoothDevice;->d:I

    .line 472
    new-instance v1, Lcom/lp/ble/manager/LPBLEManager$8$3;

    invoke-direct {v1, p0}, Lcom/lp/ble/manager/LPBLEManager$8$3;-><init>(Lcom/lp/ble/manager/LPBLEManager$8;)V

    invoke-virtual {p2, v0, v3, p1, v1}, Lcom/lp/ble/BLEConnector;->n(IILjava/lang/String;Lcom/clj/fastble/callback/BleWriteCallback;)V

    return-void

    :cond_e
    if-nez p1, :cond_f

    .line 473
    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager;->listener:Lcom/lp/ble/manager/LPConnectWiFiListener;

    invoke-static {p0, p2, p1}, Lcom/lp/ble/manager/LPBLEManager;->p(Lcom/lp/ble/manager/LPBLEManager;Ljava/lang/String;Lcom/lp/ble/manager/LPConnectWiFiListener;)V

    :cond_f
    return-void
.end method

.method public onCharacteristicChanged(Lcom/lp/ble/entity/BLEResponse;)V
    .locals 6

    const-string v0, "code"

    iget v1, p1, Lcom/lp/ble/entity/BLEResponse;->a:I

    invoke-virtual {p1}, Lcom/lp/ble/entity/BLEResponse;->a()Ljava/lang/String;

    sget-object v1, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    iget v1, p1, Lcom/lp/ble/entity/BLEResponse;->a:I

    const-string v2, "need password"

    const/4 v3, 0x0

    const/16 v4, 0x1003

    if-ne v1, v4, :cond_5

    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {p1}, Lcom/lp/ble/manager/LPBLEManager;->b(Lcom/lp/ble/manager/LPBLEManager;)Lcom/lp/ble/entity/LPBluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lp/ble/entity/LPBluetoothDevice;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    iget-object p1, p1, Lcom/lp/ble/manager/LPBLEManager;->mBLEInfo:Lcom/lp/ble/manager/ConnectBLEInfo;

    iget-object p1, p1, Lcom/lp/ble/manager/ConnectBLEInfo;->auth:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    iget-object p1, p1, Lcom/lp/ble/manager/LPBLEManager;->mBLEInfo:Lcom/lp/ble/manager/ConnectBLEInfo;

    iget-object p1, p1, Lcom/lp/ble/manager/ConnectBLEInfo;->encry:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_0
    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    iget-object v0, p1, Lcom/lp/ble/manager/LPBLEManager;->mBLEInfo:Lcom/lp/ble/manager/ConnectBLEInfo;

    iget-boolean v0, v0, Lcom/lp/ble/manager/ConnectBLEInfo;->bOtherNetwork:Z

    if-eqz v0, :cond_2

    invoke-static {p1, v3}, Lcom/lp/ble/manager/LPBLEManager;->k(Lcom/lp/ble/manager/LPBLEManager;Lcom/lp/ble/manager/ApItem;)Z

    move-result p1

    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    if-nez p1, :cond_1

    iget-object p0, v0, Lcom/lp/ble/manager/LPBLEManager;->listener:Lcom/lp/ble/manager/LPConnectWiFiListener;

    if-eqz p0, :cond_f

    sget-object p1, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_NEED_PASSWORD_ERROR:Lcom/lp/ble/manager/BLEConnectApResult;

    invoke-interface {p0, p1, v2}, Lcom/lp/ble/manager/LPConnectWiFiListener;->LPConnectResult(Lcom/lp/ble/manager/BLEConnectApResult;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {v0, v3}, Lcom/lp/ble/manager/LPBLEManager;->h(Lcom/lp/ble/manager/LPBLEManager;Lcom/lp/ble/manager/ApItem;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {p0, p1}, Lcom/lp/ble/manager/LPBLEManager;->o(Lcom/lp/ble/manager/LPBLEManager;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v0, Lcom/lp/ble/manager/LPBLEManager$8$4;

    invoke-direct {v0, p0}, Lcom/lp/ble/manager/LPBLEManager$8$4;-><init>(Lcom/lp/ble/manager/LPBLEManager$8;)V

    invoke-virtual {p1, v0}, Lcom/lp/ble/manager/LPBLEManager;->getWLANList(Lcom/lp/ble/manager/LPBLEAPListListener;)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {p1, v3}, Lcom/lp/ble/manager/LPBLEManager;->k(Lcom/lp/ble/manager/LPBLEManager;Lcom/lp/ble/manager/ApItem;)Z

    move-result p1

    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    if-nez p1, :cond_4

    iget-object p0, v0, Lcom/lp/ble/manager/LPBLEManager;->listener:Lcom/lp/ble/manager/LPConnectWiFiListener;

    if-eqz p0, :cond_f

    sget-object p1, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_NEED_PASSWORD_ERROR:Lcom/lp/ble/manager/BLEConnectApResult;

    invoke-interface {p0, p1, v2}, Lcom/lp/ble/manager/LPConnectWiFiListener;->LPConnectResult(Lcom/lp/ble/manager/BLEConnectApResult;Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-static {v0, v3}, Lcom/lp/ble/manager/LPBLEManager;->h(Lcom/lp/ble/manager/LPBLEManager;Lcom/lp/ble/manager/ApItem;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {p0, p1}, Lcom/lp/ble/manager/LPBLEManager;->o(Lcom/lp/ble/manager/LPBLEManager;Ljava/lang/String;)V

    return-void

    :cond_5
    const/16 v5, 0x1005

    if-ne v1, v5, :cond_6

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager;->listener:Lcom/lp/ble/manager/LPConnectWiFiListener;

    if-eqz p0, :cond_f

    sget-object v0, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_AP_START:Lcom/lp/ble/manager/BLEConnectApResult;

    invoke-virtual {p1}, Lcom/lp/ble/entity/BLEResponse;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/lp/ble/manager/LPConnectWiFiListener;->LPConnectResult(Lcom/lp/ble/manager/BLEConnectApResult;Ljava/lang/String;)V

    return-void

    :cond_6
    const/16 v5, 0x1006

    if-ne v1, v5, :cond_8

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/lp/ble/entity/BLEResponse;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    if-nez v0, :cond_7

    :try_start_1
    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager;->listener:Lcom/lp/ble/manager/LPConnectWiFiListener;

    if-eqz p0, :cond_f

    sget-object v0, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_AP_SUCCESS:Lcom/lp/ble/manager/BLEConnectApResult;

    invoke-virtual {p1}, Lcom/lp/ble/entity/BLEResponse;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/lp/ble/manager/LPConnectWiFiListener;->LPConnectResult(Lcom/lp/ble/manager/BLEConnectApResult;Ljava/lang/String;)V

    return-void

    :cond_7
    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager;->listener:Lcom/lp/ble/manager/LPConnectWiFiListener;

    if-eqz p0, :cond_f

    invoke-static {v0}, Lcom/lp/ble/utils/BLEUtil;->d(I)Lcom/lp/ble/manager/BLEConnectApResult;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lp/ble/entity/BLEResponse;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/lp/ble/manager/LPConnectWiFiListener;->LPConnectResult(Lcom/lp/ble/manager/BLEConnectApResult;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :cond_8
    const/16 v0, 0x1001

    if-ne v1, v0, :cond_e

    invoke-virtual {p1}, Lcom/lp/ble/entity/BLEResponse;->a()Ljava/lang/String;

    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-virtual {p1}, Lcom/lp/ble/entity/BLEResponse;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/lp/ble/manager/LPBLEManager;->m(Lcom/lp/ble/manager/LPBLEManager;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {p1}, Lcom/lp/ble/manager/LPBLEManager;->c(Lcom/lp/ble/manager/LPBLEManager;)Lcom/lp/ble/manager/LPBLEConfig;

    move-result-object p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {p1}, Lcom/lp/ble/manager/LPBLEManager;->c(Lcom/lp/ble/manager/LPBLEManager;)Lcom/lp/ble/manager/LPBLEConfig;

    move-result-object p1

    iget-boolean p1, p1, Lcom/lp/ble/manager/LPBLEConfig;->bHexPasswordCommand:Z

    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    if-eqz p1, :cond_9

    invoke-static {v0}, Lcom/lp/ble/manager/LPBLEManager;->g(Lcom/lp/ble/manager/LPBLEManager;)V

    invoke-direct {p0}, Lcom/lp/ble/manager/LPBLEManager$8;->getDeviceInfo()V

    return-void

    :cond_9
    invoke-static {v0}, Lcom/lp/ble/manager/LPBLEManager;->c(Lcom/lp/ble/manager/LPBLEManager;)Lcom/lp/ble/manager/LPBLEConfig;

    move-result-object p1

    iget-boolean p1, p1, Lcom/lp/ble/manager/LPBLEConfig;->bNeedCountryCode:Z

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {p1}, Lcom/lp/ble/manager/LPBLEManager;->b(Lcom/lp/ble/manager/LPBLEManager;)Lcom/lp/ble/entity/LPBluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lp/ble/entity/LPBluetoothDevice;->a()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    iget-object p1, p1, Lcom/lp/ble/manager/LPBLEManager;->mBLEInfo:Lcom/lp/ble/manager/ConnectBLEInfo;

    iget-object p1, p1, Lcom/lp/ble/manager/ConnectBLEInfo;->auth:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    iget-object p1, p1, Lcom/lp/ble/manager/LPBLEManager;->mBLEInfo:Lcom/lp/ble/manager/ConnectBLEInfo;

    iget-object p1, p1, Lcom/lp/ble/manager/ConnectBLEInfo;->encry:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    :cond_a
    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    new-instance v0, Lcom/lp/ble/manager/LPBLEManager$8$5;

    invoke-direct {v0, p0}, Lcom/lp/ble/manager/LPBLEManager$8$5;-><init>(Lcom/lp/ble/manager/LPBLEManager$8;)V

    invoke-virtual {p1, v0}, Lcom/lp/ble/manager/LPBLEManager;->getWLANList(Lcom/lp/ble/manager/LPBLEAPListListener;)V

    return-void

    :cond_b
    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {p1, v3}, Lcom/lp/ble/manager/LPBLEManager;->k(Lcom/lp/ble/manager/LPBLEManager;Lcom/lp/ble/manager/ApItem;)Z

    move-result p1

    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    if-nez p1, :cond_c

    iget-object p0, v0, Lcom/lp/ble/manager/LPBLEManager;->listener:Lcom/lp/ble/manager/LPConnectWiFiListener;

    if-eqz p0, :cond_f

    sget-object p1, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_NEED_PASSWORD_ERROR:Lcom/lp/ble/manager/BLEConnectApResult;

    invoke-interface {p0, p1, v2}, Lcom/lp/ble/manager/LPConnectWiFiListener;->LPConnectResult(Lcom/lp/ble/manager/BLEConnectApResult;Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-static {v0, v3}, Lcom/lp/ble/manager/LPBLEManager;->h(Lcom/lp/ble/manager/LPBLEManager;Lcom/lp/ble/manager/ApItem;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {p0, p1}, Lcom/lp/ble/manager/LPBLEManager;->o(Lcom/lp/ble/manager/LPBLEManager;Ljava/lang/String;)V

    return-void

    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "{\n\"code\":\""

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/lp/ble/utils/BLEUtil;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\",\n\"ccode\":\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lp/ble/utils/BLEUtil;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\",\n}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {v0}, Lcom/lp/ble/manager/LPBLEManager;->d(Lcom/lp/ble/manager/LPBLEManager;)Lcom/lp/ble/BLEConnector;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {v0}, Lcom/lp/ble/manager/LPBLEManager;->d(Lcom/lp/ble/manager/LPBLEManager;)Lcom/lp/ble/BLEConnector;

    move-result-object v0

    iget-object v1, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {v1}, Lcom/lp/ble/manager/LPBLEManager;->b(Lcom/lp/ble/manager/LPBLEManager;)Lcom/lp/ble/entity/LPBluetoothDevice;

    move-result-object v1

    iget v1, v1, Lcom/lp/ble/entity/LPBluetoothDevice;->d:I

    new-instance v2, Lcom/lp/ble/manager/LPBLEManager$8$6;

    invoke-direct {v2, p0}, Lcom/lp/ble/manager/LPBLEManager$8$6;-><init>(Lcom/lp/ble/manager/LPBLEManager$8;)V

    invoke-virtual {v0, v1, v4, p1, v2}, Lcom/lp/ble/BLEConnector;->n(IILjava/lang/String;Lcom/clj/fastble/callback/BleWriteCallback;)V

    return-void

    :cond_e
    if-nez v1, :cond_f

    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-virtual {p1}, Lcom/lp/ble/entity/BLEResponse;->a()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager;->listener:Lcom/lp/ble/manager/LPConnectWiFiListener;

    invoke-static {v0, p1, p0}, Lcom/lp/ble/manager/LPBLEManager;->p(Lcom/lp/ble/manager/LPBLEManager;Ljava/lang/String;Lcom/lp/ble/manager/LPConnectWiFiListener;)V

    :cond_f
    return-void
.end method

.method public onResponseTimeout(I)V
    .locals 4

    const/16 v0, 0x1003

    const-string v1, ""

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    iget-object v0, v0, Lcom/lp/ble/manager/LPBLEManager;->listener:Lcom/lp/ble/manager/LPConnectWiFiListener;

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "######set country code timeout"

    invoke-static {p1, v3}, Lcj;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/lp/ble/manager/LPConnectWiFiListener;->LPConnectFailed(Ljava/lang/Exception;)V

    :cond_0
    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {p1}, Lcom/lp/ble/manager/LPBLEManager;->d(Lcom/lp/ble/manager/LPBLEManager;)Lcom/lp/ble/BLEConnector;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {p1}, Lcom/lp/ble/manager/LPBLEManager;->d(Lcom/lp/ble/manager/LPBLEManager;)Lcom/lp/ble/BLEConnector;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {v2}, Lcom/lp/ble/manager/LPBLEManager;->a(Lcom/lp/ble/manager/LPBLEManager;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lcom/lp/ble/BLEConnector;->m(Ljava/lang/String;Lcom/lp/ble/BLECharacteristicChangedListener;)V

    return-void

    :cond_1
    const/16 v0, 0x1002

    if-eq v0, p1, :cond_3

    const/16 v0, 0x1012

    if-eq v0, p1, :cond_3

    const/16 v0, 0x1013

    if-ne v0, p1, :cond_2

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    iget-object v0, v0, Lcom/lp/ble/manager/LPBLEManager;->listener:Lcom/lp/ble/manager/LPConnectWiFiListener;

    if-eqz v0, :cond_4

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "######send ssid password timeout"

    invoke-static {p1, v3}, Lcj;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/lp/ble/manager/LPConnectWiFiListener;->LPConnectFailed(Ljava/lang/Exception;)V

    :cond_4
    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {p1}, Lcom/lp/ble/manager/LPBLEManager;->d(Lcom/lp/ble/manager/LPBLEManager;)Lcom/lp/ble/BLEConnector;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {p1}, Lcom/lp/ble/manager/LPBLEManager;->d(Lcom/lp/ble/manager/LPBLEManager;)Lcom/lp/ble/BLEConnector;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {v2}, Lcom/lp/ble/manager/LPBLEManager;->a(Lcom/lp/ble/manager/LPBLEManager;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lcom/lp/ble/BLEConnector;->m(Ljava/lang/String;Lcom/lp/ble/BLECharacteristicChangedListener;)V

    :cond_5
    return-void
.end method
