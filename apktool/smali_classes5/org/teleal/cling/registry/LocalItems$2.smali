.class Lorg/teleal/cling/registry/LocalItems$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/teleal/cling/registry/LocalItems;

.field final synthetic val$listener:Lorg/teleal/cling/registry/RegistryListener;

.field final synthetic val$localDevice:Lorg/teleal/cling/model/meta/LocalDevice;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/registry/LocalItems;Lorg/teleal/cling/registry/RegistryListener;Lorg/teleal/cling/model/meta/LocalDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/teleal/cling/registry/LocalItems$2;->this$0:Lorg/teleal/cling/registry/LocalItems;

    iput-object p2, p0, Lorg/teleal/cling/registry/LocalItems$2;->val$listener:Lorg/teleal/cling/registry/RegistryListener;

    iput-object p3, p0, Lorg/teleal/cling/registry/LocalItems$2;->val$localDevice:Lorg/teleal/cling/model/meta/LocalDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/teleal/cling/registry/LocalItems$2;->val$listener:Lorg/teleal/cling/registry/RegistryListener;

    iget-object v1, p0, Lorg/teleal/cling/registry/LocalItems$2;->this$0:Lorg/teleal/cling/registry/LocalItems;

    iget-object v1, v1, Lorg/teleal/cling/registry/RegistryItems;->a:Lorg/teleal/cling/registry/RegistryImpl;

    iget-object p0, p0, Lorg/teleal/cling/registry/LocalItems$2;->val$localDevice:Lorg/teleal/cling/model/meta/LocalDevice;

    invoke-interface {v0, v1, p0}, Lorg/teleal/cling/registry/RegistryListener;->localDeviceRemoved(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/LocalDevice;)V

    return-void
.end method
