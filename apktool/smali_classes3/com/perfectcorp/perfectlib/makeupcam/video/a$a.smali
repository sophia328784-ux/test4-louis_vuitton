.class final Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/video/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/media/AudioRecord;

.field private b:Landroid/media/MediaCodec;

.field private c:[Ljava/nio/ByteBuffer;

.field private d:[Ljava/nio/ByteBuffer;

.field private final e:Lcom/perfectcorp/perfectlib/makeupcam/video/a$d;

.field private f:I

.field private g:J

.field private h:Z

.field private final i:Lcom/perfectcorp/perfectlib/makeupcam/video/a$f;

.field private j:Z

.field private synthetic k:Lcom/perfectcorp/perfectlib/makeupcam/video/a;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/video/a;Lcom/perfectcorp/perfectlib/makeupcam/video/a$d;Lcom/perfectcorp/perfectlib/makeupcam/video/a$f;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->k:Lcom/perfectcorp/perfectlib/makeupcam/video/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->h:Z

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->e:Lcom/perfectcorp/perfectlib/makeupcam/video/a$d;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->i:Lcom/perfectcorp/perfectlib/makeupcam/video/a$f;

    return-void
.end method

.method private a(IIIJ)I
    .locals 3

    invoke-static {p1, p2, p3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result p0

    const/16 v0, 0x10

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    :goto_0
    invoke-static {p0, p2, p1, p3}, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->a(IIII)J

    move-result-wide p1

    move p3, p0

    move-wide v0, p1

    :goto_1
    cmp-long v2, v0, p4

    if-gez v2, :cond_1

    add-int/2addr p3, p0

    add-long/2addr v0, p1

    goto :goto_1

    :cond_1
    return p3
.end method

.method private static a(IIII)J
    .locals 2

    .line 25
    int-to-double v0, p0

    mul-int/2addr p1, p2

    const/4 p0, 0x2

    if-ne p3, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    mul-int/2addr p1, p0

    int-to-double p0, p1

    div-double/2addr v0, p0

    const-wide p0, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, p0

    double-to-long p0, v0

    return-wide p0
.end method

.method public static synthetic a(Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->j:Z

    return p0
.end method

.method private b()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->a:Landroid/media/AudioRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->a:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->a:Landroid/media/AudioRecord;

    :cond_0
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->b:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->b:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    const-string v0, "LiveRecordingFilter"

    const-string v1, "stopRecording audio"

    invoke-static {v0, v1, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private c()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/perfectcorp/perfectlib/makeupcam/video/a$b;
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    iget-boolean v5, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->h:Z

    if-eqz v5, :cond_b

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->k:Lcom/perfectcorp/perfectlib/makeupcam/video/a;

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    iput-boolean v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->h:Z

    :cond_1
    iget-object v5, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->b:Landroid/media/MediaCodec;

    const-wide/16 v7, 0x3e8

    invoke-virtual {v5, v7, v8}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v10

    const/4 v5, -0x2

    const/4 v9, -0x3

    const/4 v11, 0x1

    if-ltz v10, :cond_3

    iget-object v12, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->c:[Ljava/nio/ByteBuffer;

    aget-object v12, v12, v10

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_2
    iget-object v13, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->a:Landroid/media/AudioRecord;

    iget v14, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->f:I

    invoke-virtual {v13, v12, v14}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v13

    if-eq v13, v9, :cond_3

    if-eq v13, v5, :cond_3

    iget-object v14, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->k:Lcom/perfectcorp/perfectlib/makeupcam/video/a;

    iget-object v14, v14, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v14

    if-eq v14, v11, :cond_2

    iget-object v14, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->k:Lcom/perfectcorp/perfectlib/makeupcam/video/a;

    iget-boolean v14, v14, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->F:Z

    if-eqz v14, :cond_2

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->e:Lcom/perfectcorp/perfectlib/makeupcam/video/a$d;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, 0xac44

    invoke-static {v13, v11, v4, v6}, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->a(IIII)J

    move-result-wide v16

    move v4, v9

    iget-object v9, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->b:Landroid/media/MediaCodec;

    move v12, v13

    iget-wide v13, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->g:J

    const/4 v15, 0x0

    move v6, v11

    const/4 v11, 0x0

    invoke-virtual/range {v9 .. v15}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iget-wide v9, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->g:J

    add-long v9, v9, v16

    iput-wide v9, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->g:J

    move v9, v4

    move v4, v6

    move v11, v4

    :cond_3
    new-instance v6, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v6}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    move v10, v3

    :cond_4
    iget-object v12, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->b:Landroid/media/MediaCodec;

    invoke-virtual {v12, v6, v7, v8}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_5

    move v10, v11

    goto :goto_1

    :cond_5
    if-ne v12, v9, :cond_6

    iget-object v12, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->b:Landroid/media/MediaCodec;

    invoke-virtual {v12}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v12

    iput-object v12, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->d:[Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_6
    if-ne v12, v5, :cond_7

    iget-object v12, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->k:Lcom/perfectcorp/perfectlib/makeupcam/video/a;

    iget-object v12, v12, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->p:Lcom/perfectcorp/perfectlib/makeupcam/video/a$i;

    iget-object v13, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->b:Landroid/media/MediaCodec;

    invoke-virtual {v13}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v13

    iget-object v12, v12, Lcom/perfectcorp/perfectlib/makeupcam/video/a$i;->a:Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;

    const/4 v14, 0x5

    invoke-virtual {v12, v14, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_7
    if-ltz v12, :cond_9

    iget v13, v6, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v14, v13, 0x4

    if-nez v14, :cond_0

    and-int/lit8 v13, v13, 0x2

    if-eqz v13, :cond_8

    iput v3, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    :cond_8
    iget v13, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v13, :cond_0

    iget-object v13, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->d:[Ljava/nio/ByteBuffer;

    aget-object v13, v13, v12

    iget v14, v6, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v14, v6, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v15, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v14, v15

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    new-instance v14, Lcom/perfectcorp/perfectlib/makeupcam/video/a$k;

    invoke-direct {v14, v13, v6}, Lcom/perfectcorp/perfectlib/makeupcam/video/a$k;-><init>(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    iget-object v13, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->k:Lcom/perfectcorp/perfectlib/makeupcam/video/a;

    iget-object v13, v13, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->p:Lcom/perfectcorp/perfectlib/makeupcam/video/a$i;

    iget-object v13, v13, Lcom/perfectcorp/perfectlib/makeupcam/video/a$i;->a:Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;

    const/4 v15, 0x4

    invoke-virtual {v13, v15, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v13, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->b:Landroid/media/MediaCodec;

    invoke-virtual {v13, v12, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :cond_9
    :goto_1
    if-eqz v10, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    const-wide/16 v7, 0xbb8

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->k:Lcom/perfectcorp/perfectlib/makeupcam/video/a;

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->q:Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;

    invoke-virtual {v5}, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->a()Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v4, :cond_a

    goto/16 :goto_0

    :cond_a
    iput-boolean v11, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->j:Z

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$b;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0

    :cond_b
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 26
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->a:Landroid/media/AudioRecord;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final run()V
    .locals 13

    const-string v0, "audio/mp4a-latm"

    :try_start_0
    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->e:Lcom/perfectcorp/perfectlib/makeupcam/video/a$d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Lcom/perfectcorp/perfectlib/makeupcam/video/a$b; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v5, 0x2

    const-wide/16 v6, 0x4e20

    const v3, 0xac44

    const/16 v4, 0x10

    move-object v2, p0

    :try_start_1
    invoke-direct/range {v2 .. v7}, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->a(IIIJ)I

    move-result p0
    :try_end_1
    .catch Lcom/perfectcorp/perfectlib/makeupcam/video/a$b; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    :try_start_2
    iput p0, v1, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->f:I

    iget-object p0, v1, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->e:Lcom/perfectcorp/perfectlib/makeupcam/video/a$d;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x2

    const-wide/32 v5, 0x13880

    const v2, 0xac44

    const/16 v3, 0x10

    invoke-direct/range {v1 .. v6}, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->a(IIIJ)I

    move-result v12

    new-instance v7, Landroid/media/AudioRecord;

    iget-object p0, v1, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->e:Lcom/perfectcorp/perfectlib/makeupcam/video/a$d;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v10, 0x10

    const/4 v11, 0x2

    const/4 v8, 0x1

    const v9, 0xac44

    invoke-direct/range {v7 .. v12}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v7, v1, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->a:Landroid/media/AudioRecord;

    iget-object p0, v1, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->e:Lcom/perfectcorp/perfectlib/makeupcam/video/a$d;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p0

    iput-object p0, v1, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->b:Landroid/media/MediaCodec;

    new-instance p0, Landroid/media/MediaFormat;

    invoke-direct {p0}, Landroid/media/MediaFormat;-><init>()V

    const-string v2, "mime"

    iget-object v3, v1, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->e:Lcom/perfectcorp/perfectlib/makeupcam/video/a$d;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v2, v0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bitrate"

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->e:Lcom/perfectcorp/perfectlib/makeupcam/video/a$d;

    iget v2, v2, Lcom/perfectcorp/perfectlib/makeupcam/video/a$d;->c:I

    invoke-virtual {p0, v0, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "sample-rate"

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->e:Lcom/perfectcorp/perfectlib/makeupcam/video/a$d;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0xac44

    invoke-virtual {p0, v0, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "channel-count"

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "aac-profile"

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "max-input-size"

    iget v3, v1, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->f:I

    invoke-virtual {p0, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v0, v1, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->b:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v3, v3, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object p0, v1, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->b:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->start()V

    iget-object p0, v1, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->b:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p0

    iput-object p0, v1, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->c:[Ljava/nio/ByteBuffer;

    iget-object p0, v1, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->b:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p0

    iput-object p0, v1, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->d:[Ljava/nio/ByteBuffer;

    iget-object p0, v1, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->a:Landroid/media/AudioRecord;

    invoke-virtual {p0}, Landroid/media/AudioRecord;->startRecording()V

    invoke-direct {v1}, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->c()V
    :try_end_2
    .catch Lcom/perfectcorp/perfectlib/makeupcam/video/a$b; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct {v1}, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->b()V

    return-void

    :catchall_0
    move-exception v0

    :goto_0
    move-object p0, v0

    goto :goto_7

    :catch_0
    move-exception v0

    :goto_1
    move-object p0, v0

    goto :goto_3

    :catch_1
    move-exception v0

    :goto_2
    move-object p0, v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v1, p0

    goto :goto_0

    :catch_4
    move-exception v0

    move-object v1, p0

    goto :goto_1

    :catch_5
    move-exception v0

    move-object v1, p0

    goto :goto_2

    :goto_3
    :try_start_3
    iget-object v0, v1, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->i:Lcom/perfectcorp/perfectlib/makeupcam/video/a$f;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->a:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    iget-object v0, v1, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->i:Lcom/perfectcorp/perfectlib/makeupcam/video/a$f;

    invoke-interface {v0, p0}, Lcom/perfectcorp/perfectlib/makeupcam/video/a$f;->e(Ljava/lang/Exception;)V

    goto :goto_5

    :cond_1
    :goto_4
    iget-object v0, v1, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->i:Lcom/perfectcorp/perfectlib/makeupcam/video/a$f;

    invoke-interface {v0, p0}, Lcom/perfectcorp/perfectlib/makeupcam/video/a$f;->b(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :goto_5
    invoke-direct {v1}, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->b()V

    return-void

    :goto_6
    :try_start_4
    iget-object v0, v1, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->i:Lcom/perfectcorp/perfectlib/makeupcam/video/a$f;

    if-eqz v0, :cond_3

    invoke-interface {v0, p0}, Lcom/perfectcorp/perfectlib/makeupcam/video/a$f;->b(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    invoke-direct {v1}, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->b()V

    return-void

    :goto_7
    invoke-direct {v1}, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->b()V

    throw p0
.end method
