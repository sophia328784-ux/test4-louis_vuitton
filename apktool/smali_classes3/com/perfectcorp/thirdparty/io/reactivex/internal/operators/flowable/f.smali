.class public final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/flowable/f;
.super Lcom/perfectcorp/thirdparty/io/reactivex/Flowable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/io/reactivex/Flowable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/concurrent/Future;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Flowable;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/flowable/f;->b:Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/org/reactivestreams/b;)V
    .locals 10

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/subscriptions/c;

    invoke-direct {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/subscriptions/c;-><init>(Lcom/perfectcorp/thirdparty/org/reactivestreams/b;)V

    check-cast p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/flowable/i$a;

    iget-object v1, p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/flowable/i$a;->c:Lcom/perfectcorp/thirdparty/org/reactivestreams/c;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x4

    iget-object v8, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/subscriptions/c;->b:Lcom/perfectcorp/thirdparty/org/reactivestreams/b;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/subscriptions/c;->e()V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/exceptions/b;

    const-string v9, "Subscription already set!"

    invoke-direct {v1, v9}, Lcom/perfectcorp/thirdparty/io/reactivex/exceptions/b;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/plugins/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iput-object v0, p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/flowable/i$a;->c:Lcom/perfectcorp/thirdparty/org/reactivestreams/c;

    iget-object v1, p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/flowable/i$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/f;

    invoke-interface {v1, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/f;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    and-int/lit8 v9, v1, -0x2

    if-eqz v9, :cond_2

    goto :goto_0

    :cond_2
    if-ne v1, v6, :cond_3

    invoke-virtual {v0, v6, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/subscriptions/c;->c:Ljava/lang/Object;

    if-eqz v1, :cond_4

    iput-object v4, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/subscriptions/c;->c:Ljava/lang/Object;

    invoke-interface {v8, v1}, Lcom/perfectcorp/thirdparty/org/reactivestreams/b;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v1, v7, :cond_4

    invoke-interface {v8}, Lcom/perfectcorp/thirdparty/org/reactivestreams/b;->c()V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_4
    :goto_0
    :try_start_0
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/flowable/f;->b:Ljava/util/concurrent/Future;

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_5

    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "The future returned null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/flowable/i$a;->b(Ljava/lang/Throwable;)V

    return-void

    :cond_5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    :cond_6
    const/16 v1, 0x8

    if-ne p1, v1, :cond_7

    iput-object p0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/subscriptions/c;->c:Ljava/lang/Object;

    const/16 p1, 0x10

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    invoke-interface {v8, p0}, Lcom/perfectcorp/thirdparty/org/reactivestreams/b;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-eq p0, v7, :cond_c

    invoke-interface {v8}, Lcom/perfectcorp/thirdparty/org/reactivestreams/b;->c()V

    return-void

    :cond_7
    and-int/lit8 v1, p1, -0x3

    if-eqz v1, :cond_8

    goto :goto_1

    :cond_8
    if-ne p1, v2, :cond_9

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    invoke-interface {v8, p0}, Lcom/perfectcorp/thirdparty/org/reactivestreams/b;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-eq p0, v7, :cond_c

    invoke-interface {v8}, Lcom/perfectcorp/thirdparty/org/reactivestreams/b;->c()V

    return-void

    :cond_9
    iput-object p0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/subscriptions/c;->c:Ljava/lang/Object;

    invoke-virtual {v0, v3, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_1

    :cond_a
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-ne p1, v7, :cond_6

    iput-object v4, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/subscriptions/c;->c:Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, v7, :cond_b

    goto :goto_1

    :cond_b
    invoke-virtual {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/flowable/i$a;->b(Ljava/lang/Throwable;)V

    :cond_c
    :goto_1
    return-void
.end method
