.class final Lcom/perfectcorp/thirdparty/com/google/common/cache/d$k;
.super Lcom/perfectcorp/thirdparty/com/google/common/cache/d$l;

# interfaces
.implements Lcom/perfectcorp/thirdparty/com/google/common/cache/LoadingCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/cache/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/com/google/common/cache/d$l<",
        "TK;TV;>;",
        "Lcom/perfectcorp/thirdparty/com/google/common/cache/LoadingCache<",
        "TK;TV;>;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$k;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/z;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/z;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$l;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->q:Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheLoader;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->a(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->c(I)Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget v2, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->c:I

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1, p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->u(ILjava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    iget-object v3, v3, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->n:Lcom/perfectcorp/thirdparty/com/google/common/base/t;

    invoke-virtual {v3}, Lcom/perfectcorp/thirdparty/com/google/common/base/t;->a()J

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->c(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, v2, v3, v4}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->r(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;J)V

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->g()V

    return-object v5

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-interface {v2}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->a()Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;

    move-result-object v3

    invoke-interface {v3}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v2, p1, v3}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->d(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;Ljava/lang/Object;Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->g()V

    return-object p1

    :cond_1
    :try_start_2
    invoke-virtual {p0, p1, v1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->o(Ljava/lang/Object;ILcom/perfectcorp/thirdparty/com/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->g()V

    return-object p1

    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Error;

    if-nez v1, :cond_3

    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_2

    new-instance p1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/z;

    invoke-direct {p1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/z;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    throw p1

    :cond_3
    new-instance p1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/l;

    check-cast v0, Ljava/lang/Error;

    invoke-direct {p1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/l;-><init>(Ljava/lang/Error;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->g()V

    throw p1
.end method
