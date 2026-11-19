.class Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer;->search()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer;

.field final synthetic val$start:J


# direct methods
.method public constructor <init>(Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer;J)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer$1;->this$0:Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer;

    iput-wide p2, p0, Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer$1;->val$start:J

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer$1;->val$start:J

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer;->c()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    invoke-virtual {p0}, Ljava/util/TimerTask;->cancel()Z

    iget-object v0, p0, Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer$1;->this$0:Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer;

    invoke-static {v0}, Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer;->b(Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer;)Lcom/linkplay/wifisetup/LPWiFiSetupListener;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/linkplay/core/utils/LPWiFiResultUtils;->getCurrentWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    const/16 v1, 0x3ea

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer$1;->this$0:Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer;

    invoke-static {p0}, Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer;->b(Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer;)Lcom/linkplay/wifisetup/LPWiFiSetupListener;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/linkplay/wifisetup/LPWiFiSetupListener;->LPWiFiSetupFailed(I)V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/linkplay/core/utils/LPWiFiResultUtils;->makeSSIDNoneQuoted(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/linkplay/wifisetup/LPWiFiSetupManager;->c()Lcom/linkplay/wifisetup/LPApItem;

    move-result-object v2

    iget-object v2, v2, Lcom/linkplay/wifisetup/LPApItem;->SSID:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/wiimu/utils/ByteIntConverter;->convertHex2GBK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v2, p0, Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer$1;->this$0:Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer;

    if-nez v0, :cond_2

    invoke-static {v2}, Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer;->b(Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer;)Lcom/linkplay/wifisetup/LPWiFiSetupListener;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-interface {v0, v1}, Lcom/linkplay/wifisetup/LPWiFiSetupListener;->LPWiFiSetupFailed(I)V

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer;->b(Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer;)Lcom/linkplay/wifisetup/LPWiFiSetupListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/linkplay/wifisetup/LPWiFiSetupListener;->LPWiFiSetupFailed(I)V

    :cond_3
    :goto_0
    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer$1;->this$0:Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer;

    invoke-static {v1}, Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer;->a(Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer;)Lcom/linkplay/core/device/LPDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linkplay/core/model/LPDeviceStatus;->getUpnpUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/app/LPDeviceManager;->deviceForID(Ljava/lang/String;)Lcom/linkplay/core/device/LPDevice;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linkplay/core/model/LPDeviceStatus;->getNetstat()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer$1;->this$0:Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer;

    invoke-static {v1}, Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer;->b(Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer;)Lcom/linkplay/wifisetup/LPWiFiSetupListener;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1, v0}, Lcom/linkplay/wifisetup/LPWiFiSetupListener;->LPWiFiSetupSuccess(Lcom/linkplay/core/device/LPDevice;)V

    :cond_4
    invoke-virtual {p0}, Ljava/util/TimerTask;->cancel()Z

    :cond_5
    :goto_1
    return-void
.end method
