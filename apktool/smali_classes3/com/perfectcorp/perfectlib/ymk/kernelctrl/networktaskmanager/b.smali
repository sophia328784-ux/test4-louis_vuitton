.class final Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/b;
.super Lcom/perfectcorp/common/guava/DefaultFutureCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/perfectcorp/common/guava/DefaultFutureCallback<",
        "Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/b;->a:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a;

    invoke-direct {p0}, Lcom/perfectcorp/common/guava/DefaultFutureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "SDKInitHandler"

    const-string v1, "[requestInit] onFailure"

    invoke-static {v0, v1, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a;->c:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    const-string v0, "SDKInitHandler"

    const-string v1, "[requestInit] reset future"

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/b;->a:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a;->b:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    const-string p0, "SDKInitHandler"

    const-string v0, "[requestInit] future reset"

    invoke-static {v2, p0, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "SDKInitHandler"

    const-string p1, "[requestInit] onFailure. exit"

    invoke-static {v2, p0, p1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[requestInit] onSuccess. result="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse;->e:Ljava/lang/String;

    const/4 v0, 0x3

    const-string v1, "SDKInitHandler"

    invoke-static {p0, p1, v0, v1}, La;->A(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
