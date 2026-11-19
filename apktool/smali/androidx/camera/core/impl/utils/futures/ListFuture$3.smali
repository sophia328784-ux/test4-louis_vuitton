.class Landroidx/camera/core/impl/utils/futures/ListFuture$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroidx/camera/core/impl/utils/futures/ListFuture;

.field final synthetic val$index:I

.field final synthetic val$listenable:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/utils/futures/ListFuture;ILcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/camera/core/impl/utils/futures/ListFuture$3;->this$0:Landroidx/camera/core/impl/utils/futures/ListFuture;

    iput p2, p0, Landroidx/camera/core/impl/utils/futures/ListFuture$3;->val$index:I

    iput-object p3, p0, Landroidx/camera/core/impl/utils/futures/ListFuture$3;->val$listenable:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    iget-object v0, p0, Landroidx/camera/core/impl/utils/futures/ListFuture$3;->this$0:Landroidx/camera/core/impl/utils/futures/ListFuture;

    iget v1, p0, Landroidx/camera/core/impl/utils/futures/ListFuture$3;->val$index:I

    iget-object p0, p0, Landroidx/camera/core/impl/utils/futures/ListFuture$3;->val$listenable:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-boolean v2, v0, Landroidx/camera/core/impl/utils/futures/ListFuture;->d:Z

    const-string v3, "Less than 0 remaining futures"

    iget-object v4, v0, Landroidx/camera/core/impl/utils/futures/ListFuture;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v5, v0, Landroidx/camera/core/impl/utils/futures/ListFuture;->c:Ljava/util/ArrayList;

    iget-object v6, v0, Landroidx/camera/core/impl/utils/futures/ListFuture;->f:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v6}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v7

    if-nez v7, :cond_f

    if-nez v5, :cond_0

    goto/16 :goto_e

    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v10

    const-string v11, "Tried to set value from future which is not done"

    invoke-static {v11, v10}, Landroidx/core/util/Preconditions;->f(Ljava/lang/String;Z)V

    invoke-static {p0}, Landroidx/camera/core/impl/utils/futures/Futures;->d(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v5, v1, p0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p0

    if-ltz p0, :cond_1

    goto :goto_0

    :cond_1
    move v8, v9

    :goto_0
    invoke-static {v3, v8}, Landroidx/core/util/Preconditions;->f(Ljava/lang/String;Z)V

    if-nez p0, :cond_e

    iget-object p0, v0, Landroidx/camera/core/impl/utils/futures/ListFuture;->c:Ljava/util/ArrayList;

    if-eqz p0, :cond_2

    iget-object v0, v0, Landroidx/camera/core/impl/utils/futures/ListFuture;->g:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->b(Ljava/lang/Object;)Z

    return-void

    :cond_2
    invoke-interface {v6}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p0

    invoke-static {v7, p0}, Landroidx/core/util/Preconditions;->f(Ljava/lang/String;Z)V

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    goto :goto_6

    :goto_1
    :try_start_1
    iget-object v1, v0, Landroidx/camera/core/impl/utils/futures/ListFuture;->g:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-virtual {v1, p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->d(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p0

    if-ltz p0, :cond_3

    goto :goto_2

    :cond_3
    move v8, v9

    :goto_2
    invoke-static {v3, v8}, Landroidx/core/util/Preconditions;->f(Ljava/lang/String;Z)V

    if-nez p0, :cond_e

    iget-object p0, v0, Landroidx/camera/core/impl/utils/futures/ListFuture;->c:Ljava/util/ArrayList;

    if-eqz p0, :cond_4

    iget-object v0, v0, Landroidx/camera/core/impl/utils/futures/ListFuture;->g:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_3
    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->b(Ljava/lang/Object;)Z

    goto/16 :goto_d

    :cond_4
    invoke-interface {v6}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p0

    invoke-static {v7, p0}, Landroidx/core/util/Preconditions;->f(Ljava/lang/String;Z)V

    goto/16 :goto_d

    :goto_4
    if-eqz v2, :cond_5

    :try_start_2
    iget-object v1, v0, Landroidx/camera/core/impl/utils/futures/ListFuture;->g:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-virtual {v1, p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->d(Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p0

    if-ltz p0, :cond_6

    goto :goto_5

    :cond_6
    move v8, v9

    :goto_5
    invoke-static {v3, v8}, Landroidx/core/util/Preconditions;->f(Ljava/lang/String;Z)V

    if-nez p0, :cond_e

    iget-object p0, v0, Landroidx/camera/core/impl/utils/futures/ListFuture;->c:Ljava/util/ArrayList;

    if-eqz p0, :cond_4

    iget-object v0, v0, Landroidx/camera/core/impl/utils/futures/ListFuture;->g:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_3

    :goto_6
    if-eqz v2, :cond_7

    :try_start_3
    iget-object v1, v0, Landroidx/camera/core/impl/utils/futures/ListFuture;->g:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->d(Ljava/lang/Throwable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_7
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p0

    if-ltz p0, :cond_8

    goto :goto_7

    :cond_8
    move v8, v9

    :goto_7
    invoke-static {v3, v8}, Landroidx/core/util/Preconditions;->f(Ljava/lang/String;Z)V

    if-nez p0, :cond_e

    iget-object p0, v0, Landroidx/camera/core/impl/utils/futures/ListFuture;->c:Ljava/util/ArrayList;

    if-eqz p0, :cond_4

    iget-object v0, v0, Landroidx/camera/core/impl/utils/futures/ListFuture;->g:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_3

    :catch_3
    if-eqz v2, :cond_c

    :try_start_4
    invoke-virtual {v0, v9}, Landroidx/camera/core/impl/utils/futures/ListFuture;->cancel(Z)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_b

    :goto_8
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-ltz v1, :cond_9

    goto :goto_9

    :cond_9
    move v8, v9

    :goto_9
    invoke-static {v3, v8}, Landroidx/core/util/Preconditions;->f(Ljava/lang/String;Z)V

    if-nez v1, :cond_b

    iget-object v1, v0, Landroidx/camera/core/impl/utils/futures/ListFuture;->c:Ljava/util/ArrayList;

    if-eqz v1, :cond_a

    iget-object v0, v0, Landroidx/camera/core/impl/utils/futures/ListFuture;->g:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->b(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_a
    invoke-interface {v6}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    invoke-static {v7, v0}, Landroidx/core/util/Preconditions;->f(Ljava/lang/String;Z)V

    :cond_b
    :goto_a
    throw p0

    :cond_c
    :goto_b
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p0

    if-ltz p0, :cond_d

    goto :goto_c

    :cond_d
    move v8, v9

    :goto_c
    invoke-static {v3, v8}, Landroidx/core/util/Preconditions;->f(Ljava/lang/String;Z)V

    if-nez p0, :cond_e

    iget-object p0, v0, Landroidx/camera/core/impl/utils/futures/ListFuture;->c:Ljava/util/ArrayList;

    if-eqz p0, :cond_4

    iget-object v0, v0, Landroidx/camera/core/impl/utils/futures/ListFuture;->g:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/16 :goto_3

    :cond_e
    :goto_d
    return-void

    :cond_f
    :goto_e
    const-string p0, "Future was done before all dependencies completed"

    invoke-static {p0, v2}, Landroidx/core/util/Preconditions;->f(Ljava/lang/String;Z)V

    return-void
.end method
