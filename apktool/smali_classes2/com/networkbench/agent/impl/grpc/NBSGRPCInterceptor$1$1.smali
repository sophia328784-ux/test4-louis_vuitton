.class Lcom/networkbench/agent/impl/grpc/NBSGRPCInterceptor$1$1;
.super Lio/grpc/ForwardingClientCallListener$SimpleForwardingClientCallListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/grpc/NBSGRPCInterceptor$1;->start(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/ForwardingClientCallListener$SimpleForwardingClientCallListener<",
        "TRespT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/grpc/NBSGRPCInterceptor$1;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/grpc/NBSGRPCInterceptor$1;Lio/grpc/ClientCall$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/grpc/NBSGRPCInterceptor$1$1;->a:Lcom/networkbench/agent/impl/grpc/NBSGRPCInterceptor$1;

    invoke-direct {p0, p2}, Lio/grpc/ForwardingClientCallListener$SimpleForwardingClientCallListener;-><init>(Lio/grpc/ClientCall$Listener;)V

    return-void
.end method


# virtual methods
.method public onClose(Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 3

    invoke-static {}, Lcom/networkbench/agent/impl/grpc/NBSGRPCInterceptor;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tracingResponseListener onClose status:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/grpc/Status;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", trailers:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lio/grpc/Metadata;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lio/grpc/ForwardingClientCallListener$SimpleForwardingClientCallListener;->onClose(Lio/grpc/Status;Lio/grpc/Metadata;)V

    invoke-virtual {p1}, Lio/grpc/Status;->getCode()Lio/grpc/Status$Code;

    move-result-object p2

    sget-object v0, Lio/grpc/Status$Code;->OK:Lio/grpc/Status$Code;

    iget-object v1, p0, Lcom/networkbench/agent/impl/grpc/NBSGRPCInterceptor$1$1;->a:Lcom/networkbench/agent/impl/grpc/NBSGRPCInterceptor$1;

    if-eq p2, v0, :cond_0

    iget-object p2, v1, Lcom/networkbench/agent/impl/grpc/NBSGRPCInterceptor$1;->a:Lcom/networkbench/agent/impl/session/ISpan;

    const-string v0, "error"

    invoke-virtual {p1}, Lio/grpc/Status;->getCode()Lio/grpc/Status$Code;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/networkbench/agent/impl/session/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/networkbench/agent/impl/grpc/NBSGRPCInterceptor$1$1;->a:Lcom/networkbench/agent/impl/grpc/NBSGRPCInterceptor$1;

    iget-object p1, p1, Lcom/networkbench/agent/impl/grpc/NBSGRPCInterceptor$1;->a:Lcom/networkbench/agent/impl/session/ISpan;

    sget-object p2, Lcom/networkbench/agent/impl/session/SpanStatus;->SPAN_STATUS_UNKNOWN:Lcom/networkbench/agent/impl/session/SpanStatus;

    invoke-interface {p1, p2}, Lcom/networkbench/agent/impl/session/ISpan;->finish(Lcom/networkbench/agent/impl/session/SpanStatus;)V

    goto :goto_0

    :cond_0
    iget-object p1, v1, Lcom/networkbench/agent/impl/grpc/NBSGRPCInterceptor$1;->a:Lcom/networkbench/agent/impl/session/ISpan;

    invoke-interface {p1}, Lcom/networkbench/agent/impl/session/ISpan;->finish()V

    :goto_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/grpc/NBSGRPCInterceptor$1$1;->a:Lcom/networkbench/agent/impl/grpc/NBSGRPCInterceptor$1;

    iget-object p0, p0, Lcom/networkbench/agent/impl/grpc/NBSGRPCInterceptor$1;->a:Lcom/networkbench/agent/impl/session/ISpan;

    invoke-interface {p0}, Lcom/networkbench/agent/impl/session/ISpan;->getTransaction()Lcom/networkbench/agent/impl/session/ISpan;

    move-result-object p0

    invoke-interface {p0}, Lcom/networkbench/agent/impl/session/ISpan;->finish()V

    return-void
.end method

.method public onHeaders(Lio/grpc/Metadata;)V
    .locals 3

    invoke-static {}, Lcom/networkbench/agent/impl/grpc/NBSGRPCInterceptor;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tracingResponseListener onHeaders:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/grpc/Metadata;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lio/grpc/ForwardingClientCallListener$SimpleForwardingClientCallListener;->onHeaders(Lio/grpc/Metadata;)V

    return-void
.end method

.method public onMessage(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRespT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/networkbench/agent/impl/grpc/NBSGRPCInterceptor;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tracingResponseListener onMessage:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/grpc/NBSGRPCInterceptor$1$1;->a:Lcom/networkbench/agent/impl/grpc/NBSGRPCInterceptor$1;

    iget-object v0, v0, Lcom/networkbench/agent/impl/grpc/NBSGRPCInterceptor$1;->a:Lcom/networkbench/agent/impl/session/ISpan;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onMessage"

    invoke-interface {v0, v2, v1}, Lcom/networkbench/agent/impl/session/ISpan;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lio/grpc/ForwardingClientCallListener$SimpleForwardingClientCallListener;->onMessage(Ljava/lang/Object;)V

    return-void
.end method

.method public onReady()V
    .locals 2

    invoke-static {}, Lcom/networkbench/agent/impl/grpc/NBSGRPCInterceptor;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    const-string v1, "tracingResponseListener onReady"

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-super {p0}, Lio/grpc/ForwardingClientCallListener$SimpleForwardingClientCallListener;->onReady()V

    return-void
.end method
