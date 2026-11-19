.class Lcom/sightcall/universal/internal/model/DeviceMonitoring$1;
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

    iput-object p1, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$1;->this$0:Lcom/sightcall/universal/internal/model/DeviceMonitoring;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->onBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$1;->this$0:Lcom/sightcall/universal/internal/model/DeviceMonitoring;

    invoke-static {p2}, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery;->extract(Landroid/content/Intent;)Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery;->update(Lcom/sightcall/universal/internal/model/DeviceMonitoring;Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$1;->this$0:Lcom/sightcall/universal/internal/model/DeviceMonitoring;

    invoke-static {p0}, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->h(Lcom/sightcall/universal/internal/model/DeviceMonitoring;)V

    :cond_0
    return-void
.end method
