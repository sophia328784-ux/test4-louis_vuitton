.class public final Lokhttp3/internal/ws/WebSocketWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lokhttp3/internal/ws/WebSocketWriter;",
        "Ljava/io/Closeable;",
        "",
        "isClient",
        "Lokio/BufferedSink;",
        "sink",
        "Ljava/util/Random;",
        "random",
        "perMessageDeflate",
        "noContextTakeover",
        "",
        "minimumDeflateSize",
        "<init>",
        "(ZLokio/BufferedSink;Ljava/util/Random;ZZJ)V",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final b:Z

.field public final c:Lokio/BufferedSink;

.field public final d:Ljava/util/Random;

.field public final e:Z

.field public final f:Z

.field public final g:J

.field public final h:Lokio/Buffer;

.field public final i:Lokio/Buffer;

.field public j:Z

.field public k:Lokhttp3/internal/ws/MessageDeflater;

.field public final l:[B

.field public final m:Lokio/Buffer$UnsafeCursor;


# direct methods
.method public constructor <init>(ZLokio/BufferedSink;Ljava/util/Random;ZZJ)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->b:Z

    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->c:Lokio/BufferedSink;

    iput-object p3, p0, Lokhttp3/internal/ws/WebSocketWriter;->d:Ljava/util/Random;

    iput-boolean p4, p0, Lokhttp3/internal/ws/WebSocketWriter;->e:Z

    iput-boolean p5, p0, Lokhttp3/internal/ws/WebSocketWriter;->f:Z

    iput-wide p6, p0, Lokhttp3/internal/ws/WebSocketWriter;->g:J

    new-instance p3, Lokio/Buffer;

    invoke-direct {p3}, Lokio/Buffer;-><init>()V

    iput-object p3, p0, Lokhttp3/internal/ws/WebSocketWriter;->h:Lokio/Buffer;

    invoke-interface {p2}, Lokio/BufferedSink;->L()Lokio/Buffer;

    move-result-object p2

    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->i:Lokio/Buffer;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p3, 0x4

    new-array p3, p3, [B

    goto :goto_0

    :cond_0
    move-object p3, p2

    :goto_0
    iput-object p3, p0, Lokhttp3/internal/ws/WebSocketWriter;->l:[B

    if-eqz p1, :cond_1

    new-instance p2, Lokio/Buffer$UnsafeCursor;

    invoke-direct {p2}, Lokio/Buffer$UnsafeCursor;-><init>()V

    :cond_1
    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->m:Lokio/Buffer$UnsafeCursor;

    return-void
.end method


# virtual methods
.method public final c(ILokio/ByteString;)V
    .locals 5

    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->j:Z

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lokio/ByteString;->e()I

    move-result v0

    int-to-long v1, v0

    const-wide/16 v3, 0x7d

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    or-int/lit16 p1, p1, 0x80

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->i:Lokio/Buffer;

    invoke-virtual {v1, p1}, Lokio/Buffer;->m0(I)V

    iget-boolean p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->b:Z

    if-eqz p1, :cond_0

    or-int/lit16 p1, v0, 0x80

    invoke-virtual {v1, p1}, Lokio/Buffer;->m0(I)V

    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->l:[B

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketWriter;->d:Ljava/util/Random;

    invoke-virtual {v2, p1}, Ljava/util/Random;->nextBytes([B)V

    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {v1, p1, v2, v3}, Lokio/Buffer;->write([BII)V

    if-lez v0, :cond_1

    iget-wide v2, v1, Lokio/Buffer;->c:J

    invoke-virtual {v1, p2}, Lokio/Buffer;->l0(Lokio/ByteString;)V

    iget-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->m:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, p2}, Lokio/Buffer;->C(Lokio/Buffer$UnsafeCursor;)V

    invoke-virtual {p2, v2, v3}, Lokio/Buffer$UnsafeCursor;->d(J)I

    invoke-static {p2, p1}, Lokhttp3/internal/ws/WebSocketProtocol;->b(Lokio/Buffer$UnsafeCursor;[B)V

    invoke-virtual {p2}, Lokio/Buffer$UnsafeCursor;->close()V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Lokio/Buffer;->m0(I)V

    invoke-virtual {v1, p2}, Lokio/Buffer;->l0(Lokio/ByteString;)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lokhttp3/internal/ws/WebSocketWriter;->c:Lokio/BufferedSink;

    invoke-interface {p0}, Lokio/BufferedSink;->flush()V

    return-void

    :cond_2
    const-string p0, "Payload size must be less than or equal to 125"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string p0, "closed"

    invoke-static {p0}, Laz;->o(Ljava/lang/String;)V

    return-void
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->k:Lokhttp3/internal/ws/MessageDeflater;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lokhttp3/internal/_UtilCommonKt;->b(Ljava/io/Closeable;)V

    :cond_0
    iget-object p0, p0, Lokhttp3/internal/ws/WebSocketWriter;->c:Lokio/BufferedSink;

    invoke-static {p0}, Lokhttp3/internal/_UtilCommonKt;->b(Ljava/io/Closeable;)V

    return-void
.end method

.method public final d(ILokio/ByteString;)V
    .locals 10

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->j:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->h:Lokio/Buffer;

    invoke-virtual {v0, p2}, Lokio/Buffer;->l0(Lokio/ByteString;)V

    or-int/lit16 v1, p1, 0x80

    iget-boolean v2, p0, Lokhttp3/internal/ws/WebSocketWriter;->e:Z

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {p2}, Lokio/ByteString;->e()I

    move-result p2

    int-to-long v6, p2

    iget-wide v8, p0, Lokhttp3/internal/ws/WebSocketWriter;->g:J

    cmp-long p2, v6, v8

    if-ltz p2, :cond_4

    iget-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->k:Lokhttp3/internal/ws/MessageDeflater;

    if-nez p2, :cond_0

    new-instance p2, Lokhttp3/internal/ws/MessageDeflater;

    iget-boolean v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->f:Z

    invoke-direct {p2, v1}, Lokhttp3/internal/ws/MessageDeflater;-><init>(Z)V

    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->k:Lokhttp3/internal/ws/MessageDeflater;

    :cond_0
    iget-object v1, p2, Lokhttp3/internal/ws/MessageDeflater;->e:Lokio/DeflaterSink;

    iget-object v2, p2, Lokhttp3/internal/ws/MessageDeflater;->c:Lokio/Buffer;

    iget-wide v6, v2, Lokio/Buffer;->c:J

    cmp-long v6, v6, v4

    if-nez v6, :cond_3

    iget-boolean v6, p2, Lokhttp3/internal/ws/MessageDeflater;->b:Z

    if-eqz v6, :cond_1

    iget-object p2, p2, Lokhttp3/internal/ws/MessageDeflater;->d:Ljava/util/zip/Deflater;

    invoke-virtual {p2}, Ljava/util/zip/Deflater;->reset()V

    :cond_1
    iget-wide v6, v0, Lokio/Buffer;->c:J

    invoke-virtual {v1, v0, v6, v7}, Lokio/DeflaterSink;->D(Lokio/Buffer;J)V

    invoke-virtual {v1}, Lokio/DeflaterSink;->flush()V

    sget-object p2, Lokhttp3/internal/ws/MessageDeflaterKt;->a:Lokio/ByteString;

    iget-wide v6, v2, Lokio/Buffer;->c:J

    iget-object v1, p2, Lokio/ByteString;->b:[B

    array-length v1, v1

    int-to-long v8, v1

    sub-long/2addr v6, v8

    invoke-virtual {p2}, Lokio/ByteString;->e()I

    move-result v1

    invoke-virtual {v2, v1, p2, v6, v7}, Lokio/Buffer;->B(ILokio/ByteString;J)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-wide v6, v2, Lokio/Buffer;->c:J

    const-wide/16 v8, 0x4

    sub-long/2addr v6, v8

    new-instance p2, Lokio/Buffer$UnsafeCursor;

    invoke-direct {p2}, Lokio/Buffer$UnsafeCursor;-><init>()V

    invoke-virtual {v2, p2}, Lokio/Buffer;->C(Lokio/Buffer$UnsafeCursor;)V

    :try_start_0
    invoke-virtual {p2, v6, v7}, Lokio/Buffer$UnsafeCursor;->c(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Lokio/Buffer$UnsafeCursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {p2, p0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    invoke-virtual {v2, v3}, Lokio/Buffer;->m0(I)V

    :goto_0
    iget-wide v6, v2, Lokio/Buffer;->c:J

    invoke-virtual {v0, v2, v6, v7}, Lokio/Buffer;->D(Lokio/Buffer;J)V

    or-int/lit16 v1, p1, 0xc0

    goto :goto_1

    :cond_3
    const-string p0, "Failed requirement."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_1
    iget-wide p1, v0, Lokio/Buffer;->c:J

    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketWriter;->i:Lokio/Buffer;

    invoke-virtual {v2, v1}, Lokio/Buffer;->m0(I)V

    iget-boolean v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->b:Z

    if-eqz v1, :cond_5

    const/16 v6, 0x80

    goto :goto_2

    :cond_5
    move v6, v3

    :goto_2
    const-wide/16 v7, 0x7d

    cmp-long v7, p1, v7

    if-gtz v7, :cond_6

    long-to-int v7, p1

    or-int/2addr v6, v7

    invoke-virtual {v2, v6}, Lokio/Buffer;->m0(I)V

    goto :goto_3

    :cond_6
    const-wide/32 v7, 0xffff

    cmp-long v7, p1, v7

    if-gtz v7, :cond_7

    or-int/lit8 v6, v6, 0x7e

    invoke-virtual {v2, v6}, Lokio/Buffer;->m0(I)V

    long-to-int v6, p1

    invoke-virtual {v2, v6}, Lokio/Buffer;->v0(I)V

    goto :goto_3

    :cond_7
    or-int/lit8 v6, v6, 0x7f

    invoke-virtual {v2, v6}, Lokio/Buffer;->m0(I)V

    invoke-virtual {v2, p1, p2}, Lokio/Buffer;->q0(J)V

    :goto_3
    if-eqz v1, :cond_8

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->l:[B

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, p0, Lokhttp3/internal/ws/WebSocketWriter;->d:Ljava/util/Random;

    invoke-virtual {v6, v1}, Ljava/util/Random;->nextBytes([B)V

    array-length v6, v1

    invoke-virtual {v2, v1, v3, v6}, Lokio/Buffer;->write([BII)V

    cmp-long v3, p1, v4

    if-lez v3, :cond_8

    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketWriter;->m:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v3}, Lokio/Buffer;->C(Lokio/Buffer$UnsafeCursor;)V

    invoke-virtual {v3, v4, v5}, Lokio/Buffer$UnsafeCursor;->d(J)I

    invoke-static {v3, v1}, Lokhttp3/internal/ws/WebSocketProtocol;->b(Lokio/Buffer$UnsafeCursor;[B)V

    invoke-virtual {v3}, Lokio/Buffer$UnsafeCursor;->close()V

    :cond_8
    invoke-virtual {v2, v0, p1, p2}, Lokio/Buffer;->D(Lokio/Buffer;J)V

    iget-object p0, p0, Lokhttp3/internal/ws/WebSocketWriter;->c:Lokio/BufferedSink;

    invoke-interface {p0}, Lokio/BufferedSink;->flush()V

    return-void

    :cond_9
    const-string p0, "closed"

    invoke-static {p0}, Laz;->o(Ljava/lang/String;)V

    return-void
.end method
