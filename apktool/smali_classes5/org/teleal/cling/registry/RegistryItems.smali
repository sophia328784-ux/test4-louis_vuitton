.class abstract Lorg/teleal/cling/registry/RegistryItems;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lorg/teleal/cling/model/meta/Device;",
        "S:",
        "Lorg/teleal/cling/model/gena/GENASubscription;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lorg/teleal/cling/registry/RegistryImpl;

.field public final b:Ljava/util/HashSet;

.field public final c:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/registry/RegistryImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/registry/RegistryItems;->b:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/registry/RegistryItems;->c:Ljava/util/HashSet;

    iput-object p1, p0, Lorg/teleal/cling/registry/RegistryItems;->a:Lorg/teleal/cling/registry/RegistryImpl;

    return-void
.end method


# virtual methods
.method public final a(Lorg/teleal/cling/model/gena/GENASubscription;)V
    .locals 3

    new-instance v0, Lorg/teleal/cling/registry/RegistryItem;

    invoke-virtual {p1}, Lorg/teleal/cling/model/gena/GENASubscription;->e()Ljava/lang/String;

    move-result-object v1

    monitor-enter p1

    :try_start_0
    iget v2, p1, Lorg/teleal/cling/model/gena/GENASubscription;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    invoke-direct {v0, v1, p1, v2}, Lorg/teleal/cling/registry/RegistryItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p0, p0, Lorg/teleal/cling/registry/RegistryItems;->c:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public b()Ljava/util/Collection;
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

    check-cast v1, Lorg/teleal/cling/model/meta/Device;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final c(Lorg/teleal/cling/model/types/UDN;Z)Lorg/teleal/cling/model/meta/Device;
    .locals 3

    iget-object p0, p0, Lorg/teleal/cling/registry/RegistryItems;->b:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/registry/RegistryItem;

    iget-object v1, v0, Lorg/teleal/cling/registry/RegistryItem;->b:Ljava/lang/Object;

    check-cast v1, Lorg/teleal/cling/model/meta/Device;

    iget-object v2, v1, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    iget-object v2, v2, Lorg/teleal/cling/model/meta/DeviceIdentity;->a:Lorg/teleal/cling/model/types/UDN;

    invoke-virtual {v2, p1}, Lorg/teleal/cling/model/types/UDN;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    if-nez p2, :cond_0

    iget-object v0, v0, Lorg/teleal/cling/registry/RegistryItem;->b:Ljava/lang/Object;

    check-cast v0, Lorg/teleal/cling/model/meta/Device;

    invoke-virtual {v0, p1}, Lorg/teleal/cling/model/meta/Device;->c(Lorg/teleal/cling/model/types/UDN;)Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final d(Lorg/teleal/cling/model/meta/Device;)[Lorg/teleal/cling/model/resource/Resource;
    .locals 2

    :try_start_0
    iget-object p0, p0, Lorg/teleal/cling/registry/RegistryItems;->a:Lorg/teleal/cling/registry/RegistryImpl;

    iget-object p0, p0, Lorg/teleal/cling/registry/RegistryImpl;->a:Lorg/teleal/cling/UpnpService;

    invoke-interface {p0}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object p0

    invoke-interface {p0}, Lorg/teleal/cling/UpnpServiceConfiguration;->getNamespace()Lorg/teleal/cling/model/Namespace;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/Namespace;->e(Lorg/teleal/cling/model/meta/Device;)[Lorg/teleal/cling/model/resource/Resource;

    move-result-object p0
    :try_end_0
    .catch Lorg/teleal/cling/model/ValidationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/teleal/cling/registry/RegistrationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Resource discover error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/teleal/cling/registry/RegistrationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final e(Ljava/lang/String;)Lorg/teleal/cling/model/gena/GENASubscription;
    .locals 2

    iget-object p0, p0, Lorg/teleal/cling/registry/RegistryItems;->c:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/registry/RegistryItem;

    iget-object v1, v0, Lorg/teleal/cling/registry/RegistryItem;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, v0, Lorg/teleal/cling/registry/RegistryItem;->b:Ljava/lang/Object;

    check-cast p0, Lorg/teleal/cling/model/gena/GENASubscription;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final f(Lorg/teleal/cling/model/gena/GENASubscription;)Z
    .locals 1

    new-instance v0, Lorg/teleal/cling/registry/RegistryItem;

    invoke-virtual {p1}, Lorg/teleal/cling/model/gena/GENASubscription;->e()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/teleal/cling/registry/RegistryItem;-><init>(Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/teleal/cling/registry/RegistryItems;->c:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
