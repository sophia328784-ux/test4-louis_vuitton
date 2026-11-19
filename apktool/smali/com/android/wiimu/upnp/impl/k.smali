.class public Lcom/android/wiimu/upnp/impl/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/wiimu/upnp/IWiimuRenderingControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wiimu/upnp/impl/k$a;
    }
.end annotation


# instance fields
.field private a:Lcom/android/wiimu/upnp/IWiimuRenderingControl;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/wiimu/upnp/impl/e;

    invoke-direct {v0}, Lcom/android/wiimu/upnp/impl/e;-><init>()V

    iput-object v0, p0, Lcom/android/wiimu/upnp/impl/k;->a:Lcom/android/wiimu/upnp/IWiimuRenderingControl;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/android/wiimu/upnp/impl/k;-><init>()V

    return-void
.end method

.method public static a()Lcom/android/wiimu/upnp/impl/k;
    .locals 1

    invoke-static {}, Lcom/android/wiimu/upnp/impl/k$a;->a()Lcom/android/wiimu/upnp/impl/k;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/android/wiimu/upnp/IWiimuRenderingControl;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/android/wiimu/upnp/impl/k;->a:Lcom/android/wiimu/upnp/IWiimuRenderingControl;

    return-void
.end method

.method public b()Lcom/android/wiimu/upnp/IWiimuRenderingControl;
    .locals 0

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/k;->a:Lcom/android/wiimu/upnp/IWiimuRenderingControl;

    return-object p0
.end method

.method public deleteAlarmQueue(Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/k;->a:Lcom/android/wiimu/upnp/IWiimuRenderingControl;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/wiimu/upnp/IWiimuRenderingControl;->deleteAlarmQueue(Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public getAlarmQueue(Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/k;->a:Lcom/android/wiimu/upnp/IWiimuRenderingControl;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/wiimu/upnp/IWiimuRenderingControl;->getAlarmQueue(Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public getChannel(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/k;->a:Lcom/android/wiimu/upnp/IWiimuRenderingControl;

    invoke-interface {p0, p1, p2}, Lcom/android/wiimu/upnp/IWiimuRenderingControl;->getChannel(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public getControlDeviceInfo(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/k;->a:Lcom/android/wiimu/upnp/IWiimuRenderingControl;

    invoke-interface {p0, p1, p2}, Lcom/android/wiimu/upnp/IWiimuRenderingControl;->getControlDeviceInfo(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public getEqualizer(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/k;->a:Lcom/android/wiimu/upnp/IWiimuRenderingControl;

    invoke-interface {p0, p1, p2}, Lcom/android/wiimu/upnp/IWiimuRenderingControl;->getEqualizer(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public getMute(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/k;->a:Lcom/android/wiimu/upnp/IWiimuRenderingControl;

    invoke-interface {p0, p1, p2}, Lcom/android/wiimu/upnp/IWiimuRenderingControl;->getMute(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public getStreamServicesCapability(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/k;->a:Lcom/android/wiimu/upnp/IWiimuRenderingControl;

    invoke-interface {p0, p1, p2}, Lcom/android/wiimu/upnp/IWiimuRenderingControl;->getStreamServicesCapability(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public getVolume(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/k;->a:Lcom/android/wiimu/upnp/IWiimuRenderingControl;

    invoke-interface {p0, p1, p2}, Lcom/android/wiimu/upnp/IWiimuRenderingControl;->getVolume(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public listPresets(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/k;->a:Lcom/android/wiimu/upnp/IWiimuRenderingControl;

    invoke-interface {p0, p1, p2}, Lcom/android/wiimu/upnp/IWiimuRenderingControl;->listPresets(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public multiPlaySlaveMask(Lorg/teleal/cling/model/meta/Device;ILcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6
    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/k;->a:Lcom/android/wiimu/upnp/IWiimuRenderingControl;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/wiimu/upnp/IWiimuRenderingControl;->multiPlaySlaveMask(Lorg/teleal/cling/model/meta/Device;ILcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public multiPlaySlaveMask(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/k;->a:Lcom/android/wiimu/upnp/IWiimuRenderingControl;

    invoke-interface {p0, p1, p2}, Lcom/android/wiimu/upnp/IWiimuRenderingControl;->multiPlaySlaveMask(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public selectPreset(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/k;->a:Lcom/android/wiimu/upnp/IWiimuRenderingControl;

    invoke-interface {p0, p1, p2}, Lcom/android/wiimu/upnp/IWiimuRenderingControl;->selectPreset(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public setAlarmQueue(Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/k;->a:Lcom/android/wiimu/upnp/IWiimuRenderingControl;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/wiimu/upnp/IWiimuRenderingControl;->setAlarmQueue(Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public setChannel(ILorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/k;->a:Lcom/android/wiimu/upnp/IWiimuRenderingControl;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/wiimu/upnp/IWiimuRenderingControl;->setChannel(ILorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public setEqualizer(Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/k;->a:Lcom/android/wiimu/upnp/IWiimuRenderingControl;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/wiimu/upnp/IWiimuRenderingControl;->setEqualizer(Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public setMute(ZLorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/k;->a:Lcom/android/wiimu/upnp/IWiimuRenderingControl;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/wiimu/upnp/IWiimuRenderingControl;->setMute(ZLorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public setVolume(ILorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/k;->a:Lcom/android/wiimu/upnp/IWiimuRenderingControl;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/wiimu/upnp/IWiimuRenderingControl;->setVolume(ILorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method
