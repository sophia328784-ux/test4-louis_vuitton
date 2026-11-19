.class final Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public b:Z

.field public synthetic c:Ljava/util/concurrent/Executor;

.field public synthetic d:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/x;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/y;

    invoke-direct {v1, p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/y;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/x;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/x;->b:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/x;->d:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->setException(Ljava/lang/Throwable;)Z

    :cond_0
    return-void
.end method
