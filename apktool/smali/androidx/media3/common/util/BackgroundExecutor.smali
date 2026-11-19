.class public abstract Landroidx/media3/common/util/BackgroundExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static declared-synchronized a()Ljava/util/concurrent/Executor;
    .locals 4

    const-class v0, Landroidx/media3/common/util/BackgroundExecutor;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/media3/common/util/BackgroundExecutor;->a:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    const-string v1, "ExoPlayer:BackgroundExecutor"

    sget-object v2, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    new-instance v2, Lto;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lto;-><init>(Ljava/lang/String;I)V

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/util/BackgroundExecutor;->a:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Landroidx/media3/common/util/BackgroundExecutor;->a:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
