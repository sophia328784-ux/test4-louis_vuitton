.class Lcom/android/wiimu/upnp/impl/d$t;
.super Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wiimu/upnp/impl/d;->browseNAS(Lorg/teleal/cling/model/meta/Device;Lcom/linkplay/core/nas/LPMediaServerPlayItem;IILcom/linkplay/core/nas/LPMediaServerResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/linkplay/core/nas/LPMediaServerResultListener;

.field final synthetic b:Lcom/android/wiimu/upnp/impl/d;


# direct methods
.method public constructor <init>(Lcom/android/wiimu/upnp/impl/d;Lorg/teleal/cling/model/meta/Service;IILorg/teleal/cling/support/model/container/Container;Lcom/linkplay/core/nas/LPMediaServerResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wiimu/upnp/impl/d$t;->b:Lcom/android/wiimu/upnp/impl/d;

    iput-object p6, p0, Lcom/android/wiimu/upnp/impl/d$t;->a:Lcom/linkplay/core/nas/LPMediaServerResultListener;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;-><init>(Lorg/teleal/cling/model/meta/Service;IILorg/teleal/cling/support/model/container/Container;)V

    return-void
.end method


# virtual methods
.method public failure(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/teleal/cling/controlpoint/ActionCallback;->failure(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;)V

    return-void
.end method

.method public onReceiveCallback(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/teleal/cling/model/ContentItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/wiimu/upnp/impl/d$t;->b:Lcom/android/wiimu/upnp/impl/d;

    invoke-static {v0, p1}, Lcom/android/wiimu/upnp/impl/d;->a(Lcom/android/wiimu/upnp/impl/d;Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wiimu/upnp/impl/d$t;->a:Lcom/linkplay/core/nas/LPMediaServerResultListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/linkplay/core/nas/LPMediaServerResultListener;->onSuccess(Ljava/util/List;)V

    :cond_0
    return-void
.end method
