.class public final Lokhttp3/internal/ws/WebSocketReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/ws/WebSocketReader$FrameCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u000cB/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lokhttp3/internal/ws/WebSocketReader;",
        "Ljava/io/Closeable;",
        "",
        "isClient",
        "Lokio/BufferedSource;",
        "source",
        "Lokhttp3/internal/ws/WebSocketReader$FrameCallback;",
        "frameCallback",
        "perMessageDeflate",
        "noContextTakeover",
        "<init>",
        "(ZLokio/BufferedSource;Lokhttp3/internal/ws/WebSocketReader$FrameCallback;ZZ)V",
        "FrameCallback",
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

.field public final c:Lokio/BufferedSource;

.field public final d:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

.field public final e:Z

.field public final f:Z

.field public g:Z

.field public h:Z

.field public i:I

.field public j:J

.field public k:Z

.field public l:Z

.field public m:Z

.field public final n:Lokio/Buffer;

.field public final o:Lokio/Buffer;

.field public p:Lokhttp3/internal/ws/MessageInflater;

.field public final q:[B

.field public final r:Lokio/Buffer$UnsafeCursor;


# direct methods
.method public constructor <init>(ZLokio/BufferedSource;Lokhttp3/internal/ws/WebSocketReader$FrameCallback;ZZ)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lokhttp3/internal/ws/WebSocketReader;->b:Z

    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketReader;->c:Lokio/BufferedSource;

    iput-object p3, p0, Lokhttp3/internal/ws/WebSocketReader;->d:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    iput-boolean p4, p0, Lokhttp3/internal/ws/WebSocketReader;->e:Z

    iput-boolean p5, p0, Lokhttp3/internal/ws/WebSocketReader;->f:Z

    new-instance p2, Lokio/Buffer;

    invoke-direct {p2}, Lokio/Buffer;-><init>()V

    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketReader;->n:Lokio/Buffer;

    new-instance p2, Lokio/Buffer;

    invoke-direct {p2}, Lokio/Buffer;-><init>()V

    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketReader;->o:Lokio/Buffer;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    move-object p3, p2

    goto :goto_0

    :cond_0
    const/4 p3, 0x4

    new-array p3, p3, [B

    :goto_0
    iput-object p3, p0, Lokhttp3/internal/ws/WebSocketReader;->q:[B

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p2, Lokio/Buffer$UnsafeCursor;

    invoke-direct {p2}, Lokio/Buffer$UnsafeCursor;-><init>()V

    :goto_1
    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketReader;->r:Lokio/Buffer$UnsafeCursor;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->g:Z

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->p:Lokhttp3/internal/ws/MessageInflater;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lokhttp3/internal/_UtilCommonKt;->b(Ljava/io/Closeable;)V

    :cond_1
    iget-object p0, p0, Lokhttp3/internal/ws/WebSocketReader;->c:Lokio/BufferedSource;

    invoke-static {p0}, Lokhttp3/internal/_UtilCommonKt;->b(Ljava/io/Closeable;)V

    return-void
.end method

.method public final h()V
    .locals 13

    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->g:Z

    const-string v1, "closed"

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lokhttp3/internal/ws/WebSocketReader;->k()V

    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->l:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lokhttp3/internal/ws/WebSocketReader;->j()V

    return-void

    :cond_0
    iget v0, p0, Lokhttp3/internal/ws/WebSocketReader;->i:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/net/ProtocolException;

    sget-object v1, Lokhttp3/internal/_UtilJvmKt;->a:Ljava/util/TimeZone;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "Unknown opcode: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iget-boolean v3, p0, Lokhttp3/internal/ws/WebSocketReader;->h:Z

    if-nez v3, :cond_11

    iget-wide v3, p0, Lokhttp3/internal/ws/WebSocketReader;->j:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    iget-object v8, p0, Lokhttp3/internal/ws/WebSocketReader;->o:Lokio/Buffer;

    if-lez v7, :cond_3

    iget-object v7, p0, Lokhttp3/internal/ws/WebSocketReader;->c:Lokio/BufferedSource;

    invoke-interface {v7, v8, v3, v4}, Lokio/BufferedSource;->V(Lokio/Buffer;J)V

    iget-boolean v3, p0, Lokhttp3/internal/ws/WebSocketReader;->b:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketReader;->r:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8, v3}, Lokio/Buffer;->C(Lokio/Buffer$UnsafeCursor;)V

    iget-wide v9, v8, Lokio/Buffer;->c:J

    iget-wide v11, p0, Lokhttp3/internal/ws/WebSocketReader;->j:J

    sub-long/2addr v9, v11

    invoke-virtual {v3, v9, v10}, Lokio/Buffer$UnsafeCursor;->d(J)I

    iget-object v4, p0, Lokhttp3/internal/ws/WebSocketReader;->q:[B

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4}, Lokhttp3/internal/ws/WebSocketProtocol;->b(Lokio/Buffer$UnsafeCursor;[B)V

    invoke-virtual {v3}, Lokio/Buffer$UnsafeCursor;->close()V

    :cond_3
    iget-boolean v3, p0, Lokhttp3/internal/ws/WebSocketReader;->k:Z

    if-nez v3, :cond_7

    :goto_1
    iget-boolean v3, p0, Lokhttp3/internal/ws/WebSocketReader;->h:Z

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lokhttp3/internal/ws/WebSocketReader;->k()V

    iget-boolean v3, p0, Lokhttp3/internal/ws/WebSocketReader;->l:Z

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lokhttp3/internal/ws/WebSocketReader;->j()V

    goto :goto_1

    :cond_5
    :goto_2
    iget v3, p0, Lokhttp3/internal/ws/WebSocketReader;->i:I

    if-nez v3, :cond_6

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/net/ProtocolException;

    iget p0, p0, Lokhttp3/internal/ws/WebSocketReader;->i:I

    sget-object v1, Lokhttp3/internal/_UtilJvmKt;->a:Ljava/util/TimeZone;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "Expected continuation opcode. Got: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget-boolean v1, p0, Lokhttp3/internal/ws/WebSocketReader;->m:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->p:Lokhttp3/internal/ws/MessageInflater;

    if-nez v1, :cond_8

    new-instance v1, Lokhttp3/internal/ws/MessageInflater;

    iget-boolean v3, p0, Lokhttp3/internal/ws/WebSocketReader;->f:Z

    invoke-direct {v1, v3}, Lokhttp3/internal/ws/MessageInflater;-><init>(Z)V

    iput-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->p:Lokhttp3/internal/ws/MessageInflater;

    :cond_8
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v1, Lokhttp3/internal/ws/MessageInflater;->c:Lokio/Buffer;

    iget-wide v9, v3, Lokio/Buffer;->c:J

    cmp-long v4, v9, v5

    if-nez v4, :cond_e

    iget-object v4, v1, Lokhttp3/internal/ws/MessageInflater;->d:Ljava/util/zip/Inflater;

    if-nez v4, :cond_9

    new-instance v4, Ljava/util/zip/Inflater;

    invoke-direct {v4, v2}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v4, v1, Lokhttp3/internal/ws/MessageInflater;->d:Ljava/util/zip/Inflater;

    :cond_9
    iget-object v5, v1, Lokhttp3/internal/ws/MessageInflater;->e:Lokio/InflaterSource;

    if-nez v5, :cond_a

    new-instance v5, Lokio/InflaterSource;

    invoke-direct {v5, v3, v4}, Lokio/InflaterSource;-><init>(Lokio/Source;Ljava/util/zip/Inflater;)V

    iput-object v5, v1, Lokhttp3/internal/ws/MessageInflater;->e:Lokio/InflaterSource;

    :cond_a
    iget-boolean v6, v1, Lokhttp3/internal/ws/MessageInflater;->b:Z

    if-eqz v6, :cond_b

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->reset()V

    :cond_b
    invoke-virtual {v3, v8}, Lokio/Buffer;->u0(Lokio/Source;)J

    const v6, 0xffff

    invoke-virtual {v3, v6}, Lokio/Buffer;->p0(I)V

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->getBytesRead()J

    move-result-wide v6

    iget-wide v9, v3, Lokio/Buffer;->c:J

    add-long/2addr v6, v9

    :cond_c
    const-wide v9, 0x7fffffffffffffffL

    invoke-virtual {v5, v8, v9, v10}, Lokio/InflaterSource;->c(Lokio/Buffer;J)J

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->getBytesRead()J

    move-result-wide v9

    cmp-long v9, v9, v6

    if-gez v9, :cond_d

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->finished()Z

    move-result v9

    if-eqz v9, :cond_c

    :cond_d
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->getBytesRead()J

    move-result-wide v9

    cmp-long v4, v9, v6

    if-gez v4, :cond_f

    invoke-virtual {v3}, Lokio/Buffer;->h()V

    invoke-virtual {v5}, Lokio/InflaterSource;->close()V

    const/4 v3, 0x0

    iput-object v3, v1, Lokhttp3/internal/ws/MessageInflater;->e:Lokio/InflaterSource;

    iput-object v3, v1, Lokhttp3/internal/ws/MessageInflater;->d:Ljava/util/zip/Inflater;

    goto :goto_3

    :cond_e
    const-string p0, "Failed requirement."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_f
    :goto_3
    iget-object p0, p0, Lokhttp3/internal/ws/WebSocketReader;->d:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    if-ne v0, v2, :cond_10

    invoke-virtual {v8}, Lokio/Buffer;->H()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadMessage(Ljava/lang/String;)V

    return-void

    :cond_10
    iget-wide v0, v8, Lokio/Buffer;->c:J

    invoke-virtual {v8, v0, v1}, Lokio/Buffer;->N0(J)Lokio/ByteString;

    move-result-object v0

    invoke-interface {p0, v0}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadMessage(Lokio/ByteString;)V

    return-void

    :cond_11
    invoke-static {v1}, Laz;->o(Ljava/lang/String;)V

    return-void

    :cond_12
    invoke-static {v1}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method

.method public final j()V
    .locals 10

    iget-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->j:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    iget-object v5, p0, Lokhttp3/internal/ws/WebSocketReader;->n:Lokio/Buffer;

    if-lez v4, :cond_0

    iget-object v4, p0, Lokhttp3/internal/ws/WebSocketReader;->c:Lokio/BufferedSource;

    invoke-interface {v4, v5, v0, v1}, Lokio/BufferedSource;->V(Lokio/Buffer;J)V

    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->r:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v0}, Lokio/Buffer;->C(Lokio/Buffer$UnsafeCursor;)V

    invoke-virtual {v0, v2, v3}, Lokio/Buffer$UnsafeCursor;->d(J)I

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->q:[B

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lokhttp3/internal/ws/WebSocketProtocol;->b(Lokio/Buffer$UnsafeCursor;[B)V

    invoke-virtual {v0}, Lokio/Buffer$UnsafeCursor;->close()V

    :cond_0
    iget v0, p0, Lokhttp3/internal/ws/WebSocketReader;->i:I

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->d:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/net/ProtocolException;

    iget p0, p0, Lokhttp3/internal/ws/WebSocketReader;->i:I

    sget-object v1, Lokhttp3/internal/_UtilJvmKt;->a:Ljava/util/TimeZone;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "Unknown control opcode: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-wide v2, v5, Lokio/Buffer;->c:J

    invoke-virtual {v5, v2, v3}, Lokio/Buffer;->N0(J)Lokio/ByteString;

    move-result-object p0

    invoke-interface {v1, p0}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadPong(Lokio/ByteString;)V

    return-void

    :pswitch_1
    iget-wide v2, v5, Lokio/Buffer;->c:J

    invoke-virtual {v5, v2, v3}, Lokio/Buffer;->N0(J)Lokio/ByteString;

    move-result-object p0

    invoke-interface {v1, p0}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadPing(Lokio/ByteString;)V

    return-void

    :pswitch_2
    iget-wide v6, v5, Lokio/Buffer;->c:J

    const-wide/16 v8, 0x1

    cmp-long v0, v6, v8

    if-eqz v0, :cond_3

    cmp-long v0, v6, v2

    if-eqz v0, :cond_2

    invoke-virtual {v5}, Lokio/Buffer;->readShort()S

    move-result v0

    invoke-virtual {v5}, Lokio/Buffer;->H()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lokhttp3/internal/ws/WebSocketProtocol;->a(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/net/ProtocolException;

    invoke-direct {p0, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const/16 v0, 0x3ed

    const-string v2, ""

    :goto_0
    invoke-interface {v1, v0, v2}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadClose(ILjava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->h:Z

    return-void

    :cond_3
    new-instance p0, Ljava/net/ProtocolException;

    const-string v0, "Malformed close payload length of 1."

    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final k()V
    .locals 8

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-boolean v1, p0, Lokhttp3/internal/ws/WebSocketReader;->h:Z

    if-nez v1, :cond_14

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->c:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v2

    invoke-virtual {v2}, Lokio/Timeout;->h()J

    move-result-wide v2

    invoke-interface {v1}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v4

    invoke-virtual {v4}, Lokio/Timeout;->b()Lokio/Timeout;

    :try_start_0
    invoke-interface {v1}, Lokio/BufferedSource;->readByte()B

    move-result v4

    sget-object v5, Lokhttp3/internal/_UtilCommonKt;->a:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v5

    invoke-virtual {v5, v2, v3, v0}, Lokio/Timeout;->g(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    and-int/lit8 v0, v4, 0xf

    iput v0, p0, Lokhttp3/internal/ws/WebSocketReader;->i:I

    and-int/lit16 v2, v4, 0x80

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lokhttp3/internal/ws/WebSocketReader;->k:Z

    and-int/lit8 v6, v4, 0x8

    if-eqz v6, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    iput-boolean v6, p0, Lokhttp3/internal/ws/WebSocketReader;->l:Z

    if-eqz v6, :cond_3

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/net/ProtocolException;

    const-string v0, "Control frames must be final."

    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    and-int/lit8 v2, v4, 0x40

    if-eqz v2, :cond_4

    move v2, v5

    goto :goto_3

    :cond_4
    move v2, v3

    :goto_3
    const-string v6, "Unexpected rsv1 flag"

    if-eq v0, v5, :cond_6

    const/4 v7, 0x2

    if-eq v0, v7, :cond_6

    if-nez v2, :cond_5

    goto :goto_5

    :cond_5
    new-instance p0, Ljava/net/ProtocolException;

    invoke-direct {p0, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    if-eqz v2, :cond_8

    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->e:Z

    if-eqz v0, :cond_7

    move v0, v5

    goto :goto_4

    :cond_7
    new-instance p0, Ljava/net/ProtocolException;

    invoke-direct {p0, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    move v0, v3

    :goto_4
    iput-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->m:Z

    :goto_5
    and-int/lit8 v0, v4, 0x20

    if-nez v0, :cond_13

    and-int/lit8 v0, v4, 0x10

    if-nez v0, :cond_12

    invoke-interface {v1}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_9

    move v3, v5

    :cond_9
    iget-boolean v2, p0, Lokhttp3/internal/ws/WebSocketReader;->b:Z

    if-ne v3, v2, :cond_b

    new-instance p0, Ljava/net/ProtocolException;

    if-eqz v2, :cond_a

    const-string v0, "Server-sent frames must not be masked."

    goto :goto_6

    :cond_a
    const-string v0, "Client-sent frames must be masked."

    :goto_6
    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    and-int/lit8 v0, v0, 0x7f

    int-to-long v4, v0

    iput-wide v4, p0, Lokhttp3/internal/ws/WebSocketReader;->j:J

    const-wide/16 v6, 0x7e

    cmp-long v0, v4, v6

    if-nez v0, :cond_c

    invoke-interface {v1}, Lokio/BufferedSource;->readShort()S

    move-result v0

    const v2, 0xffff

    and-int/2addr v0, v2

    int-to-long v4, v0

    iput-wide v4, p0, Lokhttp3/internal/ws/WebSocketReader;->j:J

    goto :goto_7

    :cond_c
    const-wide/16 v6, 0x7f

    cmp-long v0, v4, v6

    if-nez v0, :cond_e

    invoke-interface {v1}, Lokio/BufferedSource;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lokhttp3/internal/ws/WebSocketReader;->j:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_d

    goto :goto_7

    :cond_d
    new-instance v0, Ljava/net/ProtocolException;

    iget-wide v1, p0, Lokhttp3/internal/ws/WebSocketReader;->j:J

    sget-object p0, Lokhttp3/internal/_UtilJvmKt;->a:Ljava/util/TimeZone;

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Frame length 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " > 0x7FFFFFFFFFFFFFFF"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    :goto_7
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->l:Z

    if-eqz v0, :cond_10

    iget-wide v4, p0, Lokhttp3/internal/ws/WebSocketReader;->j:J

    const-wide/16 v6, 0x7d

    cmp-long v0, v4, v6

    if-gtz v0, :cond_f

    goto :goto_8

    :cond_f
    new-instance p0, Ljava/net/ProtocolException;

    const-string v0, "Control frame must be less than 125B."

    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    :goto_8
    if-eqz v3, :cond_11

    iget-object p0, p0, Lokhttp3/internal/ws/WebSocketReader;->q:[B

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, p0}, Lokio/BufferedSource;->readFully([B)V

    :cond_11
    return-void

    :cond_12
    new-instance p0, Ljava/net/ProtocolException;

    const-string v0, "Unexpected rsv3 flag"

    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    new-instance p0, Ljava/net/ProtocolException;

    const-string v0, "Unexpected rsv2 flag"

    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    invoke-interface {v1}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v1

    invoke-virtual {v1, v2, v3, v0}, Lokio/Timeout;->g(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    throw p0

    :cond_14
    const-string p0, "closed"

    invoke-static {p0}, Laz;->o(Ljava/lang/String;)V

    return-void
.end method
