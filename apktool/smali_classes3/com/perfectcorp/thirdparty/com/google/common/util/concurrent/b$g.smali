.class final Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$g;
.super Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;)V
    .locals 0

    iput-object p2, p1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;->b:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;

    return-void
.end method

.method public final b(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;Ljava/lang/Thread;)V
    .locals 0

    iput-object p2, p1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;->a:Ljava/lang/Thread;

    return-void
.end method

.method public final c(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$d;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$d;)Z
    .locals 0

    monitor-enter p1

    :try_start_0
    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->d(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$d;

    move-result-object p0

    if-ne p0, p2, :cond_0

    invoke-static {p1, p3}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$d;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$d;

    const/4 p0, 0x1

    monitor-exit p1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    monitor-exit p1

    return p0

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final d(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;)Z
    .locals 0

    monitor-enter p1

    :try_start_0
    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->c(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;

    move-result-object p0

    if-ne p0, p2, :cond_0

    invoke-static {p1, p3}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;

    const/4 p0, 0x1

    monitor-exit p1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    monitor-exit p1

    return p0

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final e(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    monitor-enter p1

    :try_start_0
    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p2, :cond_0

    invoke-static {p1, p3}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit p1

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
