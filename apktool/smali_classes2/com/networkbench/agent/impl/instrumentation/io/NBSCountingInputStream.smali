.class public final Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteListenerSource;


# static fields
.field private static final log:Lcom/networkbench/agent/impl/c/e;


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;

.field private count:J

.field private enableBuffering:Z

.field private final impl:Ljava/io/InputStream;

.field private final listenerManager:Lcom/networkbench/agent/impl/instrumentation/io/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->log:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->count:J

    new-instance v0, Lcom/networkbench/agent/impl/instrumentation/io/a;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/instrumentation/io/a;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->listenerManager:Lcom/networkbench/agent/impl/instrumentation/io/a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->enableBuffering:Z

    iput-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->impl:Ljava/io/InputStream;

    sget-object p1, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "new NBSCountingInputStream"

    invoke-interface {p1, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->enableBuffering:Z

    if-eqz v0, :cond_0

    const-string v0, "buffer enabled"

    invoke-interface {p1, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getResponseBodyLimit()I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->fillBuffer()V

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, 0x0

    .line 54
    iput-wide v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->count:J

    .line 55
    new-instance v0, Lcom/networkbench/agent/impl/instrumentation/io/a;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/instrumentation/io/a;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->listenerManager:Lcom/networkbench/agent/impl/instrumentation/io/a;

    .line 56
    iput-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->impl:Ljava/io/InputStream;

    .line 57
    iput-boolean p2, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->enableBuffering:Z

    if-eqz p2, :cond_0

    .line 58
    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getResponseBodyLimit()I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 59
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->fillBuffer()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private a()I
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 29
    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private a([B)I
    .locals 2

    const/4 v0, 0x0

    .line 27
    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->a([BII)I

    move-result p0

    return p0
.end method

.method private a([BII)I
    .locals 2

    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 4

    .line 31
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->listenerManager:Lcom/networkbench/agent/impl/instrumentation/io/a;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/instrumentation/io/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->listenerManager:Lcom/networkbench/agent/impl/instrumentation/io/a;

    new-instance v1, Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteEvent;

    iget-wide v2, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->count:J

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteEvent;-><init>(Ljava/lang/Object;JLjava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/instrumentation/io/a;->b(Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteEvent;)V

    :cond_0
    return-void
.end method

.method private a(J)Z
    .locals 2

    .line 30
    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    int-to-long v0, p0

    cmp-long p0, v0, p1

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private b()Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->listenerManager:Lcom/networkbench/agent/impl/instrumentation/io/a;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/instrumentation/io/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->listenerManager:Lcom/networkbench/agent/impl/instrumentation/io/a;

    new-instance v1, Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteEvent;

    iget-wide v2, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->count:J

    invoke-direct {v1, p0, v2, v3}, Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteEvent;-><init>(Ljava/lang/Object;J)V

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/instrumentation/io/a;->a(Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteEvent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addStreamCompleteListener(Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteListener;)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->listenerManager:Lcom/networkbench/agent/impl/instrumentation/io/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/instrumentation/io/a;->a(Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteListener;)V

    :cond_0
    return-void
.end method

.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->enableBuffering:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->impl:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, p0

    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->a(Ljava/lang/Exception;)V

    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->impl:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->a(Ljava/lang/Exception;)V

    throw v0
.end method

.method public fillBuffer()V
    .locals 5

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->impl:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    iget-object v4, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/Buffer;->capacity()I

    move-result v4

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    sget-object v3, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->log:Lcom/networkbench/agent/impl/c/e;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    if-gtz v2, :cond_1

    :try_start_2
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    if-ge v2, v1, :cond_2

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_2
    :goto_1
    monitor-exit v0

    goto :goto_3

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_3
    :goto_3
    return-void
.end method

.method public getBufferAsString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->limit()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    aput-byte v3, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {p0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    :goto_1
    monitor-exit v0

    return-object p0

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public declared-synchronized mark(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->markSupported()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->impl:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public markSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->impl:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result p0

    return p0
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    iget-boolean v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->enableBuffering:Z

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_2

    .line 149
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    monitor-enter v0

    .line 150
    :try_start_0
    invoke-direct {p0, v1, v2}, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->a(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 151
    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->a()I

    move-result v3

    if-ltz v3, :cond_0

    .line 152
    iget-wide v4, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->count:J

    add-long/2addr v4, v1

    iput-wide v4, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->count:J

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 153
    :cond_0
    :goto_0
    monitor-exit v0

    return v3

    .line 154
    :cond_1
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 155
    :cond_2
    :goto_2
    :try_start_1
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->impl:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_3

    .line 156
    iget-wide v3, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->count:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->count:J

    return v0

    :catch_0
    move-exception v0

    goto :goto_3

    .line 157
    :cond_3
    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->c()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    .line 158
    :goto_3
    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->a(Ljava/lang/Exception;)V

    .line 159
    throw v0
.end method

.method public read([B)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "end flag:"

    array-length v1, p1

    iget-boolean v2, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->enableBuffering:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    monitor-enter v2

    int-to-long v4, v1

    :try_start_0
    invoke-direct {p0, v4, v5}, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->a(J)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->a([B)I

    move-result p1

    if-ltz p1, :cond_0

    iget-wide v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->count:J

    int-to-long v3, p1

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->count:J

    monitor-exit v2

    return p1

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "readBufferBytes failed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v4, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    if-lez v4, :cond_3

    invoke-direct {p0, p1, v3, v4}, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->a([BII)I

    move-result v3

    if-ltz v3, :cond_2

    sub-int/2addr v1, v3

    iget-wide v4, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->count:J

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->count:J

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "partial read from buffer failed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    monitor-exit v2

    goto :goto_2

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_2
    :try_start_1
    iget-object v2, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->impl:Ljava/io/InputStream;

    invoke-virtual {v2, p1, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ltz p1, :cond_5

    iget-wide v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->count:J

    int-to-long v4, p1

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->count:J

    add-int/2addr p1, v3

    return p1

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_5
    sget-object v1, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/networkbench/agent/impl/c/e;->d(Ljava/lang/String;)V

    if-gtz v3, :cond_6

    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->c()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    :cond_6
    return v3

    :goto_3
    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NOTIFY STREAM ERROR: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->a(Ljava/lang/Exception;)V

    throw p1
.end method

.method public read([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    iget-boolean v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->enableBuffering:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 161
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    monitor-enter v0

    if-eqz p3, :cond_1

    int-to-long v2, p3

    .line 162
    :try_start_0
    invoke-direct {p0, v2, v3}, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->a(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 163
    invoke-direct {p0, p1, p2, p3}, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->a([BII)I

    move-result p1

    if-ltz p1, :cond_0

    .line 164
    iget-wide p2, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->count:J

    int-to-long v1, p1

    add-long/2addr p2, v1

    iput-wide p2, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->count:J

    .line 165
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 166
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "readBufferBytes failed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 167
    :cond_1
    iget-object v2, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    if-lez v2, :cond_3

    .line 168
    invoke-direct {p0, p1, p2, v2}, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->a([BII)I

    move-result v2

    if-ltz v2, :cond_2

    sub-int/2addr p3, v2

    .line 169
    iget-wide v3, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->count:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->count:J

    goto :goto_0

    .line 170
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "partial read from buffer failed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    move v2, v1

    .line 171
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    move v2, v1

    .line 172
    :goto_2
    :try_start_1
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->impl:Ljava/io/InputStream;

    if-eqz v0, :cond_7

    add-int/2addr p2, v2

    .line 173
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ltz p1, :cond_5

    .line 174
    iget-wide p2, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->count:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->count:J

    add-int/2addr p1, v2

    return p1

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_5
    if-gtz v2, :cond_6

    .line 175
    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->c()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    :cond_6
    return v2

    :cond_7
    return v1

    .line 176
    :goto_3
    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->a(Ljava/lang/Exception;)V

    .line 177
    throw p1
.end method

.method public removeStreamCompleteListener(Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteListener;)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->listenerManager:Lcom/networkbench/agent/impl/instrumentation/io/a;

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/instrumentation/io/a;->b(Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteListener;)V

    return-void
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->markSupported()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->impl:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->a(Ljava/lang/Exception;)V

    throw v0

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public setBufferingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->enableBuffering:Z

    return-void
.end method

.method public skip(J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->enableBuffering:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->a(J)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    long-to-int v1, p1

    :try_start_1
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-wide v1, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->count:J

    add-long/2addr v1, p1

    iput-wide v1, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->count:J

    monitor-exit v0

    return-wide p1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    int-to-long v1, v1

    sub-long/2addr p1, v1

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    monitor-exit v0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "partial read from buffer (skip) failed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->impl:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->count:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->count:J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingInputStream;->a(Ljava/lang/Exception;)V

    throw p1
.end method
