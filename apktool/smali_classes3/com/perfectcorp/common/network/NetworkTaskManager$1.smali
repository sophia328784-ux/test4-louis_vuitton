.class Lcom/perfectcorp/common/network/NetworkTaskManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/common/network/NetworkTaskManager$InitRequestHandler;


# instance fields
.field public synthetic a:Lcom/perfectcorp/common/network/NetworkTaskManager;


# virtual methods
.method public final a(Lcom/perfectcorp/common/network/RequestTask;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;
    .locals 1

    const-string v0, "[initFuture] start"

    invoke-static {v0}, Lcom/perfectcorp/common/network/NetworkTaskManager$DebugLog;->a(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/perfectcorp/common/network/NetworkTaskManager$1;->a:Lcom/perfectcorp/common/network/NetworkTaskManager;

    iget-object p0, p0, Lcom/perfectcorp/common/network/NetworkTaskManager;->a:Lcom/perfectcorp/common/network/k;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/common/network/k;->execute(Ljava/lang/Runnable;)V

    const-string p0, "[initFuture] task executed"

    invoke-static {p0}, Lcom/perfectcorp/common/network/NetworkTaskManager$DebugLog;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/perfectcorp/common/network/j;->getFuture()Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    const-string p1, "[initFuture] end"

    invoke-static {p1}, Lcom/perfectcorp/common/network/NetworkTaskManager$DebugLog;->a(Ljava/lang/String;)V

    return-object p0
.end method
