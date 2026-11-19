.class public Lcom/android/wiimu/upnp/impl/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/wiimu/upnp/IWiimuRenderingControl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteAlarmQueue(Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/android/wiimu/upnp/impl/f;->d(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p2

    if-nez p2, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/wiimu/upnp/impl/e$a;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/android/wiimu/upnp/impl/e$a;-><init>(Lcom/android/wiimu/upnp/impl/e;Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    return-void
.end method

.method public getAlarmQueue(Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/android/wiimu/upnp/impl/f;->d(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p2

    if-nez p2, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/wiimu/upnp/impl/e$b;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/android/wiimu/upnp/impl/e$b;-><init>(Lcom/android/wiimu/upnp/impl/e;Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    return-void
.end method

.method public getChannel(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/wiimu/upnp/impl/f;->d(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/wiimu/upnp/impl/e$d;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/wiimu/upnp/impl/e$d;-><init>(Lcom/android/wiimu/upnp/impl/e;Lorg/teleal/cling/model/meta/Service;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    return-void
.end method

.method public getControlDeviceInfo(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/wiimu/upnp/impl/f;->d(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/android/wiimu/upnp/impl/e$e;

    iget-object p1, p1, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    iget-object p1, p1, Lorg/teleal/cling/model/meta/DeviceIdentity;->a:Lorg/teleal/cling/model/types/UDN;

    invoke-virtual {p1}, Lorg/teleal/cling/model/types/UDN;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/wiimu/upnp/impl/e$e;-><init>(Lcom/android/wiimu/upnp/impl/e;Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    invoke-static {v1}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    return-void
.end method

.method public getEqualizer(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/wiimu/upnp/impl/f;->d(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p0

    if-nez p0, :cond_1

    :goto_0
    return-void

    :cond_1
    const-string p0, " getEqualizer  "

    const-string p1, ""

    invoke-static {p0, p1}, Lcom/android/wiimu/upnp/impl/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/wiimu/upnp/impl/c;

    move-result-object p0

    throw p0
.end method

.method public getMute(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/wiimu/upnp/impl/f;->d(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/wiimu/upnp/impl/e$g;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/wiimu/upnp/impl/e$g;-><init>(Lcom/android/wiimu/upnp/impl/e;Lorg/teleal/cling/model/meta/Service;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    return-void
.end method

.method public getStreamServicesCapability(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/wiimu/upnp/impl/f;->d(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/wiimu/upnp/impl/e$f;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/wiimu/upnp/impl/e$f;-><init>(Lcom/android/wiimu/upnp/impl/e;Lorg/teleal/cling/model/meta/Service;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    return-void
.end method

.method public getVolume(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/wiimu/upnp/impl/f;->d(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/wiimu/upnp/impl/e$h;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/wiimu/upnp/impl/e$h;-><init>(Lcom/android/wiimu/upnp/impl/e;Lorg/teleal/cling/model/meta/Service;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    return-void
.end method

.method public listPresets(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/wiimu/upnp/impl/f;->d(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p0

    if-nez p0, :cond_1

    :goto_0
    return-void

    :cond_1
    const-string p0, " listPresets  "

    const-string p1, ""

    invoke-static {p0, p1}, Lcom/android/wiimu/upnp/impl/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/wiimu/upnp/impl/c;

    move-result-object p0

    throw p0
.end method

.method public multiPlaySlaveMask(Lorg/teleal/cling/model/meta/Device;ILcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    invoke-static {p1}, Lcom/android/wiimu/upnp/impl/f;->d(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    .line 20
    :cond_1
    new-instance v0, Lcom/android/wiimu/upnp/impl/e$c;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/wiimu/upnp/impl/e$c;-><init>(Lcom/android/wiimu/upnp/impl/e;Lorg/teleal/cling/model/meta/Service;ILcom/android/wiimu/upnp/IWiimuActionCallback;)V

    .line 21
    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    return-void
.end method

.method public multiPlaySlaveMask(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/wiimu/upnp/impl/f;->d(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p0

    if-nez p0, :cond_1

    :goto_0
    return-void

    :cond_1
    const-string p0, " multiPlaySlaveMask  "

    const-string p1, ""

    invoke-static {p0, p1}, Lcom/android/wiimu/upnp/impl/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/wiimu/upnp/impl/c;

    move-result-object p0

    throw p0
.end method

.method public selectPreset(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/wiimu/upnp/impl/f;->d(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p0

    if-nez p0, :cond_1

    :goto_0
    return-void

    :cond_1
    const-string p0, " selectPreset  "

    const-string p1, ""

    invoke-static {p0, p1}, Lcom/android/wiimu/upnp/impl/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/wiimu/upnp/impl/c;

    move-result-object p0

    throw p0
.end method

.method public setAlarmQueue(Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/android/wiimu/upnp/impl/f;->d(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p2

    if-nez p2, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/wiimu/upnp/impl/e$l;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/android/wiimu/upnp/impl/e$l;-><init>(Lcom/android/wiimu/upnp/impl/e;Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    return-void
.end method

.method public setChannel(ILorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/android/wiimu/upnp/impl/f;->d(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p2

    if-nez p2, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/wiimu/upnp/impl/e$i;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/android/wiimu/upnp/impl/e$i;-><init>(Lcom/android/wiimu/upnp/impl/e;Lorg/teleal/cling/model/meta/Service;ILcom/android/wiimu/upnp/IWiimuActionCallback;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallbackNotResponse;)V

    return-void
.end method

.method public setEqualizer(Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p2}, Lcom/android/wiimu/upnp/impl/f;->d(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    const-string p0, " setEqualizer "

    const-string p1, " desiredEqualizer"

    invoke-static {p0, p1}, Lcom/android/wiimu/upnp/impl/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/wiimu/upnp/impl/c;

    move-result-object p0

    throw p0
.end method

.method public setMute(ZLorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/android/wiimu/upnp/impl/f;->d(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p2

    if-nez p2, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/wiimu/upnp/impl/e$j;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/android/wiimu/upnp/impl/e$j;-><init>(Lcom/android/wiimu/upnp/impl/e;Lorg/teleal/cling/model/meta/Service;ZLcom/android/wiimu/upnp/IWiimuActionCallback;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    return-void
.end method

.method public setVolume(ILorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/android/wiimu/upnp/impl/f;->d(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/wiimu/upnp/impl/e$k;

    int-to-long v3, p1

    move-object v1, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/wiimu/upnp/impl/e$k;-><init>(Lcom/android/wiimu/upnp/impl/e;Lorg/teleal/cling/model/meta/Service;JLcom/android/wiimu/upnp/IWiimuActionCallback;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallbackNotResponse;)V

    return-void
.end method
