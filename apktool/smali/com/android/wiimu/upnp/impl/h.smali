.class public Lcom/android/wiimu/upnp/impl/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/android/wiimu/upnp/IWiimuAVTransport;
    .locals 1

    .line 50
    invoke-static {}, Lcom/android/wiimu/upnp/impl/g;->b()Lcom/android/wiimu/upnp/impl/g;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/android/wiimu/upnp/IWiimuAVTransport;)V
    .locals 1

    .line 45
    invoke-static {}, Lcom/android/wiimu/upnp/impl/g;->b()Lcom/android/wiimu/upnp/impl/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/wiimu/upnp/impl/g;->a(Lcom/android/wiimu/upnp/IWiimuAVTransport;)V

    return-void
.end method

.method public static a(Lcom/android/wiimu/upnp/IWiimuPlayQueue;)V
    .locals 1

    .line 48
    invoke-static {}, Lcom/android/wiimu/upnp/impl/j;->a()Lcom/android/wiimu/upnp/impl/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/wiimu/upnp/impl/j;->a(Lcom/android/wiimu/upnp/IWiimuPlayQueue;)V

    return-void
.end method

.method public static a(Lcom/android/wiimu/upnp/IWiimuRenderingControl;)V
    .locals 1

    .line 46
    invoke-static {}, Lcom/android/wiimu/upnp/impl/k;->a()Lcom/android/wiimu/upnp/impl/k;

    move-result-object v0

    .line 47
    invoke-virtual {v0, p0}, Lcom/android/wiimu/upnp/impl/k;->a(Lcom/android/wiimu/upnp/IWiimuRenderingControl;)V

    return-void
.end method

.method public static a(Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEvent;)V
    .locals 1

    .line 49
    invoke-static {}, Lcom/android/wiimu/upnp/sucription/c;->a()Lcom/android/wiimu/upnp/sucription/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/wiimu/upnp/sucription/c;->a(Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEvent;)V

    return-void
.end method

.method public static a(Lorg/teleal/cling/controlpoint/ActionCallback;)V
    .locals 1

    invoke-static {}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->getInstance()Lcom/linkplay/core/clingx/LPSearchControlPoint;

    sget-object v0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->upnpservice:Lorg/teleal/cling/android/AndroidUpnpService;

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    invoke-interface {v0}, Lorg/teleal/cling/android/AndroidUpnpService;->a()Lorg/teleal/cling/controlpoint/ControlPointImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/controlpoint/ActionCallback;->setControlPoint(Lorg/teleal/cling/controlpoint/ControlPoint;)Lorg/teleal/cling/controlpoint/ActionCallback;

    iget-object v0, v0, Lorg/teleal/cling/controlpoint/ControlPointImpl;->a:Lorg/teleal/cling/UpnpServiceConfiguration;

    invoke-interface {v0}, Lorg/teleal/cling/UpnpServiceConfiguration;->o()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p0, Lcom/android/wiimu/upnp/impl/i;

    const-string v0, "ActionCallback is null,please input the correct ActionCallback"

    invoke-direct {p0, v0}, Lcom/android/wiimu/upnp/impl/i;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/android/wiimu/upnp/impl/i;

    const-string v0, "AndroidUpnpService  is null , please make sure it initialized"

    invoke-direct {p0, v0}, Lcom/android/wiimu/upnp/impl/i;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lorg/teleal/cling/controlpoint/ActionCallbackNotResponse;)V
    .locals 1

    .line 51
    invoke-static {}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->getInstance()Lcom/linkplay/core/clingx/LPSearchControlPoint;

    sget-object v0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->upnpservice:Lorg/teleal/cling/android/AndroidUpnpService;

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    .line 52
    invoke-interface {v0}, Lorg/teleal/cling/android/AndroidUpnpService;->a()Lorg/teleal/cling/controlpoint/ControlPointImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    invoke-virtual {p0, v0}, Lorg/teleal/cling/controlpoint/ActionCallbackNotResponse;->setControlPoint(Lorg/teleal/cling/controlpoint/ControlPoint;)Lorg/teleal/cling/controlpoint/ActionCallbackNotResponse;

    .line 54
    iget-object v0, v0, Lorg/teleal/cling/controlpoint/ControlPointImpl;->a:Lorg/teleal/cling/UpnpServiceConfiguration;

    .line 55
    invoke-interface {v0}, Lorg/teleal/cling/UpnpServiceConfiguration;->o()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 56
    :cond_0
    new-instance p0, Lcom/android/wiimu/upnp/impl/i;

    const-string v0, "ActionCallback is null,please input the correct ActionCallback"

    invoke-direct {p0, v0}, Lcom/android/wiimu/upnp/impl/i;-><init>(Ljava/lang/String;)V

    throw p0

    .line 57
    :cond_1
    new-instance p0, Lcom/android/wiimu/upnp/impl/i;

    const-string v0, "AndroidUpnpService  is null , please make sure it initialized"

    invoke-direct {p0, v0}, Lcom/android/wiimu/upnp/impl/i;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lorg/teleal/cling/controlpoint/SubscriptionCallback;)V
    .locals 1

    .line 58
    invoke-static {}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->getInstance()Lcom/linkplay/core/clingx/LPSearchControlPoint;

    sget-object v0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->upnpservice:Lorg/teleal/cling/android/AndroidUpnpService;

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    .line 59
    invoke-interface {v0}, Lorg/teleal/cling/android/AndroidUpnpService;->a()Lorg/teleal/cling/controlpoint/ControlPointImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    invoke-virtual {p0, v0}, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->setControlPoint(Lorg/teleal/cling/controlpoint/ControlPoint;)V

    .line 61
    iget-object v0, v0, Lorg/teleal/cling/controlpoint/ControlPointImpl;->a:Lorg/teleal/cling/UpnpServiceConfiguration;

    .line 62
    invoke-interface {v0}, Lorg/teleal/cling/UpnpServiceConfiguration;->o()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 63
    :cond_0
    new-instance p0, Lcom/android/wiimu/upnp/impl/i;

    const-string v0, "SubscriptionCallback is null,please input the correct SubscriptionCallback"

    invoke-direct {p0, v0}, Lcom/android/wiimu/upnp/impl/i;-><init>(Ljava/lang/String;)V

    throw p0

    .line 64
    :cond_1
    new-instance p0, Lcom/android/wiimu/upnp/impl/i;

    const-string v0, "AndroidUpnpService  is null , please make sure it initialized"

    invoke-direct {p0, v0}, Lcom/android/wiimu/upnp/impl/i;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b()Lcom/android/wiimu/upnp/IWiimuPlayQueue;
    .locals 1

    invoke-static {}, Lcom/android/wiimu/upnp/impl/j;->a()Lcom/android/wiimu/upnp/impl/j;

    move-result-object v0

    return-object v0
.end method

.method public static c()Lcom/android/wiimu/upnp/IWiimuRenderingControl;
    .locals 1

    invoke-static {}, Lcom/android/wiimu/upnp/impl/k;->a()Lcom/android/wiimu/upnp/impl/k;

    move-result-object v0

    return-object v0
.end method

.method public static d()Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEvent;
    .locals 1

    invoke-static {}, Lcom/android/wiimu/upnp/sucription/c;->a()Lcom/android/wiimu/upnp/sucription/c;

    move-result-object v0

    return-object v0
.end method
