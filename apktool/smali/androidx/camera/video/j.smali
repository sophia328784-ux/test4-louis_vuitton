.class public final synthetic Landroidx/camera/video/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;
.implements Landroidx/camera/video/internal/encoder/Encoder$SurfaceInput$OnSurfaceUpdateListener;


# instance fields
.field public final synthetic b:Landroidx/camera/video/VideoEncoderSession;

.field public final synthetic c:Landroidx/camera/core/SurfaceRequest;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/VideoEncoderSession;Landroidx/camera/core/SurfaceRequest;Landroidx/camera/video/internal/encoder/VideoEncoderConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/j;->b:Landroidx/camera/video/VideoEncoderSession;

    iput-object p2, p0, Landroidx/camera/video/j;->c:Landroidx/camera/core/SurfaceRequest;

    iput-object p3, p0, Landroidx/camera/video/j;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/video/VideoEncoderSession;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/SurfaceRequest;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/j;->b:Landroidx/camera/video/VideoEncoderSession;

    iput-object p2, p0, Landroidx/camera/video/j;->d:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/camera/video/j;->c:Landroidx/camera/core/SurfaceRequest;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/Surface;)V
    .locals 7

    iget-object v0, p0, Landroidx/camera/video/j;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iget-object v1, p0, Landroidx/camera/video/j;->b:Landroidx/camera/video/VideoEncoderSession;

    iget-object v2, v1, Landroidx/camera/video/VideoEncoderSession;->i:Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    const-string v4, "VideoEncoderSession"

    const/4 v5, 0x3

    if-eqz v2, :cond_5

    const/4 v6, 0x1

    if-eq v2, v6, :cond_3

    const/4 p0, 0x2

    if-eq v2, p0, :cond_5

    if-eq v2, v5, :cond_1

    const/4 p0, 0x4

    if-ne v2, p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, v1, Landroidx/camera/video/VideoEncoderSession;->i:Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;

    const-string p1, " is not handled"

    const-string v0, "State "

    invoke-static {v0, p0, p1}, Llc0;->w(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object p0, v1, Landroidx/camera/video/VideoEncoderSession;->h:Lhr0;

    if-eqz p0, :cond_2

    iget-object p0, v1, Landroidx/camera/video/VideoEncoderSession;->g:Ljava/util/concurrent/Executor;

    if-eqz p0, :cond_2

    new-instance v0, Landroidx/camera/video/e;

    invoke-direct {v0, v1, p1, v5}, Landroidx/camera/video/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const/4 p0, 0x5

    invoke-static {p0, v4}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    return-void

    :cond_3
    iget-object p0, p0, Landroidx/camera/video/j;->c:Landroidx/camera/core/SurfaceRequest;

    iget-object v2, p0, Landroidx/camera/core/SurfaceRequest;->h:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string p1, "EMPTY"

    invoke-static {p0, p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v5, v4}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    invoke-virtual {v0, v3}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->b(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroidx/camera/video/VideoEncoderSession;->a()V

    return-void

    :cond_4
    iput-object p1, v1, Landroidx/camera/video/VideoEncoderSession;->e:Landroid/view/Surface;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v5, v4}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    iget-object v2, v1, Landroidx/camera/video/VideoEncoderSession;->b:Ljava/util/concurrent/Executor;

    new-instance v3, Landroidx/camera/video/k;

    invoke-direct {v3, v1}, Landroidx/camera/video/k;-><init>(Landroidx/camera/video/VideoEncoderSession;)V

    invoke-virtual {p0, p1, v2, v3}, Landroidx/camera/core/SurfaceRequest;->a(Landroid/view/Surface;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V

    sget-object p0, Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;->READY:Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;

    iput-object p0, v1, Landroidx/camera/video/VideoEncoderSession;->i:Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;

    iget-object p0, v1, Landroidx/camera/video/VideoEncoderSession;->d:Landroidx/camera/video/internal/encoder/Encoder;

    invoke-virtual {v0, p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->b(Ljava/lang/Object;)Z

    return-void

    :cond_5
    :goto_0
    iget-object p0, v1, Landroidx/camera/video/VideoEncoderSession;->i:Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v5, v4}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    invoke-virtual {v0, v3}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public i(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Landroidx/camera/video/j;->b:Landroidx/camera/video/VideoEncoderSession;

    iget-object v1, p0, Landroidx/camera/video/j;->c:Landroidx/camera/core/SurfaceRequest;

    iget-object p0, p0, Landroidx/camera/video/j;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/video/internal/encoder/VideoEncoderConfig;

    :try_start_0
    iget-object v2, v0, Landroidx/camera/video/VideoEncoderSession;->c:Landroidx/camera/video/internal/encoder/EncoderFactory;

    iget-object v3, v0, Landroidx/camera/video/VideoEncoderSession;->a:Ljava/util/concurrent/Executor;

    iget v4, v1, Landroidx/camera/core/SurfaceRequest;->g:I

    invoke-interface {v2, v3, p0, v4}, Landroidx/camera/video/internal/encoder/EncoderFactory;->c(Ljava/util/concurrent/Executor;Landroidx/camera/video/internal/encoder/EncoderConfig;I)Landroidx/camera/video/internal/encoder/EncoderImpl;

    move-result-object p0

    iput-object p0, v0, Landroidx/camera/video/VideoEncoderSession;->d:Landroidx/camera/video/internal/encoder/Encoder;
    :try_end_0
    .catch Landroidx/camera/video/internal/encoder/InvalidConfigException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl;->g:Landroidx/camera/video/internal/encoder/Encoder$EncoderInput;

    instance-of v2, p0, Landroidx/camera/video/internal/encoder/Encoder$SurfaceInput;

    if-nez v2, :cond_0

    new-instance p0, Ljava/lang/AssertionError;

    const-string v1, "The EncoderInput of video isn\'t a SurfaceInput."

    invoke-direct {p0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->d(Ljava/lang/Throwable;)Z

    goto :goto_0

    :cond_0
    check-cast p0, Landroidx/camera/video/internal/encoder/Encoder$SurfaceInput;

    iget-object v2, v0, Landroidx/camera/video/VideoEncoderSession;->b:Ljava/util/concurrent/Executor;

    new-instance v3, Landroidx/camera/video/j;

    invoke-direct {v3, v0, p1, v1}, Landroidx/camera/video/j;-><init>(Landroidx/camera/video/VideoEncoderSession;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/SurfaceRequest;)V

    invoke-interface {p0, v2, v3}, Landroidx/camera/video/internal/encoder/Encoder$SurfaceInput;->c(Ljava/util/concurrent/Executor;Landroidx/camera/video/j;)V

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "VideoEncoderSession"

    invoke-static {v1}, Landroidx/camera/core/Logger;->b(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->d(Ljava/lang/Throwable;)Z

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "ConfigureVideoEncoderFuture "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
