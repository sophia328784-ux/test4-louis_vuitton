.class Lcom/networkbench/agent/impl/grpc/NBSGRPCInterceptor$1;
.super Lio/grpc/ForwardingClientCall$SimpleForwardingClientCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/grpc/NBSGRPCInterceptor;->interceptCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Lio/grpc/Channel;)Lio/grpc/ClientCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/ForwardingClientCall$SimpleForwardingClientCall<",
        "TReqT;TRespT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/session/ISpan;

.field final synthetic b:Lcom/networkbench/agent/impl/grpc/NBSGRPCInterceptor;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/grpc/NBSGRPCInterceptor;Lio/grpc/ClientCall;Lcom/networkbench/agent/impl/session/ISpan;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/grpc/NBSGRPCInterceptor$1;->b:Lcom/networkbench/agent/impl/grpc/NBSGRPCInterceptor;

    iput-object p3, p0, Lcom/networkbench/agent/impl/grpc/NBSGRPCInterceptor$1;->a:Lcom/networkbench/agent/impl/session/ISpan;

    invoke-direct {p0, p2}, Lio/grpc/ForwardingClientCall$SimpleForwardingClientCall;-><init>(Lio/grpc/ClientCall;)V

    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lcom/networkbench/agent/impl/grpc/NBSGRPCInterceptor;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    const-string v1, "ClientCall cancel"

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lio/grpc/ForwardingClientCall$SimpleForwardingClientCall;->cancel(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public halfClose()V
    .locals 2

    invoke-static {}, Lcom/networkbench/agent/impl/grpc/NBSGRPCInterceptor;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    const-string v1, "ClientCall halfClose"

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-super {p0}, Lio/grpc/ForwardingClientCall$SimpleForwardingClientCall;->halfClose()V

    return-void
.end method

.method public isReady()Z
    .locals 2

    invoke-static {}, Lcom/networkbench/agent/impl/grpc/NBSGRPCInterceptor;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    const-string v1, "ClientCall isReady"

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-super {p0}, Lio/grpc/ForwardingClientCall$SimpleForwardingClientCall;->isReady()Z

    move-result p0

    return p0
.end method

.method public request(I)V
    .locals 3

    invoke-static {}, Lcom/networkbench/agent/impl/grpc/NBSGRPCInterceptor;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ClientCall request numMsg:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lio/grpc/ForwardingClientCall$SimpleForwardingClientCall;->request(I)V

    return-void
.end method

.method public sendMessage(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/networkbench/agent/impl/grpc/NBSGRPCInterceptor;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    const-string v1, "ClientCall 2222"

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lio/grpc/ForwardingClientCall$SimpleForwardingClientCall;->sendMessage(Ljava/lang/Object;)V

    return-void
.end method

.method public start(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall$Listener<",
            "TRespT;>;",
            "Lio/grpc/Metadata;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/networkbench/agent/impl/grpc/NBSGRPCInterceptor$1$1;

    invoke-direct {v0, p0, p1}, Lcom/networkbench/agent/impl/grpc/NBSGRPCInterceptor$1$1;-><init>(Lcom/networkbench/agent/impl/grpc/NBSGRPCInterceptor$1;Lio/grpc/ClientCall$Listener;)V

    invoke-static {}, Lcom/networkbench/agent/impl/grpc/NBSGRPCInterceptor;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ClientCall start begin headres:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lio/grpc/Metadata;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-super {p0, v0, p2}, Lio/grpc/ForwardingClientCall$SimpleForwardingClientCall;->start(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V

    invoke-static {}, Lcom/networkbench/agent/impl/grpc/NBSGRPCInterceptor;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object p0

    const-string p1, "ClientCall start end"

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-void
.end method
