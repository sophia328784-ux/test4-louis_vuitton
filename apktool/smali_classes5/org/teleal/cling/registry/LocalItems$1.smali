.class Lorg/teleal/cling/registry/LocalItems$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$incomingSubscription:Lorg/teleal/cling/registry/RegistryItem;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/registry/LocalItems;Lorg/teleal/cling/registry/RegistryItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lorg/teleal/cling/registry/LocalItems$1;->val$incomingSubscription:Lorg/teleal/cling/registry/RegistryItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lorg/teleal/cling/registry/LocalItems$1;->val$incomingSubscription:Lorg/teleal/cling/registry/RegistryItem;

    iget-object p0, p0, Lorg/teleal/cling/registry/RegistryItem;->b:Ljava/lang/Object;

    check-cast p0, Lorg/teleal/cling/model/gena/LocalGENASubscription;

    sget-object v0, Lorg/teleal/cling/model/gena/CancelReason;->DEVICE_WAS_REMOVED:Lorg/teleal/cling/model/gena/CancelReason;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/model/gena/LocalGENASubscription;->f(Lorg/teleal/cling/model/gena/CancelReason;)V

    return-void
.end method
