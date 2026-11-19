.class public Lcom/linkplay/core/clingx/LPDlnaServiceProviderPool;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static me:Lcom/linkplay/core/clingx/LPDlnaServiceProviderPool;


# instance fields
.field servicePool:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/linkplay/core/clingx/LPDlnaServiceProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/linkplay/core/clingx/LPDlnaServiceProviderPool;

    invoke-direct {v0}, Lcom/linkplay/core/clingx/LPDlnaServiceProviderPool;-><init>()V

    sput-object v0, Lcom/linkplay/core/clingx/LPDlnaServiceProviderPool;->me:Lcom/linkplay/core/clingx/LPDlnaServiceProviderPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProviderPool;->servicePool:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static me()Lcom/linkplay/core/clingx/LPDlnaServiceProviderPool;
    .locals 1

    sget-object v0, Lcom/linkplay/core/clingx/LPDlnaServiceProviderPool;->me:Lcom/linkplay/core/clingx/LPDlnaServiceProviderPool;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addDlnaHelper(Ljava/lang/String;Lcom/linkplay/core/clingx/LPDlnaServiceProvider;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProviderPool;->servicePool:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProviderPool;->servicePool:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;

    invoke-virtual {v0}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->stop()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProviderPool;->servicePool:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized clearPool()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProviderPool;->servicePool:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;

    invoke-virtual {v1}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->stop()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProviderPool;->servicePool:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getDlanHelper(Ljava/lang/String;)Lcom/linkplay/core/clingx/LPDlnaServiceProvider;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProviderPool;->servicePool:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized initPool()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized removeDlnaHelper(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProviderPool;->servicePool:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProviderPool;->servicePool:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
