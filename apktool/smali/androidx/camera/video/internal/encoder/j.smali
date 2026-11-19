.class public final synthetic Landroidx/camera/video/internal/encoder/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;

.field public final synthetic c:Landroid/media/MediaCodec$BufferInfo;

.field public final synthetic d:Landroid/media/MediaCodec;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;Landroid/media/MediaCodec$BufferInfo;Landroid/media/MediaCodec;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/internal/encoder/j;->b:Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;

    iput-object p2, p0, Landroidx/camera/video/internal/encoder/j;->c:Landroid/media/MediaCodec$BufferInfo;

    iput-object p3, p0, Landroidx/camera/video/internal/encoder/j;->d:Landroid/media/MediaCodec;

    iput p4, p0, Landroidx/camera/video/internal/encoder/j;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/camera/video/internal/encoder/j;->b:Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;

    iget-object v2, v0, Landroidx/camera/video/internal/encoder/j;->c:Landroid/media/MediaCodec$BufferInfo;

    iget-object v3, v0, Landroidx/camera/video/internal/encoder/j;->d:Landroid/media/MediaCodec;

    iget v0, v0, Landroidx/camera/video/internal/encoder/j;->e:I

    iget-boolean v4, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->j:Z

    iget-object v5, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->l:Landroidx/camera/video/internal/encoder/EncoderImpl;

    if-eqz v4, :cond_0

    iget-object v0, v5, Landroidx/camera/video/internal/encoder/EncoderImpl;->a:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    return-void

    :cond_0
    iget-object v4, v5, Landroidx/camera/video/internal/encoder/EncoderImpl;->w:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    const-string v0, "Unknown state: "

    iget-object v1, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->l:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v1, v1, Landroidx/camera/video/internal/encoder/EncoderImpl;->w:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    invoke-static {v1, v0}, Lct0;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v4, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->l:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v4, v4, Landroidx/camera/video/internal/encoder/EncoderImpl;->b:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->l:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v6, v5, Landroidx/camera/video/internal/encoder/EncoderImpl;->u:Landroidx/camera/video/internal/encoder/EncoderCallback;

    iget-object v7, v5, Landroidx/camera/video/internal/encoder/EncoderImpl;->v:Ljava/util/concurrent/Executor;

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-boolean v4, v5, Landroidx/camera/video/internal/encoder/EncoderImpl;->c:Z

    if-eqz v4, :cond_1

    invoke-virtual {v5}, Landroidx/camera/video/internal/encoder/EncoderImpl;->i()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->l:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-wide v8, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v4, v8, v9}, Landroidx/camera/video/internal/encoder/EncoderImpl;->r(J)J

    move-result-wide v4

    iput-wide v4, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    :cond_1
    iget-boolean v4, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->c:Z

    const/4 v5, 0x0

    const/4 v8, 0x1

    if-nez v4, :cond_2

    iput-boolean v8, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->c:Z

    :try_start_1
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Liw;

    invoke-direct {v4, v6, v5}, Liw;-><init>(Landroidx/camera/video/internal/encoder/EncoderCallback;I)V

    invoke-interface {v7, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    iget-object v4, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->l:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v4, v4, Landroidx/camera/video/internal/encoder/EncoderImpl;->a:Ljava/lang/String;

    invoke-static {v4}, Landroidx/camera/core/Logger;->b(Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget-boolean v4, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->e:Z

    const/4 v9, 0x3

    if-eqz v4, :cond_3

    iget-object v3, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->l:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v3, v3, Landroidx/camera/video/internal/encoder/EncoderImpl;->a:Ljava/lang/String;

    invoke-static {v9, v3}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    goto/16 :goto_5

    :cond_3
    iget v4, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gtz v4, :cond_4

    iget-object v3, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->l:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v3, v3, Landroidx/camera/video/internal/encoder/EncoderImpl;->a:Ljava/lang/String;

    invoke-static {v9, v3}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    goto/16 :goto_5

    :cond_4
    iget v4, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_5

    iget-object v3, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->l:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v3, v3, Landroidx/camera/video/internal/encoder/EncoderImpl;->a:Ljava/lang/String;

    invoke-static {v9, v3}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    goto/16 :goto_5

    :cond_5
    iget-object v4, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->a:Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;

    if-eqz v4, :cond_6

    iget-wide v10, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v4, v10, v11}, Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;->a(J)J

    move-result-wide v10

    iput-wide v10, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    :cond_6
    iget-wide v10, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v12, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->f:J

    cmp-long v4, v10, v12

    if-gtz v4, :cond_7

    iget-object v3, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->l:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v3, v3, Landroidx/camera/video/internal/encoder/EncoderImpl;->a:Ljava/lang/String;

    invoke-static {v9, v3}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    goto/16 :goto_5

    :cond_7
    iput-wide v10, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->f:J

    iget-object v4, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->l:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v4, v4, Landroidx/camera/video/internal/encoder/EncoderImpl;->x:Landroid/util/Range;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v4

    iget-object v10, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->l:Landroidx/camera/video/internal/encoder/EncoderImpl;

    if-nez v4, :cond_9

    iget-object v3, v10, Landroidx/camera/video/internal/encoder/EncoderImpl;->a:Ljava/lang/String;

    invoke-static {v9, v3}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    iget-object v3, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->l:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-boolean v4, v3, Landroidx/camera/video/internal/encoder/EncoderImpl;->z:Z

    if-eqz v4, :cond_1b

    iget-wide v6, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v3, v3, Landroidx/camera/video/internal/encoder/EncoderImpl;->x:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v6, v3

    if-ltz v3, :cond_1b

    iget-object v3, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->l:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v3, v3, Landroidx/camera/video/internal/encoder/EncoderImpl;->B:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v3, :cond_8

    invoke-interface {v3, v8}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_8
    iget-object v3, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->l:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-wide v6, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Landroidx/camera/video/internal/encoder/EncoderImpl;->A:Ljava/lang/Long;

    iget-object v3, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->l:Landroidx/camera/video/internal/encoder/EncoderImpl;

    invoke-virtual {v3}, Landroidx/camera/video/internal/encoder/EncoderImpl;->p()V

    iget-object v3, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->l:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iput-boolean v5, v3, Landroidx/camera/video/internal/encoder/EncoderImpl;->z:Z

    goto/16 :goto_5

    :cond_9
    iget-wide v11, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v4, v10, Landroidx/camera/video/internal/encoder/EncoderImpl;->p:Ljava/util/ArrayDeque;

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_a

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Range;

    invoke-virtual {v13}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v14, v11, v14

    if-lez v14, :cond_a

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    iget-wide v14, v10, Landroidx/camera/video/internal/encoder/EncoderImpl;->y:J

    invoke-virtual {v13}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-virtual {v13}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    sub-long v16, v16, v18

    add-long v13, v16, v14

    iput-wide v13, v10, Landroidx/camera/video/internal/encoder/EncoderImpl;->y:J

    iget-object v15, v10, Landroidx/camera/video/internal/encoder/EncoderImpl;->a:Ljava/lang/String;

    invoke-static {v13, v14}, Landroidx/camera/video/internal/DebugUtils;->b(J)Ljava/lang/String;

    invoke-static {v9, v15}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    goto :goto_1

    :cond_a
    iget-object v4, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->l:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-wide v10, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v4, v4, Landroidx/camera/video/internal/encoder/EncoderImpl;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Range;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v13

    if-eqz v13, :cond_c

    move v4, v8

    goto :goto_2

    :cond_c
    invoke-virtual {v12}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v12, v10, v12

    if-gez v12, :cond_b

    :cond_d
    move v4, v5

    :goto_2
    iget-boolean v10, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->h:Z

    if-nez v10, :cond_13

    if-eqz v4, :cond_13

    iget-object v4, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->l:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v4, v4, Landroidx/camera/video/internal/encoder/EncoderImpl;->a:Ljava/lang/String;

    invoke-static {v9, v4}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    iput-boolean v8, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->h:Z

    iget-object v4, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->l:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v11, v4, Landroidx/camera/video/internal/encoder/EncoderImpl;->b:Ljava/lang/Object;

    monitor-enter v11

    :try_start_2
    iget-object v4, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->l:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v10, v4, Landroidx/camera/video/internal/encoder/EncoderImpl;->v:Ljava/util/concurrent/Executor;

    iget-object v4, v4, Landroidx/camera/video/internal/encoder/EncoderImpl;->u:Landroidx/camera/video/internal/encoder/EncoderCallback;

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Liw;

    invoke-direct {v11, v4, v5}, Liw;-><init>(Landroidx/camera/video/internal/encoder/EncoderCallback;I)V

    invoke-interface {v10, v11}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v4, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->l:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v10, v4, Landroidx/camera/video/internal/encoder/EncoderImpl;->w:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    sget-object v11, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;->PAUSED:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    if-ne v10, v11, :cond_11

    iget-boolean v4, v4, Landroidx/camera/video/internal/encoder/EncoderImpl;->c:Z

    if-nez v4, :cond_e

    const-class v4, Landroidx/camera/video/internal/compat/quirk/AudioEncoderIgnoresInputTimestampQuirk;

    sget-object v10, Landroidx/camera/video/internal/compat/quirk/DeviceQuirks;->a:Landroidx/camera/core/impl/Quirks;

    invoke-virtual {v10, v4}, Landroidx/camera/core/impl/Quirks;->b(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v4

    if-eqz v4, :cond_e

    goto :goto_3

    :cond_e
    iget-object v4, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->l:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-boolean v4, v4, Landroidx/camera/video/internal/encoder/EncoderImpl;->c:Z

    if-eqz v4, :cond_f

    const-class v4, Landroidx/camera/video/internal/compat/quirk/VideoEncoderSuspendDoesNotIncludeSuspendTimeQuirk;

    sget-object v10, Landroidx/camera/video/internal/compat/quirk/DeviceQuirks;->a:Landroidx/camera/core/impl/Quirks;

    invoke-virtual {v10, v4}, Landroidx/camera/core/impl/Quirks;->b(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v4

    if-eqz v4, :cond_f

    goto :goto_3

    :cond_f
    iget-object v4, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->l:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v4, v4, Landroidx/camera/video/internal/encoder/EncoderImpl;->g:Landroidx/camera/video/internal/encoder/Encoder$EncoderInput;

    instance-of v10, v4, Landroidx/camera/video/internal/encoder/EncoderImpl$ByteBufferInput;

    if-eqz v10, :cond_10

    check-cast v4, Landroidx/camera/video/internal/encoder/EncoderImpl$ByteBufferInput;

    invoke-virtual {v4, v5}, Landroidx/camera/video/internal/encoder/EncoderImpl$ByteBufferInput;->f(Z)V

    :cond_10
    iget-object v4, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->l:Landroidx/camera/video/internal/encoder/EncoderImpl;

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    const-string v11, "drop-input-frames"

    invoke-virtual {v10, v11, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v11, v4, Landroidx/camera/video/internal/encoder/EncoderImpl;->a:Ljava/lang/String;

    invoke-static {v9, v11}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    iget-object v4, v4, Landroidx/camera/video/internal/encoder/EncoderImpl;->f:Landroid/media/MediaCodec;

    invoke-virtual {v4, v10}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    :cond_11
    :goto_3
    iget-object v4, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->l:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-wide v10, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, v4, Landroidx/camera/video/internal/encoder/EncoderImpl;->A:Ljava/lang/Long;

    iget-object v4, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->l:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-boolean v10, v4, Landroidx/camera/video/internal/encoder/EncoderImpl;->z:Z

    if-eqz v10, :cond_15

    iget-object v4, v4, Landroidx/camera/video/internal/encoder/EncoderImpl;->B:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v4, :cond_12

    invoke-interface {v4, v8}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_12
    iget-object v4, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->l:Landroidx/camera/video/internal/encoder/EncoderImpl;

    invoke-virtual {v4}, Landroidx/camera/video/internal/encoder/EncoderImpl;->p()V

    iget-object v4, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->l:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iput-boolean v5, v4, Landroidx/camera/video/internal/encoder/EncoderImpl;->z:Z

    goto :goto_4

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_13
    if-eqz v10, :cond_15

    if-nez v4, :cond_15

    iget-object v4, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->l:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v4, v4, Landroidx/camera/video/internal/encoder/EncoderImpl;->a:Ljava/lang/String;

    invoke-static {v9, v4}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    iput-boolean v5, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->h:Z

    iget-object v4, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->l:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-boolean v4, v4, Landroidx/camera/video/internal/encoder/EncoderImpl;->c:Z

    if-eqz v4, :cond_15

    iget v4, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v4, v8

    if-eqz v4, :cond_14

    goto :goto_4

    :cond_14
    iput-boolean v8, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->i:Z

    :cond_15
    :goto_4
    iget-boolean v4, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->h:Z

    iget-object v10, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->l:Landroidx/camera/video/internal/encoder/EncoderImpl;

    if-eqz v4, :cond_16

    iget-object v3, v10, Landroidx/camera/video/internal/encoder/EncoderImpl;->a:Ljava/lang/String;

    invoke-static {v9, v3}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    goto :goto_5

    :cond_16
    iget-wide v11, v10, Landroidx/camera/video/internal/encoder/EncoderImpl;->y:J

    const-wide/16 v13, 0x0

    cmp-long v4, v11, v13

    move-wide v15, v13

    iget-wide v13, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    if-lez v4, :cond_17

    sub-long/2addr v13, v11

    :cond_17
    iget-wide v11, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->g:J

    cmp-long v4, v13, v11

    if-gtz v4, :cond_18

    iget-object v3, v10, Landroidx/camera/video/internal/encoder/EncoderImpl;->a:Ljava/lang/String;

    invoke-static {v9, v3}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    iget-object v3, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->l:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-boolean v3, v3, Landroidx/camera/video/internal/encoder/EncoderImpl;->c:Z

    if-eqz v3, :cond_1b

    iget v3, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v3, v8

    if-eqz v3, :cond_1b

    iput-boolean v8, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->i:Z

    goto :goto_5

    :cond_18
    iget-boolean v4, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->d:Z

    if-nez v4, :cond_19

    iget-boolean v11, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->i:Z

    if-nez v11, :cond_19

    iget-boolean v11, v10, Landroidx/camera/video/internal/encoder/EncoderImpl;->c:Z

    if-eqz v11, :cond_19

    iput-boolean v8, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->i:Z

    :cond_19
    iget-boolean v11, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->i:Z

    if-eqz v11, :cond_1c

    iget v11, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v11, v8

    if-eqz v11, :cond_1a

    iput-boolean v5, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->i:Z

    goto :goto_6

    :cond_1a
    iget-object v3, v10, Landroidx/camera/video/internal/encoder/EncoderImpl;->a:Ljava/lang/String;

    invoke-static {v9, v3}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    iget-object v3, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->l:Landroidx/camera/video/internal/encoder/EncoderImpl;

    invoke-virtual {v3}, Landroidx/camera/video/internal/encoder/EncoderImpl;->m()V

    :cond_1b
    :goto_5
    :try_start_4
    iget-object v3, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->l:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v3, v3, Landroidx/camera/video/internal/encoder/EncoderImpl;->f:Landroid/media/MediaCodec;

    invoke-virtual {v3, v0, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_4
    .catch Landroid/media/MediaCodec$CodecException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_9

    :catch_1
    move-exception v0

    iget-object v1, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->l:Landroidx/camera/video/internal/encoder/EncoderImpl;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v8, v2, v0}, Landroidx/camera/video/internal/encoder/EncoderImpl;->h(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    :cond_1c
    :goto_6
    if-nez v4, :cond_1d

    iput-boolean v8, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->d:Z

    iget-object v4, v10, Landroidx/camera/video/internal/encoder/EncoderImpl;->a:Ljava/lang/String;

    iget-object v10, v10, Landroidx/camera/video/internal/encoder/EncoderImpl;->q:Landroidx/camera/core/impl/Timebase;

    invoke-static {v10}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    invoke-static {v9, v4}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    :cond_1d
    iget-object v4, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->l:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-wide v9, v4, Landroidx/camera/video/internal/encoder/EncoderImpl;->y:J

    cmp-long v4, v9, v15

    iget-wide v11, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    if-lez v4, :cond_1e

    sub-long/2addr v11, v9

    :cond_1e
    move-wide/from16 v16, v11

    iget-wide v9, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v4, v9, v16

    if-nez v4, :cond_1f

    move-object v13, v2

    goto :goto_8

    :cond_1f
    iget-wide v9, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->g:J

    cmp-long v4, v16, v9

    if-lez v4, :cond_20

    move v4, v8

    goto :goto_7

    :cond_20
    move v4, v5

    :goto_7
    const/4 v9, 0x0

    invoke-static {v9, v4}, Landroidx/core/util/Preconditions;->f(Ljava/lang/String;Z)V

    new-instance v13, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v13}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iget v14, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v15, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget v4, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move/from16 v18, v4

    invoke-virtual/range {v13 .. v18}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    :goto_8
    iget-wide v9, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v9, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->g:J

    :try_start_5
    new-instance v4, Landroidx/camera/video/internal/encoder/EncodedDataImpl;

    invoke-direct {v4, v3, v0, v13}, Landroidx/camera/video/internal/encoder/EncodedDataImpl;-><init>(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V

    invoke-virtual {v1, v4, v6, v7}, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->b(Landroidx/camera/video/internal/encoder/EncodedDataImpl;Landroidx/camera/video/internal/encoder/EncoderCallback;Ljava/util/concurrent/Executor;)V
    :try_end_5
    .catch Landroid/media/MediaCodec$CodecException; {:try_start_5 .. :try_end_5} :catch_2

    :goto_9
    iget-boolean v0, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->e:Z

    if-nez v0, :cond_23

    sget-object v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->H:Landroid/util/Range;

    iget v0, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_21

    iget-boolean v0, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->k:Z

    if-eqz v0, :cond_22

    const-class v0, Landroidx/camera/video/internal/compat/quirk/PrematureEndOfStreamVideoQuirk;

    sget-object v3, Landroidx/camera/video/internal/compat/quirk/DeviceQuirks;->a:Landroidx/camera/core/impl/Quirks;

    invoke-virtual {v3, v0}, Landroidx/camera/core/impl/Quirks;->b(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v0

    if-eqz v0, :cond_22

    :cond_21
    iget-boolean v0, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->b:Z

    if-eqz v0, :cond_23

    iget-object v0, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->l:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-boolean v3, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->F:Z

    if-eqz v3, :cond_23

    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->x:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-lez v0, :cond_23

    :cond_22
    invoke-virtual {v1}, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->a()V

    :cond_23
    iget-boolean v0, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->k:Z

    if-eqz v0, :cond_24

    iput-boolean v5, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->k:Z

    goto :goto_a

    :catch_2
    move-exception v0

    iget-object v1, v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->l:Landroidx/camera/video/internal/encoder/EncoderImpl;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v8, v2, v0}, Landroidx/camera/video/internal/encoder/EncoderImpl;->h(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :cond_24
    :goto_a
    :pswitch_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
