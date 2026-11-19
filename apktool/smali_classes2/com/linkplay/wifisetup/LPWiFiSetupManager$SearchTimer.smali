.class Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer;
.super Ljava/util/Timer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linkplay/wifisetup/LPWiFiSetupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchTimer"
.end annotation


# static fields
.field private static TIMEOUT:J = 0x15f90L


# instance fields
.field private device:Lcom/linkplay/core/device/LPDevice;

.field private listener:Lcom/linkplay/wifisetup/LPWiFiSetupListener;


# direct methods
.method public constructor <init>(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/wifisetup/LPWiFiSetupListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer;->device:Lcom/linkplay/core/device/LPDevice;

    iput-object p2, p0, Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer;->listener:Lcom/linkplay/wifisetup/LPWiFiSetupListener;

    return-void
.end method

.method public static bridge synthetic a(Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer;)Lcom/linkplay/core/device/LPDevice;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer;->device:Lcom/linkplay/core/device/LPDevice;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer;)Lcom/linkplay/wifisetup/LPWiFiSetupListener;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer;->listener:Lcom/linkplay/wifisetup/LPWiFiSetupListener;

    return-object p0
.end method

.method public static bridge synthetic c()J
    .locals 2

    sget-wide v0, Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer;->TIMEOUT:J

    return-wide v0
.end method


# virtual methods
.method public search()V
    .locals 8

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/app/LPDeviceManager;->clear()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v3, Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer$1;-><init>(Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer;J)V

    const-wide/16 v4, 0x3e8

    const-wide/16 v6, 0xbb8

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    int-to-long p0, p1

    sput-wide p0, Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer;->TIMEOUT:J

    return-void
.end method
