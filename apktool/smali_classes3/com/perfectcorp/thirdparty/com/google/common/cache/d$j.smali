.class final Lcom/perfectcorp/thirdparty/com/google/common/cache/d$j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/cache/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public volatile b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;

.field public final c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

.field public final d:Lcom/perfectcorp/thirdparty/com/google/common/base/p;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->u:Lcom/perfectcorp/thirdparty/com/google/common/cache/e;

    .line 21
    invoke-direct {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$j;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;)V

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$j;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/base/p;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$j;->d:Lcom/perfectcorp/thirdparty/com/google/common/base/p;

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$j;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$j;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;->a()I

    move-result p0

    return p0
.end method

.method public final a(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;
    .locals 0

    .line 13
    return-object p0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$j;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->set(Ljava/lang/Object;)Z

    return-void

    :cond_0
    sget-object p1, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->u:Lcom/perfectcorp/thirdparty/com/google/common/cache/e;

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$j;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;

    return-void
.end method

.method public final b()Lcom/perfectcorp/thirdparty/com/google/common/cache/x;
    .locals 0

    .line 89
    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(Ljava/lang/Object;Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheLoader;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$j;->d:Lcom/perfectcorp/thirdparty/com/google/common/base/p;

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/p;->a()V

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$j;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;

    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p2, p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheLoader;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$j;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    invoke-virtual {p2, p1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->set(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$j;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures;->g(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheLoader;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures;->g(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance p2, Lcom/perfectcorp/thirdparty/com/google/common/cache/q;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p0, p2, Lcom/perfectcorp/thirdparty/com/google/common/cache/q;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$j;

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/w;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures;->h(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :goto_0
    iget-object p2, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$j;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    invoke-virtual {p2, p1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->setException(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$j;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures;->f(Ljava/lang/Throwable;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    :goto_1
    instance-of p1, p1, Ljava/lang/InterruptedException;

    if-eqz p1, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_3
    return-object p0
.end method

.method public final c()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final d()Z
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$j;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;->d()Z

    move-result p0

    return p0
.end method

.method public final e()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$j;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Uninterruptibles;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$j;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
