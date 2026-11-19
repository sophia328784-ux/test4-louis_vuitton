.class Lcom/android/wiimu/upnp/impl/d$u;
.super Lorg/teleal/cling/support/playqueue/callback/AppendTracksInQueueEx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wiimu/upnp/impl/d;->appendTracksInQueueEx(Ljava/lang/String;IILorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/wiimu/upnp/IWiimuActionCallback;


# direct methods
.method public constructor <init>(Lcom/android/wiimu/upnp/impl/d;Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;IILcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0

    iput-object p6, p0, Lcom/android/wiimu/upnp/impl/d$u;->a:Lcom/android/wiimu/upnp/IWiimuActionCallback;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/teleal/cling/support/playqueue/callback/AppendTracksInQueueEx;-><init>(Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public failure(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/teleal/cling/support/playqueue/callback/AppendTracksInQueueEx;->failure(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/d$u;->a:Lcom/android/wiimu/upnp/IWiimuActionCallback;

    if-eqz p0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/android/wiimu/upnp/impl/c;->a(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/String;)Lcom/android/wiimu/upnp/impl/c;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/wiimu/upnp/IWiimuActionCallback;->failure(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public success(Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/teleal/cling/support/playqueue/callback/AppendTracksInQueueEx;->success(Lorg/teleal/cling/model/action/ActionInvocation;)V

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/d$u;->a:Lcom/android/wiimu/upnp/IWiimuActionCallback;

    if-eqz p0, :cond_0

    iget-object p1, p1, Lorg/teleal/cling/model/action/ActionInvocation;->c:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/wiimu/upnp/IWiimuActionCallback;->success(Ljava/util/Map;)V

    :cond_0
    return-void
.end method
