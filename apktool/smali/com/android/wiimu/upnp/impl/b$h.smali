.class Lcom/android/wiimu/upnp/impl/b$h;
.super Lorg/teleal/cling/support/avtransport/callback/SeekBackward;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wiimu/upnp/impl/b;->BackForward(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/wiimu/upnp/IWiimuActionCallback;


# direct methods
.method public constructor <init>(Lcom/android/wiimu/upnp/impl/b;Lorg/teleal/cling/model/meta/Service;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0

    iput-object p3, p0, Lcom/android/wiimu/upnp/impl/b$h;->a:Lcom/android/wiimu/upnp/IWiimuActionCallback;

    invoke-direct {p0, p2}, Lorg/teleal/cling/support/avtransport/callback/SeekBackward;-><init>(Lorg/teleal/cling/model/meta/Service;)V

    return-void
.end method


# virtual methods
.method public failure(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/b$h;->a:Lcom/android/wiimu/upnp/IWiimuActionCallback;

    if-eqz p0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/android/wiimu/upnp/impl/c;->a(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/String;)Lcom/android/wiimu/upnp/impl/c;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/wiimu/upnp/IWiimuActionCallback;->failure(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public success(Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/teleal/cling/support/avtransport/callback/SeekBackward;->success(Lorg/teleal/cling/model/action/ActionInvocation;)V

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/b$h;->a:Lcom/android/wiimu/upnp/IWiimuActionCallback;

    if-eqz p0, :cond_0

    iget-object p1, p1, Lorg/teleal/cling/model/action/ActionInvocation;->c:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/wiimu/upnp/IWiimuActionCallback;->success(Ljava/util/Map;)V

    :cond_0
    return-void
.end method
