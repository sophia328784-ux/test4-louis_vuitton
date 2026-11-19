.class Lcom/android/wiimu/upnp/impl/e$d;
.super Lorg/teleal/cling/support/renderingcontrol/callback/GetChannel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wiimu/upnp/impl/e;->getChannel(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/wiimu/upnp/IWiimuActionCallback;


# direct methods
.method public constructor <init>(Lcom/android/wiimu/upnp/impl/e;Lorg/teleal/cling/model/meta/Service;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    .locals 0

    iput-object p3, p0, Lcom/android/wiimu/upnp/impl/e$d;->a:Lcom/android/wiimu/upnp/IWiimuActionCallback;

    invoke-direct {p0, p2}, Lorg/teleal/cling/support/renderingcontrol/callback/GetChannel;-><init>(Lorg/teleal/cling/model/meta/Service;)V

    return-void
.end method


# virtual methods
.method public failure(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/e$d;->a:Lcom/android/wiimu/upnp/IWiimuActionCallback;

    if-eqz p0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/android/wiimu/upnp/impl/c;->a(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/String;)Lcom/android/wiimu/upnp/impl/c;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/wiimu/upnp/IWiimuActionCallback;->failure(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public received(Lorg/teleal/cling/model/action/ActionInvocation;I)V
    .locals 0

    return-void
.end method

.method public success(Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/teleal/cling/support/renderingcontrol/callback/GetChannel;->success(Lorg/teleal/cling/model/action/ActionInvocation;)V

    iget-object v0, p0, Lcom/android/wiimu/upnp/impl/e$d;->a:Lcom/android/wiimu/upnp/IWiimuActionCallback;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lorg/teleal/cling/model/action/ActionInvocation;->c:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "CurrentChannel"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/action/ActionArgumentValue;

    iget-object v0, v0, Lorg/teleal/cling/model/VariableValue;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/e$d;->a:Lcom/android/wiimu/upnp/IWiimuActionCallback;

    invoke-interface {p0, p1}, Lcom/android/wiimu/upnp/IWiimuActionCallback;->success(Ljava/util/Map;)V

    :cond_0
    return-void
.end method
