.class public Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSPrebufferedResponseBody;
.super Lcom/squareup/okhttp/ResponseBody;
.source "SourceFile"


# static fields
.field private static final log:Lcom/networkbench/agent/impl/c/e;


# instance fields
.field private final impl:Lcom/squareup/okhttp/ResponseBody;

.field private isContentRange:Z

.field private source:Lokio/BufferedSource;

.field private transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSPrebufferedResponseBody;->log:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>(Lcom/squareup/okhttp/ResponseBody;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/okhttp/ResponseBody;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSPrebufferedResponseBody;->impl:Lcom/squareup/okhttp/ResponseBody;

    iput-object p2, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSPrebufferedResponseBody;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    iput-boolean p3, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSPrebufferedResponseBody;->isContentRange:Z

    return-void
.end method

.method private a(Lokio/BufferedSource;)Lokio/Source;
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSPrebufferedResponseBody;->impl:Lcom/squareup/okhttp/ResponseBody;

    invoke-virtual {v0}, Lcom/squareup/okhttp/ResponseBody;->contentLength()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    move-wide v6, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSPrebufferedResponseBody;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ok2 getContentLength error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    goto :goto_0

    :goto_1
    new-instance v2, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOk2BufferedSource;

    iget-object v3, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSPrebufferedResponseBody;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    iget-boolean v5, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSPrebufferedResponseBody;->isContentRange:Z

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOk2BufferedSource;-><init>(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Lokio/BufferedSource;ZJ)V

    return-object v2
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSPrebufferedResponseBody;->impl:Lcom/squareup/okhttp/ResponseBody;

    invoke-virtual {p0}, Lcom/squareup/okhttp/ResponseBody;->close()V

    return-void
.end method

.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSPrebufferedResponseBody;->impl:Lcom/squareup/okhttp/ResponseBody;

    invoke-virtual {p0}, Lcom/squareup/okhttp/ResponseBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lcom/squareup/okhttp/MediaType;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSPrebufferedResponseBody;->impl:Lcom/squareup/okhttp/ResponseBody;

    invoke-virtual {p0}, Lcom/squareup/okhttp/ResponseBody;->contentType()Lcom/squareup/okhttp/MediaType;

    move-result-object p0

    return-object p0
.end method

.method public source()Lokio/BufferedSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSPrebufferedResponseBody;->source:Lokio/BufferedSource;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSPrebufferedResponseBody;->impl:Lcom/squareup/okhttp/ResponseBody;

    invoke-virtual {v0}, Lcom/squareup/okhttp/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSPrebufferedResponseBody;->a(Lokio/BufferedSource;)Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->c(Lokio/Source;)Lokio/RealBufferedSource;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSPrebufferedResponseBody;->source:Lokio/BufferedSource;

    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSPrebufferedResponseBody;->source:Lokio/BufferedSource;

    return-object p0
.end method
