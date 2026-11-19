.class public final Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSResponseHandlerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/http/client/ResponseHandler<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final impl:Lorg/apache/http/client/ResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/client/ResponseHandler<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;


# direct methods
.method private constructor <init>(Lorg/apache/http/client/ResponseHandler;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/ResponseHandler<",
            "TT;>;",
            "Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSResponseHandlerImpl;->impl:Lorg/apache/http/client/ResponseHandler;

    iput-object p2, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSResponseHandlerImpl;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    return-void
.end method

.method public static wrap(Lorg/apache/http/client/ResponseHandler;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lorg/apache/http/client/ResponseHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;",
            "Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;",
            ")",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSResponseHandlerImpl;

    invoke-direct {v0, p0, p1}, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSResponseHandlerImpl;-><init>(Lorg/apache/http/client/ResponseHandler;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V

    return-object v0
.end method


# virtual methods
.method public handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSResponseHandlerImpl;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-static {v0, p1}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpClientUtil;->inspectAndInstrument(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSResponseHandlerImpl;->impl:Lorg/apache/http/client/ResponseHandler;

    invoke-interface {p0, p1}, Lorg/apache/http/client/ResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
