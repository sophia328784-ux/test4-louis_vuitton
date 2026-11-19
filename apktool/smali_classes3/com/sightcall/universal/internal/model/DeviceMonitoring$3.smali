.class Lcom/sightcall/universal/internal/model/DeviceMonitoring$3;
.super Landroid/telephony/PhoneStateListener;
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
.field signalStrength:Landroid/telephony/SignalStrength;

.field final synthetic this$0:Lcom/sightcall/universal/internal/model/DeviceMonitoring;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/model/DeviceMonitoring;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$3;->this$0:Lcom/sightcall/universal/internal/model/DeviceMonitoring;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(II)V

    iget-object p1, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$3;->this$0:Lcom/sightcall/universal/internal/model/DeviceMonitoring;

    invoke-static {p1}, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->b(Lcom/sightcall/universal/internal/model/DeviceMonitoring;)Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$3;->signalStrength:Landroid/telephony/SignalStrength;

    invoke-static {p2, v0}, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;->fetch(Landroid/content/Context;Landroid/telephony/SignalStrength;)Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;->update(Lcom/sightcall/universal/internal/model/DeviceMonitoring;Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$3;->this$0:Lcom/sightcall/universal/internal/model/DeviceMonitoring;

    invoke-static {p0}, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->h(Lcom/sightcall/universal/internal/model/DeviceMonitoring;)V

    :cond_0
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    iget-object p1, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$3;->this$0:Lcom/sightcall/universal/internal/model/DeviceMonitoring;

    invoke-static {p1}, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->b(Lcom/sightcall/universal/internal/model/DeviceMonitoring;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$3;->signalStrength:Landroid/telephony/SignalStrength;

    invoke-static {v0, v1}, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;->fetch(Landroid/content/Context;Landroid/telephony/SignalStrength;)Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;->update(Lcom/sightcall/universal/internal/model/DeviceMonitoring;Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$3;->this$0:Lcom/sightcall/universal/internal/model/DeviceMonitoring;

    invoke-static {p0}, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->h(Lcom/sightcall/universal/internal/model/DeviceMonitoring;)V

    :cond_0
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    iput-object p1, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$3;->signalStrength:Landroid/telephony/SignalStrength;

    iget-object v0, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$3;->this$0:Lcom/sightcall/universal/internal/model/DeviceMonitoring;

    invoke-static {v0}, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->b(Lcom/sightcall/universal/internal/model/DeviceMonitoring;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;->fetch(Landroid/content/Context;Landroid/telephony/SignalStrength;)Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;->update(Lcom/sightcall/universal/internal/model/DeviceMonitoring;Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$3;->this$0:Lcom/sightcall/universal/internal/model/DeviceMonitoring;

    invoke-static {p0}, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->h(Lcom/sightcall/universal/internal/model/DeviceMonitoring;)V

    :cond_0
    return-void
.end method
