.class public final Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpRequestEntityImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteListener;
.implements Lorg/apache/http/HttpEntity;


# instance fields
.field private final impl:Lorg/apache/http/HttpEntity;

.field private final transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpRequestEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    iput-object p2, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpRequestEntityImpl;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    return-void
.end method


# virtual methods
.method public consumeContent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpRequestEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpRequestEntityImpl;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpClientUtil;->setErrorCodeFromException(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/lang/Exception;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpRequestEntityImpl;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isComplete()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpRequestEntityImpl;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->end()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object p0

    new-instance v1, Lcom/networkbench/agent/impl/d/b/a;

    invoke-direct {v1, p0}, Lcom/networkbench/agent/impl/d/b/a;-><init>(Lcom/networkbench/agent/impl/a/a/b;)V

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/v;->a(Lcom/networkbench/agent/impl/d/b/a;)V

    :cond_0
    throw v0
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpRequestEntityImpl;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isSent()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpRequestEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->addStreamCompleteListener(Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteListener;)V

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpRequestEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpRequestEntityImpl;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpClientUtil;->setErrorCodeFromException(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/lang/Exception;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpRequestEntityImpl;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isComplete()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpRequestEntityImpl;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->end()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object p0

    new-instance v1, Lcom/networkbench/agent/impl/d/b/a;

    invoke-direct {v1, p0}, Lcom/networkbench/agent/impl/d/b/a;-><init>(Lcom/networkbench/agent/impl/a/a/b;)V

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/v;->a(Lcom/networkbench/agent/impl/d/b/a;)V

    :cond_1
    throw v0

    :goto_1
    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpRequestEntityImpl;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpClientUtil;->setErrorCodeFromException(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/lang/Exception;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpRequestEntityImpl;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isComplete()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpRequestEntityImpl;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->end()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object p0

    new-instance v1, Lcom/networkbench/agent/impl/d/b/a;

    invoke-direct {v1, p0}, Lcom/networkbench/agent/impl/d/b/a;-><init>(Lcom/networkbench/agent/impl/a/a/b;)V

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/v;->a(Lcom/networkbench/agent/impl/d/b/a;)V

    :cond_2
    throw v0
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpRequestEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object p0

    return-object p0
.end method

.method public getContentLength()J
    .locals 2

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpRequestEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpRequestEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object p0

    return-object p0
.end method

.method public isChunked()Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpRequestEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result p0

    return p0
.end method

.method public isRepeatable()Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpRequestEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result p0

    return p0
.end method

.method public isStreaming()Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpRequestEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result p0

    return p0
.end method

.method public streamComplete(Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteEvent;)V
    .locals 2

    invoke-virtual {p1}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteListenerSource;

    invoke-interface {v0, p0}, Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteListenerSource;->removeStreamCompleteListener(Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteListener;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpRequestEntityImpl;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteEvent;->getBytes()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setBytesSent(J)V

    return-void
.end method

.method public streamError(Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteEvent;)V
    .locals 3

    invoke-virtual {p1}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteListenerSource;

    invoke-interface {v0, p0}, Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteListenerSource;->removeStreamCompleteListener(Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteListener;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpRequestEntityImpl;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteEvent;->getException()Ljava/lang/Exception;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpClientUtil;->setErrorCodeFromException(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/lang/Exception;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpRequestEntityImpl;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpRequestEntityImpl;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteEvent;->getBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setBytesSent(J)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpRequestEntityImpl;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->end()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object p0

    new-instance p1, Lcom/networkbench/agent/impl/d/b/a;

    invoke-direct {p1, p0}, Lcom/networkbench/agent/impl/d/b/a;-><init>(Lcom/networkbench/agent/impl/a/a/b;)V

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/v;->a(Lcom/networkbench/agent/impl/d/b/a;)V

    :cond_0
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpRequestEntityImpl;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isSent()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingOutputStream;

    invoke-direct {v0, p1}, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpRequestEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {p1, v0}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    iget-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpRequestEntityImpl;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingOutputStream;->getCount()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setBytesSent(J)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpRequestEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpRequestEntityImpl;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-static {v0, p1}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpClientUtil;->setErrorCodeFromException(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/lang/Exception;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpRequestEntityImpl;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/httpclient/NBSHttpRequestEntityImpl;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->end()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object p0

    new-instance v0, Lcom/networkbench/agent/impl/d/b/a;

    invoke-direct {v0, p0}, Lcom/networkbench/agent/impl/d/b/a;-><init>(Lcom/networkbench/agent/impl/a/a/b;)V

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/v;->a(Lcom/networkbench/agent/impl/d/b/a;)V

    :cond_1
    throw p1
.end method
