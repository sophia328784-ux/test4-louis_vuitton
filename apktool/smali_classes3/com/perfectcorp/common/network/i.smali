.class public final synthetic Lcom/perfectcorp/common/network/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/i;


# instance fields
.field public final synthetic a:Lcom/perfectcorp/common/network/NetworkTaskManager;

.field public final synthetic b:Lcom/perfectcorp/common/network/RequestTask;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/common/network/NetworkTaskManager;Lcom/perfectcorp/common/network/RequestTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/common/network/i;->a:Lcom/perfectcorp/common/network/NetworkTaskManager;

    iput-object p2, p0, Lcom/perfectcorp/common/network/i;->b:Lcom/perfectcorp/common/network/RequestTask;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;
    .locals 1

    sget p1, Lcom/perfectcorp/common/network/NetworkTaskManager;->d:I

    iget-object p1, p0, Lcom/perfectcorp/common/network/i;->a:Lcom/perfectcorp/common/network/NetworkTaskManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "[requestFuture] transformAsync start"

    invoke-static {v0}, Lcom/perfectcorp/common/network/NetworkTaskManager$DebugLog;->a(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/perfectcorp/common/network/NetworkTaskManager;->a:Lcom/perfectcorp/common/network/k;

    iget-object p0, p0, Lcom/perfectcorp/common/network/i;->b:Lcom/perfectcorp/common/network/RequestTask;

    invoke-virtual {p1, p0}, Lcom/perfectcorp/common/network/k;->execute(Ljava/lang/Runnable;)V

    const-string p1, "[requestFuture] task executed"

    invoke-static {p1}, Lcom/perfectcorp/common/network/NetworkTaskManager$DebugLog;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/perfectcorp/common/network/j;->getFuture()Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    const-string p1, "[requestFuture] transformAsync end"

    invoke-static {p1}, Lcom/perfectcorp/common/network/NetworkTaskManager$DebugLog;->a(Ljava/lang/String;)V

    return-object p0
.end method
