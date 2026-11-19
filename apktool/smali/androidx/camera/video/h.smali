.class public final synthetic Landroidx/camera/video/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Landroidx/camera/video/h;->b:I

    iput-object p1, p0, Landroidx/camera/video/h;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Landroidx/camera/video/h;->b:I

    iget-object p0, p0, Landroidx/camera/video/h;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/camera/video/VideoEncoderSession;

    iget-object p0, p0, Landroidx/camera/video/VideoEncoderSession;->k:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->b(Ljava/lang/Object;)Z

    return-void

    :pswitch_0
    check-cast p0, Landroidx/camera/video/Recorder$SetupVideoTask$1;

    iget-object p0, p0, Landroidx/camera/video/Recorder$SetupVideoTask$1;->b:Landroidx/camera/video/Recorder$SetupVideoTask;

    iget-boolean v0, p0, Landroidx/camera/video/Recorder$SetupVideoTask;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x3

    const-string v1, "Recorder"

    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    iget-object v2, p0, Landroidx/camera/video/Recorder$SetupVideoTask;->a:Landroidx/camera/core/SurfaceRequest;

    iget-object v3, p0, Landroidx/camera/video/Recorder$SetupVideoTask;->b:Landroidx/camera/core/impl/Timebase;

    iget-object v4, p0, Landroidx/camera/video/Recorder$SetupVideoTask;->g:Landroidx/camera/video/Recorder;

    sget-object v5, Landroidx/camera/video/Recorder;->m0:Ljava/util/Set;

    iget-object v5, v4, Landroidx/camera/video/Recorder;->H:Landroidx/camera/video/internal/encoder/Encoder;

    invoke-static {v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    iget-object v0, v4, Landroidx/camera/video/Recorder;->e0:Landroidx/camera/video/VideoEncoderSession;

    invoke-virtual {v0}, Landroidx/camera/video/VideoEncoderSession;->a()V

    iget-object v0, v0, Landroidx/camera/video/VideoEncoderSession;->j:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/Futures;->h(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Landroidx/camera/video/g;

    invoke-direct {v1, p0, v2, v3}, Landroidx/camera/video/g;-><init>(Landroidx/camera/video/Recorder$SetupVideoTask;Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;)V

    iget-object p0, v4, Landroidx/camera/video/Recorder;->e:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1, p0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
