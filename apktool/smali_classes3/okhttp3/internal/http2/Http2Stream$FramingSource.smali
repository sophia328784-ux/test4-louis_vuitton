.class public final Lokhttp3/internal/http2/Http2Stream$FramingSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Http2Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FramingSource"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0019\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lokhttp3/internal/http2/Http2Stream$FramingSource;",
        "Lokio/Source;",
        "",
        "maxByteCount",
        "",
        "finished",
        "<init>",
        "(Lokhttp3/internal/http2/Http2Stream;JZ)V",
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
.field public final b:J

.field public c:Z

.field public final d:Lokio/Buffer;

.field public final e:Lokio/Buffer;

.field public f:Z

.field public final synthetic g:Lokhttp3/internal/http2/Http2Stream;


# direct methods
.method public constructor <init>(Lokhttp3/internal/http2/Http2Stream;JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)V"
        }
    .end annotation

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->g:Lokhttp3/internal/http2/Http2Stream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->b:J

    iput-boolean p4, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->c:Z

    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->d:Lokio/Buffer;

    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->e:Lokio/Buffer;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->g:Lokhttp3/internal/http2/Http2Stream;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->f:Z

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->e:Lokio/Buffer;

    iget-wide v2, v1, Lokio/Buffer;->c:J

    invoke-virtual {v1}, Lokio/Buffer;->h()V

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->g:Lokhttp3/internal/http2/Http2Stream;

    sget-object v1, Lokhttp3/internal/_UtilJvmKt;->a:Ljava/util/TimeZone;

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Stream;->c:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, v2, v3}, Lokhttp3/internal/http2/Http2Connection;->h(J)V

    :cond_0
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->g:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream;->b()V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final read(Lokio/Buffer;J)J
    .locals 27

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_f

    :goto_0
    iget-object v5, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->g:Lokhttp3/internal/http2/Http2Stream;

    monitor-enter v5

    :try_start_0
    sget v6, Lokhttp3/internal/http2/Http2Stream;->o:I

    iget-object v6, v5, Lokhttp3/internal/http2/Http2Stream;->c:Lokhttp3/internal/http2/Http2Connection;

    iget-boolean v6, v6, Lokhttp3/internal/http2/Http2Connection;->b:Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_1

    iget-object v6, v5, Lokhttp3/internal/http2/Http2Stream;->j:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v9, v6, Lokhttp3/internal/http2/Http2Stream$FramingSink;->d:Z

    if-nez v9, :cond_1

    iget-boolean v6, v6, Lokhttp3/internal/http2/Http2Stream$FramingSink;->b:Z

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    move v6, v8

    goto :goto_2

    :cond_1
    :goto_1
    move v6, v7

    :goto_2
    if-eqz v6, :cond_2

    iget-object v9, v5, Lokhttp3/internal/http2/Http2Stream;->k:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v9}, Lokio/AsyncTimeout;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_2
    :goto_3
    :try_start_1
    invoke-virtual {v5}, Lokhttp3/internal/http2/Http2Stream;->g()Lokhttp3/internal/http2/ErrorCode;

    move-result-object v9

    if-eqz v9, :cond_3

    iget-boolean v9, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->c:Z

    if-nez v9, :cond_3

    iget-object v9, v5, Lokhttp3/internal/http2/Http2Stream;->n:Ljava/io/IOException;

    if-nez v9, :cond_4

    new-instance v9, Lokhttp3/internal/http2/StreamResetException;

    invoke-virtual {v5}, Lokhttp3/internal/http2/Http2Stream;->g()Lokhttp3/internal/http2/ErrorCode;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v9, v10}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto/16 :goto_8

    :cond_3
    const/4 v9, 0x0

    :cond_4
    :goto_4
    iget-boolean v10, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->f:Z

    if-nez v10, :cond_d

    iget-object v10, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->e:Lokio/Buffer;

    iget-wide v11, v10, Lokio/Buffer;->c:J

    cmp-long v13, v11, v3

    const-wide/16 v14, -0x1

    if-lez v13, :cond_7

    invoke-static {v1, v2, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    move-object/from16 v13, p1

    invoke-virtual {v10, v13, v11, v12}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide v17

    iget-object v7, v5, Lokhttp3/internal/http2/Http2Stream;->d:Lokhttp3/internal/http2/flowcontrol/WindowCounter;

    const-wide/16 v19, 0x0

    const/16 v21, 0x2

    move-object/from16 v16, v7

    invoke-static/range {v16 .. v21}, Lokhttp3/internal/http2/flowcontrol/WindowCounter;->b(Lokhttp3/internal/http2/flowcontrol/WindowCounter;JJI)V

    iget-object v7, v5, Lokhttp3/internal/http2/Http2Stream;->d:Lokhttp3/internal/http2/flowcontrol/WindowCounter;

    invoke-virtual {v7}, Lokhttp3/internal/http2/flowcontrol/WindowCounter;->a()J

    move-result-wide v10

    if-nez v9, :cond_5

    iget-object v7, v5, Lokhttp3/internal/http2/Http2Stream;->c:Lokhttp3/internal/http2/Http2Connection;

    iget-object v7, v7, Lokhttp3/internal/http2/Http2Connection;->t:Lokhttp3/internal/http2/Settings;

    invoke-virtual {v7}, Lokhttp3/internal/http2/Settings;->a()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    move-wide/from16 v25, v3

    int-to-long v3, v7

    cmp-long v3, v10, v3

    if-ltz v3, :cond_6

    iget-object v3, v5, Lokhttp3/internal/http2/Http2Stream;->c:Lokhttp3/internal/http2/Http2Connection;

    iget v4, v5, Lokhttp3/internal/http2/Http2Stream;->b:I

    invoke-virtual {v3, v4, v10, v11}, Lokhttp3/internal/http2/Http2Connection;->m(IJ)V

    iget-object v3, v5, Lokhttp3/internal/http2/Http2Stream;->d:Lokhttp3/internal/http2/flowcontrol/WindowCounter;

    const-wide/16 v20, 0x0

    const/16 v24, 0x1

    move-object/from16 v19, v3

    move-wide/from16 v22, v10

    invoke-static/range {v19 .. v24}, Lokhttp3/internal/http2/flowcontrol/WindowCounter;->b(Lokhttp3/internal/http2/flowcontrol/WindowCounter;JJI)V

    goto :goto_5

    :cond_5
    move-wide/from16 v25, v3

    :cond_6
    :goto_5
    move v7, v8

    goto :goto_7

    :cond_7
    move-object/from16 v13, p1

    move-wide/from16 v25, v3

    iget-boolean v3, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v3, :cond_8

    if-nez v9, :cond_8

    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_6
    move-wide/from16 v17, v14

    goto :goto_7

    :catch_0
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_8
    move v7, v8

    goto :goto_6

    :goto_7
    if-eqz v6, :cond_9

    :try_start_4
    iget-object v3, v5, Lokhttp3/internal/http2/Http2Stream;->k:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v3}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->m()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_9
    monitor-exit v5

    iget-object v3, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->g:Lokhttp3/internal/http2/Http2Stream;

    iget-object v4, v3, Lokhttp3/internal/http2/Http2Stream;->c:Lokhttp3/internal/http2/Http2Connection;

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Connection;->s:Lokhttp3/internal/http2/FlowControlListener;

    iget-object v3, v3, Lokhttp3/internal/http2/Http2Stream;->d:Lokhttp3/internal/http2/flowcontrol/WindowCounter;

    iget-object v5, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->e:Lokio/Buffer;

    iget-wide v5, v5, Lokio/Buffer;->c:J

    invoke-interface {v4, v3}, Lokhttp3/internal/http2/FlowControlListener;->a(Lokhttp3/internal/http2/flowcontrol/WindowCounter;)V

    if-eqz v7, :cond_a

    move-wide/from16 v3, v25

    goto/16 :goto_0

    :cond_a
    cmp-long v0, v17, v14

    if-eqz v0, :cond_b

    return-wide v17

    :cond_b
    if-nez v9, :cond_c

    return-wide v14

    :cond_c
    throw v9

    :cond_d
    :try_start_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_8
    if-eqz v6, :cond_e

    :try_start_6
    iget-object v1, v5, Lokhttp3/internal/http2/Http2Stream;->k:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->m()V

    :cond_e
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_9
    monitor-exit v5

    throw v0

    :cond_f
    move-wide/from16 v25, v3

    const-string v0, "byteCount < 0: "

    invoke-static {v1, v2, v0}, Ld21;->g(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb21;->n(Ljava/lang/Object;)V

    return-wide v25
.end method

.method public final timeout()Lokio/Timeout;
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->g:Lokhttp3/internal/http2/Http2Stream;

    iget-object p0, p0, Lokhttp3/internal/http2/Http2Stream;->k:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    return-object p0
.end method
