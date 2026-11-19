.class Lcom/android/wiimu/upnp/sucription/b$a;
.super Lorg/teleal/cling/controlpoint/SubscriptionCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wiimu/upnp/sucription/b;->a(Lorg/teleal/cling/model/meta/Service;Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEventCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEventCallback;


# direct methods
.method public constructor <init>(Lcom/android/wiimu/upnp/sucription/b;Lorg/teleal/cling/model/meta/Service;Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEventCallback;)V
    .locals 0

    iput-object p3, p0, Lcom/android/wiimu/upnp/sucription/b$a;->a:Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEventCallback;

    invoke-direct {p0, p2}, Lorg/teleal/cling/controlpoint/SubscriptionCallback;-><init>(Lorg/teleal/cling/model/meta/Service;)V

    return-void
.end method


# virtual methods
.method public ended(Lorg/teleal/cling/model/gena/GENASubscription;Lorg/teleal/cling/model/gena/CancelReason;Lorg/teleal/cling/model/message/UpnpResponse;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wiimu/upnp/sucription/b$a;->a:Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEventCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEventCallback;->ended(Lorg/teleal/cling/model/gena/GENASubscription;Lorg/teleal/cling/model/gena/CancelReason;Lorg/teleal/cling/model/message/UpnpResponse;)V

    :cond_0
    return-void
.end method

.method public established(Lorg/teleal/cling/model/gena/GENASubscription;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wiimu/upnp/sucription/b$a;->a:Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEventCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEventCallback;->established(Lorg/teleal/cling/model/gena/GENASubscription;)V

    :cond_0
    return-void
.end method

.method public eventReceived(Lorg/teleal/cling/model/gena/GENASubscription;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wiimu/upnp/sucription/b$a;->a:Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEventCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEventCallback;->eventReceived(Lorg/teleal/cling/model/gena/GENASubscription;)V

    :cond_0
    return-void
.end method

.method public eventsMissed(Lorg/teleal/cling/model/gena/GENASubscription;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/wiimu/upnp/sucription/b$a;->a:Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEventCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEventCallback;->eventsMissed(Lorg/teleal/cling/model/gena/GENASubscription;I)V

    :cond_0
    return-void
.end method

.method public failed(Lorg/teleal/cling/model/gena/GENASubscription;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wiimu/upnp/sucription/b$a;->a:Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEventCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEventCallback;->failed(Lorg/teleal/cling/model/gena/GENASubscription;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_0
    monitor-enter p1

    monitor-exit p1

    return-void
.end method
