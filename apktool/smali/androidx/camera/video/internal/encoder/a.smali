.class public final synthetic Landroidx/camera/video/internal/encoder/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Landroidx/camera/video/internal/encoder/a;->b:I

    iput-object p1, p0, Landroidx/camera/video/internal/encoder/a;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/camera/video/internal/encoder/a;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Landroidx/camera/video/internal/encoder/a;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/camera/video/internal/encoder/a;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/video/internal/encoder/EncoderCallback;

    iget-object p0, p0, Landroidx/camera/video/internal/encoder/a;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/video/internal/encoder/EncodedDataImpl;

    sget v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->m:I

    invoke-interface {v0, p0}, Landroidx/camera/video/internal/encoder/EncoderCallback;->b(Landroidx/camera/video/internal/encoder/EncodedData;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/a;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/video/internal/encoder/EncoderCallback;

    iget-object p0, p0, Landroidx/camera/video/internal/encoder/a;->d:Ljava/lang/Object;

    check-cast p0, Landroid/media/MediaFormat;

    sget v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->m:I

    new-instance v1, Landroidx/camera/video/internal/encoder/f;

    invoke-direct {v1, p0, v2}, Landroidx/camera/video/internal/encoder/f;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Landroidx/camera/video/internal/encoder/EncoderCallback;->c(Landroidx/camera/video/internal/encoder/f;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/a;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;

    iget-object p0, p0, Landroidx/camera/video/internal/encoder/a;->d:Ljava/lang/Object;

    check-cast p0, Landroid/media/MediaFormat;

    iget-boolean v2, v0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->j:Z

    iget-object v3, v0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->l:Landroidx/camera/video/internal/encoder/EncoderImpl;

    const/4 v4, 0x5

    if-eqz v2, :cond_0

    iget-object p0, v3, Landroidx/camera/video/internal/encoder/EncoderImpl;->a:Ljava/lang/String;

    invoke-static {v4, p0}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    goto :goto_0

    :cond_0
    iget-object v2, v3, Landroidx/camera/video/internal/encoder/EncoderImpl;->w:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    const-string p0, "Unknown state: "

    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->l:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->w:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    invoke-static {v0, p0}, Lct0;->o(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v2, v0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->l:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-boolean v3, v2, Landroidx/camera/video/internal/encoder/EncoderImpl;->c:Z

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroidx/camera/video/internal/encoder/EncoderImpl;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "time-lapse-enable"

    invoke-virtual {p0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "time-lapse-fps"

    iget-object v2, v0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->l:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v2, v2, Landroidx/camera/video/internal/encoder/EncoderImpl;->d:Landroidx/camera/video/internal/encoder/EncoderConfig;

    check-cast v2, Landroidx/camera/video/internal/encoder/VideoEncoderConfig;

    check-cast v2, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;

    iget v2, v2, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig;->g:I

    invoke-virtual {p0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_1
    iget-object v1, v0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->l:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v1, v1, Landroidx/camera/video/internal/encoder/EncoderImpl;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->l:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v3, v2, Landroidx/camera/video/internal/encoder/EncoderImpl;->u:Landroidx/camera/video/internal/encoder/EncoderCallback;

    iget-object v2, v2, Landroidx/camera/video/internal/encoder/EncoderImpl;->v:Ljava/util/concurrent/Executor;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Landroidx/camera/video/internal/encoder/a;

    invoke-direct {v1, v3, p0, v4}, Landroidx/camera/video/internal/encoder/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    iget-object p0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->l:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object p0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl;->a:Ljava/lang/String;

    invoke-static {p0}, Landroidx/camera/core/Logger;->b(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :goto_0
    :pswitch_3
    return-void

    :pswitch_4
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/a;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;

    iget-object p0, p0, Landroidx/camera/video/internal/encoder/a;->d:Ljava/lang/Object;

    check-cast p0, Landroid/media/MediaCodec$CodecException;

    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->l:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v2, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->w:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    packed-switch v2, :pswitch_data_2

    const-string p0, "Unknown state: "

    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->w:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    invoke-static {v0, p0}, Lct0;->o(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Landroidx/camera/video/internal/encoder/EncoderImpl;->h(ILjava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    :pswitch_6
    return-void

    :pswitch_7
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/a;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/video/internal/encoder/EncoderImpl$ByteBufferInput;

    iget-object p0, p0, Landroidx/camera/video/internal/encoder/a;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/core/impl/Observable$Observer;

    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl$ByteBufferInput;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_8
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object p0, p0, Landroidx/camera/video/internal/encoder/a;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;

    sget-object v1, Landroidx/camera/video/internal/encoder/EncoderImpl;->H:Landroid/util/Range;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/camera/video/internal/encoder/b;

    invoke-direct {v1, p0, v2}, Landroidx/camera/video/internal/encoder/b;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_9
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/a;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object p0, p0, Landroidx/camera/video/internal/encoder/a;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/video/internal/encoder/EncoderImpl$2;

    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->n:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method
