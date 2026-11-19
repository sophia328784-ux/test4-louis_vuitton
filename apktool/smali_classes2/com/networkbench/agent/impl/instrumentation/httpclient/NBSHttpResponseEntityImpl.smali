.class public final Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteListener;
.implements Lorg/apache/http/HttpEntity;


# static fields
.field private static final log:Lcom/networkbench/agent/impl/c/e;


# instance fields
.field private contentStream:Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;

.field private final impl:Lorg/apache/http/HttpEntity;

.field private response:Lorg/apache/http/HttpResponse;

.field private final transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;->log:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpResponse;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    iput-object p2, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    return-void
.end method

.method private a(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V
    .locals 5

    const-string v0, "error message:"

    :try_start_0
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->end()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;->log:Lcom/networkbench/agent/impl/c/e;

    const-string p1, "HttpResponseEntityWrapperImpl transactionData is null!"

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isError()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;->getContent()Ljava/io/InputStream;

    move-result-object v2

    instance-of v3, v2, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->getBufferAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    sget-object v3, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;->log:Lcom/networkbench/agent/impl/c/e;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;->response:Lorg/apache/http/HttpResponse;

    invoke-static {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpClientUtil;->resolvingResponseHeader(Lorg/apache/http/HttpResponse;)Ljava/util/Map;

    move-result-object p0

    const-string v2, "Content-Length"

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getBytesReceived()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, ""

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getException()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getException()Ljava/lang/String;

    move-result-object v2

    :cond_2
    sget-object v3, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0, v2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setErrorDataInfo(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    :cond_3
    new-instance p0, Lcom/networkbench/agent/impl/d/b/c;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/d/b/c;-><init>(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ai;->a(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    sget-object p1, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "addTransactionAndErrorData"

    invoke-interface {p1, v0, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public consumeContent()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpClientUtil;->setErrorCodeFromException(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/lang/Exception;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isComplete()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->end()Lcom/networkbench/agent/impl/a/a/b;

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isError()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getException()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getException()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iget-object v3, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v3, v2, v4, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setErrorDataInfo(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    :cond_1
    new-instance v1, Lcom/networkbench/agent/impl/d/b/c;

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-direct {v1, p0}, Lcom/networkbench/agent/impl/d/b/c;-><init>(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/ai;->a(Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;->contentStream:Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    instance-of v1, v0, Lorg/apache/http/message/AbstractHttpMessage;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    check-cast v0, Lorg/apache/http/message/AbstractHttpMessage;

    const-string v1, "Transfer-Encoding"

    invoke-virtual {v0, v1}, Lorg/apache/http/message/AbstractHttpMessage;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "chunked"

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    instance-of v1, v0, Lorg/apache/http/entity/HttpEntityWrapper;

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v0

    xor-int/2addr v2, v0

    :cond_2
    :goto_0
    new-instance v0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;-><init>(Ljava/io/InputStream;Z)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;->contentStream:Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->addStreamCompleteListener(Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteListener;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;->contentStream:Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_1
    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpClientUtil;->setErrorCodeFromException(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/lang/Exception;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isComplete()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->end()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object p0

    new-instance v1, Lcom/networkbench/agent/impl/d/b/a;

    invoke-direct {v1, p0}, Lcom/networkbench/agent/impl/d/b/a;-><init>(Lcom/networkbench/agent/impl/a/a/b;)V

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/v;->a(Lcom/networkbench/agent/impl/d/b/a;)V

    :cond_3
    throw v0
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object p0

    return-object p0
.end method

.method public getContentLength()J
    .locals 2

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object p0

    return-object p0
.end method

.method public isChunked()Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result p0

    return p0
.end method

.method public isRepeatable()Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result p0

    return p0
.end method

.method public isStreaming()Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result p0

    return p0
.end method

.method public streamComplete(Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteEvent;)V
    .locals 3

    invoke-virtual {p1}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteListenerSource;

    invoke-interface {v0, p0}, Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteListenerSource;->removeStreamCompleteListener(Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteListener;)V

    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "streamComplete"

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isComplete()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "transaction not complete"

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteEvent;->getBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setBytesReceived(J)V

    iget-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;->a(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V

    :cond_0
    return-void
.end method

.method public streamError(Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteEvent;)V
    .locals 2

    invoke-virtual {p1}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteListenerSource;

    invoke-interface {v0, p0}, Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteListenerSource;->removeStreamCompleteListener(Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteListener;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteEvent;->getException()Ljava/lang/Exception;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpClientUtil;->setErrorCodeFromException(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/lang/Exception;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteEvent;->getBytes()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setBytesReceived(J)V

    :cond_0
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingOutputStream;

    invoke-direct {v0, p1}, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    iget-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {p1, v0}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isComplete()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingOutputStream;->getCount()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setBytesReceived(J)V

    iget-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;->a(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V

    :cond_0
    return-void

    :catch_0
    move-exception p1

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-static {v1, p1}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpClientUtil;->setErrorCodeFromException(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/lang/Exception;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isComplete()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingOutputStream;->getCount()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setBytesReceived(J)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->end()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object p0

    new-instance v0, Lcom/networkbench/agent/impl/d/b/a;

    invoke-direct {v0, p0}, Lcom/networkbench/agent/impl/d/b/a;-><init>(Lcom/networkbench/agent/impl/a/a/b;)V

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/v;->a(Lcom/networkbench/agent/impl/d/b/a;)V

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    throw p1

    :cond_2
    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {p0, p1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
