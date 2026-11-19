.class public Lcom/sightcall/universal/internal/model/DeviceMonitoring;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/internal/model/DeviceMonitoring$User;,
        Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery;,
        Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;,
        Lcom/sightcall/universal/internal/model/DeviceMonitoring$Wifi;,
        Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;
    }
.end annotation


# instance fields
.field private battery:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "battery"
    .end annotation
.end field

.field private final batteryReceiver:Landroid/content/BroadcastReceiver;
    .annotation runtime Lcom/sightcall/universal/api/Transient;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation runtime Lcom/sightcall/universal/api/Transient;
    .end annotation
.end field

.field private isMonitoring:Z
    .annotation runtime Lcom/sightcall/universal/api/Transient;
    .end annotation
.end field

.field private sim:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "sim"
    .end annotation
.end field

.field private final simListener:Landroid/telephony/PhoneStateListener;
    .annotation runtime Lcom/sightcall/universal/api/Transient;
    .end annotation
.end field

.field private final user:Lcom/sightcall/universal/internal/model/DeviceMonitoring$User;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "user"
    .end annotation
.end field

.field private wifi:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Wifi;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "wifi"
    .end annotation
.end field

.field private final wifiReceiver:Landroid/content/BroadcastReceiver;
    .annotation runtime Lcom/sightcall/universal/api/Transient;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Lnet/rtccloud/sdk/User;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$1;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/internal/model/DeviceMonitoring$1;-><init>(Lcom/sightcall/universal/internal/model/DeviceMonitoring;)V

    iput-object v0, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->batteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$2;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/internal/model/DeviceMonitoring$2;-><init>(Lcom/sightcall/universal/internal/model/DeviceMonitoring;)V

    iput-object v0, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->wifiReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$3;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/internal/model/DeviceMonitoring$3;-><init>(Lcom/sightcall/universal/internal/model/DeviceMonitoring;)V

    iput-object v0, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->simListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->context:Landroid/content/Context;

    instance-of p1, p2, Lnet/rtccloud/sdk/User$Internal;

    const/4 v0, 0x0

    const-string v1, "uid"

    if-eqz p1, :cond_0

    new-instance p1, Lcom/sightcall/universal/internal/model/DeviceMonitoring$User;

    invoke-direct {p1, v0}, Lcom/sightcall/universal/internal/model/DeviceMonitoring$User;-><init>(I)V

    iput-object p1, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->user:Lcom/sightcall/universal/internal/model/DeviceMonitoring$User;

    invoke-virtual {p2}, Lnet/rtccloud/sdk/User;->extras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/sightcall/universal/internal/model/DeviceMonitoring$User;->uid:Ljava/lang/String;

    goto :goto_0

    :cond_0
    instance-of p1, p2, Lnet/rtccloud/sdk/User$External;

    if-eqz p1, :cond_1

    new-instance p1, Lcom/sightcall/universal/internal/model/DeviceMonitoring$User;

    invoke-direct {p1, v0}, Lcom/sightcall/universal/internal/model/DeviceMonitoring$User;-><init>(I)V

    iput-object p1, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->user:Lcom/sightcall/universal/internal/model/DeviceMonitoring$User;

    check-cast p2, Lnet/rtccloud/sdk/User$External;

    invoke-virtual {p2}, Lnet/rtccloud/sdk/User$External;->suffix()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/sightcall/universal/internal/model/DeviceMonitoring$User;->suffix:Ljava/lang/String;

    invoke-virtual {p2}, Lnet/rtccloud/sdk/User$External;->uid()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/sightcall/universal/internal/model/DeviceMonitoring$User;->uid:Ljava/lang/String;

    goto :goto_0

    :cond_1
    instance-of p1, p2, Lnet/rtccloud/sdk/User$SixDigits;

    if-eqz p1, :cond_2

    new-instance p1, Lcom/sightcall/universal/internal/model/DeviceMonitoring$User;

    invoke-direct {p1, v0}, Lcom/sightcall/universal/internal/model/DeviceMonitoring$User;-><init>(I)V

    iput-object p1, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->user:Lcom/sightcall/universal/internal/model/DeviceMonitoring$User;

    check-cast p2, Lnet/rtccloud/sdk/User$SixDigits;

    invoke-virtual {p2}, Lnet/rtccloud/sdk/User$SixDigits;->suffix()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/sightcall/universal/internal/model/DeviceMonitoring$User;->suffix:Ljava/lang/String;

    invoke-virtual {p2}, Lnet/rtccloud/sdk/User$SixDigits;->pin()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/sightcall/universal/internal/model/DeviceMonitoring$User;->pin:Ljava/lang/String;

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    new-instance p1, Lcom/sightcall/universal/internal/model/DeviceMonitoring$User;

    invoke-direct {p1, v0}, Lcom/sightcall/universal/internal/model/DeviceMonitoring$User;-><init>(I)V

    iput-object p1, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->user:Lcom/sightcall/universal/internal/model/DeviceMonitoring$User;

    invoke-virtual {p2}, Lnet/rtccloud/sdk/User;->extras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/sightcall/universal/internal/model/DeviceMonitoring$User;->uid:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->user:Lcom/sightcall/universal/internal/model/DeviceMonitoring$User;

    :goto_0
    invoke-direct {p0}, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->refresh()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sightcall/universal/internal/model/DeviceMonitoring;)Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->battery:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sightcall/universal/internal/model/DeviceMonitoring;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sightcall/universal/internal/model/DeviceMonitoring;)Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->sim:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;

    return-object p0
