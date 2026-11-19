.class final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;
.implements Lcom/perfectcorp/thirdparty/io/reactivex/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/e<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final r:[Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$a;

.field public static final s:[Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$a;


# instance fields
.field public final b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

.field public final c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

.field public final d:Z

.field public final e:I

.field public final f:I

.field public volatile g:Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/h;

.field public volatile h:Z

.field public final i:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/c;

.field public volatile j:Z

.field public final k:Ljava/util/concurrent/atomic/AtomicReference;

.field public l:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

.field public m:J

.field public n:J

.field public o:I

.field public final p:Ljava/util/ArrayDeque;

.field public q:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$a;

    sput-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->r:[Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$a;

    new-array v0, v0, [Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$a;

    sput-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->s:[Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$a;

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/e;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;ZII)V
    .locals 1

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/c;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/c;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->i:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/c;

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    iput-boolean p3, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->d:Z

    iput p4, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->e:I

    iput p5, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->f:I

    const p1, 0x7fffffff

    if-eq p4, p1, :cond_0

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1, p4}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->p:Ljava/util/ArrayDeque;

    :cond_0
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->r:[Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$a;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->k:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;)V
    .locals 6

    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/Callable;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    check-cast p1, Ljava/util/concurrent/Callable;

    const v0, 0x7fffffff

    const/4 v2, 0x1

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    invoke-interface {v3, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onNext(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->g:Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/h;

    if-nez v3, :cond_4

    iget v3, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->e:I

    if-ne v3, v0, :cond_3

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/c;

    iget v4, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->f:I

    invoke-direct {v3, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/c;-><init>(I)V

    goto :goto_0

    :cond_3
    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/b;

    iget v4, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->e:I

    invoke-direct {v3, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/b;-><init>(I)V

    :goto_0
    iput-object v3, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->g:Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/h;

    :cond_4
    invoke-interface {v3, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;->a(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v3, "Scalar queue full?!"

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->c()V

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object v3, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->i:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/c;

    invoke-static {v3, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/e;->c(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->b()V

    :goto_1
    iget p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->e:I

    if-eq p1, v0, :cond_b

    monitor-enter p0

    :try_start_1
    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->p:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;

    if-nez p1, :cond_7

    iget v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->q:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->q:I

    move v1, v2

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_7
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->b()V

    return-void

    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_8
    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$a;

    iget-wide v2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->m:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->m:J

    invoke-direct {v0, p0, v2, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;J)V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->k:Ljava/util/concurrent/atomic/AtomicReference;

    :goto_4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$a;

    sget-object v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->s:[Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$a;

    if-ne v2, v3, :cond_9

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    goto :goto_5

    :cond_9
    array-length v3, v2

    add-int/lit8 v4, v3, 0x1

    new-array v4, v4, [Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$a;

    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v0, v4, v3

    :cond_a
    invoke-virtual {p0, v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;->subscribe(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V

    :cond_b
    :goto_5
    return-void

    :cond_c
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v2, :cond_a

    goto :goto_4
.end method

.method public final b()V
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->c()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 13

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    const/4 v1, 0x1

    move v2, v1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->f()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_9

    :cond_1
    iget-object v3, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->g:Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/h;

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->f()Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_9

    :cond_2
    invoke-interface {v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;->a()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v0, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onNext(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-boolean v3, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->h:Z

    iget-object v4, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->g:Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/h;

    iget-object v5, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$a;

    array-length v6, v5

    iget v7, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->e:I

    const v8, 0x7fffffff

    const/4 v9, 0x0

    if-eq v7, v8, :cond_4

    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->size()I

    move-result v7

    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    move v7, v9

    :goto_2
    if-eqz v3, :cond_7

    if-eqz v4, :cond_5

    invoke-interface {v4}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;->b()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_5
    if-nez v6, :cond_7

    if-nez v7, :cond_7

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->i:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/c;

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/e;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object p0

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/e;->a:Ljava/lang/Throwable;

    if-eq p0, v1, :cond_19

    if-nez p0, :cond_6

    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onComplete()V

    return-void

    :cond_6
    invoke-interface {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_9

    :cond_7
    if-eqz v6, :cond_16

    iget-wide v3, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->n:J

    iget v7, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->o:I

    if-le v6, v7, :cond_8

    aget-object v10, v5, v7

    iget-wide v10, v10, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$a;->b:J

    cmp-long v10, v10, v3

    if-eqz v10, :cond_c

    :cond_8
    if-gt v6, v7, :cond_9

    move v7, v9

    :cond_9
    move v10, v9

    :goto_3
    if-ge v10, v6, :cond_b

    aget-object v11, v5, v7

    iget-wide v11, v11, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$a;->b:J

    cmp-long v11, v11, v3

    if-eqz v11, :cond_b

    add-int/lit8 v7, v7, 0x1

    if-ne v7, v6, :cond_a

    move v7, v9

    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_b
    iput v7, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->o:I

    aget-object v3, v5, v7

    iget-wide v3, v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$a;->b:J

    iput-wide v3, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->n:J

    :cond_c
    move v3, v9

    move v4, v3

    :goto_4
    if-ge v3, v6, :cond_15

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->f()Z

    move-result v10

    if-eqz v10, :cond_d

    goto/16 :goto_9

    :cond_d
    aget-object v10, v5, v7

    iget-object v11, v10, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$a;->e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;

    if-eqz v11, :cond_10

    :cond_e
    :try_start_1
    invoke-interface {v11}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;->a()Ljava/lang/Object;

    move-result-object v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v12, :cond_10

    invoke-interface {v0, v12}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onNext(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->f()Z

    move-result v12

    if-eqz v12, :cond_e

    goto/16 :goto_9

    :catchall_1
    move-exception v11

    invoke-static {v10}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    iget-object v12, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->i:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/c;

    invoke-static {v12, v11}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/e;->c(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->f()Z

    move-result v11

    if-eqz v11, :cond_f

    goto/16 :goto_9

    :cond_f
    invoke-virtual {p0, v10}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->d(Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$a;)V

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v7, v7, 0x1

    if-ne v7, v6, :cond_14

    goto :goto_5

    :cond_10
    iget-boolean v11, v10, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$a;->d:Z

    iget-object v12, v10, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$a;->e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;

    if-eqz v11, :cond_13

    if-eqz v12, :cond_11

    invoke-interface {v12}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/i;->b()Z

    move-result v11

    if-eqz v11, :cond_13

    :cond_11
    invoke-virtual {p0, v10}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->d(Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$a;)V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->f()Z

    move-result v10

    if-eqz v10, :cond_12

    goto :goto_9

    :cond_12
    add-int/lit8 v4, v4, 0x1

    :cond_13
    add-int/lit8 v7, v7, 0x1

    if-ne v7, v6, :cond_14

    :goto_5
    move v7, v9

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_15
    iput v7, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->o:I

    aget-object v3, v5, v7

    iget-wide v5, v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$a;->b:J

    iput-wide v5, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->n:J

    move v9, v4

    :cond_16
    if-eqz v9, :cond_18

    iget v3, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->e:I

    if-eq v3, v8, :cond_0

    :goto_6
    add-int/lit8 v3, v9, -0x1

    if-eqz v9, :cond_0

    monitor-enter p0

    :try_start_2
    iget-object v4, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;

    if-nez v4, :cond_17

    iget v4, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->q:I

    sub-int/2addr v4, v1

    iput v4, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->q:I

    monitor-exit p0

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_8

    :cond_17
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {p0, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->a(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;)V

    :goto_7
    move v9, v3

    goto :goto_6

    :goto_8
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :cond_18
    neg-int v2, v2

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v2

    if-eqz v2, :cond_19

    goto/16 :goto_0

    :cond_19
    :goto_9
    return-void
.end method

.method public final d(Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$a;)V
    .locals 7

    :goto_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$a;

    array-length v2, v1

    if-nez v2, :cond_0

    goto :goto_4

    :cond_0
    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    if-ne v5, p1, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, -0x1

    :goto_2
    if-gez v4, :cond_3

    goto :goto_4

    :cond_3
    const/4 v5, 0x1

    if-ne v2, v5, :cond_4

    sget-object v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->r:[Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$a;

    goto :goto_3

    :cond_4
    add-int/lit8 v6, v2, -0x1

    new-array v6, v6, [Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$a;

    invoke-static {v1, v3, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v4, 0x1

    sub-int/2addr v2, v4

    sub-int/2addr v2, v5

    invoke-static {v1, v3, v6, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v6

    :cond_5
    :goto_3
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_4
    return-void

    :cond_6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v1, :cond_5

    goto :goto_0
.end method

.method public final dispose()V
    .locals 1

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->j:Z

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->i:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/c;

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/e;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/e;->a:Ljava/lang/Throwable;

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/plugins/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final e()Z
    .locals 3

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->l:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->dispose()V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$a;

    const/4 v1, 0x0

    sget-object v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->s:[Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$a;

    if-eq v0, v2, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$a;

    if-eq p0, v2, :cond_1

    array-length v0, p0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final f()Z
    .locals 3

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->j:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->i:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/c;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    iget-boolean v2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->d:Z

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->e()Z

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->i:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/c;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/e;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    sget-object v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/e;->a:Ljava/lang/Throwable;

    if-eq v0, v2, :cond_1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    invoke-interface {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final isDisposed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->j:Z

    return p0
.end method

.method public final onComplete()V
    .locals 1

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->h:Z

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->b()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->h:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/plugins/a;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->i:Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/c;

    invoke-static {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/e;->c(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->h:Z

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->b()V

    return-void

    :cond_1
    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/plugins/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    invoke-interface {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;

    const-string v0, "The mapper returned a null ObservableSource"

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->e:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->q:I

    iget v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->e:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->q:I

    monitor-exit p0

    goto :goto_1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->a(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;)V

    return-void

    :catchall_1
    move-exception p1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->l:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->dispose()V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->l:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->c(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->l:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p$b;->b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    invoke-interface {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    :cond_0
    return-void
.end method
