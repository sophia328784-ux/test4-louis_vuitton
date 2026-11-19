.class public Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOk2BufferedSource;
.super Lokio/ForwardingSource;
.source "SourceFile"


# static fields
.field private static final log:Lcom/networkbench/agent/impl/c/e;


# instance fields
.field a:J

.field b:Z

.field private contentLength:J

.field private isContentRange:Z

.field private transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOk2BufferedSource;->log:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Lokio/BufferedSource;ZJ)V
    .locals 2

    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOk2BufferedSource;->a:J

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOk2BufferedSource;->b:Z

    iput-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOk2BufferedSource;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    iput-boolean p3, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOk2BufferedSource;->isContentRange:Z

    iput-wide p4, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOk2BufferedSource;->contentLength:J

    return-void
.end method

.method private a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOk2BufferedSource;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    iget-wide v1, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOk2BufferedSource;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setBytesReceived(J)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOk2BufferedSource;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setEndTime(J)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOk2BufferedSource;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->end()Lcom/networkbench/agent/impl/a/a/b;

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOk2BufferedSource;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/networkbench/agent/impl/d/b/c;

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOk2BufferedSource;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-direct {v0, v1}, Lcom/networkbench/agent/impl/d/b/c;-><init>(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ai;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOk2BufferedSource;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method private b()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOk2BufferedSource;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOk2BufferedSource;->isContentRange:Z

    if-eqz v1, :cond_0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setStatusCode(I)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOk2BufferedSource;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    const-string v1, "ClientAbortException Content-Range"

    const/16 v2, 0x389

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setErrorCode(ILjava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOk2BufferedSource;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOk2BufferedSource;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "addDataIfEndSuddenly"

    invoke-interface {v0, v1, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOk2BufferedSource;->b()V

    invoke-super {p0}, Lokio/ForwardingSource;->close()V

    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "complete totalBytesRead: "

    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    move-result-wide p1

    iget-wide v1, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOk2BufferedSource;->a:J

    const-wide/16 v3, -0x1

    cmp-long p3, p1, v3

    if-eqz p3, :cond_0

    move-wide v3, p1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOk2BufferedSource;->a:J

    iget-boolean v1, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOk2BufferedSource;->b:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOk2BufferedSource;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    if-eqz v1, :cond_1

    sget-object v2, Lcom/networkbench/agent/impl/util/ai;->c:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOk2BufferedSource;->b:Z

    :cond_1
    if-nez p3, :cond_4

    :try_start_0
    iget-object p3, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOk2BufferedSource;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    if-eqz p3, :cond_4

    sget-object p3, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOk2BufferedSource;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOk2BufferedSource;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", bytesRead:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOk2BufferedSource;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p3

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOk2BufferedSource;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    if-eqz v0, :cond_4

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setStatusCode(I)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOk2BufferedSource;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-static {v0, p3}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionStateUtil;->setErrorCodeFromException(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/lang/Exception;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOk2BufferedSource;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getErrorCode()I

    move-result v0

    iget-object v2, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOk2BufferedSource;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    invoke-virtual {v2, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setStatusCode(I)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOk2BufferedSource;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    const/16 v1, 0x389

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setErrorCode(ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getStatusCode()I

    move-result v0

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOk2BufferedSource;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setErrorDataInfo(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOk2BufferedSource;->a()V

    :cond_4
    return-wide p1
.end method
