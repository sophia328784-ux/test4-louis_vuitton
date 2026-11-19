.class Landroidx/camera/video/internal/audio/AudioSource$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/impl/utils/futures/FutureCallback<",
        "Landroidx/camera/video/internal/encoder/InputBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroidx/camera/video/internal/BufferProvider;

.field public final synthetic b:Landroidx/camera/video/internal/audio/AudioSource;


# direct methods
.method public constructor <init>(Landroidx/camera/video/internal/audio/AudioSource;Landroidx/camera/video/internal/BufferProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/internal/audio/AudioSource$2;->b:Landroidx/camera/video/internal/audio/AudioSource;

    iput-object p2, p0, Landroidx/camera/video/internal/audio/AudioSource$2;->a:Landroidx/camera/video/internal/BufferProvider;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource$2;->b:Landroidx/camera/video/internal/audio/AudioSource;

    iget-object v1, v0, Landroidx/camera/video/internal/audio/AudioSource;->l:Landroidx/camera/video/internal/BufferProvider;

    iget-object p0, p0, Landroidx/camera/video/internal/audio/AudioSource$2;->a:Landroidx/camera/video/internal/BufferProvider;

    if-eq v1, p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "AudioSource"

    const/4 v1, 0x3

    invoke-static {v1, p0}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    instance-of p0, p1, Ljava/lang/IllegalStateException;

    if-nez p0, :cond_1

    iget-object p0, v0, Landroidx/camera/video/internal/audio/AudioSource;->j:Ljava/util/concurrent/Executor;

    iget-object v0, v0, Landroidx/camera/video/internal/audio/AudioSource;->k:Landroidx/camera/video/internal/audio/AudioSource$AudioSourceCallback;

    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    new-instance v1, Lr6;

    const/4 v2, 0x7

    invoke-direct {v1, v0, p1, v2}, Lr6;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 12

    check-cast p1, Landroidx/camera/video/internal/encoder/InputBuffer;

    iget-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource$2;->b:Landroidx/camera/video/internal/audio/AudioSource;

    iget-boolean v1, v0, Landroidx/camera/video/internal/audio/AudioSource;->i:Z

    iget-object v2, v0, Landroidx/camera/video/internal/audio/AudioSource;->e:Landroidx/camera/video/internal/audio/SilentAudioStream;

    iget-object v3, v0, Landroidx/camera/video/internal/audio/AudioSource;->d:Landroidx/camera/video/internal/audio/BufferedAudioStream;

    if-eqz v1, :cond_a

    iget-object v1, v0, Landroidx/camera/video/internal/audio/AudioSource;->l:Landroidx/camera/video/internal/BufferProvider;

    iget-object p0, p0, Landroidx/camera/video/internal/audio/AudioSource$2;->a:Landroidx/camera/video/internal/BufferProvider;

    if-eq v1, p0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-boolean p0, v0, Landroidx/camera/video/internal/audio/AudioSource;->o:Z

    const/4 v1, 0x5

    const-string v4, "AudioSource"

    const/4 v5, 0x0

    if-eqz p0, :cond_2

    iget-wide v6, v0, Landroidx/camera/video/internal/audio/AudioSource;->p:J

    const-wide/16 v8, 0x0

    cmp-long p0, v6, v8

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    move p0, v5

    :goto_0
    const/4 v6, 0x0

    invoke-static {v6, p0}, Landroidx/core/util/Preconditions;->f(Ljava/lang/String;Z)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    iget-wide v9, v0, Landroidx/camera/video/internal/audio/AudioSource;->p:J

    sub-long/2addr v7, v9

    iget-wide v9, v0, Landroidx/camera/video/internal/audio/AudioSource;->f:J

    cmp-long p0, v7, v9

    if-ltz p0, :cond_2

    iget-boolean p0, v0, Landroidx/camera/video/internal/audio/AudioSource;->o:Z

    invoke-static {v6, p0}, Landroidx/core/util/Preconditions;->f(Ljava/lang/String;Z)V

    :try_start_0
    invoke-virtual {v3}, Landroidx/camera/video/internal/audio/BufferedAudioStream;->start()V

    const/4 p0, 0x3

    invoke-static {p0, v4}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    invoke-virtual {v2}, Landroidx/camera/video/internal/audio/SilentAudioStream;->stop()V

    iput-boolean v5, v0, Landroidx/camera/video/internal/audio/AudioSource;->o:Z
    :try_end_0
    .catch Landroidx/camera/video/internal/audio/AudioStream$AudioStreamException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-static {v1, v4}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iput-wide v6, v0, Landroidx/camera/video/internal/audio/AudioSource;->p:J

    :cond_2
    :goto_1
    iget-boolean p0, v0, Landroidx/camera/video/internal/audio/AudioSource;->o:Z

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move-object v2, v3

    :goto_2
    invoke-interface {p1}, Landroidx/camera/video/internal/encoder/InputBuffer;->N()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-interface {v2, p0}, Landroidx/camera/video/internal/audio/AudioStream;->read(Ljava/nio/ByteBuffer;)Landroidx/camera/video/internal/audio/AudioStream$PacketInfo;

    move-result-object v2

    check-cast v2, Landroidx/camera/video/internal/audio/AutoValue_AudioStream_PacketInfo;

    iget-wide v6, v2, Landroidx/camera/video/internal/audio/AutoValue_AudioStream_PacketInfo;->b:J

    iget v2, v2, Landroidx/camera/video/internal/audio/AutoValue_AudioStream_PacketInfo;->a:I

    if-lez v2, :cond_9

    iget-boolean v1, v0, Landroidx/camera/video/internal/audio/AudioSource;->r:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Landroidx/camera/video/internal/audio/AudioSource;->s:[B

    if-eqz v1, :cond_4

    array-length v1, v1

    if-ge v1, v2, :cond_5

    :cond_4
    new-array v1, v2, [B

    iput-object v1, v0, Landroidx/camera/video/internal/audio/AudioSource;->s:[B

    :cond_5
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    iget-object v3, v0, Landroidx/camera/video/internal/audio/AudioSource;->s:[B

    invoke-virtual {p0, v3, v5, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    :cond_6
    iget-object v1, v0, Landroidx/camera/video/internal/audio/AudioSource;->j:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_8

    iget-wide v3, v0, Landroidx/camera/video/internal/audio/AudioSource;->u:J

    sub-long v3, v6, v3

    const-wide/16 v8, 0xc8

    cmp-long v3, v3, v8

    if-ltz v3, :cond_8

    iput-wide v6, v0, Landroidx/camera/video/internal/audio/AudioSource;->u:J

    iget-object v3, v0, Landroidx/camera/video/internal/audio/AudioSource;->k:Landroidx/camera/video/internal/audio/AudioSource$AudioSourceCallback;

    iget v4, v0, Landroidx/camera/video/internal/audio/AudioSource;->v:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_8

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v4

    const-wide/16 v8, 0x0

    :goto_3
    invoke-virtual {v4}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v4}, Ljava/nio/ShortBuffer;->get()S

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-double v10, v5

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    goto :goto_3

    :cond_7
    const-wide v4, 0x40dfffc000000000L    # 32767.0

    div-double/2addr v8, v4

    iput-wide v8, v0, Landroidx/camera/video/internal/audio/AudioSource;->t:D

    if-eqz v1, :cond_8

    if-eqz v3, :cond_8

    new-instance v4, Lr6;

    const/4 v5, 0x6

    invoke-direct {v4, v0, v3, v5}, Lr6;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v1, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_8
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const-wide/16 v1, 0x3e8

    div-long/2addr v6, v1

    invoke-interface {p1, v6, v7}, Landroidx/camera/video/internal/encoder/InputBuffer;->b(J)V

    invoke-interface {p1}, Landroidx/camera/video/internal/encoder/InputBuffer;->a()Z

    goto :goto_4

    :cond_9
    invoke-static {v1, v4}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    invoke-interface {p1}, Landroidx/camera/video/internal/encoder/InputBuffer;->cancel()Z

    :goto_4
    iget-object p0, v0, Landroidx/camera/video/internal/audio/AudioSource;->l:Landroidx/camera/video/internal/BufferProvider;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Landroidx/camera/video/internal/BufferProvider;->e()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    iget-object p1, v0, Landroidx/camera/video/internal/audio/AudioSource;->m:Landroidx/camera/core/impl/utils/futures/FutureCallback;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Landroidx/camera/video/internal/audio/AudioSource;->a:Ljava/util/concurrent/Executor;

    invoke-static {p0, p1, v0}, Landroidx/camera/core/impl/utils/futures/Futures;->a(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_a
    :goto_5
    invoke-interface {p1}, Landroidx/camera/video/internal/encoder/InputBuffer;->cancel()Z

    return-void
.end method
