.class public final synthetic Landroidx/camera/video/internal/encoder/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Landroidx/camera/video/internal/encoder/d;->b:I

    iput-object p1, p0, Landroidx/camera/video/internal/encoder/d;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/camera/video/internal/encoder/d;->d:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/camera/video/internal/encoder/d;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Landroidx/camera/video/internal/encoder/d;->b:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/camera/video/internal/encoder/d;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;

    iget-object v2, p0, Landroidx/camera/video/internal/encoder/d;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/Executor;

    iget-object p0, p0, Landroidx/camera/video/internal/encoder/d;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/video/internal/encoder/EncoderCallback;

    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->l:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v3, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->w:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    sget-object v4, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;->ERROR:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Liw;

    invoke-direct {v3, p0, v1}, Liw;-><init>(Landroidx/camera/video/internal/encoder/EncoderCallback;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->a:Ljava/lang/String;

    invoke-static {p0}, Landroidx/camera/core/Logger;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/d;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/video/internal/encoder/EncoderImpl$ByteBufferInput;

    iget-object v1, p0, Landroidx/camera/video/internal/encoder/d;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/camera/core/impl/Observable$Observer;

    iget-object p0, p0, Landroidx/camera/video/internal/encoder/d;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/Executor;

    iget-object v2, v0, Landroidx/camera/video/internal/encoder/EncoderImpl$ByteBufferInput;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl$ByteBufferInput;->b:Landroidx/camera/video/internal/BufferProvider$State;

    new-instance v2, Ljr;

    const/16 v3, 0xe

    invoke-direct {v2, v1, v0, v3}, Ljr;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {p0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/d;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v2, p0, Landroidx/camera/video/internal/encoder/d;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    iget-object p0, p0, Landroidx/camera/video/internal/encoder/d;->e:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    iget-object v3, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->w:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    sget-object v4, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;->ERROR:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    if-eq v3, v4, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x3

    if-nez v2, :cond_1

    iget-object v2, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->a:Ljava/lang/String;

    invoke-static {v3, v2}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    :cond_1
    iget-object v2, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->g:Landroidx/camera/video/internal/encoder/Encoder$EncoderInput;

    instance-of v2, v2, Landroidx/camera/video/internal/encoder/EncoderImpl$SurfaceInput;

    if-eqz v2, :cond_4

    iget-boolean v2, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->E:Z

    if-nez v2, :cond_4

    const-class v2, Landroidx/camera/video/internal/compat/quirk/StopCodecAfterSurfaceRemovalCrashMediaServerQuirk;

    sget-object v4, Landroidx/camera/video/internal/compat/quirk/DeviceQuirks;->a:Landroidx/camera/core/impl/Quirks;

    invoke-virtual {v4, v2}, Landroidx/camera/core/impl/Quirks;->b(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    iget-boolean v2, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->t:Z

    iget-object v4, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->a:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-static {v3, v4}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    iget-object v2, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->f:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V

    goto :goto_1

    :cond_3
    invoke-static {v3, v4}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    iget-object v2, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->f:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->flush()V

    :goto_1
    iput-boolean v1, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->D:Z

    goto :goto_3

    :cond_4
    :goto_2
    iget-object v1, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->a:Ljava/lang/String;

    invoke-static {v3, v1}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    iget-object v1, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->f:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    :cond_5
    :goto_3
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    iget-object p0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->w:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    sget-object v1, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;->PENDING_RELEASE:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    if-ne p0, v1, :cond_6

    invoke-virtual {v0}, Landroidx/camera/video/internal/encoder/EncoderImpl;->l()V

    goto :goto_4

    :cond_6
    iget-boolean v1, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->D:Z

    if-nez v1, :cond_7

    invoke-virtual {v0}, Landroidx/camera/video/internal/encoder/EncoderImpl;->n()V

    :cond_7
    sget-object v1, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;->CONFIGURED:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    invoke-virtual {v0, v1}, Landroidx/camera/video/internal/encoder/EncoderImpl;->o(Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;)V

    sget-object v1, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;->PENDING_START:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    if-eq p0, v1, :cond_8

    sget-object v1, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;->PENDING_START_PAUSED:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    if-ne p0, v1, :cond_9

    :cond_8
    invoke-virtual {v0}, Landroidx/camera/video/internal/encoder/EncoderImpl;->start()V

    sget-object v1, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;->PENDING_START_PAUSED:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    if-ne p0, v1, :cond_9

    invoke-virtual {v0}, Landroidx/camera/video/internal/encoder/EncoderImpl;->pause()V

    :cond_9
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
