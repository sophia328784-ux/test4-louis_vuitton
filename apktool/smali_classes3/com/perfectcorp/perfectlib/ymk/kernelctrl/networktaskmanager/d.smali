.class public final synthetic Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a$a;

.field public final synthetic c:Lcom/perfectcorp/common/network/RequestTask$Builder;

.field public final synthetic d:Lcom/perfectcorp/common/network/NetworkTaskManager$InitRequestHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a$a;Lcom/perfectcorp/common/network/RequestTask$Builder;Lcom/perfectcorp/common/network/NetworkTaskManager$InitRequestHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/d;->b:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a$a;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/d;->c:Lcom/perfectcorp/common/network/RequestTask$Builder;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/d;->d:Lcom/perfectcorp/common/network/NetworkTaskManager$InitRequestHandler;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[InitRequest][init] create init request task. domain="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/d;->b:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a$a;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a$a;->a:Ljava/lang/String;

    const/4 v2, 0x3

    const-string v3, "SDKInitHandler"

    invoke-static {v0, v1, v2, v3}, La;->A(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "[build] start"

    const-string v4, "RequestTask"

    invoke-static {v2, v4, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/perfectcorp/common/network/RequestTask;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/d;->c:Lcom/perfectcorp/common/network/RequestTask$Builder;

    invoke-direct {v0, v6, v5}, Lcom/perfectcorp/common/network/RequestTask;-><init>(Lcom/perfectcorp/common/network/RequestTask$Builder;B)V

    const-string v5, "[build] end"

    invoke-static {v2, v4, v5}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[InitRequest][init] create init future. domain="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/d;->d:Lcom/perfectcorp/common/network/NetworkTaskManager$InitRequestHandler;

    invoke-interface {p0, v0}, Lcom/perfectcorp/common/network/NetworkTaskManager$InitRequestHandler;->a(Lcom/perfectcorp/common/network/RequestTask;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    const-string v0, "[InitRequest][init] create init single. domain="

    invoke-static {v2, v0, v1, v3}, La;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/perfectcorp/common/concurrent/CallingThread;->ANY:Lcom/perfectcorp/common/concurrent/CallingThread;

    invoke-static {p0, v0}, Lcom/perfectcorp/common/rx/Singles;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/common/concurrent/CallingThread;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/b;

    move-result-object p0

    const-string v0, "[InitRequest][init] return init future single. domain="

    invoke-static {v2, v0, v1, v3}, La;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
