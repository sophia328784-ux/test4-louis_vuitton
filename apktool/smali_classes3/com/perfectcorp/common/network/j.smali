.class abstract Lcom/perfectcorp/common/network/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/common/network/j$a;,
        Lcom/perfectcorp/common/network/j$b;,
        Lcom/perfectcorp/common/network/j$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final a:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture<",
            "TResult;>;"
        }
    .end annotation
.end field

.field private final b:J

.field private final c:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

.field private volatile d:Z

.field private volatile e:Z


# direct methods
.method public constructor <init>(Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/common/network/j;->a:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perfectcorp/common/network/j;->b:J

    const-string v0, "priority must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/perfectcorp/common/network/j;->c:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation
.end method

.method public final a(Ljava/lang/Throwable;)Z
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/common/network/j;->a:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->setException(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method public final b()Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/common/network/j;->c:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    return-object p0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/common/network/j;->a:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/perfectcorp/common/network/j;->d:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/perfectcorp/common/network/j$b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Lcom/perfectcorp/common/network/j$a;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public cancel(Z)Z
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/common/network/j;->a:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->cancel(Z)Z

    move-result p0

    return p0
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/common/network/j;->d:Z

    return-void
.end method

.method public final e()Z
    .locals 0

    iget-boolean p0, p0, Lcom/perfectcorp/common/network/j;->e:Z

    return p0
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perfectcorp/common/network/j;->d:Z

    iput-boolean v0, p0, Lcom/perfectcorp/common/network/j;->e:Z

    return-void
.end method

.method public final g()J
    .locals 2

    iget-wide v0, p0, Lcom/perfectcorp/common/network/j;->b:J

    return-wide v0
.end method

.method public getFuture()Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture<",
            "TResult;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/perfectcorp/common/network/j;->a:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    return-object p0
.end method

.method public final isCancelled()Z
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/common/network/j;->a:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->isCancelled()Z

    move-result p0

    return p0
.end method

.method public final isDone()Z
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/common/network/j;->a:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->isDone()Z

    move-result p0

    return p0
.end method

.method public final run()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/perfectcorp/common/network/j;->c()V

    invoke-virtual {p0}, Lcom/perfectcorp/common/network/j;->a()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/perfectcorp/common/network/j;->a:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/perfectcorp/common/network/j$b; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/perfectcorp/common/network/j;->a:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->setException(Ljava/lang/Throwable;)Z

    return-void

    :catch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/common/network/j;->e:Z

    return-void
.end method
