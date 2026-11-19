.class Lcom/linkplay/core/clingx/LPDlnaServiceProvider$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->makeDlnaSubscriptionPlayQueue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linkplay/core/clingx/LPDlnaServiceProvider;


# direct methods
.method public constructor <init>(Lcom/linkplay/core/clingx/LPDlnaServiceProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider$8;->this$0:Lcom/linkplay/core/clingx/LPDlnaServiceProvider;

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

    const-string p1, "LINKPLAY_SDK"

    invoke-static {p1, p0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

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

    const-string p1, "LINKPLAY_SDK"

    invoke-static {p1, p0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public eventReceived(Lorg/teleal/cling/model/gena/GENASubscription;)V
    .locals 1

    invoke-static {}, Lcom/android/wiimu/upnp/sucription/a;->a()Lcom/android/wiimu/upnp/sucription/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/wiimu/upnp/sucription/a;->c(Lorg/teleal/cling/model/gena/GENASubscription;)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider$8;->this$0:Lcom/linkplay/core/clingx/LPDlnaServiceProvider;

    invoke-static {p0, p1}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->g(Lcom/linkplay/core/clingx/LPDlnaServiceProvider;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public eventsMissed(Lorg/teleal/cling/model/gena/GENASubscription;I)V
    .locals 0

    return-void
.end method

.method public failed(Lorg/teleal/cling/model/gena/GENASubscription;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
