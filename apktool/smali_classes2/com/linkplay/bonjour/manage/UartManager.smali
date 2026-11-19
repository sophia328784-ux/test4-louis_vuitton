.class public Lcom/linkplay/bonjour/manage/UartManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static uartMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/linkplay/bonjour/presenter/UartPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/linkplay/bonjour/manage/UartManager;->uartMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Ljava/lang/String;Lcom/linkplay/bonjour/presenter/UartPresenter;)V
    .locals 2

    const-class v0, Lcom/linkplay/bonjour/manage/UartManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/linkplay/bonjour/manage/UartManager;->uartMap:Ljava/util/Map;

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/linkplay/bonjour/presenter/UartPresenter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/linkplay/bonjour/presenter/UartPresenter;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static clear()V
    .locals 3

    const-class v0, Lcom/linkplay/bonjour/manage/UartManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/linkplay/bonjour/manage/UartManager;->uartMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/linkplay/bonjour/presenter/UartPresenter;

    invoke-virtual {v2}, Lcom/linkplay/bonjour/presenter/UartPresenter;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/linkplay/bonjour/manage/UartManager;->uartMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static get(Ljava/lang/String;)Lcom/linkplay/bonjour/presenter/UartPresenter;
    .locals 2

    const-class v0, Lcom/linkplay/bonjour/manage/UartManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/linkplay/bonjour/manage/UartManager;->uartMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/linkplay/bonjour/presenter/UartPresenter;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static remove(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/linkplay/bonjour/manage/UartManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/linkplay/bonjour/manage/UartManager;->uartMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/linkplay/bonjour/presenter/UartPresenter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/linkplay/bonjour/presenter/UartPresenter;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
