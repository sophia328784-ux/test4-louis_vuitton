.class Lcom/sightcall/universal/internal/model/DeviceMonitoring$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/model/DeviceMonitoring;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/internal/model/DeviceMonitoring;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/model/DeviceMonitoring;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$2;->this$0:Lcom/sightcall/universal/internal/model/DeviceMonitoring;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->onBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    instance-of v0, p2, Landroid/net/NetworkInfo;

    if-eqz v0, :cond_0

    move-object v1, p2

    check-cast v1, Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$2;->this$0:Lcom/sightcall/universal/internal/model/DeviceMonitoring;

    if-eqz v0, :cond_1

    check-cast p2, Landroid/net/NetworkInfo;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Wifi;->fetch(Landroid/content/Context;Landroid/net/NetworkInfo;)Lcom/sightcall/universal/internal/model/DeviceMonitoring$Wifi;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Wifi;->update(Lcom/sightcall/universal/internal/model/DeviceMonitoring;Lcom/sightcall/universal/internal/model/DeviceMonitoring$Wifi;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$2;->this$0:Lcom/sightcall/universal/internal/model/DeviceMonitoring;

    invoke-static {p0}, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->h(Lcom/sightcall/universal/internal/model/DeviceMonitoring;)V

    :cond_2
    :goto_1
    return-void
.end method
