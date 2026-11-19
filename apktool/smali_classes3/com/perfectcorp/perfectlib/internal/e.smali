.class final Lcom/perfectcorp/perfectlib/internal/e;
.super Landroid/net/ConnectivityManager$NetworkCallback;


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 1

    const-string p0, "onAvailable"

    const/4 p1, 0x3

    const-string v0, "NetworkCallbackTrigger"

    invoke-static {p1, v0, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/NetworkTaskManagerHolder;->a()Lcom/perfectcorp/common/network/NetworkTaskManager;

    move-result-object p0

    iget-object p1, p0, Lcom/perfectcorp/common/network/NetworkTaskManager;->b:Lcom/perfectcorp/common/network/h;

    iget-object p0, p0, Lcom/perfectcorp/common/network/NetworkTaskManager;->c:Lcom/perfectcorp/common/network/NetworkTaskManager$InitRequestHandler;

    invoke-interface {p1, p0}, Lcom/perfectcorp/common/network/h;->a(Lcom/perfectcorp/common/network/NetworkTaskManager$InitRequestHandler;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 1

    const-string p0, "onLost"

    const/4 p1, 0x3

    const-string v0, "NetworkCallbackTrigger"

    invoke-static {p1, v0, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method
