.class Lorg/teleal/cling/registry/RemoteItems$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$outgoingSubscription:Lorg/teleal/cling/registry/RegistryItem;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/registry/RemoteItems;Lorg/teleal/cling/registry/RegistryItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lorg/teleal/cling/registry/RemoteItems$4;->val$outgoingSubscription:Lorg/teleal/cling/registry/RegistryItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object p0, p0, Lorg/teleal/cling/registry/RemoteItems$4;->val$outgoingSubscription:Lorg/teleal/cling/registry/RegistryItem;

    iget-object p0, p0, Lorg/teleal/cling/registry/RegistryItem;->b:Ljava/lang/Object;

    check-cast p0, Lorg/teleal/cling/model/gena/RemoteGENASubscription;

    sget-object v0, Lorg/teleal/cling/model/gena/CancelReason;->DEVICE_WAS_REMOVED:Lorg/teleal/cling/model/gena/CancelReason;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/teleal/cling/model/gena/RemoteGENASubscription;->f(Lorg/teleal/cling/model/gena/CancelReason;Lorg/teleal/cling/model/message/UpnpResponse;)V

    return-void
.end method
