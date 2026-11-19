.class public Lcom/android/wiimu/upnp/impl/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/wiimu/upnp/IWiimuAVTransport;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public BackForward(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/wiimu/upnp/impl/f;->a(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/wiimu/upnp/impl/b$h;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/wiimu/upnp/impl/b$h;-><init>(Lcom/android/wiimu/upnp/impl/b;Lorg/teleal/cling/model/meta/Service;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallbackNotResponse;)V

    return-void
.end method

.method public SeekForward(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/wiimu/upnp/impl/f;->a(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/wiimu/upnp/impl/b$i;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/wiimu/upnp/impl/b$i;-><init>(Lcom/android/wiimu/upnp/impl/b;Lorg/teleal/cling/model/meta/Service;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallbackNotResponse;)V

    return-void
.end method

.method public getCurrentTranportActions(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p0, "getCurrentTranportActions"

    const-string p1, ""

    invoke-static {p0, p1}, Lcom/android/wiimu/upnp/impl/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/wiimu/upnp/impl/c;

    move-result-object p0

    throw p0
.end method

.method public getDeviceCapabilities(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p0, "getDeviceCapabilities"

    const-string p1, ""

    invoke-static {p0, p1}, Lcom/android/wiimu/upnp/impl/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/wiimu/upnp/impl/c;

    move-result-object p0

    throw p0
.end method

.method public getInfoEx(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/wiimu/upnp/impl/f;->a(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/wiimu/upnp/impl/b$j;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/wiimu/upnp/impl/b$j;-><init>(Lcom/android/wiimu/upnp/impl/b;Lorg/teleal/cling/model/meta/Service;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    return-void
.end method

.method public getMediaInfo(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/wiimu/upnp/impl/f;->a(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/wiimu/upnp/impl/b$o;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/wiimu/upnp/impl/b$o;-><init>(Lcom/android/wiimu/upnp/impl/b;Lorg/teleal/cling/model/meta/Service;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    return-void
.end method

.method public getPDADeviceInfo(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/wiimu/upnp/impl/f;->a(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/wiimu/upnp/impl/b$k;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/wiimu/upnp/impl/b$k;-><init>(Lcom/android/wiimu/upnp/impl/b;Lorg/teleal/cling/model/meta/Service;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    return-void
.end method

.method public getPlayType(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/wiimu/upnp/impl/f;->a(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p0

    if-nez p0, :cond_1

    :goto_0
    return-void

    :cond_1
    const-string p0, "getPlayType"

    const-string p1, ""

    invoke-static {p0, p1}, Lcom/android/wiimu/upnp/impl/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/wiimu/upnp/impl/c;

    move-result-object p0

    throw p0
.end method

.method public getPositionInfo(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/wiimu/upnp/impl/f;->a(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/wiimu/upnp/impl/b$p;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/wiimu/upnp/impl/b$p;-><init>(Lcom/android/wiimu/upnp/impl/b;Lorg/teleal/cling/model/meta/Service;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    return-void
.end method

.method public getTransportInfo(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/wiimu/upnp/impl/f;->a(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/wiimu/upnp/impl/b$q;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/wiimu/upnp/impl/b$q;-><init>(Lcom/android/wiimu/upnp/impl/b;Lorg/teleal/cling/model/meta/Service;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    return-void
.end method

.method public getTransportSettings(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/wiimu/upnp/impl/f;->a(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/wiimu/upnp/impl/b$r;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/wiimu/upnp/impl/b$r;-><init>(Lcom/android/wiimu/upnp/impl/b;Lorg/teleal/cling/model/meta/Service;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    return-void
.end method

.method public next(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/wiimu/upnp/impl/f;->a(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/wiimu/upnp/impl/b$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/wiimu/upnp/impl/b$a;-><init>(Lcom/android/wiimu/upnp/impl/b;Lorg/teleal/cling/model/meta/Service;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallbackNotResponse;)V

    return-void
.end method

.method public pause(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/wiimu/upnp/impl/f;->a(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/wiimu/upnp/impl/b$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/wiimu/upnp/impl/b$b;-><init>(Lcom/android/wiimu/upnp/impl/b;Lorg/teleal/cling/model/meta/Service;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallbackNotResponse;)V

    return-void
.end method

.method public play(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/wiimu/upnp/impl/f;->a(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/wiimu/upnp/impl/b$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/wiimu/upnp/impl/b$c;-><init>(Lcom/android/wiimu/upnp/impl/b;Lorg/teleal/cling/model/meta/Service;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallbackNotResponse;)V

    return-void
.end method

.method public previous(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/wiimu/upnp/impl/f;->a(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/wiimu/upnp/impl/b$d;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/wiimu/upnp/impl/b$d;-><init>(Lcom/android/wiimu/upnp/impl/b;Lorg/teleal/cling/model/meta/Service;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallbackNotResponse;)V

    return-void
.end method

.method public seek(ILorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/android/wiimu/upnp/impl/f;->a(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_0
    return-void

    :cond_1
    div-int/lit16 p2, p1, 0xe10

    mul-int/lit16 v0, p2, 0xe10

    sub-int/2addr p1, v0

    div-int/lit8 v0, p1, 0x3c

    mul-int/lit8 v1, v0, 0x3c

    sub-int/2addr p1, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p2, v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%02d:%02d:%02d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/android/wiimu/upnp/impl/b$e;

    sget-object v3, Lorg/teleal/cling/support/model/SeekMode;->REL_TIME:Lorg/teleal/cling/support/model/SeekMode;

    move-object v1, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/wiimu/upnp/impl/b$e;-><init>(Lcom/android/wiimu/upnp/impl/b;Lorg/teleal/cling/model/meta/Service;Lorg/teleal/cling/support/model/SeekMode;Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallbackNotResponse;)V

    return-void
.end method

.method public setAVTransportURI(Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lcom/android/wiimu/upnp/impl/f;->a(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/wiimu/upnp/impl/b$f;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/wiimu/upnp/impl/b$f;-><init>(Lcom/android/wiimu/upnp/impl/b;Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    return-void
.end method

.method public setPDAClientCfg(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/model/pda/a;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    invoke-static {p1}, Lcom/android/wiimu/upnp/impl/f;->a(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    .line 245
    :cond_1
    :try_start_0
    new-instance v0, Lcom/android/wiimu/upnp/impl/b$l;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/wiimu/upnp/impl/b$l;-><init>(Lcom/android/wiimu/upnp/impl/b;Lorg/teleal/cling/model/meta/Service;Lcom/android/wiimu/model/pda/a;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    .line 246
    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 247
    invoke-interface {p3, p0}, Lcom/android/wiimu/upnp/IWiimuActionCallback;->failure(Ljava/lang/Exception;)V

    return-void
.end method

.method public setPDAClientCfg(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/model/pda/b;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "\\\",\\\"password\\\":\\\"\\\",\\\"accessToken\\\":\\\""

    const-string v1, "{\\\"account\\\":\\\""

    if-nez p1, :cond_0

    if-eqz p3, :cond_6

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "setPDAClientCfg mediaRender is null Ponter exception."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p0}, Lcom/android/wiimu/upnp/IWiimuActionCallback;->failure(Ljava/lang/Exception;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/wiimu/upnp/impl/f;->a(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object v2

    if-nez v2, :cond_1

    if-eqz p3, :cond_6

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "setPDAClientCfg service is null Ponter exception."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p0}, Lcom/android/wiimu/upnp/IWiimuActionCallback;->failure(Ljava/lang/Exception;)V

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/android/wiimu/model/pda/b;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p3, :cond_6

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "setPDAClientCfg UserName is Empty."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p0}, Lcom/android/wiimu/upnp/IWiimuActionCallback;->failure(Ljava/lang/Exception;)V

    return-void

    :cond_2
    invoke-virtual {p2}, Lcom/android/wiimu/model/pda/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p3, :cond_6

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "setPDAClientCfg AccessToken is Empty."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p0}, Lcom/android/wiimu/upnp/IWiimuActionCallback;->failure(Ljava/lang/Exception;)V

    return-void

    :cond_3
    invoke-virtual {p2}, Lcom/android/wiimu/model/pda/b;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz p3, :cond_6

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "setPDAClientCfg RefreshToken is Empty."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p0}, Lcom/android/wiimu/upnp/IWiimuActionCallback;->failure(Ljava/lang/Exception;)V

    return-void

    :cond_4
    invoke-virtual {p2}, Lcom/android/wiimu/model/pda/b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz p3, :cond_6

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "setPDAClientCfg DeviceResigerResponse is Empty."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p0}, Lcom/android/wiimu/upnp/IWiimuActionCallback;->failure(Ljava/lang/Exception;)V

    return-void

    :cond_5
    :try_start_0
    invoke-virtual {p2}, Lcom/android/wiimu/model/pda/b;->b()Ljava/lang/String;

    move-result-object p1

    const-class v3, Lcom/android/wiimu/model/pda/c;

    invoke-static {p1, v3}, Lcom/android/wiimu/utils/GsonUtil;->parseJsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wiimu/model/pda/c;

    invoke-virtual {p2}, Lcom/android/wiimu/model/pda/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/wiimu/model/pda/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/wiimu/model/pda/b;->c()Ljava/lang/String;

    move-result-object p2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\\\",\\\"refreshToken\\\":\\\""

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\\\"}"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lcom/android/wiimu/upnp/impl/b$n;

    invoke-virtual {p1}, Lcom/android/wiimu/model/pda/c;->c()Lcom/android/wiimu/model/pda/c$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/wiimu/model/pda/c$a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/wiimu/model/pda/c;->c()Lcom/android/wiimu/model/pda/c$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/wiimu/model/pda/c$a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/wiimu/model/pda/c;->c()Lcom/android/wiimu/model/pda/c$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/wiimu/model/pda/c$a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/wiimu/model/pda/c;->c()Lcom/android/wiimu/model/pda/c$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wiimu/model/pda/c$a;->e()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, p0

    move-object v8, p3

    :try_start_1
    invoke-direct/range {v0 .. v8}, Lcom/android/wiimu/upnp/impl/b$n;-><init>(Lcom/android/wiimu/upnp/impl/b;Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    :goto_0
    move-object p0, v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v8, p3

    goto :goto_0

    :goto_1
    if-eqz v8, :cond_6

    invoke-interface {v8, p0}, Lcom/android/wiimu/upnp/IWiimuActionCallback;->failure(Ljava/lang/Exception;)V

    :cond_6
    return-void
.end method

.method public setPDAClientCfg(Lorg/teleal/cling/model/meta/Device;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    invoke-static {p1}, Lcom/android/wiimu/upnp/impl/f;->a(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_0
    return-void

    .line 241
    :cond_1
    :try_start_0
    new-instance v0, Lcom/android/wiimu/upnp/impl/b$m;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/wiimu/upnp/impl/b$m;-><init>(Lcom/android/wiimu/upnp/impl/b;Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    .line 242
    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    move-object/from16 v8, p7

    .line 243
    invoke-interface {v8, p0}, Lcom/android/wiimu/upnp/IWiimuActionCallback;->failure(Ljava/lang/Exception;)V

    return-void
.end method

.method public stop(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/wiimu/upnp/impl/f;->a(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/wiimu/upnp/impl/b$g;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/wiimu/upnp/impl/b$g;-><init>(Lcom/android/wiimu/upnp/impl/b;Lorg/teleal/cling/model/meta/Service;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    return-void
.end method
