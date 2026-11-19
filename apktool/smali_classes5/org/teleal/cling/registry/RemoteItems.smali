.class Lorg/teleal/cling/registry/RemoteItems;
.super Lorg/teleal/cling/registry/RegistryItems;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/registry/RegistryItems<",
        "Lorg/teleal/cling/model/meta/RemoteDevice;",
        "Lorg/teleal/cling/model/gena/RemoteGENASubscription;",
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

    sput-object v0, Lorg/teleal/cling/registry/RemoteItems;->d:Ljava/util/logging/Logger;

    return-void
.end method


# virtual methods
.method public final g(Lorg/teleal/cling/model/meta/RemoteDevice;)V
    .locals 8

    const-string v0, "UPNP-SEARCH"

    const-string v1, "Add RemoteDevice init"

    invoke-static {v0, v1}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    check-cast v0, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/registry/RemoteItems;->k(Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lorg/teleal/cling/registry/RemoteItems;->d:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring addition, device already registered: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lorg/teleal/cling/registry/RegistryItems;->d(Lorg/teleal/cling/model/meta/Device;)[Lorg/teleal/cling/model/resource/Resource;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    sget-object v5, Lorg/teleal/cling/registry/RemoteItems;->d:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Validating remote device resource; "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/teleal/cling/registry/RegistryItems;->a:Lorg/teleal/cling/registry/RegistryImpl;

    iget-object v6, v4, Lorg/teleal/cling/model/resource/Resource;->a:Ljava/net/URI;

    invoke-virtual {v5, v6}, Lorg/teleal/cling/registry/RegistryImpl;->r(Ljava/net/URI;)Lorg/teleal/cling/model/resource/Resource;

    move-result-object v5

    if-nez v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/teleal/cling/registry/RegistrationException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "URI namespace conflict with already registered resource: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/teleal/cling/registry/RegistrationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const-string v1, "UPNP-SEARCH"

    const-string v3, "RemoteItem addResource"

    invoke-static {v1, v3}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    iget-object v5, p0, Lorg/teleal/cling/registry/RegistryItems;->a:Lorg/teleal/cling/registry/RegistryImpl;

    monitor-enter v5

    :try_start_0
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v6, Lorg/teleal/cling/registry/RegistryItem;

    iget-object v7, v4, Lorg/teleal/cling/model/resource/Resource;->a:Ljava/net/URI;

    invoke-direct {v6, v7, v4, v2}, Lorg/teleal/cling/registry/RegistryItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v7, v5, Lorg/teleal/cling/registry/RegistryImpl;->d:Ljava/util/HashSet;

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v7, v5, Lorg/teleal/cling/registry/RegistryImpl;->d:Ljava/util/HashSet;

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v5

    sget-object v5, Lorg/teleal/cling/registry/RemoteItems;->d:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Added remote device resource: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :goto_2
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_3
    const-string v0, "UPNP-SEARCH"

    const-string v1, "New RegistryItem +++ device"

    invoke-static {v0, v1}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/teleal/cling/registry/RegistryItem;

    iget-object v1, p1, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    check-cast v1, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    iget-object v2, v1, Lorg/teleal/cling/model/meta/DeviceIdentity;->a:Lorg/teleal/cling/model/types/UDN;

    iget-object v1, v1, Lorg/teleal/cling/model/meta/DeviceIdentity;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v2, p1, v1}, Lorg/teleal/cling/registry/RegistryItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    sget-object v1, Lorg/teleal/cling/registry/RemoteItems;->d:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Adding hydrated remote device to registry with "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lorg/teleal/cling/registry/RegistryItem;->c:Lorg/teleal/cling/model/ExpirationDetails;

    iget v3, v3, Lorg/teleal/cling/model/ExpirationDetails;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " seconds expiration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/teleal/cling/registry/RegistryItems;->b:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n-------------------------- START Registry Namespace -----------------------------------\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/teleal/cling/registry/RegistryItems;->a:Lorg/teleal/cling/registry/RegistryImpl;

    monitor-enter v1

    :try_start_5
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v3, v1, Lorg/teleal/cling/registry/RegistryImpl;->d:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/registry/RegistryItem;

    iget-object v4, v4, Lorg/teleal/cling/registry/RegistryItem;->b:Ljava/lang/Object;

    check-cast v4, Lorg/teleal/cling/model/resource/Resource;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p0

    goto :goto_5

    :cond_4
    monitor-exit v1

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/model/resource/Resource;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_5
    const-string v1, "-------------------------- END Registry Namespace -----------------------------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/teleal/cling/registry/RemoteItems;->d:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0

    :cond_6
    :goto_6
    sget-object v0, Lorg/teleal/cling/registry/RemoteItems;->d:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Completely hydrated remote device graph available, calling listeners: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/teleal/cling/registry/RegistryItems;->a:Lorg/teleal/cling/registry/RegistryImpl;

    invoke-virtual {v0}, Lorg/teleal/cling/registry/RegistryImpl;->l()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/registry/RegistryListener;

    iget-object v2, p0, Lorg/teleal/cling/registry/RegistryItems;->a:Lorg/teleal/cling/registry/RegistryImpl;

    iget-object v2, v2, Lorg/teleal/cling/registry/RegistryImpl;->a:Lorg/teleal/cling/UpnpService;

    invoke-interface {v2}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lorg/teleal/cling/UpnpServiceConfiguration;->d()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lorg/teleal/cling/registry/RemoteItems$1;

    invoke-direct {v3, p0, v1, p1}, Lorg/teleal/cling/registry/RemoteItems$1;-><init>(Lorg/teleal/cling/registry/RemoteItems;Lorg/teleal/cling/registry/RegistryListener;Lorg/teleal/cling/model/meta/RemoteDevice;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_7

    :cond_7
    return-void
.end method

.method public final h(Lorg/teleal/cling/model/meta/RemoteDevice;Z)Z
    .locals 9

    iget-object v0, p1, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    check-cast v0, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    iget-object v0, v0, Lorg/teleal/cling/model/meta/DeviceIdentity;->a:Lorg/teleal/cling/model/types/UDN;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/teleal/cling/registry/RegistryItems;->c(Lorg/teleal/cling/model/types/UDN;Z)Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/meta/RemoteDevice;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v3, v0, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Removing remote device from registry: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v4, Lorg/teleal/cling/registry/RemoteItems;->d:Ljava/util/logging/Logger;

    invoke-virtual {v4, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/registry/RegistryItems;->d(Lorg/teleal/cling/model/meta/Device;)[Lorg/teleal/cling/model/resource/Resource;

    move-result-object p1

    array-length v5, p1

    :goto_0
    iget-object v6, p0, Lorg/teleal/cling/registry/RegistryItems;->a:Lorg/teleal/cling/registry/RegistryImpl;

    if-ge v2, v5, :cond_2

    aget-object v7, p1, v2

    invoke-virtual {v6, v7}, Lorg/teleal/cling/registry/RegistryImpl;->x(Lorg/teleal/cling/model/resource/Resource;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Unregistered resource: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/teleal/cling/registry/RegistryItems;->c:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/registry/RegistryItem;

    iget-object v5, v2, Lorg/teleal/cling/registry/RegistryItem;->b:Ljava/lang/Object;

    check-cast v5, Lorg/teleal/cling/model/gena/RemoteGENASubscription;

    invoke-virtual {v5}, Lorg/teleal/cling/model/gena/GENASubscription;->d()Lorg/teleal/cling/model/meta/Service;

    move-result-object v5

    check-cast v5, Lorg/teleal/cling/model/meta/RemoteService;

    iget-object v5, v5, Lorg/teleal/cling/model/meta/Service;->e:Lorg/teleal/cling/model/meta/Device;

    check-cast v5, Lorg/teleal/cling/model/meta/RemoteDevice;

    iget-object v5, v5, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    check-cast v5, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    iget-object v5, v5, Lorg/teleal/cling/model/meta/DeviceIdentity;->a:Lorg/teleal/cling/model/types/UDN;

    move-object v7, v3

    check-cast v7, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    iget-object v7, v7, Lorg/teleal/cling/model/meta/DeviceIdentity;->a:Lorg/teleal/cling/model/types/UDN;

    invoke-virtual {v5, v7}, Lorg/teleal/cling/model/types/UDN;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Removing outgoing subscription: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v2, Lorg/teleal/cling/registry/RegistryItem;->a:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    if-nez p2, :cond_3

    iget-object v5, v6, Lorg/teleal/cling/registry/RegistryImpl;->a:Lorg/teleal/cling/UpnpService;

    invoke-interface {v5}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v5

    invoke-interface {v5}, Lorg/teleal/cling/UpnpServiceConfiguration;->d()Ljava/util/concurrent/Executor;

    move-result-object v5

    new-instance v7, Lorg/teleal/cling/registry/RemoteItems$4;

    invoke-direct {v7, p0, v2}, Lorg/teleal/cling/registry/RemoteItems$4;-><init>(Lorg/teleal/cling/registry/RemoteItems;Lorg/teleal/cling/registry/RegistryItem;)V

    invoke-interface {v5, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_4
    if-nez p2, :cond_5

    invoke-virtual {v6}, Lorg/teleal/cling/registry/RegistryImpl;->l()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/teleal/cling/registry/RegistryListener;

    iget-object v2, v6, Lorg/teleal/cling/registry/RegistryImpl;->a:Lorg/teleal/cling/UpnpService;

    invoke-interface {v2}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lorg/teleal/cling/UpnpServiceConfiguration;->d()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v4, Lorg/teleal/cling/registry/RemoteItems$5;

    invoke-direct {v4, p0, p2, v0}, Lorg/teleal/cling/registry/RemoteItems$5;-><init>(Lorg/teleal/cling/registry/RemoteItems;Lorg/teleal/cling/registry/RegistryListener;Lorg/teleal/cling/model/meta/RemoteDevice;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_5
    new-instance p1, Lorg/teleal/cling/registry/RegistryItem;

    check-cast v3, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    iget-object p2, v3, Lorg/teleal/cling/model/meta/DeviceIdentity;->a:Lorg/teleal/cling/model/types/UDN;

    invoke-direct {p1, p2}, Lorg/teleal/cling/registry/RegistryItem;-><init>(Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/teleal/cling/registry/RegistryItems;->b:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return v1
.end method

.method public final i(Z)V
    .locals 4

    invoke-virtual {p0}, Lorg/teleal/cling/registry/RegistryItems;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/registry/RegistryItems;->b()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v1, v1, [Lorg/teleal/cling/model/meta/RemoteDevice;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/teleal/cling/model/meta/RemoteDevice;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {p0, v3, p1}, Lorg/teleal/cling/registry/RemoteItems;->h(Lorg/teleal/cling/model/meta/RemoteDevice;Z)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final j()V
    .locals 4

    const-string v0, "Cancelling all outgoing subscriptions to remote devices during shutdown"

    sget-object v1, Lorg/teleal/cling/registry/RemoteItems;->d:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lorg/teleal/cling/registry/RegistryItems;->c:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/registry/RegistryItem;

    iget-object v3, v3, Lorg/teleal/cling/registry/RegistryItem;->b:Ljava/lang/Object;

    check-cast v3, Lorg/teleal/cling/model/gena/RemoteGENASubscription;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/model/gena/RemoteGENASubscription;

    iget-object v3, p0, Lorg/teleal/cling/registry/RegistryItems;->a:Lorg/teleal/cling/registry/RegistryImpl;

    iget-object v3, v3, Lorg/teleal/cling/registry/RegistryImpl;->a:Lorg/teleal/cling/UpnpService;

    invoke-interface {v3}, Lorg/teleal/cling/UpnpService;->a()Lorg/teleal/cling/protocol/ProtocolFactoryImpl;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;->d(Lorg/teleal/cling/model/gena/RemoteGENASubscription;)Lorg/teleal/cling/protocol/sync/SendingUnsubscribe;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/cling/protocol/SendingAsync;->run()V

    goto :goto_1

    :cond_1
    const-string v0, "Removing all remote devices from registry during shutdown"

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/teleal/cling/registry/RemoteItems;->i(Z)V

    return-void
.end method

.method public final k(Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;)Z
    .locals 7

    iget-object v0, p0, Lorg/teleal/cling/registry/RegistryItems;->a:Lorg/teleal/cling/registry/RegistryImpl;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lorg/teleal/cling/registry/RegistryImpl;->g:Lorg/teleal/cling/registry/LocalItems;

    invoke-virtual {v1}, Lorg/teleal/cling/registry/LocalItems;->b()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/meta/LocalDevice;

    iget-object v3, p1, Lorg/teleal/cling/model/meta/DeviceIdentity;->a:Lorg/teleal/cling/model/types/UDN;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v1}, Lorg/teleal/cling/model/meta/Device;->b(Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Device;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/meta/LocalDevice;

    if-eqz v1, :cond_0

    sget-object p0, Lorg/teleal/cling/registry/RemoteItems;->d:Ljava/util/logging/Logger;

    const-string p1, "Ignoring update, a local device graph contains UDN"

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const-string p0, "UPNP-SEARCH"

    const-string p1, "LocalDevice find rdIdentity device."

    invoke-static {p0, p1}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    iget-object v0, p1, Lorg/teleal/cling/model/meta/DeviceIdentity;->a:Lorg/teleal/cling/model/types/UDN;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/teleal/cling/registry/RegistryItems;->c(Lorg/teleal/cling/model/types/UDN;Z)Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/meta/RemoteDevice;

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v3, p0, Lorg/teleal/cling/registry/RegistryItems;->b:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/registry/RegistryItem;

    iget-object v5, v4, Lorg/teleal/cling/registry/RegistryItem;->a:Ljava/lang/Object;

    check-cast v5, Lorg/teleal/cling/model/types/UDN;

    iget-object v6, p1, Lorg/teleal/cling/model/meta/DeviceIdentity;->a:Lorg/teleal/cling/model/types/UDN;

    invoke-virtual {v5, v6}, Lorg/teleal/cling/model/types/UDN;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v3, v4, Lorg/teleal/cling/registry/RegistryItem;->c:Lorg/teleal/cling/model/ExpirationDetails;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_4
    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/Device;->n()Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, Lorg/teleal/cling/registry/RemoteItems;->d:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Updating root device of embedded: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/Device;->n()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    :goto_0
    iget-object v3, v0, Lorg/teleal/cling/model/meta/Device;->h:Lorg/teleal/cling/model/meta/Device;

    if-eqz v3, :cond_6

    move-object v0, v3

    check-cast v0, Lorg/teleal/cling/model/meta/RemoteDevice;

    goto :goto_0

    :cond_6
    :goto_1
    iget-object p1, p1, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->c:Ljava/net/URL;

    iget-object v3, v0, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    check-cast v3, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    iget-object v3, v3, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->c:Ljava/net/URL;

    invoke-virtual {p1, v3}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/teleal/cling/registry/RegistryItems;->a:Lorg/teleal/cling/registry/RegistryImpl;

    iget-object p1, p1, Lorg/teleal/cling/registry/RegistryImpl;->a:Lorg/teleal/cling/UpnpService;

    invoke-interface {p1}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object p1

    invoke-interface {p1}, Lorg/teleal/cling/UpnpServiceConfiguration;->k()I

    move-result p1

    if-nez p1, :cond_7

    const/16 p1, 0x3c

    :cond_7
    new-instance v1, Lorg/teleal/cling/registry/RegistryItem;

    iget-object v3, v0, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    check-cast v3, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    iget-object v3, v3, Lorg/teleal/cling/model/meta/DeviceIdentity;->a:Lorg/teleal/cling/model/types/UDN;

    invoke-direct {v1, v3, v0, p1}, Lorg/teleal/cling/registry/RegistryItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    sget-object p1, Lorg/teleal/cling/registry/RemoteItems;->d:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Updating expiration of: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/teleal/cling/registry/RegistryItems;->b:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/teleal/cling/registry/RegistryItems;->b:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Remote device updated, calling listeners: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/teleal/cling/registry/RegistryItems;->a:Lorg/teleal/cling/registry/RegistryImpl;

    invoke-virtual {p1}, Lorg/teleal/cling/registry/RegistryImpl;->l()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/registry/RegistryListener;

    iget-object v3, p0, Lorg/teleal/cling/registry/RegistryItems;->a:Lorg/teleal/cling/registry/RegistryImpl;

    iget-object v3, v3, Lorg/teleal/cling/registry/RegistryImpl;->a:Lorg/teleal/cling/UpnpService;

    invoke-interface {v3}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v3

    invoke-interface {v3}, Lorg/teleal/cling/UpnpServiceConfiguration;->d()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lorg/teleal/cling/registry/RemoteItems$3;

    invoke-direct {v4, p0, v0, v1}, Lorg/teleal/cling/registry/RemoteItems$3;-><init>(Lorg/teleal/cling/registry/RemoteItems;Lorg/teleal/cling/registry/RegistryListener;Lorg/teleal/cling/registry/RegistryItem;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_8
    return v2

    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, " RemoteItems::DescriptorURL\u4e0d\u4e00\u81f4\uff1a\uff1aremove :: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lorg/teleal/cling/model/meta/Device;->d:Lorg/teleal/cling/model/meta/DeviceDetails;

    iget-object v2, v2, Lorg/teleal/cling/model/meta/DeviceDetails;->b:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "UPNP-SEARCH"

    invoke-static {v2, p1}, Lcom/linkplay/log/LinkplayLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lorg/teleal/cling/registry/RemoteItems;->h(Lorg/teleal/cling/model/meta/RemoteDevice;Z)Z

    return v1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