.end method

.method public static create(Landroid/content/Context;Lnet/rtccloud/sdk/User;)Lcom/sightcall/universal/internal/model/DeviceMonitoring;
    .locals 1

    new-instance v0, Lcom/sightcall/universal/internal/model/DeviceMonitoring;

    invoke-direct {v0, p0, p1}, Lcom/sightcall/universal/internal/model/DeviceMonitoring;-><init>(Landroid/content/Context;Lnet/rtccloud/sdk/User;)V

    return-object v0
.end method

.method public static bridge synthetic d(Lcom/sightcall/universal/internal/model/DeviceMonitoring;)Lcom/sightcall/universal/internal/model/DeviceMonitoring$Wifi;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->wifi:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Wifi;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sightcall/universal/internal/model/DeviceMonitoring;Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->battery:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery;

    return-void
.end method

.method public static bridge synthetic f(Lcom/sightcall/universal/internal/model/DeviceMonitoring;Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->sim:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;

    return-void
.end method

.method public static bridge synthetic g(Lcom/sightcall/universal/internal/model/DeviceMonitoring;Lcom/sightcall/universal/internal/model/DeviceMonitoring$Wifi;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->wifi:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Wifi;

    return-void
.end method

.method public static bridge synthetic h(Lcom/sightcall/universal/internal/model/DeviceMonitoring;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->trigger()V

    return-void
.end method

.method private refresh()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery;->fetch(Landroid/content/Context;)Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->battery:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery;

    iget-object v0, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;->fetch(Landroid/content/Context;)Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->sim:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;

    iget-object v0, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Wifi;->fetch(Landroid/content/Context;)Lcom/sightcall/universal/internal/model/DeviceMonitoring$Wifi;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->wifi:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Wifi;

    return-void
.end method

.method public static start(Lcom/sightcall/universal/internal/model/DeviceMonitoring;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->startMonitoring()V

    return-void
.end method

.method private startMonitoring()V
    .locals 4

    iget-boolean v0, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->isMonitoring:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/sightcall/pratik/utils/Utils;->Companion:Lcom/sightcall/pratik/utils/Utils$Companion;

    iget-object v1, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->batteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery;->a()Landroid/content/IntentFilter;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sightcall/pratik/utils/Utils$Companion;->registerReceiverCompat(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v1, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->wifiReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Wifi;->a()Landroid/content/IntentFilter;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sightcall/pratik/utils/Utils$Companion;->registerReceiverCompat(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->context:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->simListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x141

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->isMonitoring:Z

    invoke-direct {p0}, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->refresh()V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->trigger()V

    return-void
.end method

.method public static stop(Lcom/sightcall/universal/internal/model/DeviceMonitoring;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->stopMonitoring()V

    return-void
.end method

.method private stopMonitoring()V
    .locals 3

    iget-boolean v0, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->isMonitoring:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->batteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->wifiReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->context:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->simListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iput-boolean v2, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->isMonitoring:Z

    return-void
.end method

.method private trigger()V
    .locals 3

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->call()Lnet/rtccloud/sdk/CallModule;

    move-result-object v1

    invoke-virtual {v1}, Lnet/rtccloud/sdk/CallModule;->get()Lnet/rtccloud/sdk/Call;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call;->status()Lnet/rtccloud/sdk/Call$Status;

    move-result-object v1

    sget-object v2, Lnet/rtccloud/sdk/Call$Status;->ACTIVE:Lnet/rtccloud/sdk/Call$Status;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->status()Lnet/rtccloud/sdk/Rtcc$Status;

    move-result-object v0

    sget-object v1, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sightcall/common/DataChannelAction;->DEVICE_STATUS:Lcom/sightcall/common/DataChannelAction;

    const-class v1, Lcom/sightcall/universal/internal/model/DeviceMonitoring;

    invoke-static {v1, p0}, Lcom/sightcall/universal/model/Moshi;->toJson(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sightcall/common/DataChannelAction;->send([Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static trigger(Lcom/sightcall/universal/internal/model/DeviceMonitoring;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 47
    :cond_0
    invoke-direct {p0}, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->trigger()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeviceMonitoring{wifi="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->wifi:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Wifi;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->user:Lcom/sightcall/universal/internal/model/DeviceMonitoring$User;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", battery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->battery:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->sim:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isMonitoring="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->isMonitoring:Z

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Ld21;->q(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
