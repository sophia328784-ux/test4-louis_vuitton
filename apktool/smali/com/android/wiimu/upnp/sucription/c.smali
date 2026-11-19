.class public Lcom/android/wiimu/upnp/sucription/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wiimu/upnp/sucription/c$a;
    }
.end annotation


# instance fields
.field a:Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEvent;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/wiimu/upnp/sucription/b;

    invoke-direct {v0}, Lcom/android/wiimu/upnp/sucription/b;-><init>()V

    iput-object v0, p0, Lcom/android/wiimu/upnp/sucription/c;->a:Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEvent;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/android/wiimu/upnp/sucription/c;-><init>()V

    return-void
.end method

.method public static a()Lcom/android/wiimu/upnp/sucription/c;
    .locals 1

    sget-object v0, Lcom/android/wiimu/upnp/sucription/c$a;->a:Lcom/android/wiimu/upnp/sucription/c;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEvent;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/android/wiimu/upnp/sucription/c;->a:Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEvent;

    return-void
.end method

.method public b()Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEvent;
    .locals 0

    iget-object p0, p0, Lcom/android/wiimu/upnp/sucription/c;->a:Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEvent;

    return-object p0
.end method

.method public subscriptEventAVTransport(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEventCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/sucription/c;->a:Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEvent;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEvent;->subscriptEventAVTransport(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEventCallback;)V

    :cond_0
    return-void
.end method

.method public subscriptEventPlayQueue(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEventCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/sucription/c;->a:Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEvent;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEvent;->subscriptEventPlayQueue(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEventCallback;)V

    :cond_0
    return-void
.end method

.method public subscriptEventRenderingControl(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEventCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/upnp/sucription/c;->a:Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEvent;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEvent;->subscriptEventRenderingControl(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEventCallback;)V

    :cond_0
    return-void
.end method
