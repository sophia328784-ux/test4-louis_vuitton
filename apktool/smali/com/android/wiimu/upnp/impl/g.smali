.class public Lcom/android/wiimu/upnp/impl/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/wiimu/upnp/IWiimuAVTransport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wiimu/upnp/impl/g$a;
    }
.end annotation


# instance fields
.field private a:Lcom/android/wiimu/upnp/IWiimuAVTransport;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/wiimu/upnp/impl/b;

    invoke-direct {v0}, Lcom/android/wiimu/upnp/impl/b;-><init>()V

    iput-object v0, p0, Lcom/android/wiimu/upnp/impl/g;->a:Lcom/android/wiimu/upnp/IWiimuAVTransport;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/android/wiimu/upnp/impl/g;-><init>()V

    return-void
.end method

.method public static b()Lcom/android/wiimu/upnp/impl/g;
    .locals 1

    invoke-static {}, Lcom/android/wiimu/upnp/impl/g$a;->a()Lcom/android/wiimu/upnp/impl/g;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public BackForward(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/g;->a:Lcom/android/wiimu/upnp/IWiimuAVTransport;

    invoke-interface {p0, p1, p2}, Lcom/android/wiimu/upnp/IWiimuAVTransport;->BackForward(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public SeekForward(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/g;->a:Lcom/android/wiimu/upnp/IWiimuAVTransport;

    invoke-interface {p0, p1, p2}, Lcom/android/wiimu/upnp/IWiimuAVTransport;->SeekForward(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public a()Lcom/android/wiimu/upnp/IWiimuAVTransport;
    .locals 0

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/g;->a:Lcom/android/wiimu/upnp/IWiimuAVTransport;

    return-object p0
.end method

.method public a(Lcom/android/wiimu/upnp/IWiimuAVTransport;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/android/wiimu/upnp/impl/g;->a:Lcom/android/wiimu/upnp/IWiimuAVTransport;

    return-void
.end method

.method public getCurrentTranportActions(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/g;->a:Lcom/android/wiimu/upnp/IWiimuAVTransport;

    invoke-interface {p0, p1, p2}, Lcom/android/wiimu/upnp/IWiimuAVTransport;->getCurrentTranportActions(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public getDeviceCapabilities(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/g;->a:Lcom/android/wiimu/upnp/IWiimuAVTransport;

    invoke-interface {p0, p1, p2}, Lcom/android/wiimu/upnp/IWiimuAVTransport;->getDeviceCapabilities(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public getInfoEx(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/g;->a:Lcom/android/wiimu/upnp/IWiimuAVTransport;

    invoke-interface {p0, p1, p2}, Lcom/android/wiimu/upnp/IWiimuAVTransport;->getInfoEx(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public getMediaInfo(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/g;->a:Lcom/android/wiimu/upnp/IWiimuAVTransport;

    invoke-interface {p0, p1, p2}, Lcom/android/wiimu/upnp/IWiimuAVTransport;->getMediaInfo(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public getPDADeviceInfo(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/g;->a:Lcom/android/wiimu/upnp/IWiimuAVTransport;

    invoke-interface {p0, p1, p2}, Lcom/android/wiimu/upnp/IWiimuAVTransport;->getPDADeviceInfo(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public getPlayType(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/g;->a:Lcom/android/wiimu/upnp/IWiimuAVTransport;

    invoke-interface {p0, p1, p2}, Lcom/android/wiimu/upnp/IWiimuAVTransport;->getPlayType(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public getPositionInfo(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/g;->a:Lcom/android/wiimu/upnp/IWiimuAVTransport;

    invoke-interface {p0, p1, p2}, Lcom/android/wiimu/upnp/IWiimuAVTransport;->getPositionInfo(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public getTransportInfo(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/g;->a:Lcom/android/wiimu/upnp/IWiimuAVTransport;

    invoke-interface {p0, p1, p2}, Lcom/android/wiimu/upnp/IWiimuAVTransport;->getTransportInfo(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public getTransportSettings(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/g;->a:Lcom/android/wiimu/upnp/IWiimuAVTransport;

    invoke-interface {p0, p1, p2}, Lcom/android/wiimu/upnp/IWiimuAVTransport;->getTransportSettings(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public next(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/g;->a:Lcom/android/wiimu/upnp/IWiimuAVTransport;

    invoke-interface {p0, p1, p2}, Lcom/android/wiimu/upnp/IWiimuAVTransport;->next(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public pause(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/g;->a:Lcom/android/wiimu/upnp/IWiimuAVTransport;

    invoke-interface {p0, p1, p2}, Lcom/android/wiimu/upnp/IWiimuAVTransport;->pause(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public play(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/g;->a:Lcom/android/wiimu/upnp/IWiimuAVTransport;

    invoke-interface {p0, p1, p2}, Lcom/android/wiimu/upnp/IWiimuAVTransport;->play(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public previous(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/g;->a:Lcom/android/wiimu/upnp/IWiimuAVTransport;

    invoke-interface {p0, p1, p2}, Lcom/android/wiimu/upnp/IWiimuAVTransport;->previous(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public seek(ILorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/g;->a:Lcom/android/wiimu/upnp/IWiimuAVTransport;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/wiimu/upnp/IWiimuAVTransport;->seek(ILorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public setAVTransportURI(Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/g;->a:Lcom/android/wiimu/upnp/IWiimuAVTransport;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/wiimu/upnp/IWiimuAVTransport;->setAVTransportURI(Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public setPDAClientCfg(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/model/pda/a;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7
    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/g;->a:Lcom/android/wiimu/upnp/IWiimuAVTransport;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/wiimu/upnp/IWiimuAVTransport;->setPDAClientCfg(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/model/pda/a;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public setPDAClientCfg(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/model/pda/b;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6
    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/g;->a:Lcom/android/wiimu/upnp/IWiimuAVTransport;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/wiimu/upnp/IWiimuAVTransport;->setPDAClientCfg(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/model/pda/b;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public setPDAClientCfg(Lorg/teleal/cling/model/meta/Device;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/g;->a:Lcom/android/wiimu/upnp/IWiimuAVTransport;

    invoke-interface/range {p0 .. p7}, Lcom/android/wiimu/upnp/IWiimuAVTransport;->setPDAClientCfg(Lorg/teleal/cling/model/meta/Device;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method

.method public stop(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/g;->a:Lcom/android/wiimu/upnp/IWiimuAVTransport;

    invoke-interface {p0, p1, p2}, Lcom/android/wiimu/upnp/IWiimuAVTransport;->stop(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V

    return-void
.end method
