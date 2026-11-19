.class public Lcom/networkbench/agent/impl/grpc/NBSGRPCInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/ClientInterceptor;


# static fields
.field private static a:Lcom/networkbench/agent/impl/c/e;


# instance fields
.field private b:Lcom/networkbench/agent/impl/session/ISpan;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/grpc/NBSGRPCInterceptor;->a:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/networkbench/agent/impl/c/e;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/grpc/NBSGRPCInterceptor;->a:Lcom/networkbench/agent/impl/c/e;

    return-object v0
.end method


# virtual methods
.method public intercept(Lio/grpc/Channel;)Lio/grpc/Channel;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lio/grpc/ClientInterceptor;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, v0}, Lio/grpc/ClientInterceptors;->intercept(Lio/grpc/Channel;[Lio/grpc/ClientInterceptor;)Lio/grpc/Channel;

    move-result-object p0

    return-object p0
.end method

.method public interceptCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Lio/grpc/Channel;)Lio/grpc/ClientCall;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/MethodDescriptor<",
            "TReqT;TRespT;>;",
            "Lio/grpc/CallOptions;",
            "Lio/grpc/Channel;",
            ")",
            "Lio/grpc/ClientCall<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    sget-object v0, Lcom/networkbench/agent/impl/grpc/NBSGRPCInterceptor;->a:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ClientCall method:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/grpc/MethodDescriptor;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", method.toString:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/grpc/MethodDescriptor;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    const-string v0, "grpc"

    const-string v1, "grpc request"

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/NBSAppAgent;->startTransaction(Ljava/lang/String;Ljava/lang/String;)Lcom/networkbench/agent/impl/session/ISpan;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/grpc/NBSGRPCInterceptor;->b:Lcom/networkbench/agent/impl/session/ISpan;

    const-string v1, "grpc request begin"

    invoke-interface {v0, v1, v1}, Lcom/networkbench/agent/impl/session/ISpan;->startChild(Ljava/lang/String;Ljava/lang/String;)Lcom/networkbench/agent/impl/session/ISpan;

    move-result-object v0

    const-string v1, "fullMethodName"

    invoke-virtual {p1}, Lio/grpc/MethodDescriptor;->getFullMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/networkbench/agent/impl/session/ISpan;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bareMethodName"

    invoke-virtual {p1}, Lio/grpc/MethodDescriptor;->getBareMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/networkbench/agent/impl/session/ISpan;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "serviceName"

    invoke-virtual {p1}, Lio/grpc/MethodDescriptor;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/networkbench/agent/impl/session/ISpan;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/networkbench/agent/impl/grpc/NBSGRPCInterceptor$1;

    invoke-virtual {p3, p1, p2}, Lio/grpc/Channel;->newCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;)Lio/grpc/ClientCall;

    move-result-object p1

    invoke-direct {v1, p0, p1, v0}, Lcom/networkbench/agent/impl/grpc/NBSGRPCInterceptor$1;-><init>(Lcom/networkbench/agent/impl/grpc/NBSGRPCInterceptor;Lio/grpc/ClientCall;Lcom/networkbench/agent/impl/session/ISpan;)V

    return-object v1
.end method
