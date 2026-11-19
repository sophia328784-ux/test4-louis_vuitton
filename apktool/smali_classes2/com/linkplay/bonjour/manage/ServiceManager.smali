.class public Lcom/linkplay/bonjour/manage/ServiceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static serviceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/linkplay/bonjour/model/LinkPlayService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/linkplay/bonjour/manage/ServiceManager;->serviceMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Ljava/lang/String;Lcom/linkplay/bonjour/model/LinkPlayService;)V
    .locals 2

    const-class v0, Lcom/linkplay/bonjour/manage/ServiceManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/linkplay/bonjour/manage/ServiceManager;->serviceMap:Ljava/util/Map;

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static clear()V
    .locals 2

    const-class v0, Lcom/linkplay/bonjour/manage/ServiceManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/linkplay/bonjour/manage/ServiceManager;->serviceMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static get(Ljava/lang/String;)Lcom/linkplay/bonjour/model/LinkPlayService;
    .locals 2

    const-class v0, Lcom/linkplay/bonjour/manage/ServiceManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/linkplay/bonjour/manage/ServiceManager;->serviceMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/linkplay/bonjour/model/LinkPlayService;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getAll()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/linkplay/bonjour/model/LinkPlayService;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/linkplay/bonjour/manage/ServiceManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/linkplay/bonjour/manage/ServiceManager;->serviceMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/linkplay/bonjour/model/LinkPlayService;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-object v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static remove(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/linkplay/bonjour/manage/ServiceManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/linkplay/bonjour/manage/ServiceManager;->serviceMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
