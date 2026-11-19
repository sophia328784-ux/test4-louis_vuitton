.class public final Lokhttp3/internal/http2/Http2Reader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/Http2Reader$Companion;,
        Lokhttp3/internal/http2/Http2Reader$ContinuationSource;,
        Lokhttp3/internal/http2/Http2Reader$Handler;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0003\u0008\t\nB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lokhttp3/internal/http2/Http2Reader;",
        "Ljava/io/Closeable;",
        "Lokio/BufferedSource;",
        "source",
        "",
        "client",
        "<init>",
        "(Lokio/BufferedSource;Z)V",
        "ContinuationSource",
        "Handler",
        "Companion",
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


# static fields
.field public static final f:Lokhttp3/internal/http2/Http2Reader$Companion;

.field public static final g:Ljava/util/logging/Logger;


# instance fields
.field public final b:Lokio/BufferedSource;

.field public final c:Z

.field public final d:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

.field public final e:Lokhttp3/internal/http2/Hpack$Reader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/internal/http2/Http2Reader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/Http2Reader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/internal/http2/Http2Reader;->f:Lokhttp3/internal/http2/Http2Reader$Companion;

    const-class v0, Lokhttp3/internal/http2/Http2;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object v0, Lokhttp3/internal/http2/Http2Reader;->g:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lokio/BufferedSource;Z)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Reader;->b:Lokio/BufferedSource;

    iput-boolean p2, p0, Lokhttp3/internal/http2/Http2Reader;->c:Z

    new-instance v1, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

    invoke-direct {v1, p1}, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;-><init>(Lokio/BufferedSource;)V

    iput-object v1, p0, Lokhttp3/internal/http2/Http2Reader;->d:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

    new-instance v0, Lokhttp3/internal/http2/Hpack$Reader;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/16 v2, 0x1000

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/http2/Hpack$Reader;-><init>(Lokio/Source;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->e:Lokhttp3/internal/http2/Hpack$Reader;

    return-void
.end method


# virtual methods
.method public final c(ZLokhttp3/internal/http2/Http2Connection$ReaderRunnable;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    sget-object v2, Lokhttp3/internal/http2/Http2Reader;->g:Ljava/util/logging/Logger;

    sget-object v3, Lokhttp3/internal/http2/Http2Reader;->f:Lokhttp3/internal/http2/Http2Reader$Companion;

    iget-object v4, v0, Lokhttp3/internal/http2/Http2Reader;->b:Lokio/BufferedSource;

    const-wide/16 v5, 0x9

    const/4 v7, 0x0

    :try_start_0
    invoke-interface {v4, v5, v6}, Lokio/BufferedSource;->D0(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-static {v4}, Lokhttp3/internal/_UtilCommonKt;->o(Lokio/BufferedSource;)I

    move-result v5

    const/16 v6, 0x4000

    if-gt v5, v6, :cond_33

    invoke-interface {v4}, Lokio/BufferedSource;->readByte()B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    invoke-interface {v4}, Lokio/BufferedSource;->readByte()B

    move-result v9

    and-int/lit16 v10, v9, 0xff

    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    move-result v11

    const v12, 0x7fffffff

    and-int/2addr v11, v12

    const/16 v13, 0x8

    const/4 v14, 0x1

    if-eq v8, v13, :cond_0

    sget-object v15, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v15}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-static {v11, v5, v14, v8, v10}, Lokhttp3/internal/http2/Http2;->b(IIZII)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    const/4 v15, 0x4

    if-eqz p1, :cond_2

    if-ne v8, v15, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "Expected a SETTINGS frame but was "

    invoke-static {v8}, Lokhttp3/internal/http2/Http2;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Laz;->y(Ljava/lang/Object;Ljava/lang/String;)V

    return v7

    :cond_2
    :goto_0
    const/16 v16, 0x0

    move/from16 v17, v12

    const/4 v12, 0x5

    packed-switch v8, :pswitch_data_0

    int-to-long v0, v5

    invoke-interface {v4, v0, v1}, Lokio/BufferedSource;->skip(J)V

    return v14

    :pswitch_0
    const-string v0, "TYPE_WINDOW_UPDATE length !=4: "

    if-ne v5, v15, :cond_7

    :try_start_1
    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/32 v3, 0x7fffffff

    int-to-long v6, v0

    and-long/2addr v3, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v3, v6

    if-eqz v0, :cond_6

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v3, v4, v11, v5, v14}, Lokhttp3/internal/http2/Http2;->c(JIIZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_3
    iget-object v1, v1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    if-nez v11, :cond_4

    monitor-enter v1

    :try_start_2
    iget-wide v5, v1, Lokhttp3/internal/http2/Http2Connection;->x:J

    add-long/2addr v5, v3

    iput-wide v5, v1, Lokhttp3/internal/http2/Http2Connection;->x:J

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return v14

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_4
    invoke-virtual {v1, v11}, Lokhttp3/internal/http2/Http2Connection;->d(I)Lokhttp3/internal/http2/Http2Stream;

    move-result-object v1

    if-eqz v1, :cond_15

    monitor-enter v1

    :try_start_3
    iget-wide v5, v1, Lokhttp3/internal/http2/Http2Stream;->f:J

    add-long/2addr v5, v3

    iput-wide v5, v1, Lokhttp3/internal/http2/Http2Stream;->f:J

    if-lez v0, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_5
    monitor-exit v1

    return v14

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_6
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "windowSizeIncrement was 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_7
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    invoke-static {v11, v5, v14, v13, v10}, Lokhttp3/internal/http2/Http2;->b(IIZII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    if-lt v5, v13, :cond_f

    if-nez v11, :cond_e

    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    move-result v0

    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    move-result v2

    sub-int/2addr v5, v13

    sget-object v3, Lokhttp3/internal/http2/ErrorCode;->Companion:Lokhttp3/internal/http2/ErrorCode$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lokhttp3/internal/http2/ErrorCode;->values()[Lokhttp3/internal/http2/ErrorCode;

    move-result-object v3

    array-length v6, v3

    move v8, v7

    :goto_2
    if-ge v8, v6, :cond_9

    aget-object v9, v3, v8

    invoke-virtual {v9}, Lokhttp3/internal/http2/ErrorCode;->a()I

    move-result v10

    if-ne v10, v2, :cond_8

    move-object/from16 v16, v9

    goto :goto_3

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_9
    :goto_3
    if-eqz v16, :cond_d

    sget-object v2, Lokio/ByteString;->f:Lokio/ByteString;

    if-lez v5, :cond_a

    int-to-long v2, v5

    invoke-interface {v4, v2, v3}, Lokio/BufferedSource;->N0(J)Lokio/ByteString;

    move-result-object v2

    :cond_a
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lokio/ByteString;->e()I

    iget-object v2, v1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter v2

    :try_start_5
    iget-object v3, v2, Lokhttp3/internal/http2/Http2Connection;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    new-array v4, v7, [Lokhttp3/internal/http2/Http2Stream;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    iput-boolean v14, v2, Lokhttp3/internal/http2/Http2Connection;->h:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    monitor-exit v2

    check-cast v3, [Lokhttp3/internal/http2/Http2Stream;

    array-length v2, v3

    :goto_4
    if-ge v7, v2, :cond_15

    aget-object v4, v3, v7

    iget v5, v4, Lokhttp3/internal/http2/Http2Stream;->b:I

    if-le v5, v0, :cond_c

    invoke-virtual {v4}, Lokhttp3/internal/http2/Http2Stream;->h()Z

    move-result v5

    if-eqz v5, :cond_c

    sget-object v5, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter v4

    :try_start_6
    invoke-virtual {v4}, Lokhttp3/internal/http2/Http2Stream;->g()Lokhttp3/internal/http2/ErrorCode;

    move-result-object v6

    if-nez v6, :cond_b

    iput-object v5, v4, Lokhttp3/internal/http2/Http2Stream;->m:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_6

    :cond_b
    :goto_5
    monitor-exit v4

    iget-object v5, v1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    iget v4, v4, Lokhttp3/internal/http2/Http2Stream;->b:I

    invoke-virtual {v5, v4}, Lokhttp3/internal/http2/Http2Connection;->e(I)Lokhttp3/internal/http2/Http2Stream;

    goto :goto_7

    :goto_6
    monitor-exit v4

    throw v0

    :cond_c
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :catchall_3
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_d
    const-string v0, "TYPE_GOAWAY unexpected error code: "

    invoke-static {v2, v0}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laz;->o(Ljava/lang/String;)V

    return v7

    :cond_e
    const-string v0, "TYPE_GOAWAY streamId != 0"

    invoke-static {v0}, Laz;->o(Ljava/lang/String;)V

    return v7

    :cond_f
    const-string v0, "TYPE_GOAWAY length < 8: "

    invoke-static {v5, v0}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laz;->o(Ljava/lang/String;)V

    return v7

    :pswitch_2
    if-ne v5, v13, :cond_12

    if-nez v11, :cond_11

    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    move-result v0

    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    move-result v2

    and-int/lit8 v3, v9, 0x1

    if-eqz v3, :cond_10

    move v7, v14

    :cond_10
    invoke-virtual {v1, v0, v2, v7}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c(IIZ)V

    return v14

    :cond_11
    const-string v0, "TYPE_PING streamId != 0"

    invoke-static {v0}, Laz;->o(Ljava/lang/String;)V

    return v7

    :cond_12
    const-string v0, "TYPE_PING length != 8: "

    invoke-static {v5, v0}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laz;->o(Ljava/lang/String;)V

    return v7

    :pswitch_3
    if-eqz v11, :cond_14

    and-int/lit8 v2, v9, 0x8

    if-eqz v2, :cond_13

    invoke-interface {v4}, Lokio/BufferedSource;->readByte()B

    move-result v2

    and-int/lit16 v7, v2, 0xff

    :cond_13
    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    move-result v2

    and-int v2, v2, v17

    sub-int/2addr v5, v15

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v10, v7}, Lokhttp3/internal/http2/Http2Reader$Companion;->a(III)I

    move-result v3

    invoke-virtual {v0, v3, v7, v10, v11}, Lokhttp3/internal/http2/Http2Reader;->e(IIII)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->d(ILjava/util/List;)V

    return v14

    :cond_14
    const-string v0, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    invoke-static {v0}, Laz;->o(Ljava/lang/String;)V

    return v7

    :pswitch_4
    if-nez v11, :cond_23

    and-int/lit8 v0, v9, 0x1

    if-eqz v0, :cond_17

    if-nez v5, :cond_16

    :cond_15
    return v14

    :cond_16
    const-string v0, "FRAME_SIZE_ERROR ack frame should be empty!"

    invoke-static {v0}, Laz;->o(Ljava/lang/String;)V

    return v7

    :cond_17
    rem-int/lit8 v0, v5, 0x6

    if-nez v0, :cond_22

    new-instance v0, Lokhttp3/internal/http2/Settings;

    invoke-direct {v0}, Lokhttp3/internal/http2/Settings;-><init>()V

    invoke-static {v7, v5}, Lkotlin/ranges/RangesKt;->j(II)Lkotlin/ranges/IntRange;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->i(Lkotlin/ranges/IntRange;I)Lkotlin/ranges/IntProgression;

    move-result-object v2

    iget v3, v2, Lkotlin/ranges/IntProgression;->b:I

    iget v5, v2, Lkotlin/ranges/IntProgression;->c:I

    iget v2, v2, Lkotlin/ranges/IntProgression;->d:I

    if-lez v2, :cond_18

    if-le v3, v5, :cond_19

    :cond_18
    if-gez v2, :cond_21

    if-gt v5, v3, :cond_21

    :cond_19
    :goto_8
    invoke-interface {v4}, Lokio/BufferedSource;->readShort()S

    move-result v8

    sget-object v9, Lokhttp3/internal/_UtilCommonKt;->a:[B

    const v9, 0xffff

    and-int/2addr v8, v9

    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    move-result v9

    const/4 v10, 0x2

    if-eq v8, v10, :cond_1e

    if-eq v8, v15, :cond_1c

    if-eq v8, v12, :cond_1a

    goto :goto_9

    :cond_1a
    if-lt v9, v6, :cond_1b

    const v10, 0xffffff

    if-gt v9, v10, :cond_1b

    goto :goto_9

    :cond_1b
    const-string v0, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: "

    invoke-static {v9, v0}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laz;->o(Ljava/lang/String;)V

    return v7

    :cond_1c
    if-ltz v9, :cond_1d

    goto :goto_9

    :cond_1d
    const-string v0, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    invoke-static {v0}, Laz;->o(Ljava/lang/String;)V

    return v7

    :cond_1e
    if-eqz v9, :cond_20

    if-ne v9, v14, :cond_1f

    goto :goto_9

    :cond_1f
    const-string v0, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    invoke-static {v0}, Laz;->o(Ljava/lang/String;)V

    return v7

    :cond_20
    :goto_9
    invoke-virtual {v0, v8, v9}, Lokhttp3/internal/http2/Settings;->b(II)V

    if-eq v3, v5, :cond_21

    add-int/2addr v3, v2

    goto :goto_8

    :cond_21
    iget-object v2, v1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    iget-object v3, v2, Lokhttp3/internal/http2/Http2Connection;->j:Lokhttp3/internal/concurrent/TaskQueue;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, Lokhttp3/internal/http2/Http2Connection;->e:Ljava/lang/String;

    const-string v5, " applyAndAckSettings"

    invoke-static {v2, v5, v4}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ldt;

    const/16 v2, 0x18

    invoke-direct {v7, v1, v0, v2}, Ldt;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const/4 v8, 0x6

    const-wide/16 v5, 0x0

    invoke-static/range {v3 .. v8}, Lokhttp3/internal/concurrent/TaskQueue;->b(Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;JLkotlin/jvm/functions/Function0;I)V

    return v14

    :cond_22
    const-string v0, "TYPE_SETTINGS length % 6 != 0: "

    invoke-static {v5, v0}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laz;->o(Ljava/lang/String;)V

    return v7

    :cond_23
    const-string v0, "TYPE_SETTINGS streamId != 0"

    invoke-static {v0}, Laz;->o(Ljava/lang/String;)V

    return v7

    :pswitch_5
    if-ne v5, v15, :cond_28

    if-eqz v11, :cond_27

    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    move-result v0

    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->Companion:Lokhttp3/internal/http2/ErrorCode$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lokhttp3/internal/http2/ErrorCode;->values()[Lokhttp3/internal/http2/ErrorCode;

    move-result-object v2

    array-length v3, v2

    move v4, v7

    :goto_a
    if-ge v4, v3, :cond_25

    aget-object v5, v2, v4

    invoke-virtual {v5}, Lokhttp3/internal/http2/ErrorCode;->a()I

    move-result v6

    if-ne v6, v0, :cond_24

    goto :goto_b

    :cond_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_25
    move-object/from16 v5, v16

    :goto_b
    if-eqz v5, :cond_26

    invoke-virtual {v1, v11, v5}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->e(ILokhttp3/internal/http2/ErrorCode;)V

    return v14

    :cond_26
    const-string v1, "TYPE_RST_STREAM unexpected error code: "

    invoke-static {v0, v1}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laz;->o(Ljava/lang/String;)V

    return v7

    :cond_27
    const-string v0, "TYPE_RST_STREAM streamId == 0"

    invoke-static {v0}, Laz;->o(Ljava/lang/String;)V

    return v7

    :cond_28
    const-string v0, "TYPE_RST_STREAM length: "

    const-string v1, " != 4"

    invoke-static {v5, v0, v1}, Ln00;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laz;->o(Ljava/lang/String;)V

    return v7

    :pswitch_6
    if-ne v5, v12, :cond_2a

    if-eqz v11, :cond_29

    invoke-virtual {v0, v1, v11}, Lokhttp3/internal/http2/Http2Reader;->g(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;I)V

    return v14

    :cond_29
    const-string v0, "TYPE_PRIORITY streamId == 0"

    invoke-static {v0}, Laz;->o(Ljava/lang/String;)V

    return v7

    :cond_2a
    const-string v0, "TYPE_PRIORITY length: "

    const-string v1, " != 5"

    invoke-static {v5, v0, v1}, Ln00;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laz;->o(Ljava/lang/String;)V

    return v7

    :pswitch_7
    if-eqz v11, :cond_2e

    and-int/lit8 v2, v9, 0x1

    if-eqz v2, :cond_2b

    move v2, v14

    goto :goto_c

    :cond_2b
    move v2, v7

    :goto_c
    and-int/lit8 v6, v9, 0x8

    if-eqz v6, :cond_2c

    invoke-interface {v4}, Lokio/BufferedSource;->readByte()B

    move-result v4

    and-int/lit16 v7, v4, 0xff

    :cond_2c
    and-int/lit8 v4, v9, 0x20

    if-eqz v4, :cond_2d

    invoke-virtual {v0, v1, v11}, Lokhttp3/internal/http2/Http2Reader;->g(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;I)V

    add-int/lit8 v5, v5, -0x5

    :cond_2d
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v10, v7}, Lokhttp3/internal/http2/Http2Reader$Companion;->a(III)I

    move-result v3

    invoke-virtual {v0, v3, v7, v10, v11}, Lokhttp3/internal/http2/Http2Reader;->e(IIII)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0, v11, v2}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->b(Ljava/util/List;IZ)V

    return v14

    :cond_2e
    const-string v0, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    invoke-static {v0}, Laz;->o(Ljava/lang/String;)V

    return v7

    :pswitch_8
    if-eqz v11, :cond_32

    and-int/lit8 v0, v9, 0x1

    if-eqz v0, :cond_2f

    move v0, v14

    goto :goto_d

    :cond_2f
    move v0, v7

    :goto_d
    and-int/lit8 v2, v9, 0x20

    if-nez v2, :cond_31

    and-int/lit8 v2, v9, 0x8

    if-eqz v2, :cond_30

    invoke-interface {v4}, Lokio/BufferedSource;->readByte()B

    move-result v2

    and-int/lit16 v7, v2, 0xff

    :cond_30
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v10, v7}, Lokhttp3/internal/http2/Http2Reader$Companion;->a(III)I

    move-result v2

    invoke-virtual {v1, v0, v11, v4, v2}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->a(ZILokio/BufferedSource;I)V

    int-to-long v0, v7

    invoke-interface {v4, v0, v1}, Lokio/BufferedSource;->skip(J)V

    return v14

    :cond_31
    const-string v0, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    invoke-static {v0}, Laz;->o(Ljava/lang/String;)V

    return v7

    :cond_32
    const-string v0, "PROTOCOL_ERROR: TYPE_DATA streamId == 0"

    invoke-static {v0}, Laz;->o(Ljava/lang/String;)V

    return v7

    :cond_33
    const-string v0, "FRAME_SIZE_ERROR: "

    invoke-static {v5, v0}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laz;->o(Ljava/lang/String;)V

    :catch_1
    return v7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final close()V
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/http2/Http2Reader;->b:Lokio/BufferedSource;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public final d(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;)V
    .locals 3

    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Reader;->c:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lokhttp3/internal/http2/Http2Reader;->c(ZLokhttp3/internal/http2/Http2Connection$ReaderRunnable;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Required SETTINGS preface not received"

    invoke-static {p0}, Laz;->o(Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object p1, Lokhttp3/internal/http2/Http2;->a:Lokio/ByteString;

    iget-object v0, p1, Lokio/ByteString;->b:[B

    array-length v0, v0

    int-to-long v0, v0

    iget-object p0, p0, Lokhttp3/internal/http2/Http2Reader;->b:Lokio/BufferedSource;

    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->N0(J)Lokio/ByteString;

    move-result-object p0

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    sget-object v1, Lokhttp3/internal/http2/Http2Reader;->g:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "<< CONNECTION "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lokhttp3/internal/_UtilJvmKt;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1, p0}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0}, Lokio/ByteString;->C()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Expected a connection header but was "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Laz;->o(Ljava/lang/String;)V

    return-void
.end method

.method public final e(IIII)Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->d:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

    iput p1, v0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->e:I

    iput p2, v0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->f:I

    iput p3, v0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->c:I

    iput p4, v0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->d:I

    iget-object p0, p0, Lokhttp3/internal/http2/Http2Reader;->e:Lokhttp3/internal/http2/Hpack$Reader;

    iget-object p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->e:Lokio/RealBufferedSource;

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lokio/RealBufferedSource;->Z0()Z

    move-result p2

    if-nez p2, :cond_c

    invoke-virtual {p1}, Lokio/RealBufferedSource;->readByte()B

    move-result p2

    sget-object p3, Lokhttp3/internal/_UtilCommonKt;->a:[B

    and-int/lit16 p3, p2, 0xff

    const/4 p4, 0x0

    const/16 v0, 0x80

    if-eq p3, v0, :cond_b

    and-int/lit16 v1, p2, 0x80

    if-ne v1, v0, :cond_3

    const/16 p2, 0x7f

    invoke-virtual {p0, p3, p2}, Lokhttp3/internal/http2/Hpack$Reader;->f(II)I

    move-result p2

    add-int/lit8 p3, p2, -0x1

    if-ltz p3, :cond_1

    sget-object v0, Lokhttp3/internal/http2/Hpack;->a:[Lokhttp3/internal/http2/Header;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-gt p3, v1, :cond_1

    aget-object p2, v0, p3

    invoke-virtual {p0, p2}, Lokhttp3/internal/http2/Hpack$Reader;->a(Lokhttp3/internal/http2/Header;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lokhttp3/internal/http2/Hpack;->a:[Lokhttp3/internal/http2/Header;

    array-length v0, v0

    sub-int/2addr p3, v0

    iget v0, p0, Lokhttp3/internal/http2/Hpack$Reader;->g:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p3

    if-ltz v0, :cond_2

    iget-object p3, p0, Lokhttp3/internal/http2/Hpack$Reader;->f:[Lokhttp3/internal/http2/Header;

    array-length v1, p3

    if-ge v0, v1, :cond_2

    aget-object p2, p3, v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p2}, Lokhttp3/internal/http2/Hpack$Reader;->a(Lokhttp3/internal/http2/Header;)V

    goto :goto_0

    :cond_2
    const-string p0, "Header index too large "

    invoke-static {p2, p0}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Laz;->o(Ljava/lang/String;)V

    return-object p4

    :cond_3
    const/16 v0, 0x40

    if-ne p3, v0, :cond_4

    sget-object p2, Lokhttp3/internal/http2/Hpack;->a:[Lokhttp3/internal/http2/Header;

    invoke-virtual {p0}, Lokhttp3/internal/http2/Hpack$Reader;->e()Lokio/ByteString;

    move-result-object p2

    invoke-static {p2}, Lokhttp3/internal/http2/Hpack;->a(Lokio/ByteString;)V

    invoke-virtual {p0}, Lokhttp3/internal/http2/Hpack$Reader;->e()Lokio/ByteString;

    move-result-object p3

    new-instance p4, Lokhttp3/internal/http2/Header;

    invoke-direct {p4, p2, p3}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-virtual {p0, p4}, Lokhttp3/internal/http2/Hpack$Reader;->d(Lokhttp3/internal/http2/Header;)V

    goto :goto_0

    :cond_4
    and-int/lit8 v1, p2, 0x40

    if-ne v1, v0, :cond_5

    const/16 p2, 0x3f

    invoke-virtual {p0, p3, p2}, Lokhttp3/internal/http2/Hpack$Reader;->f(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, p2}, Lokhttp3/internal/http2/Hpack$Reader;->c(I)Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p0}, Lokhttp3/internal/http2/Hpack$Reader;->e()Lokio/ByteString;

    move-result-object p3

    new-instance p4, Lokhttp3/internal/http2/Header;

    invoke-direct {p4, p2, p3}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-virtual {p0, p4}, Lokhttp3/internal/http2/Hpack$Reader;->d(Lokhttp3/internal/http2/Header;)V

    goto/16 :goto_0

    :cond_5
    and-int/lit8 p2, p2, 0x20

    const/16 v0, 0x20

    if-ne p2, v0, :cond_8

    const/16 p2, 0x1f

    invoke-virtual {p0, p3, p2}, Lokhttp3/internal/http2/Hpack$Reader;->f(II)I

    move-result p2

    iput p2, p0, Lokhttp3/internal/http2/Hpack$Reader;->b:I

    if-ltz p2, :cond_7

    iget p3, p0, Lokhttp3/internal/http2/Hpack$Reader;->a:I

    if-gt p2, p3, :cond_7

    iget p3, p0, Lokhttp3/internal/http2/Hpack$Reader;->i:I

    if-ge p2, p3, :cond_0

    if-nez p2, :cond_6

    iget-object p2, p0, Lokhttp3/internal/http2/Hpack$Reader;->f:[Lokhttp3/internal/http2/Header;

    invoke-static {p4, p2}, Lkotlin/collections/ArraysKt;->t(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object p2, p0, Lokhttp3/internal/http2/Hpack$Reader;->f:[Lokhttp3/internal/http2/Header;

    array-length p2, p2

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lokhttp3/internal/http2/Hpack$Reader;->g:I

    const/4 p2, 0x0

    iput p2, p0, Lokhttp3/internal/http2/Hpack$Reader;->h:I

    iput p2, p0, Lokhttp3/internal/http2/Hpack$Reader;->i:I

    goto/16 :goto_0

    :cond_6
    sub-int/2addr p3, p2

    invoke-virtual {p0, p3}, Lokhttp3/internal/http2/Hpack$Reader;->b(I)I

    goto/16 :goto_0

    :cond_7
    const-string p1, "Invalid dynamic table size update "

    iget p0, p0, Lokhttp3/internal/http2/Hpack$Reader;->b:I

    invoke-static {p0, p1}, Lmt;->e(ILjava/lang/String;)V

    return-object p4

    :cond_8
    const/16 p2, 0x10

    if-eq p3, p2, :cond_a

    if-nez p3, :cond_9

    goto :goto_1

    :cond_9
    const/16 p2, 0xf

    invoke-virtual {p0, p3, p2}, Lokhttp3/internal/http2/Hpack$Reader;->f(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, p2}, Lokhttp3/internal/http2/Hpack$Reader;->c(I)Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p0}, Lokhttp3/internal/http2/Hpack$Reader;->e()Lokio/ByteString;

    move-result-object p3

    new-instance p4, Lokhttp3/internal/http2/Header;

    invoke-direct {p4, p2, p3}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-virtual {p0, p4}, Lokhttp3/internal/http2/Hpack$Reader;->a(Lokhttp3/internal/http2/Header;)V

    goto/16 :goto_0

    :cond_a
    :goto_1
    sget-object p2, Lokhttp3/internal/http2/Hpack;->a:[Lokhttp3/internal/http2/Header;

    invoke-virtual {p0}, Lokhttp3/internal/http2/Hpack$Reader;->e()Lokio/ByteString;

    move-result-object p2

    invoke-static {p2}, Lokhttp3/internal/http2/Hpack;->a(Lokio/ByteString;)V

    invoke-virtual {p0}, Lokhttp3/internal/http2/Hpack$Reader;->e()Lokio/ByteString;

    move-result-object p3

    new-instance p4, Lokhttp3/internal/http2/Header;

    invoke-direct {p4, p2, p3}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-virtual {p0, p4}, Lokhttp3/internal/http2/Hpack$Reader;->a(Lokhttp3/internal/http2/Header;)V

    goto/16 :goto_0

    :cond_b
    const-string p0, "index == 0"

    invoke-static {p0}, Laz;->o(Ljava/lang/String;)V

    return-object p4

    :cond_c
    iget-object p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->c:Ljava/util/ArrayList;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->y0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const-wide/16 p3, 0x0

    iput-wide p3, p0, Lokhttp3/internal/http2/Hpack$Reader;->d:J

    return-object p2
.end method

.method public final g(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;I)V
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/http2/Http2Reader;->b:Lokio/BufferedSource;

    invoke-interface {p0}, Lokio/BufferedSource;->readInt()I

    invoke-interface {p0}, Lokio/BufferedSource;->readByte()B

    sget-object p0, Lokhttp3/internal/_UtilCommonKt;->a:[B

    return-void
.end method
