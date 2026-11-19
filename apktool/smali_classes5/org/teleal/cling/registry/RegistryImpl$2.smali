.class Lorg/teleal/cling/registry/RegistryImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/teleal/cling/registry/RegistryImpl;

.field final synthetic val$device:Lorg/teleal/cling/model/meta/RemoteDevice;

.field final synthetic val$ex:Ljava/lang/Exception;

.field final synthetic val$listener:Lorg/teleal/cling/registry/RegistryListener;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/registry/RegistryImpl;Lorg/teleal/cling/registry/RegistryListener;Lorg/teleal/cling/model/meta/RemoteDevice;Ljava/lang/Exception;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/teleal/cling/registry/RegistryImpl$2;->this$0:Lorg/teleal/cling/registry/RegistryImpl;

    iput-object p2, p0, Lorg/teleal/cling/registry/RegistryImpl$2;->val$listener:Lorg/teleal/cling/registry/RegistryListener;

    iput-object p3, p0, Lorg/teleal/cling/registry/RegistryImpl$2;->val$device:Lorg/teleal/cling/model/meta/RemoteDevice;

    iput-object p4, p0, Lorg/teleal/cling/registry/RegistryImpl$2;->val$ex:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/teleal/cling/registry/RegistryImpl$2;->val$listener:Lorg/teleal/cling/registry/RegistryListener;

    iget-object v1, p0, Lorg/teleal/cling/registry/RegistryImpl$2;->this$0:Lorg/teleal/cling/registry/RegistryImpl;

    iget-object v2, p0, Lorg/teleal/cling/registry/RegistryImpl$2;->val$device:Lorg/teleal/cling/model/meta/RemoteDevice;

    iget-object p0, p0, Lorg/teleal/cling/registry/RegistryImpl$2;->val$ex:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2, p0}, Lorg/teleal/cling/registry/RegistryListener;->remoteDeviceDiscoveryFailed(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/RemoteDevice;Ljava/lang/Exception;)V

    return-void
.end method
