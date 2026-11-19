.class Lcom/android/wiimu/upnp/impl/b$j;
.super Lorg/teleal/cling/support/avtransport/callback/GetInfoEx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wiimu/upnp/impl/b;->getInfoEx(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
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

    iput-object p3, p0, Lcom/android/wiimu/upnp/impl/b$j;->a:Lcom/android/wiimu/upnp/IWiimuActionCallback;

    invoke-direct {p0, p2}, Lorg/teleal/cling/support/avtransport/callback/GetInfoEx;-><init>(Lorg/teleal/cling/model/meta/Service;)V

    return-void
.end method


# virtual methods
.method public failure(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/b$j;->a:Lcom/android/wiimu/upnp/IWiimuActionCallback;

    if-eqz p0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/android/wiimu/upnp/impl/c;->a(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/String;)Lcom/android/wiimu/upnp/impl/c;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/wiimu/upnp/IWiimuActionCallback;->failure(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public success(Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/teleal/cling/support/avtransport/callback/GetInfoEx;->success(Lorg/teleal/cling/model/action/ActionInvocation;)V

    iget-object v0, p1, Lorg/teleal/cling/model/action/ActionInvocation;->d:Lorg/teleal/cling/model/action/ActionException;

    if-eqz v0, :cond_0

    iget v0, v0, Lorg/teleal/cling/model/action/ActionException;->b:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/b$j;->a:Lcom/android/wiimu/upnp/IWiimuActionCallback;

    new-instance v0, Ljava/lang/Exception;

    iget-object p1, p1, Lorg/teleal/cling/model/action/ActionInvocation;->d:Lorg/teleal/cling/model/action/ActionException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/android/wiimu/upnp/IWiimuActionCallback;->failure(Ljava/lang/Exception;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/b$j;->a:Lcom/android/wiimu/upnp/IWiimuActionCallback;

    if-eqz p0, :cond_1

    iget-object p1, p1, Lorg/teleal/cling/model/action/ActionInvocation;->c:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/wiimu/upnp/IWiimuActionCallback;->success(Ljava/util/Map;)V

    :cond_1
    return-void
.end method
