.class public Lcom/android/wiimu/upnp/sucription/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEvent;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lorg/teleal/cling/model/meta/Service;Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEventCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/meta/Service<",
            "Lorg/teleal/cling/model/meta/Device;",
            "Lorg/teleal/cling/model/meta/Service;",
            ">;",
            "Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEventCallback;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/wiimu/upnp/sucription/b$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/wiimu/upnp/sucription/b$a;-><init>(Lcom/android/wiimu/upnp/sucription/b;Lorg/teleal/cling/model/meta/Service;Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEventCallback;)V

    invoke-static {v0}, Lcom/android/wiimu/upnp/impl/h;->a(Lorg/teleal/cling/controlpoint/SubscriptionCallback;)V

    return-void

    :cond_0
    new-instance p0, Lcom/android/wiimu/upnp/impl/i;

    const-string p1, "this service subscription  is not supported "

    invoke-direct {p0, p1}, Lcom/android/wiimu/upnp/impl/i;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public subscriptEventAVTransport(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEventCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1}, Lcom/android/wiimu/upnp/impl/f;->a(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/wiimu/upnp/sucription/b;->a(Lorg/teleal/cling/model/meta/Service;Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEventCallback;)V

    return-void
.end method

.method public subscriptEventPlayQueue(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEventCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1}, Lcom/android/wiimu/upnp/impl/f;->c(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/wiimu/upnp/sucription/b;->a(Lorg/teleal/cling/model/meta/Service;Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEventCallback;)V

    return-void
.end method

.method public subscriptEventRenderingControl(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEventCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1}, Lcom/android/wiimu/upnp/impl/f;->d(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/wiimu/upnp/sucription/b;->a(Lorg/teleal/cling/model/meta/Service;Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEventCallback;)V

    return-void
.end method
