.class public abstract Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;
.super Lcom/perfectcorp/thirdparty/futures/failureaccess/com/google/common/util/concurrent/internal/a;

# interfaces
.implements Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$g;,
        Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$e;,
        Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$j;,
        Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$a;,
        Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$f;,
        Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$b;,
        Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$c;,
        Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$d;,
        Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;,
        Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$i;,
        Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$h;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/futures/failureaccess/com/google/common/util/concurrent/internal/a;",
        "Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final a:Z

.field private static final b:Ljava/util/logging/Logger;

.field private static final c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$a;

.field private static final d:Ljava/lang/Object;


# instance fields
.field private volatile listeners:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$d;

.field private volatile value:Ljava/lang/Object;

.field private volatile waiters:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-class v1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;

    const-string v0, "guava.concurrent.generate_cancellation_cause"

    const-string v2, "false"

    invoke-static {v0, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->a:Z

    const-class v2, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->b:Ljava/util/logging/Logger;

    const/4 v3, 0x0

    :try_start_0
    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v4, v0

    :try_start_1
    new-instance v5, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$e;

    const-class v0, Ljava/lang/Thread;

    const-string v6, "a"

    invoke-static {v1, v0, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v6

    const-string v0, "b"

    invoke-static {v1, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v7

    const-string v0, "waiters"

    invoke-static {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v8

    const-class v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$d;

    const-string v1, "listeners"

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v9

    const-class v0, Ljava/lang/Object;

    const-string v1, "value"

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v10

    invoke-direct/range {v5 .. v10}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$e;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v5

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v3, v0

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :goto_0
    sput-object v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$a;

    if-eqz v3, :cond_0

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->b:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "UnsafeAtomicHelper is broken!"

    invoke-virtual {v0, v1, v2, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v2, "SafeAtomicHelper is broken!"

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->d:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$d;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$d;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->listeners:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$d;

    return-object p1
.end method

.method public static synthetic a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->waiters:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;

    return-object p1
.end method

.method public static synthetic a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->g(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;)Ljava/lang/Object;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->value:Ljava/lang/Object;

    return-object p1
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    instance-of v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$b;

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$c;

    if-nez v0, :cond_1

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->d:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$c;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$c;->a:Ljava/lang/Throwable;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$b;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$b;->b:Ljava/lang/Throwable;

    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task was cancelled."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0
.end method

.method public static synthetic b(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;)V
    .locals 0

    .line 40
    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->h(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;)V

    return-void
.end method

.method public static synthetic c(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->waiters:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;

    return-object p0
.end method

.method public static synthetic d(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$d;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->listeners:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$d;

    return-object p0
.end method

.method public static synthetic e()Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$a;
    .locals 1

    .line 35
    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$a;

    return-object v0
.end method

.method public static e(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 5

    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->b:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RuntimeException while executing runnable "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " with executor "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic f()Z
    .locals 1

    .line 94
    sget-boolean v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->a:Z

    return v0
.end method

.method public static g(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    .locals 6

    const-string v0, "get() did not throw CancellationException, despite reporting isCancelled() == true: "

    instance-of v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$h;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->value:Ljava/lang/Object;

    instance-of v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$b;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$b;

    iget-boolean v1, v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$b;->a:Z

    if-eqz v1, :cond_1

    iget-object p0, v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$b;->b:Ljava/lang/Throwable;

    if-eqz p0, :cond_0

    new-instance p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$b;

    iget-object v0, v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$b;->b:Ljava/lang/Throwable;

    invoke-direct {p0, v2, v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$b;-><init>(ZLjava/lang/Throwable;)V

    return-object p0

    :cond_0
    sget-object p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$b;->d:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$b;

    :cond_1
    return-object p0

    :cond_2
    instance-of v1, p0, Lcom/perfectcorp/thirdparty/futures/failureaccess/com/google/common/util/concurrent/internal/a;

    if-eqz v1, :cond_3

    move-object v1, p0

    check-cast v1, Lcom/perfectcorp/thirdparty/futures/failureaccess/com/google/common/util/concurrent/internal/a;

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/futures/failureaccess/com/google/common/util/concurrent/internal/a;->d()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$c;

    invoke-direct {p0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$c;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    sget-boolean v3, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->a:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    and-int/2addr v3, v1

    if-eqz v3, :cond_4

    sget-object p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$b;->d:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$b;

    return-object p0

    :cond_4
    :try_start_0
    move-object v3, p0

    check-cast v3, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v2

    :goto_0
    :try_start_1
    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_5

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    :cond_5
    if-eqz v1, :cond_6

    new-instance v3, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$b;

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v2, v4}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$b;-><init>(ZLjava/lang/Throwable;)V

    return-object v3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_3

    :cond_6
    if-nez v3, :cond_7

    sget-object p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->d:Ljava/lang/Object;

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_7
    return-object v3

    :catchall_1
    move-exception v3

    if-eqz v5, :cond_8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    :cond_8
    throw v3
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_2
    move v5, v4

    goto :goto_0

    :goto_1
    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$c;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$c;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    :goto_2
    if-nez v1, :cond_9

    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$c;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get() threw CancellationException, despite reporting isCancelled() == false: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$c;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    :cond_9
    new-instance p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$b;

    invoke-direct {p0, v2, v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$b;-><init>(ZLjava/lang/Throwable;)V

    return-object p0

    :goto_3
    if-eqz v1, :cond_a

    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$b;

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2, v4}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$b;-><init>(ZLjava/lang/Throwable;)V

    return-object v1

    :cond_a
    new-instance p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$c;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$c;-><init>(Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public static h(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;)V
    .locals 5

    const/4 v0, 0x0

    move-object v1, v0

    :cond_0
    iget-object v2, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->waiters:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;

    sget-object v3, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$a;

    sget-object v4, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;

    invoke-virtual {v3, p0, v2, v4}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$a;->d(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;->a:Ljava/lang/Thread;

    if-eqz v3, :cond_1

    iput-object v0, v2, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;->a:Ljava/lang/Thread;

    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_1
    iget-object v2, v2, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;->b:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->b()V

    :cond_3
    iget-object v2, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->listeners:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$d;

    sget-object v3, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$a;

    sget-object v4, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$d;->d:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$d;

    invoke-virtual {v3, p0, v2, v4}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$a;->c(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$d;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$d;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    move-object p0, v1

    move-object v1, v2

    if-eqz v1, :cond_4

    iget-object v2, v1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$d;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$d;

    iput-object p0, v1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$d;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$d;

    goto :goto_1

    :cond_4
    :goto_2
    if-eqz p0, :cond_7

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$d;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$d;

    iget-object v2, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$d;->a:Ljava/lang/Runnable;

    instance-of v3, v2, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$f;

    if-eqz v3, :cond_5

    check-cast v2, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$f;

    iget-object p0, v2, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$f;->a:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;

    iget-object v3, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->value:Ljava/lang/Object;

    if-ne v3, v2, :cond_6

    iget-object v3, v2, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$f;->b:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    invoke-static {v3}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->g(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$a;

    invoke-virtual {v4, p0, v2, v3}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$a;->e(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    :cond_5
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$d;->b:Ljava/util/concurrent/Executor;

    invoke-static {v2, p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->e(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_6
    :goto_3
    move-object p0, v1

    goto :goto_2

    :cond_7
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->value:Ljava/lang/Object;

    instance-of v1, v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$f;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setFuture=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$f;

    iget-object v0, v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$f;->b:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    if-ne v0, p0, :cond_0

    const-string p0, "this future"

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v0, "]"

    invoke-static {p0, v0, v1}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "remaining delay=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/util/concurrent/ScheduledFuture;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v1}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ms]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final a(Ljava/util/concurrent/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    .line 72
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->isCancelled()Z

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->c()Z

    move-result p0

    invoke-interface {p1, p0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1
    return-void
.end method

.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 4

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$d;->d:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$d;

    const-string v1, "Runnable was null."

    invoke-static {p1, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "Executor was null."

    invoke-static {p2, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->isDone()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->listeners:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$d;

    if-eq v1, v0, :cond_2

    new-instance v2, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$d;

    invoke-direct {v2, p1, p2}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$d;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_0
    iput-object v1, v2, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$d;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$d;

    sget-object v3, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$a;

    invoke-virtual {v3, p0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$a;->c(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$d;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$d;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->listeners:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$d;

    if-ne v1, v0, :cond_0

    :cond_2
    invoke-static {p1, p2}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->e(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public b()V
    .locals 0

    .line 39
    return-void
.end method

.method public final c(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;)V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;->a:Ljava/lang/Thread;

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->waiters:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;

    sget-object v1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;

    if-ne p1, v1, :cond_1

    goto :goto_3

    :cond_1
    move-object v1, v0

    :goto_1
    if-eqz p1, :cond_5

    iget-object v2, p1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;->b:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;

    iget-object v3, p1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;->a:Ljava/lang/Thread;

    if-eqz v3, :cond_2

    move-object v1, p1

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    iput-object v2, v1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;->b:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;

    iget-object p1, v1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;->a:Ljava/lang/Thread;

    if-nez p1, :cond_4

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$a;

    invoke-virtual {v3, p0, p1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$a;->d(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;)Z

    move-result p1

    if-eqz p1, :cond_0

    :cond_4
    :goto_2
    move-object p1, v2

    goto :goto_1

    :cond_5
    :goto_3
    return-void
.end method

.method public final c()Z
    .locals 1

    .line 42
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->value:Ljava/lang/Object;

    instance-of v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$b;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$b;

    iget-boolean p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$b;->a:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public cancel(Z)Z
    .locals 6

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->value:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    instance-of v4, v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$f;

    or-int/2addr v3, v4

    if-eqz v3, :cond_8

    sget-boolean v3, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->a:Z

    if-eqz v3, :cond_1

    new-instance v3, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$b;

    new-instance v4, Ljava/util/concurrent/CancellationException;

    const-string v5, "Future.cancel() was called."

    invoke-direct {v4, v5}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p1, v4}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$b;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    sget-object v3, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$b;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$b;

    goto :goto_1

    :cond_2
    sget-object v3, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$b;->d:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$b;

    :goto_1
    move v4, v2

    :cond_3
    :goto_2
    sget-object v5, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$a;

    invoke-virtual {v5, p0, v0, v3}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$a;->e(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->h(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;)V

    instance-of p0, v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$f;

    if-eqz p0, :cond_6

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$f;

    iget-object p0, v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$f;->b:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    instance-of v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$h;

    if-eqz v0, :cond_5

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->value:Ljava/lang/Object;

    if-nez v0, :cond_4

    move v4, v1

    goto :goto_3

    :cond_4
    move v4, v2

    :goto_3
    instance-of v5, v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$f;

    or-int/2addr v4, v5

    if-eqz v4, :cond_6

    move v4, v1

    goto :goto_2

    :cond_5
    invoke-interface {p0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_6
    return v1

    :cond_7
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->value:Ljava/lang/Object;

    instance-of v5, v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$f;

    if-nez v5, :cond_3

    return v4

    :cond_8
    return v2
.end method

.method public final d()Ljava/lang/Throwable;
    .locals 1

    instance-of v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$h;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->value:Ljava/lang/Object;

    instance-of v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$c;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$c;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$c;->a:Ljava/lang/Throwable;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final f(Ljava/lang/StringBuilder;)V
    .locals 3

    const-string v0, "]"

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    const-string v1, "SUCCESS, result=["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v2, p0, :cond_1

    const-string p0, "this future"

    goto :goto_1

    :cond_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    throw p0
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    const-string v0, "UNKNOWN, cause=["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " thrown from get()]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :catch_2
    const-string p0, "CANCELLED"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :goto_3
    const-string v1, "FAILURE, cause=["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :catch_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public get()Ljava/lang/Object;
    .locals 6

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->value:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    instance-of v5, v1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$f;

    xor-int/2addr v5, v3

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->waiters:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;

    if-eq v1, v0, :cond_7

    new-instance v4, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;

    invoke-direct {v4}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;-><init>()V

    .line 364
    :cond_2
    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->e()Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$a;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$a;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;)V

    .line 365
    sget-object v5, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$a;

    invoke-virtual {v5, p0, v1, v4}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$a;->d(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_3
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->value:Ljava/lang/Object;

    if-eqz v0, :cond_4

    move v1, v3

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    instance-of v5, v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$f;

    xor-int/2addr v5, v3

    and-int/2addr v1, v5

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {p0, v4}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->c(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;)V

    new-instance p0, Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0

    :cond_6
    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->waiters:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;

    if-ne v1, v0, :cond_2

    :cond_7
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->value:Ljava/lang/Object;

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_8
    new-instance p0, Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    sget-object v4, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v5

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v7

    if-nez v7, :cond_16

    iget-object v7, v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->value:Ljava/lang/Object;

    const/4 v9, 0x1

    if-eqz v7, :cond_0

    move v10, v9

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    instance-of v11, v7, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$f;

    xor-int/2addr v11, v9

    and-int/2addr v10, v11

    if-eqz v10, :cond_1

    invoke-static {v7}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    const-wide/16 v10, 0x0

    cmp-long v7, v5, v10

    if-lez v7, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    add-long/2addr v12, v5

    goto :goto_1

    :cond_2
    move-wide v12, v10

    :goto_1
    const-wide/16 v14, 0x3e8

    cmp-long v7, v5, v14

    if-ltz v7, :cond_a

    iget-object v7, v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->waiters:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;

    if-eq v7, v4, :cond_9

    new-instance v8, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;

    invoke-direct {v8}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;-><init>()V

    move/from16 v17, v9

    :cond_3
    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->e()Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$a;

    move-result-object v9

    invoke-virtual {v9, v8, v7}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$a;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;)V

    sget-object v9, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$a;

    invoke-virtual {v9, v0, v7, v8}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$a;->d(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;)Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_4
    invoke-static {v0, v5, v6}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->value:Ljava/lang/Object;

    if-eqz v4, :cond_5

    move/from16 v5, v17

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    instance-of v6, v4, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$f;

    xor-int/lit8 v6, v6, 0x1

    and-int/2addr v5, v6

    if-eqz v5, :cond_6

    invoke-static {v4}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v5, v12, v4

    cmp-long v4, v5, v14

    if-gez v4, :cond_4

    invoke-virtual {v0, v8}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->c(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v0, v8}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->c(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;)V

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_8
    iget-object v7, v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->waiters:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$k;

    if-ne v7, v4, :cond_3

    :cond_9
    iget-object v0, v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->value:Ljava/lang/Object;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_a
    move/from16 v17, v9

    :goto_3
    cmp-long v4, v5, v10

    if-lez v4, :cond_e

    iget-object v4, v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->value:Ljava/lang/Object;

    if-eqz v4, :cond_b

    move/from16 v5, v17

    goto :goto_4

    :cond_b
    const/4 v5, 0x0

    :goto_4
    instance-of v6, v4, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$f;

    xor-int/lit8 v6, v6, 0x1

    and-int/2addr v5, v6

    if-eqz v5, :cond_c

    invoke-static {v4}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_c
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_d

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v5, v12, v4

    goto :goto_3

    :cond_d
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_e
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "Waited "

    const-string v12, " "

    invoke-static {v1, v2, v9, v12}, Lpq0;->q(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-long v8, v5, v14

    cmp-long v2, v8, v10

    if-gez v2, :cond_14

    const-string v2, " (plus "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    neg-long v5, v5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v5, v6, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    sub-long/2addr v5, v2

    cmp-long v2, v8, v10

    if-eqz v2, :cond_10

    cmp-long v3, v5, v14

    if-lez v3, :cond_f

    goto :goto_5

    :cond_f
    const/16 v16, 0x0

    goto :goto_6

    :cond_10
    :goto_5
    move/from16 v16, v17

    :goto_6
    if-lez v2, :cond_12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v16, :cond_11

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_11
    invoke-virtual {v1, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_12
    if-eqz v16, :cond_13

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " nanoseconds "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_13
    const-string v2, "delay)"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_14
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->isDone()Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v2, " but future completed as timeout expired"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v2, " for "

    invoke-static {v1, v2, v4}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public isCancelled()Z
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->value:Ljava/lang/Object;

    instance-of p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$b;

    return p0
.end method

.method public isDone()Z
    .locals 2

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->value:Ljava/lang/Object;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    instance-of p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$f;

    xor-int/2addr p0, v0

    and-int/2addr p0, v1

    return p0
.end method

.method public set(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->d:Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$a;->e(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->h(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public setException(Ljava/lang/Throwable;)Z
    .locals 2

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$c;-><init>(Ljava/lang/Throwable;)V

    sget-object p1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$a;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$a;->e(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->h(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setFuture(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->value:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->g(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$a;

    invoke-virtual {v0, p0, v3, p1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$a;->e(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->h(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;)V

    return v2

    :cond_0
    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$f;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$f;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;)V

    sget-object v4, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$a;

    invoke-virtual {v4, p0, v3, v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$a;->e(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_0
    sget-object v1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/k;->a:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/k;

    invoke-interface {p1, v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception p1

    :try_start_1
    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$c;

    invoke-direct {v1, p1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$c;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    sget-object v1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$c;->b:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$c;

    :goto_0
    sget-object p1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$a;

    invoke-virtual {p1, p0, v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$a;->e(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;Ljava/lang/Object;Ljava/lang/Object;)Z

    return v2

    :cond_1
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->value:Ljava/lang/Object;

    :cond_2
    instance-of p0, v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$b;

    if-eqz p0, :cond_3

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$b;

    iget-boolean p0, v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$b;->a:Z

    invoke-interface {p1, p0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_3
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->isCancelled()Z

    move-result v1

    const-string v2, "]"

    if-eqz v1, :cond_0

    const-string p0, "CANCELLED"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->f(Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->a()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception thrown from implementation: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const-string p0, "PENDING, info=["

    invoke-static {v0, p0, v1, v2}, La;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->isDone()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->f(Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_3
    const-string p0, "PENDING"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
