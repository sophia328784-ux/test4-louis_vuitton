.class public final Lokhttp3/internal/connection/RealConnectionPool$cleanupTask$1;
.super Lokhttp3/internal/concurrent/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/connection/RealConnectionPool;-><init>(Lokhttp3/internal/concurrent/TaskRunner;IJLjava/util/concurrent/TimeUnit;Lokhttp3/internal/connection/ConnectionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "okhttp3/internal/connection/RealConnectionPool$cleanupTask$1",
        "Lokhttp3/internal/concurrent/Task;",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lokhttp3/internal/connection/RealConnectionPool;


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/RealConnectionPool;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lokhttp3/internal/connection/RealConnectionPool$cleanupTask$1;->a:Lokhttp3/internal/connection/RealConnectionPool;

    const/4 p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, p1, v0}, Lokhttp3/internal/concurrent/Task;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final runOnce()J
    .locals 17

    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/connection/RealConnectionPool$cleanupTask$1;->a:Lokhttp3/internal/connection/RealConnectionPool;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, v0, Lokhttp3/internal/connection/RealConnectionPool;->c:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iget-object v5, v0, Lokhttp3/internal/connection/RealConnectionPool;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x0

    const-wide v7, 0x7fffffffffffffffL

    const/4 v9, 0x0

    move-object v11, v6

    move-object v12, v11

    move v10, v9

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lokhttp3/internal/connection/RealConnection;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter v13

    :try_start_0
    invoke-virtual {v0, v13, v1, v2}, Lokhttp3/internal/connection/RealConnectionPool;->a(Lokhttp3/internal/connection/RealConnection;J)I

    move-result v14

    if-lez v14, :cond_0

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_0
    iget-wide v14, v13, Lokhttp3/internal/connection/RealConnection;->t:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v16, v14, v3

    if-gez v16, :cond_1

    move-object v11, v13

    move-wide v3, v14

    :cond_1
    add-int/lit8 v9, v9, 0x1

    cmp-long v16, v14, v7

    if-gez v16, :cond_2

    move-object v12, v13

    move-wide v7, v14

    :cond_2
    :goto_1
    monitor-exit v13

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v13

    throw v0

    :cond_3
    const-wide/16 v13, -0x1

    if-eqz v11, :cond_4

    move-object v6, v11

    goto :goto_2

    :cond_4
    iget v3, v0, Lokhttp3/internal/connection/RealConnectionPool;->a:I

    if-le v9, v3, :cond_5

    move-wide v3, v7

    move-object v6, v12

    goto :goto_2

    :cond_5
    move-wide v3, v13

    :goto_2
    if-eqz v6, :cond_a

    monitor-enter v6

    :try_start_1
    iget-object v1, v6, Lokhttp3/internal/connection/RealConnection;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-wide/16 v7, 0x0

    if-nez v1, :cond_6

    monitor-exit v6

    return-wide v7

    :cond_6
    :try_start_2
    iget-wide v1, v6, Lokhttp3/internal/connection/RealConnection;->t:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    cmp-long v1, v1, v3

    if-eqz v1, :cond_7

    monitor-exit v6

    return-wide v7

    :cond_7
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, v6, Lokhttp3/internal/connection/RealConnection;->m:Z

    iget-object v1, v0, Lokhttp3/internal/connection/RealConnectionPool;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit v6

    iget-object v1, v6, Lokhttp3/internal/connection/RealConnection;->f:Ljava/net/Socket;

    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt;->c(Ljava/net/Socket;)V

    iget-object v1, v0, Lokhttp3/internal/connection/RealConnectionPool;->b:Lokhttp3/internal/connection/ConnectionListener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lokhttp3/internal/connection/RealConnectionPool;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, v0, Lokhttp3/internal/connection/RealConnectionPool;->d:Lokhttp3/internal/concurrent/TaskQueue;

    iget-object v1, v0, Lokhttp3/internal/concurrent/TaskQueue;->a:Lokhttp3/internal/concurrent/TaskRunner;

    monitor-enter v1

    :try_start_4
    invoke-virtual {v0}, Lokhttp3/internal/concurrent/TaskQueue;->a()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v0, Lokhttp3/internal/concurrent/TaskQueue;->a:Lokhttp3/internal/concurrent/TaskRunner;

    invoke-virtual {v2, v0}, Lokhttp3/internal/concurrent/TaskRunner;->c(Lokhttp3/internal/concurrent/TaskQueue;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_8
    :goto_3
    monitor-exit v1

    return-wide v7

    :goto_4
    monitor-exit v1

    throw v0

    :cond_9
    return-wide v7

    :catchall_2
    move-exception v0

    monitor-exit v6

    throw v0

    :cond_a
    if-eqz v12, :cond_b

    iget-wide v3, v0, Lokhttp3/internal/connection/RealConnectionPool;->c:J

    add-long/2addr v7, v3

    sub-long/2addr v7, v1

    return-wide v7

    :cond_b
    if-lez v10, :cond_c

    iget-wide v0, v0, Lokhttp3/internal/connection/RealConnectionPool;->c:J

    return-wide v0

    :cond_c
    return-wide v13
.end method
