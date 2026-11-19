.class public final Lcom/appsflyer/internal/AFf1hSDK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appsflyer/internal/AFe1vSDK;


# instance fields
.field private final AFKeystoreWrapper:Lcom/appsflyer/internal/AFf1nSDK;

.field private final AFLogger:Lcom/appsflyer/internal/AFf1fSDK;

.field private afWarnLog:Lcom/appsflyer/internal/AFf1pSDK;

.field private final d:Lcom/appsflyer/internal/AFc1iSDK;

.field private final e:Lcom/appsflyer/internal/AFd1sSDK;

.field private final force:Lcom/appsflyer/internal/AFe1wSDK;

.field private final i:Lcom/appsflyer/internal/AFc1eSDK;

.field private final registerClient:Ljava/lang/Object;

.field public final unregisterClient:Lcom/appsflyer/internal/AFf1jSDK;

.field private final v:Lcom/appsflyer/internal/AFf1kSDK;

.field private w:Lcom/appsflyer/internal/AFh1bSDK;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFf1nSDK;Lcom/appsflyer/internal/AFc1iSDK;Lcom/appsflyer/internal/AFf1fSDK;Lcom/appsflyer/internal/AFf1jSDK;Lcom/appsflyer/internal/AFd1sSDK;Lcom/appsflyer/internal/AFf1kSDK;Lcom/appsflyer/internal/AFc1eSDK;Lcom/appsflyer/internal/AFe1wSDK;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFf1hSDK;->registerClient:Ljava/lang/Object;

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1hSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFf1nSDK;

    iput-object p2, p0, Lcom/appsflyer/internal/AFf1hSDK;->d:Lcom/appsflyer/internal/AFc1iSDK;

    iput-object p3, p0, Lcom/appsflyer/internal/AFf1hSDK;->AFLogger:Lcom/appsflyer/internal/AFf1fSDK;

    iput-object p4, p0, Lcom/appsflyer/internal/AFf1hSDK;->unregisterClient:Lcom/appsflyer/internal/AFf1jSDK;

    iput-object p5, p0, Lcom/appsflyer/internal/AFf1hSDK;->e:Lcom/appsflyer/internal/AFd1sSDK;

    iput-object p6, p0, Lcom/appsflyer/internal/AFf1hSDK;->v:Lcom/appsflyer/internal/AFf1kSDK;

    iput-object p7, p0, Lcom/appsflyer/internal/AFf1hSDK;->i:Lcom/appsflyer/internal/AFc1eSDK;

    iput-object p8, p0, Lcom/appsflyer/internal/AFf1hSDK;->force:Lcom/appsflyer/internal/AFe1wSDK;

    iget-object p1, p8, Lcom/appsflyer/internal/AFe1wSDK;->unregisterClient:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private AFKeystoreWrapper(Lcom/appsflyer/internal/AFf1pSDK;Lcom/appsflyer/internal/AFf1mSDK;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1hSDK;->registerClient:Ljava/lang/Object;

    monitor-enter v0

    .line 44
    :try_start_0
    iput-object p1, p0, Lcom/appsflyer/internal/AFf1hSDK;->afWarnLog:Lcom/appsflyer/internal/AFf1pSDK;

    .line 45
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 46
    invoke-interface {p2, p1}, Lcom/appsflyer/internal/AFf1mSDK;->onRemoteConfigUpdateFinished(Lcom/appsflyer/internal/AFf1pSDK;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 47
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final AFKeystoreWrapper(Lcom/appsflyer/internal/AFe1ySDK;Lcom/appsflyer/internal/AFd1cSDK;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFe1ySDK<",
            "*>;",
            "Lcom/appsflyer/internal/AFd1cSDK;",
            ")V"
        }
    .end annotation

    instance-of p2, p1, Lcom/appsflyer/internal/AFf1oSDK;

    if-eqz p2, :cond_2

    check-cast p1, Lcom/appsflyer/internal/AFf1oSDK;

    iget-object p2, p1, Lcom/appsflyer/internal/AFf1oSDK;->i:Lcom/appsflyer/internal/AFf1pSDK;

    if-nez p2, :cond_0

    sget-object p2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v0, Lcom/appsflyer/sdk_base/logger/LogTag;->REMOTE_CONTROL:Lcom/appsflyer/sdk_base/logger/LogTag;

    const-string v1, "update RC returned null result, something went wrong!"

    invoke-virtual {p2, v0, v1}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->w(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;)V

    sget-object p2, Lcom/appsflyer/internal/AFf1pSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFf1pSDK;

    :cond_0
    sget-object v0, Lcom/appsflyer/internal/AFf1pSDK;->d:Lcom/appsflyer/internal/AFf1pSDK;

    if-eq p2, v0, :cond_1

    iget-object v0, p1, Lcom/appsflyer/internal/AFf1oSDK;->e:Lcom/appsflyer/internal/AFh1bSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/AFf1hSDK;->registerClient:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object v0, p0, Lcom/appsflyer/internal/AFf1hSDK;->w:Lcom/appsflyer/internal/AFh1bSDK;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/appsflyer/internal/AFf1oSDK;->force:Lcom/appsflyer/internal/AFf1mSDK;

    invoke-direct {p0, p2, p1}, Lcom/appsflyer/internal/AFf1hSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFf1pSDK;Lcom/appsflyer/internal/AFf1mSDK;)V

    :cond_2
    return-void
.end method

.method public final AFKeystoreWrapper(Lcom/appsflyer/internal/AFf1mSDK;)V
    .locals 10

    .line 48
    new-instance v0, Lcom/appsflyer/internal/AFf1oSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/AFf1hSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFf1nSDK;

    iget-object v2, p0, Lcom/appsflyer/internal/AFf1hSDK;->d:Lcom/appsflyer/internal/AFc1iSDK;

    iget-object v3, p0, Lcom/appsflyer/internal/AFf1hSDK;->AFLogger:Lcom/appsflyer/internal/AFf1fSDK;

    iget-object v4, p0, Lcom/appsflyer/internal/AFf1hSDK;->unregisterClient:Lcom/appsflyer/internal/AFf1jSDK;

    iget-object v5, p0, Lcom/appsflyer/internal/AFf1hSDK;->e:Lcom/appsflyer/internal/AFd1sSDK;

    iget-object v6, p0, Lcom/appsflyer/internal/AFf1hSDK;->v:Lcom/appsflyer/internal/AFf1kSDK;

    iget-object v7, p0, Lcom/appsflyer/internal/AFf1hSDK;->i:Lcom/appsflyer/internal/AFc1eSDK;

    const-string v8, "v1"

    move-object v9, p1

    invoke-direct/range {v0 .. v9}, Lcom/appsflyer/internal/AFf1oSDK;-><init>(Lcom/appsflyer/internal/AFf1nSDK;Lcom/appsflyer/internal/AFc1iSDK;Lcom/appsflyer/internal/AFf1fSDK;Lcom/appsflyer/internal/AFf1jSDK;Lcom/appsflyer/internal/AFd1sSDK;Lcom/appsflyer/internal/AFf1kSDK;Lcom/appsflyer/internal/AFc1eSDK;Ljava/lang/String;Lcom/appsflyer/internal/AFf1mSDK;)V

    .line 49
    iget-object p0, p0, Lcom/appsflyer/internal/AFf1hSDK;->force:Lcom/appsflyer/internal/AFe1wSDK;

    invoke-virtual {p0, v0}, Lcom/appsflyer/internal/AFe1wSDK;->d(Lcom/appsflyer/internal/AFe1ySDK;)V

    return-void
.end method

.method public final d()Lcom/appsflyer/internal/AFh1bSDK;
    .locals 3

    iget-object v0, p0, Lcom/appsflyer/internal/AFf1hSDK;->registerClient:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1hSDK;->w:Lcom/appsflyer/internal/AFh1bSDK;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/appsflyer/internal/AFf1hSDK;->w:Lcom/appsflyer/internal/AFh1bSDK;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final d(Lcom/appsflyer/internal/AFe1ySDK;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFe1ySDK<",
            "*>;)V"
        }
    .end annotation

    .line 13
    return-void
.end method

.method public final registerClient(Lcom/appsflyer/internal/AFe1ySDK;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFe1ySDK<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public final unregisterClient(Lcom/appsflyer/internal/AFe1ySDK;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFe1ySDK<",
            "*>;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/appsflyer/internal/AFf1oSDK;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/appsflyer/internal/AFf1oSDK;

    iget-object v0, p0, Lcom/appsflyer/internal/AFf1hSDK;->registerClient:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/appsflyer/internal/AFf1hSDK;->w:Lcom/appsflyer/internal/AFh1bSDK;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/appsflyer/internal/AFf1pSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFf1pSDK;

    iget-object p1, p1, Lcom/appsflyer/internal/AFf1oSDK;->force:Lcom/appsflyer/internal/AFf1mSDK;

    invoke-direct {p0, v0, p1}, Lcom/appsflyer/internal/AFf1hSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFf1pSDK;Lcom/appsflyer/internal/AFf1mSDK;)V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_0
    return-void
.end method
