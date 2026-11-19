.class Lorg/teleal/cling/registry/RemoteItems$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/teleal/cling/registry/RemoteItems;

.field final synthetic val$listener:Lorg/teleal/cling/registry/RegistryListener;

.field final synthetic val$registeredDevice:Lorg/teleal/cling/model/meta/RemoteDevice;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/registry/RemoteItems;Lorg/teleal/cling/registry/RegistryListener;Lorg/teleal/cling/model/meta/RemoteDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/teleal/cling/registry/RemoteItems$5;->this$0:Lorg/teleal/cling/registry/RemoteItems;

    iput-object p2, p0, Lorg/teleal/cling/registry/RemoteItems$5;->val$listener:Lorg/teleal/cling/registry/RegistryListener;

    iput-object p3, p0, Lorg/teleal/cling/registry/RemoteItems$5;->val$registeredDevice:Lorg/teleal/cling/model/meta/RemoteDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/teleal/cling/registry/RemoteItems$5;->val$listener:Lorg/teleal/cling/registry/RegistryListener;

    iget-object v1, p0, Lorg/teleal/cling/registry/RemoteItems$5;->this$0:Lorg/teleal/cling/registry/RemoteItems;

    iget-object v1, v1, Lorg/teleal/cling/registry/RegistryItems;->a:Lorg/teleal/cling/registry/RegistryImpl;

    iget-object p0, p0, Lorg/teleal/cling/registry/RemoteItems$5;->val$registeredDevice:Lorg/teleal/cling/model/meta/RemoteDevice;

    invoke-interface {v0, v1, p0}, Lorg/teleal/cling/registry/RegistryListener;->remoteDeviceRemoved(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/RemoteDevice;)V

    return-void
.end method
