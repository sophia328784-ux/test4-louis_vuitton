.class final Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h$c;
.super Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h;)I
    .locals 0

    monitor-enter p1

    :try_start_0
    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h;->b(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h;)I

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h;->c(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h;)I

    move-result p0

    monitor-exit p1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final b(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h;Ljava/util/Set;)V
    .locals 0

    monitor-enter p1

    :try_start_0
    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h;)Ljava/util/Set;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {p1, p2}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h;Ljava/util/Set;)Ljava/util/Set;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
