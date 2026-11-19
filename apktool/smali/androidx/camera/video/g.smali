.class public final synthetic Landroidx/camera/video/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/camera/video/Recorder$SetupVideoTask;

.field public final synthetic c:Landroidx/camera/core/SurfaceRequest;

.field public final synthetic d:Landroidx/camera/core/impl/Timebase;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/Recorder$SetupVideoTask;Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/g;->b:Landroidx/camera/video/Recorder$SetupVideoTask;

    iput-object p2, p0, Landroidx/camera/video/g;->c:Landroidx/camera/core/SurfaceRequest;

    iput-object p3, p0, Landroidx/camera/video/g;->d:Landroidx/camera/core/impl/Timebase;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v0, p0, Landroidx/camera/video/g;->b:Landroidx/camera/video/Recorder$SetupVideoTask;

    iget-object v1, p0, Landroidx/camera/video/g;->c:Landroidx/camera/core/SurfaceRequest;

    iget-object v4, p0, Landroidx/camera/video/g;->d:Landroidx/camera/core/impl/Timebase;

    iget-object p0, v1, Landroidx/camera/core/SurfaceRequest;->h:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p0

    if-nez p0, :cond_7

    iget-object p0, v0, Landroidx/camera/video/Recorder$SetupVideoTask;->g:Landroidx/camera/video/Recorder;

    iget-object p0, p0, Landroidx/camera/video/Recorder;->e0:Landroidx/camera/video/VideoEncoderSession;

    iget-object v2, p0, Landroidx/camera/video/VideoEncoderSession;->i:Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v10, 0x1

    const/4 v11, 0x3

    if-eqz v2, :cond_2

    if-eq v2, v10, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    if-eq v2, v11, :cond_1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/camera/video/VideoEncoderSession;->i:Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;

    const-string v0, " is not handled"

    const-string v1, "State "

    invoke-static {v1, p0, v0}, Llc0;->w(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object p0, p0, Landroidx/camera/video/VideoEncoderSession;->f:Landroidx/camera/core/SurfaceRequest;

    if-ne p0, v1, :cond_2

    goto/16 :goto_4

    :cond_2
    :goto_0
    new-instance p0, Landroidx/camera/video/VideoEncoderSession;

    iget-object v2, v0, Landroidx/camera/video/Recorder$SetupVideoTask;->g:Landroidx/camera/video/Recorder;

    iget-object v3, v2, Landroidx/camera/video/Recorder;->f:Landroidx/camera/video/internal/encoder/EncoderFactory;

    iget-object v5, v2, Landroidx/camera/video/Recorder;->e:Ljava/util/concurrent/Executor;

    iget-object v2, v2, Landroidx/camera/video/Recorder;->d:Ljava/util/concurrent/Executor;

    invoke-direct {p0, v3, v5, v2}, Landroidx/camera/video/VideoEncoderSession;-><init>(Landroidx/camera/video/internal/encoder/EncoderFactory;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    iget-object v2, v0, Landroidx/camera/video/Recorder$SetupVideoTask;->g:Landroidx/camera/video/Recorder;

    iget-object v2, v2, Landroidx/camera/video/Recorder;->F:Landroidx/camera/core/impl/MutableStateObservable;

    invoke-static {v2}, Landroidx/camera/video/Recorder;->l(Landroidx/camera/core/impl/StateObservable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/video/MediaSpec;

    iget-object v7, v1, Landroidx/camera/core/SurfaceRequest;->c:Landroidx/camera/core/DynamicRange;

    iget-object v3, v0, Landroidx/camera/video/Recorder$SetupVideoTask;->g:Landroidx/camera/video/Recorder;

    iget-object v3, v3, Landroidx/camera/video/Recorder;->w:Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

    invoke-static {v2, v7, v3}, Landroidx/camera/video/internal/config/VideoConfigUtil;->c(Landroidx/camera/video/MediaSpec;Landroidx/camera/core/DynamicRange;Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;)Landroidx/camera/video/internal/config/VideoMimeInfo;

    move-result-object v3

    check-cast v2, Landroidx/camera/video/AutoValue_MediaSpec;

    iget-object v5, v2, Landroidx/camera/video/AutoValue_MediaSpec;->a:Landroidx/camera/video/VideoSpec;

    iget-object v6, v1, Landroidx/camera/core/SurfaceRequest;->b:Landroid/util/Size;

    iget-object v8, v1, Landroidx/camera/core/SurfaceRequest;->d:Landroid/util/Range;

    move-object v9, v8

    move-object v8, v7

    invoke-virtual {v3}, Landroidx/camera/video/internal/config/VideoMimeInfo;->c()Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    move-result-object v7

    if-eqz v7, :cond_3

    new-instance v2, Landroidx/camera/video/internal/config/VideoEncoderConfigVideoProfileResolver;

    invoke-virtual {v3}, Landroidx/camera/video/internal/config/MimeInfo;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {v2 .. v9}, Landroidx/camera/video/internal/config/VideoEncoderConfigVideoProfileResolver;-><init>(Ljava/lang/String;Landroidx/camera/core/impl/Timebase;Landroidx/camera/video/VideoSpec;Landroid/util/Size;Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;Landroidx/camera/core/DynamicRange;Landroid/util/Range;)V

    goto :goto_1

    :cond_3
    new-instance v2, Landroidx/camera/video/internal/config/VideoEncoderConfigDefaultResolver;

    invoke-virtual {v3}, Landroidx/camera/video/internal/config/MimeInfo;->a()Ljava/lang/String;

    move-result-object v3

    move-object v7, v8

    move-object v8, v9

    invoke-direct/range {v2 .. v8}, Landroidx/camera/video/internal/config/VideoEncoderConfigDefaultResolver;-><init>(Ljava/lang/String;Landroidx/camera/core/impl/Timebase;Landroidx/camera/video/VideoSpec;Landroid/util/Size;Landroidx/camera/core/DynamicRange;Landroid/util/Range;)V

    :goto_1
    invoke-interface {v2}, Landroidx/core/util/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/video/internal/encoder/VideoEncoderConfig;

    iget-object v3, v0, Landroidx/camera/video/Recorder$SetupVideoTask;->g:Landroidx/camera/video/Recorder;

    iget-boolean v3, v3, Landroidx/camera/video/Recorder;->l0:Z

    invoke-virtual {v2}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig;->f()Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;

    move-result-object v4

    sget-object v5, Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;->a:Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;

    if-eq v4, v5, :cond_4

    goto :goto_2

    :cond_4
    const-class v4, Landroidx/camera/video/internal/compat/quirk/MediaCodecDefaultDataSpaceQuirk;

    sget-object v5, Landroidx/camera/video/internal/compat/quirk/DeviceQuirks;->a:Landroidx/camera/core/impl/Quirks;

    invoke-virtual {v5, v4}, Landroidx/camera/core/impl/Quirks;->b(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v4

    check-cast v4, Landroidx/camera/video/internal/compat/quirk/MediaCodecDefaultDataSpaceQuirk;

    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    sget-object v3, Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;->c:Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;

    invoke-virtual {v2}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig;->h()Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;->d(Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;)Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;

    invoke-virtual {v2}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;->a()Landroidx/camera/video/internal/encoder/VideoEncoderConfig;

    move-result-object v2

    :cond_5
    :goto_2
    iget-object v3, v0, Landroidx/camera/video/Recorder$SetupVideoTask;->g:Landroidx/camera/video/Recorder;

    iput-object v2, v3, Landroidx/camera/video/Recorder;->f0:Landroidx/camera/video/internal/encoder/VideoEncoderConfig;

    iget-object v3, p0, Landroidx/camera/video/VideoEncoderSession;->i:Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_6

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "configure() shouldn\'t be called in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/camera/video/VideoEncoderSession;->i:Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroidx/camera/core/impl/utils/futures/Futures;->e(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    goto :goto_3

    :cond_6
    sget-object v3, Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;->INITIALIZING:Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;

    iput-object v3, p0, Landroidx/camera/video/VideoEncoderSession;->i:Landroidx/camera/video/VideoEncoderSession$VideoEncoderState;

    iput-object v1, p0, Landroidx/camera/video/VideoEncoderSession;->f:Landroidx/camera/core/SurfaceRequest;

    invoke-virtual {p0}, Landroidx/camera/video/VideoEncoderSession;->toString()Ljava/lang/String;

    const-string v3, "VideoEncoderSession"

    invoke-static {v11, v3}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    new-instance v3, Landroidx/camera/video/i;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroidx/camera/video/i;-><init>(Landroidx/camera/video/VideoEncoderSession;I)V

    invoke-static {v3}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->a(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    iput-object v3, p0, Landroidx/camera/video/VideoEncoderSession;->j:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v3, Landroidx/camera/video/i;

    invoke-direct {v3, p0, v10}, Landroidx/camera/video/i;-><init>(Landroidx/camera/video/VideoEncoderSession;I)V

    invoke-static {v3}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->a(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    iput-object v3, p0, Landroidx/camera/video/VideoEncoderSession;->l:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v3, Landroidx/camera/video/j;

    invoke-direct {v3, p0, v1, v2}, Landroidx/camera/video/j;-><init>(Landroidx/camera/video/VideoEncoderSession;Landroidx/camera/core/SurfaceRequest;Landroidx/camera/video/internal/encoder/VideoEncoderConfig;)V

    invoke-static {v3}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->a(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Landroidx/camera/video/VideoEncoderSession$1;

    invoke-direct {v2, p0}, Landroidx/camera/video/VideoEncoderSession$1;-><init>(Landroidx/camera/video/VideoEncoderSession;)V

    iget-object v3, p0, Landroidx/camera/video/VideoEncoderSession;->b:Ljava/util/concurrent/Executor;

    invoke-static {v1, v2, v3}, Landroidx/camera/core/impl/utils/futures/Futures;->a(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/FutureCallback;Ljava/util/concurrent/Executor;)V

    invoke-static {v1}, Landroidx/camera/core/impl/utils/futures/Futures;->h(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    :goto_3
    iget-object v2, v0, Landroidx/camera/video/Recorder$SetupVideoTask;->g:Landroidx/camera/video/Recorder;

    iput-object p0, v2, Landroidx/camera/video/Recorder;->e0:Landroidx/camera/video/VideoEncoderSession;

    new-instance v3, Landroidx/camera/video/Recorder$SetupVideoTask$1;

    invoke-direct {v3, v0, p0}, Landroidx/camera/video/Recorder$SetupVideoTask$1;-><init>(Landroidx/camera/video/Recorder$SetupVideoTask;Landroidx/camera/video/VideoEncoderSession;)V

    iget-object p0, v2, Landroidx/camera/video/Recorder;->e:Ljava/util/concurrent/Executor;

    invoke-static {v1, v3, p0}, Landroidx/camera/core/impl/utils/futures/Futures;->a(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_7
    :goto_4
    iget-object p0, v1, Landroidx/camera/core/SurfaceRequest;->h:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    iget-object p0, v0, Landroidx/camera/video/Recorder$SetupVideoTask;->g:Landroidx/camera/video/Recorder;

    iget-object p0, p0, Landroidx/camera/video/Recorder;->e0:Landroidx/camera/video/VideoEncoderSession;

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const/4 p0, 0x5

    const-string v0, "Recorder"

    invoke-static {p0, v0}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    return-void
.end method
