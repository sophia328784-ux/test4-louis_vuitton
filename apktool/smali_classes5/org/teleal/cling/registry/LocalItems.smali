.class Lorg/teleal/cling/registry/LocalItems;
.super Lorg/teleal/cling/registry/RegistryItems;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/registry/RegistryItems<",
        "Lorg/teleal/cling/model/meta/LocalDevice;",
        "Lorg/teleal/cling/model/gena/LocalGENASubscription;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/teleal/cling/registry/Registry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/registry/LocalItems;->d:Ljava/util/logging/Logger;

    return-void
.end method


# virtual methods
.method public final b()Ljava/util/Collection;
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object p0, p0, Lorg/teleal/cling/registry/RegistryItems;->b:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/registry/RegistryItem;

    iget-object v1, v1, Lorg/teleal/cling/registry/RegistryItem;->b:Ljava/lang/Object;

    check-cast v1, Lorg/teleal/cling/model/meta/LocalDevice;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final g(Lorg/teleal/cling/model/meta/LocalDevice;Z)Z
    .locals 10

    sget-object v0, Lorg/teleal/cling/registry/LocalItems;->d:Ljava/util/logging/Logger;

    iget-object v1, p0, Lorg/teleal/cling/registry/RegistryItems;->a:Lorg/teleal/cling/registry/RegistryImpl;

    iget-object v2, p1, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    iget-object v2, v2, Lorg/teleal/cling/model/meta/DeviceIdentity;->a:Lorg/teleal/cling/model/types/UDN;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/teleal/cling/registry/RegistryItems;->c(Lorg/teleal/cling/model/types/UDN;Z)Lorg/teleal/cling/model/meta/Device;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/model/meta/LocalDevice;

    const/4 v4, 0x0

    if-nez v2, :cond_0

    return v4

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Removing local device from registry: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/teleal/cling/registry/RegistryItems;->b:Ljava/util/HashSet;

    new-instance v6, Lorg/teleal/cling/registry/RegistryItem;

    iget-object v7, p1, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    iget-object v7, v7, Lorg/teleal/cling/model/meta/DeviceIdentity;->a:Lorg/teleal/cling/model/types/UDN;

    invoke-direct {v6, v7}, Lorg/teleal/cling/registry/RegistryItem;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lorg/teleal/cling/registry/RegistryItems;->d(Lorg/teleal/cling/model/meta/Device;)[Lorg/teleal/cling/model/resource/Resource;

    move-result-object v5

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v7, v5, v4

    invoke-virtual {v1, v7}, Lorg/teleal/cling/registry/RegistryImpl;->x(Lorg/teleal/cling/model/resource/Resource;)Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Unregistered resource: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lorg/teleal/cling/registry/RegistryItems;->c:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/teleal/cling/registry/RegistryItem;

    iget-object v6, v5, Lorg/teleal/cling/registry/RegistryItem;->b:Ljava/lang/Object;

    check-cast v6, Lorg/teleal/cling/model/gena/LocalGENASubscription;

    invoke-virtual {v6}, Lorg/teleal/cling/model/gena/GENASubscription;->d()Lorg/teleal/cling/model/meta/Service;

    move-result-object v6

    check-cast v6, Lorg/teleal/cling/model/meta/LocalService;

    iget-object v6, v6, Lorg/teleal/cling/model/meta/Service;->e:Lorg/teleal/cling/model/meta/Device;

    iget-object v6, v6, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    iget-object v6, v6, Lorg/teleal/cling/model/meta/DeviceIdentity;->a:Lorg/teleal/cling/model/types/UDN;

    iget-object v7, v2, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    iget-object v7, v7, Lorg/teleal/cling/model/meta/DeviceIdentity;->a:Lorg/teleal/cling/model/types/UDN;

    invoke-virtual {v6, v7}, Lorg/teleal/cling/model/types/UDN;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Removing incoming subscription: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v5, Lorg/teleal/cling/registry/RegistryItem;->a:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    if-nez p2, :cond_3

    iget-object v6, v1, Lorg/teleal/cling/registry/RegistryImpl;->a:Lorg/teleal/cling/UpnpService;

    invoke-interface {v6}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v6

    invoke-interface {v6}, Lorg/teleal/cling/UpnpServiceConfiguration;->d()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v7, Lorg/teleal/cling/registry/LocalItems$1;

    invoke-direct {v7, p0, v5}, Lorg/teleal/cling/registry/LocalItems$1;-><init>(Lorg/teleal/cling/registry/LocalItems;Lorg/teleal/cling/registry/RegistryItem;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_4
    iget-object v0, v1, Lorg/teleal/cling/registry/RegistryImpl;->a:Lorg/teleal/cling/UpnpService;

    invoke-interface {v0}, Lorg/teleal/cling/UpnpService;->a()Lorg/teleal/cling/protocol/ProtocolFactoryImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lorg/teleal/cling/protocol/async/SendingNotificationByebye;

    iget-object v0, v0, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;->a:Lorg/teleal/cling/UpnpService;

    invoke-direct {v2, v0, p1}, Lorg/teleal/cling/protocol/async/SendingNotificationByebye;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/meta/LocalDevice;)V

    if-nez p2, :cond_5

    monitor-enter v1

    :try_start_0
    iget-object v0, v1, Lorg/teleal/cling/registry/RegistryImpl;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_5
    invoke-virtual {v2}, Lorg/teleal/cling/protocol/SendingAsync;->run()V

    :goto_2
    if-nez p2, :cond_6

    invoke-virtual {v1}, Lorg/teleal/cling/registry/RegistryImpl;->l()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/registry/RegistryListener;

    iget-object v2, v1, Lorg/teleal/cling/registry/RegistryImpl;->a:Lorg/teleal/cling/UpnpService;

    invoke-interface {v2}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lorg/teleal/cling/UpnpServiceConfiguration;->d()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v4, Lorg/teleal/cling/registry/LocalItems$2;

    invoke-direct {v4, p0, v0, p1}, Lorg/teleal/cling/registry/LocalItems$2;-><init>(Lorg/teleal/cling/registry/LocalItems;Lorg/teleal/cling/registry/RegistryListener;Lorg/teleal/cling/model/meta/LocalDevice;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_6
    return v3
.end method

.method public final h(Z)V
    .locals 4

    invoke-virtual {p0}, Lorg/teleal/cling/registry/LocalItems;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/registry/LocalItems;->b()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Lorg/teleal/cling/model/meta/LocalDevice;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/teleal/cling/model/meta/LocalDevice;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {p0, v3, p1}, Lorg/teleal/cling/registry/LocalItems;->g(Lorg/teleal/cling/model/meta/LocalDevice;Z)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
