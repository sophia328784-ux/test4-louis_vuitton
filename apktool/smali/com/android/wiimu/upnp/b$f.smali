.class Lcom/android/wiimu/upnp/b$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wiimu/upnp/b;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/wiimu/upnp/b;


# direct methods
.method public constructor <init>(Lcom/android/wiimu/upnp/b;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wiimu/upnp/b$f;->a:Lcom/android/wiimu/upnp/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ended(Lorg/teleal/cling/model/gena/GENASubscription;Lorg/teleal/cling/model/gena/CancelReason;Lorg/teleal/cling/model/message/UpnpResponse;)V
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "AVTransport:Subscription:ended:"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/teleal/cling/model/gena/GENASubscription;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SDK_TAG"

    invoke-static {p1, p0}, Lcom/linkplay/log/LinkplayLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public established(Lorg/teleal/cling/model/gena/GENASubscription;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "AVTransport:Subscription:established:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/teleal/cling/model/gena/GENASubscription;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SDK_TAG"

    invoke-static {p1, p0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public eventReceived(Lorg/teleal/cling/model/gena/GENASubscription;)V
    .locals 1

    iget-object p0, p0, Lcom/android/wiimu/upnp/b$f;->a:Lcom/android/wiimu/upnp/b;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wiimu/upnp/b;->i:I

    invoke-static {}, Lcom/android/wiimu/upnp/sucription/a;->a()Lcom/android/wiimu/upnp/sucription/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/wiimu/upnp/sucription/a;->d(Lorg/teleal/cling/model/gena/GENASubscription;)Ljava/util/Map;

    return-void
.end method

.method public eventsMissed(Lorg/teleal/cling/model/gena/GENASubscription;I)V
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "RenderingControl:Subscription:missed:"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/teleal/cling/model/gena/GENASubscription;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SDK_TAG"

    invoke-static {p1, p0}, Lcom/linkplay/log/LinkplayLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public failed(Lorg/teleal/cling/model/gena/GENASubscription;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "RenderingControl Subscription failed  :"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/wiimu/upnp/b$f;->a:Lcom/android/wiimu/upnp/b;

    invoke-static {p2}, Lcom/android/wiimu/upnp/b;->b(Lcom/android/wiimu/upnp/b;)Lb/c;

    move-result-object p2

    iget-object p2, p2, Lb/c;->e:Lb/e;

    iget-object p2, p2, Lb/e;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SDK_TAG"

    invoke-static {p2, p1}, Lcom/linkplay/log/LinkplayLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wiimu/upnp/b$f;->a:Lcom/android/wiimu/upnp/b;

    iget p1, p0, Lcom/android/wiimu/upnp/b;->i:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/wiimu/upnp/b;->i:I

    invoke-static {p0}, Lcom/android/wiimu/upnp/b;->f(Lcom/android/wiimu/upnp/b;)V

    return-void
.end method
