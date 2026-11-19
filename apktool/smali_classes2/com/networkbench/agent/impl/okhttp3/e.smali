.class public Lcom/networkbench/agent/impl/okhttp3/e;
.super Lokhttp3/ResponseBody;
.source "SourceFile"


# static fields
.field private static final e:Lcom/networkbench/agent/impl/c/e;


# instance fields
.field private a:Z

.field private final b:Lokhttp3/ResponseBody;

.field private c:Lokio/BufferedSource;

.field private d:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/okhttp3/e;->e:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>(Lokhttp3/ResponseBody;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Z)V
    .locals 0

    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/okhttp3/e;->b:Lokhttp3/ResponseBody;

    iput-object p2, p0, Lcom/networkbench/agent/impl/okhttp3/e;->d:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    iput-boolean p3, p0, Lcom/networkbench/agent/impl/okhttp3/e;->a:Z

    return-void
.end method

.method private a(Lokio/BufferedSource;)Lokio/Source;
    .locals 6

    new-instance v0, Lcom/networkbench/agent/impl/okhttp3/a;

    iget-object v1, p0, Lcom/networkbench/agent/impl/okhttp3/e;->d:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    iget-boolean v3, p0, Lcom/networkbench/agent/impl/okhttp3/e;->a:Z

    iget-object p0, p0, Lcom/networkbench/agent/impl/okhttp3/e;->b:Lokhttp3/ResponseBody;

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v4

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/networkbench/agent/impl/okhttp3/a;-><init>(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Lokio/BufferedSource;ZJ)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/okhttp3/e;->b:Lokhttp3/ResponseBody;

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->close()V

    return-void
.end method

.method public contentLength()J
    .locals 2

    iget-object p0, p0, Lcom/networkbench/agent/impl/okhttp3/e;->b:Lokhttp3/ResponseBody;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/okhttp3/e;->b:Lokhttp3/ResponseBody;

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object p0

    return-object p0
.end method

.method public source()Lokio/BufferedSource;
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/okhttp3/e;->c:Lokio/BufferedSource;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/networkbench/agent/impl/okhttp3/e;->b:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/okhttp3/e;->a(Lokio/BufferedSource;)Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->c(Lokio/Source;)Lokio/RealBufferedSource;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/okhttp3/e;->c:Lokio/BufferedSource;

    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/okhttp3/e;->c:Lokio/BufferedSource;

    return-object p0
.end method
