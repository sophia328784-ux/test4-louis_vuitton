.class public final Landroidx/camera/video/VideoCapture;
.super Landroidx/camera/core/UseCase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/VideoCapture$Builder;,
        Landroidx/camera/video/VideoCapture$Defaults;,
        Landroidx/camera/video/VideoCapture$SourceStreamRequirementObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroidx/camera/video/VideoOutput;",
        ">",
        "Landroidx/camera/core/UseCase;"
    }
.end annotation


# static fields
.field public static final F:Landroidx/camera/video/VideoCapture$Defaults;


# instance fields
.field public A:Z

.field public B:Landroidx/camera/video/VideoCapture$SourceStreamRequirementObserver;

.field public C:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

.field public final D:Ljava/util/Map;

.field public final E:Landroidx/camera/core/impl/Observable$Observer;

.field public q:Landroidx/camera/core/impl/DeferrableSurface;

.field public r:Landroidx/camera/core/processing/SurfaceEdge;

.field public s:Landroidx/camera/video/StreamInfo;

.field public t:Landroidx/camera/core/impl/SessionConfig$Builder;

.field public u:Lcom/google/common/util/concurrent/ListenableFuture;

.field public v:Landroidx/camera/core/SurfaceRequest;

.field public w:Landroidx/camera/video/VideoOutput$SourceState;

.field public x:Landroidx/camera/core/processing/SurfaceProcessorNode;

.field public y:Landroid/graphics/Rect;

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/video/VideoCapture$Defaults;

    invoke-direct {v0}, Landroidx/camera/video/VideoCapture$Defaults;-><init>()V

    sput-object v0, Landroidx/camera/video/VideoCapture;->F:Landroidx/camera/video/VideoCapture$Defaults;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/video/impl/VideoCaptureConfig;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/core/UseCase;-><init>(Landroidx/camera/core/impl/UseCaseConfig;)V

    sget-object p1, Landroidx/camera/video/StreamInfo;->a:Landroidx/camera/video/StreamInfo;

    iput-object p1, p0, Landroidx/camera/video/VideoCapture;->s:Landroidx/camera/video/StreamInfo;

    new-instance p1, Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-direct {p1}, Landroidx/camera/core/impl/SessionConfig$Builder;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/VideoCapture;->t:Landroidx/camera/core/impl/SessionConfig$Builder;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/camera/video/VideoCapture;->u:Lcom/google/common/util/concurrent/ListenableFuture;

    sget-object p1, Landroidx/camera/video/VideoOutput$SourceState;->INACTIVE:Landroidx/camera/video/VideoOutput$SourceState;

    iput-object p1, p0, Landroidx/camera/video/VideoCapture;->w:Landroidx/camera/video/VideoOutput$SourceState;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/camera/video/VideoCapture;->A:Z

    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object p1, p0, Landroidx/camera/video/VideoCapture;->D:Ljava/util/Map;

    new-instance p1, Landroidx/camera/video/VideoCapture$1;

    invoke-direct {p1, p0}, Landroidx/camera/video/VideoCapture$1;-><init>(Landroidx/camera/video/VideoCapture;)V

    iput-object p1, p0, Landroidx/camera/video/VideoCapture;->E:Landroidx/camera/core/impl/Observable$Observer;

    return-void
.end method

.method public static E(Ljava/util/HashSet;IILandroid/util/Size;Landroidx/camera/video/internal/encoder/VideoEncoderInfo;)V
    .locals 4

    const-string v0, "VideoCapture"

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-gt p1, v1, :cond_1

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p3

    if-le p2, p3, :cond_0

    goto :goto_1

    :cond_0
    const/4 p3, 0x5

    :try_start_0
    invoke-interface {p4, p1}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->h(I)Landroid/util/Range;

    move-result-object v1

    new-instance v2, Landroid/util/Size;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v2, p1, v1}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {p3, v0}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    :goto_0
    :try_start_1
    invoke-interface {p4, p2}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->b(I)Landroid/util/Range;

    move-result-object p4

    new-instance v1, Landroid/util/Size;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v1, p1, p2}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    invoke-static {p3, v0}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    :cond_1
    :goto_1
    return-void
.end method

.method public static F(ZIILandroid/util/Range;)I
    .locals 1

    rem-int v0, p1, p2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    sub-int/2addr p1, v0

    goto :goto_0

    :cond_1
    sub-int/2addr p2, v0

    add-int/2addr p1, p2

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static N(Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;Landroidx/camera/video/MediaSpec;Landroidx/camera/core/DynamicRange;)Landroidx/camera/video/internal/encoder/VideoEncoderInfo;
    .locals 0

    invoke-static {p2, p3, p1}, Landroidx/camera/video/internal/config/VideoConfigUtil;->c(Landroidx/camera/video/MediaSpec;Landroidx/camera/core/DynamicRange;Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;)Landroidx/camera/video/internal/config/VideoMimeInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/camera/video/internal/config/MimeInfo;->a()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;->find(Ljava/lang/String;)Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    move-result-object p0

    const/4 p2, 0x0

    if-nez p0, :cond_0

    const-string p0, "VideoCapture"

    const/4 p1, 0x5

    invoke-static {p1, p0}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    return-object p2

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;->g()Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->k()Landroid/util/Size;

    move-result-object p2

    :cond_1
    invoke-static {p0, p2}, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->k(Landroidx/camera/video/internal/encoder/VideoEncoderInfo;Landroid/util/Size;)Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final B(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/core/UseCase;->k:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroidx/camera/video/VideoCapture;->O()V

    return-void
.end method

.method public final G(Landroidx/camera/core/impl/SessionConfig$Builder;Landroidx/camera/video/StreamInfo;Landroidx/camera/core/impl/StreamSpec;)V
    .locals 5

    move-object v0, p2

    check-cast v0, Landroidx/camera/video/AutoValue_StreamInfo;

    iget v0, v0, Landroidx/camera/video/AutoValue_StreamInfo;->d:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    check-cast p2, Landroidx/camera/video/AutoValue_StreamInfo;

    iget-object p2, p2, Landroidx/camera/video/AutoValue_StreamInfo;->e:Landroidx/camera/video/StreamInfo$StreamState;

    sget-object v4, Landroidx/camera/video/StreamInfo$StreamState;->ACTIVE:Landroidx/camera/video/StreamInfo$StreamState;

    if-ne p2, v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v0, :cond_3

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    const-string p0, "Unexpected stream state, stream is error but active"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_2
    invoke-virtual {p1}, Landroidx/camera/core/impl/SessionConfig$Builder;->l()V

    invoke-virtual {p3}, Landroidx/camera/core/impl/StreamSpec;->b()Landroidx/camera/core/DynamicRange;

    move-result-object p2

    if-nez v0, :cond_5

    iget-object p3, p0, Landroidx/camera/video/VideoCapture;->q:Landroidx/camera/core/impl/DeferrableSurface;

    if-eqz p3, :cond_5

    if-eqz v1, :cond_4

    invoke-virtual {p1, p3, p2, v3}, Landroidx/camera/core/impl/SessionConfig$Builder;->i(Landroidx/camera/core/impl/DeferrableSurface;Landroidx/camera/core/DynamicRange;I)V

    goto :goto_3

    :cond_4
    invoke-virtual {p1, p3, p2}, Landroidx/camera/core/impl/SessionConfig$Builder;->f(Landroidx/camera/core/impl/DeferrableSurface;Landroidx/camera/core/DynamicRange;)V

    :cond_5
    :goto_3
    iget-object p2, p0, Landroidx/camera/video/VideoCapture;->u:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz p2, :cond_6

    invoke-interface {p2, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "VideoCapture"

    const/4 p3, 0x3

    invoke-static {p3, p2}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    :cond_6
    new-instance p2, Landroidx/camera/video/i;

    invoke-direct {p2, p0, p1}, Landroidx/camera/video/i;-><init>(Landroidx/camera/video/VideoCapture;Landroidx/camera/core/impl/SessionConfig$Builder;)V

    invoke-static {p2}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->a(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/video/VideoCapture;->u:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance p2, Landroidx/camera/video/VideoCapture$3;

    invoke-direct {p2, p0, p1, v1}, Landroidx/camera/video/VideoCapture$3;-><init>(Landroidx/camera/video/VideoCapture;Lcom/google/common/util/concurrent/ListenableFuture;Z)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->c()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    invoke-static {p1, p2, p0}, Landroidx/camera/core/impl/utils/futures/Futures;->a(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final H()V
    .locals 2

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    iget-object v0, p0, Landroidx/camera/video/VideoCapture;->C:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;->b()V

    iput-object v1, p0, Landroidx/camera/video/VideoCapture;->C:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    :cond_0
    iget-object v0, p0, Landroidx/camera/video/VideoCapture;->q:Landroidx/camera/core/impl/DeferrableSurface;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/camera/core/impl/DeferrableSurface;->a()V

    iput-object v1, p0, Landroidx/camera/video/VideoCapture;->q:Landroidx/camera/core/impl/DeferrableSurface;

    :cond_1
    iget-object v0, p0, Landroidx/camera/video/VideoCapture;->x:Landroidx/camera/core/processing/SurfaceProcessorNode;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/camera/core/processing/SurfaceProcessorNode;->b()V

    iput-object v1, p0, Landroidx/camera/video/VideoCapture;->x:Landroidx/camera/core/processing/SurfaceProcessorNode;

    :cond_2
    iget-object v0, p0, Landroidx/camera/video/VideoCapture;->r:Landroidx/camera/core/processing/SurfaceEdge;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/camera/core/processing/SurfaceEdge;->c()V

    iput-object v1, p0, Landroidx/camera/video/VideoCapture;->r:Landroidx/camera/core/processing/SurfaceEdge;

    :cond_3
    iput-object v1, p0, Landroidx/camera/video/VideoCapture;->y:Landroid/graphics/Rect;

    iput-object v1, p0, Landroidx/camera/video/VideoCapture;->v:Landroidx/camera/core/SurfaceRequest;

    sget-object v0, Landroidx/camera/video/StreamInfo;->a:Landroidx/camera/video/StreamInfo;

    iput-object v0, p0, Landroidx/camera/video/VideoCapture;->s:Landroidx/camera/video/StreamInfo;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/camera/video/VideoCapture;->z:I

    iput-boolean v0, p0, Landroidx/camera/video/VideoCapture;->A:Z

    return-void
.end method

.method public final I(Landroidx/camera/video/impl/VideoCaptureConfig;Landroidx/camera/core/impl/StreamSpec;)Landroidx/camera/core/impl/SessionConfig$Builder;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    invoke-virtual {v0}, Landroidx/camera/core/UseCase;->c()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Landroidx/camera/core/impl/StreamSpec;->f()Landroid/util/Size;

    move-result-object v5

    new-instance v7, Lf31;

    const/4 v3, 0x5

    invoke-direct {v7, v0, v3}, Lf31;-><init>(Ljava/lang/Object;I)V

    invoke-virtual/range {p2 .. p2}, Landroidx/camera/core/impl/StreamSpec;->c()Landroid/util/Range;

    move-result-object v4

    sget-object v6, Landroidx/camera/core/impl/StreamSpec;->a:Landroid/util/Range;

    invoke-static {v4, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const/4 v8, 0x1

    if-eqz v6, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroidx/camera/core/impl/StreamSpec;->g()I

    move-result v4

    if-ne v4, v8, :cond_1

    sget-object v4, Landroidx/camera/video/VideoCapture$Defaults;->c:Landroid/util/Range;

    :cond_0
    :goto_0
    move-object v9, v4

    goto :goto_1

    :cond_1
    sget-object v4, Landroidx/camera/video/VideoCapture$Defaults;->b:Landroid/util/Range;

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Landroidx/camera/video/VideoCapture;->K()Landroidx/camera/video/VideoOutput;

    move-result-object v4

    invoke-interface {v4}, Landroidx/camera/video/VideoOutput;->b()Landroidx/camera/core/impl/Observable;

    move-result-object v4

    invoke-interface {v4}, Landroidx/camera/core/impl/Observable;->a()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    :try_start_0
    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    check-cast v4, Landroidx/camera/video/MediaSpec;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Landroidx/camera/core/impl/StreamSpec;->g()I

    move-result v6

    invoke-interface {v1}, Landroidx/camera/core/impl/CameraInternal;->b()Landroidx/camera/core/CameraInfo;

    move-result-object v11

    invoke-virtual {v0}, Landroidx/camera/video/VideoCapture;->K()Landroidx/camera/video/VideoOutput;

    move-result-object v12

    invoke-interface {v12, v11, v6}, Landroidx/camera/video/VideoOutput;->e(Landroidx/camera/core/CameraInfo;I)Landroidx/camera/video/VideoCapabilities;

    move-result-object v11

    move v12, v6

    invoke-virtual/range {p2 .. p2}, Landroidx/camera/core/impl/StreamSpec;->b()Landroidx/camera/core/DynamicRange;

    move-result-object v6

    invoke-interface {v11, v5, v6}, Landroidx/camera/video/VideoCapabilities;->b(Landroid/util/Size;Landroidx/camera/core/DynamicRange;)Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

    move-result-object v11

    sget-object v13, Landroidx/camera/video/impl/VideoCaptureConfig;->O:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v2, v13}, Landroidx/camera/core/impl/ReadableConfig;->a(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v13, v11, v4, v6}, Landroidx/camera/video/VideoCapture;->N(Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;Landroidx/camera/video/MediaSpec;Landroidx/camera/core/DynamicRange;)Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    move-result-object v11

    invoke-virtual {v0, v1}, Landroidx/camera/video/VideoCapture;->J(Landroidx/camera/core/impl/CameraInternal;)I

    move-result v4

    iput v4, v0, Landroidx/camera/video/VideoCapture;->z:I

    iget-object v4, v0, Landroidx/camera/core/UseCase;->k:Landroid/graphics/Rect;

    const/4 v13, 0x0

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v14

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v15

    invoke-direct {v4, v13, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_3
    const-string v15, "VideoCapture"

    if-eqz v11, :cond_4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-interface {v11, v10, v3}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->e(II)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    move-object/from16 v18, v1

    move-object/from16 v19, v6

    goto/16 :goto_8

    :cond_5
    invoke-static {v4}, Landroidx/camera/core/impl/utils/TransformUtils;->h(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->f()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v11}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->c()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->i()Landroid/util/Range;

    move-result-object v8

    invoke-interface {v11}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->j()Landroid/util/Range;

    move-result-object v14

    filled-new-array {v3, v10, v13, v8, v14}, [Ljava/lang/Object;

    move-result-object v3

    const-string v8, "Adjust cropRect %s by width/height alignment %d/%d and supported widths %s / supported heights %s"

    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {v3, v15}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    invoke-interface {v11}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->i()Landroid/util/Range;

    move-result-object v3

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v11}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->j()Landroid/util/Range;

    move-result-object v3

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    invoke-interface {v11}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->a()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v11}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->j()Landroid/util/Range;

    move-result-object v3

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v11}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->i()Landroid/util/Range;

    move-result-object v3

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, Landroidx/camera/video/internal/encoder/SwappedVideoEncoderInfo;

    invoke-direct {v3, v11}, Landroidx/camera/video/internal/encoder/SwappedVideoEncoderInfo;-><init>(Landroidx/camera/video/internal/encoder/VideoEncoderInfo;)V

    goto :goto_5

    :cond_7
    :goto_4
    move-object v3, v11

    :goto_5
    invoke-interface {v3}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->f()I

    move-result v8

    invoke-interface {v3}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->c()I

    move-result v10

    invoke-interface {v3}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->i()Landroid/util/Range;

    move-result-object v13

    invoke-interface {v3}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->j()Landroid/util/Range;

    move-result-object v14

    move-object/from16 v18, v1

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1, v8, v13}, Landroidx/camera/video/VideoCapture;->F(ZIILandroid/util/Range;)I

    move-result v1

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v2

    move-object/from16 v19, v6

    const/4 v6, 0x0

    invoke-static {v6, v2, v8, v13}, Landroidx/camera/video/VideoCapture;->F(ZIILandroid/util/Range;)I

    move-result v2

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    const/4 v13, 0x1

    invoke-static {v13, v8, v10, v14}, Landroidx/camera/video/VideoCapture;->F(ZIILandroid/util/Range;)I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-static {v6, v13, v10, v14}, Landroidx/camera/video/VideoCapture;->F(ZIILandroid/util/Range;)I

    move-result v10

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-static {v6, v1, v8, v5, v3}, Landroidx/camera/video/VideoCapture;->E(Ljava/util/HashSet;IILandroid/util/Size;Landroidx/camera/video/internal/encoder/VideoEncoderInfo;)V

    invoke-static {v6, v1, v10, v5, v3}, Landroidx/camera/video/VideoCapture;->E(Ljava/util/HashSet;IILandroid/util/Size;Landroidx/camera/video/internal/encoder/VideoEncoderInfo;)V

    invoke-static {v6, v2, v8, v5, v3}, Landroidx/camera/video/VideoCapture;->E(Ljava/util/HashSet;IILandroid/util/Size;Landroidx/camera/video/internal/encoder/VideoEncoderInfo;)V

    invoke-static {v6, v2, v10, v5, v3}, Landroidx/camera/video/VideoCapture;->E(Ljava/util/HashSet;IILandroid/util/Size;Landroidx/camera/video/internal/encoder/VideoEncoderInfo;)V

    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x5

    invoke-static {v1, v15}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    goto/16 :goto_8

    :cond_8
    const/4 v1, 0x5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {v3, v15}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    new-instance v6, Lxm;

    invoke-direct {v6, v4, v1}, Lxm;-><init>(Ljava/lang/Object;I)V

    invoke-static {v2, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-static {v3, v15}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-ne v2, v6, :cond_9

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-ne v1, v6, :cond_9

    invoke-static {v3, v15}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    goto/16 :goto_8

    :cond_9
    rem-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_a

    rem-int/lit8 v3, v1, 0x2

    if-nez v3, :cond_a

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v3

    if-gt v2, v3, :cond_a

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-gt v1, v3, :cond_a

    const/4 v3, 0x1

    :goto_6
    const/4 v6, 0x0

    goto :goto_7

    :cond_a
    const/4 v3, 0x0

    goto :goto_6

    :goto_7
    invoke-static {v6, v3}, Landroidx/core/util/Preconditions;->f(Ljava/lang/String;Z)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-eq v2, v6, :cond_b

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    div-int/lit8 v8, v2, 0x2

    sub-int/2addr v6, v8

    const/4 v8, 0x0

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v2

    iput v6, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v8

    if-le v6, v8, :cond_b

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v6

    iput v6, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v2

    iput v6, v3, Landroid/graphics/Rect;->left:I

    :cond_b
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eq v1, v2, :cond_c

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    div-int/lit8 v6, v1, 0x2

    sub-int/2addr v2, v6

    const/4 v6, 0x0

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v6

    if-le v2, v6, :cond_c

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v2

    iput v2, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v1

    iput v2, v3, Landroid/graphics/Rect;->top:I

    :cond_c
    invoke-static {v4}, Landroidx/camera/core/impl/utils/TransformUtils;->h(Landroid/graphics/Rect;)Ljava/lang/String;

    invoke-static {v3}, Landroidx/camera/core/impl/utils/TransformUtils;->h(Landroid/graphics/Rect;)Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v1, v15}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    move-object v4, v3

    :goto_8
    iget v1, v0, Landroidx/camera/video/VideoCapture;->z:I

    invoke-virtual {v0}, Landroidx/camera/video/VideoCapture;->P()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, v0, Landroidx/camera/video/VideoCapture;->s:Landroidx/camera/video/StreamInfo;

    check-cast v2, Landroidx/camera/video/AutoValue_StreamInfo;

    iget-object v2, v2, Landroidx/camera/video/AutoValue_StreamInfo;->f:Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroidx/camera/core/SurfaceRequest$TransformationInfo;->a()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v2}, Landroidx/camera/core/impl/utils/TransformUtils;->g(Landroid/graphics/Rect;)Landroid/util/Size;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/camera/core/impl/utils/TransformUtils;->i(Landroid/util/Size;I)Landroid/util/Size;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    const/4 v8, 0x0

    invoke-direct {v2, v8, v8, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_9

    :cond_d
    const/4 v8, 0x0

    move-object v2, v4

    :goto_9
    iput-object v2, v0, Landroidx/camera/video/VideoCapture;->y:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroidx/camera/video/VideoCapture;->P()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    new-instance v2, Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-double v13, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v1, v13

    invoke-direct {v2, v3, v1}, Landroid/util/Size;-><init>(II)V

    move-object v10, v2

    goto :goto_a

    :cond_e
    move-object v10, v5

    :goto_a
    invoke-virtual {v0}, Landroidx/camera/video/VideoCapture;->P()Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v13, 0x1

    iput-boolean v13, v0, Landroidx/camera/video/VideoCapture;->A:Z

    :cond_f
    iget-object v4, v0, Landroidx/camera/video/VideoCapture;->y:Landroid/graphics/Rect;

    iget v13, v0, Landroidx/camera/video/VideoCapture;->z:I

    move-object/from16 v2, p1

    move v3, v12

    move-object/from16 v1, v18

    move-object/from16 v6, v19

    invoke-virtual/range {v0 .. v6}, Landroidx/camera/video/VideoCapture;->L(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/video/impl/VideoCaptureConfig;ILandroid/graphics/Rect;Landroid/util/Size;Landroidx/camera/core/DynamicRange;)Z

    move-result v12

    const-class v2, Landroidx/camera/video/internal/compat/quirk/SizeCannotEncodeVideoQuirk;

    sget-object v14, Landroidx/camera/video/internal/compat/quirk/DeviceQuirks;->a:Landroidx/camera/core/impl/Quirks;

    invoke-virtual {v14, v2}, Landroidx/camera/core/impl/Quirks;->b(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v2

    check-cast v2, Landroidx/camera/video/internal/compat/quirk/SizeCannotEncodeVideoQuirk;

    if-eqz v2, :cond_15

    if-eqz v12, :cond_10

    goto :goto_b

    :cond_10
    move v13, v8

    :goto_b
    invoke-static {v4}, Landroidx/camera/core/impl/utils/TransformUtils;->g(Landroid/graphics/Rect;)Landroid/util/Size;

    move-result-object v2

    invoke-static {v2, v13}, Landroidx/camera/core/impl/utils/TransformUtils;->i(Landroid/util/Size;I)Landroid/util/Size;

    move-result-object v2

    const-string v12, "motorola"

    sget-object v13, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_11

    const-string v12, "moto c"

    sget-object v13, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_11

    new-instance v12, Ljava/util/HashSet;

    new-instance v13, Landroid/util/Size;

    const/16 v14, 0x2d0

    const/16 v8, 0x500

    invoke-direct {v13, v14, v8}, Landroid/util/Size;-><init>(II)V

    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v12, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_c

    :cond_11
    sget-object v12, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    :goto_c
    invoke-interface {v12, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12

    goto :goto_f

    :cond_12
    if-eqz v11, :cond_13

    invoke-interface {v11}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->c()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    goto :goto_d

    :cond_13
    const/16 v8, 0x8

    :goto_d
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-ne v4, v2, :cond_14

    iget v2, v11, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v8

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iget v2, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v8

    iput v2, v11, Landroid/graphics/Rect;->right:I

    :goto_e
    move-object v4, v11

    goto :goto_f

    :cond_14
    iget v2, v11, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v8

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iget v2, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v8

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    goto :goto_e

    :cond_15
    :goto_f
    iput-object v4, v0, Landroidx/camera/video/VideoCapture;->y:Landroid/graphics/Rect;

    move-object/from16 v2, p1

    invoke-virtual/range {v0 .. v6}, Landroidx/camera/video/VideoCapture;->L(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/video/impl/VideoCaptureConfig;ILandroid/graphics/Rect;Landroid/util/Size;Landroidx/camera/core/DynamicRange;)Z

    move-result v4

    move v12, v3

    if-eqz v4, :cond_16

    const/4 v3, 0x3

    invoke-static {v3, v15}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    new-instance v2, Landroidx/camera/core/processing/SurfaceProcessorNode;

    invoke-virtual {v0}, Landroidx/camera/core/UseCase;->c()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroidx/camera/core/processing/DefaultSurfaceProcessor;

    invoke-direct {v4, v6}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;-><init>(Landroidx/camera/core/DynamicRange;)V

    invoke-direct {v2, v3, v4}, Landroidx/camera/core/processing/SurfaceProcessorNode;-><init>(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/processing/SurfaceProcessorInternal;)V

    goto :goto_10

    :cond_16
    const/4 v2, 0x0

    :goto_10
    iput-object v2, v0, Landroidx/camera/video/VideoCapture;->x:Landroidx/camera/core/processing/SurfaceProcessorNode;

    invoke-interface {v1}, Landroidx/camera/core/impl/CameraInternal;->p()Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, v0, Landroidx/camera/video/VideoCapture;->x:Landroidx/camera/core/processing/SurfaceProcessorNode;

    if-eqz v2, :cond_17

    goto :goto_11

    :cond_17
    const/4 v2, 0x0

    goto :goto_12

    :cond_18
    :goto_11
    const/4 v2, 0x1

    :goto_12
    iget-object v3, v0, Landroidx/camera/video/VideoCapture;->x:Landroidx/camera/core/processing/SurfaceProcessorNode;

    if-nez v3, :cond_1a

    invoke-interface {v1}, Landroidx/camera/core/impl/CameraInternal;->p()Z

    move-result v3

    if-nez v3, :cond_19

    goto :goto_14

    :cond_19
    sget-object v3, Landroidx/camera/core/impl/Timebase;->UPTIME:Landroidx/camera/core/impl/Timebase;

    :goto_13
    move-object v6, v3

    goto :goto_15

    :cond_1a
    :goto_14
    invoke-interface {v1}, Landroidx/camera/core/impl/CameraInternal;->k()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object v3

    invoke-interface {v3}, Landroidx/camera/core/impl/CameraInfoInternal;->r()Landroidx/camera/core/impl/Timebase;

    move-result-object v3

    goto :goto_13

    :goto_15
    invoke-interface {v1}, Landroidx/camera/core/impl/CameraInternal;->k()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object v3

    invoke-interface {v3}, Landroidx/camera/core/impl/CameraInfoInternal;->r()Landroidx/camera/core/impl/Timebase;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {v3, v15}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    invoke-virtual/range {p2 .. p2}, Landroidx/camera/core/impl/StreamSpec;->i()Landroidx/camera/core/impl/StreamSpec$Builder;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroidx/camera/core/impl/StreamSpec$Builder;->f(Landroid/util/Size;)Landroidx/camera/core/impl/StreamSpec$Builder;

    invoke-virtual {v3, v9}, Landroidx/camera/core/impl/StreamSpec$Builder;->c(Landroid/util/Range;)Landroidx/camera/core/impl/StreamSpec$Builder;

    invoke-virtual {v3}, Landroidx/camera/core/impl/StreamSpec$Builder;->a()Landroidx/camera/core/impl/StreamSpec;

    move-result-object v21

    iget-object v3, v0, Landroidx/camera/video/VideoCapture;->r:Landroidx/camera/core/processing/SurfaceEdge;

    if-nez v3, :cond_1b

    const/4 v3, 0x1

    :goto_16
    const/4 v4, 0x0

    goto :goto_17

    :cond_1b
    const/4 v3, 0x0

    goto :goto_16

    :goto_17
    invoke-static {v4, v3}, Landroidx/core/util/Preconditions;->f(Ljava/lang/String;Z)V

    new-instance v18, Landroidx/camera/core/processing/SurfaceEdge;

    iget-object v3, v0, Landroidx/camera/core/UseCase;->l:Landroid/graphics/Matrix;

    invoke-interface {v1}, Landroidx/camera/core/impl/CameraInternal;->p()Z

    move-result v23

    iget-object v4, v0, Landroidx/camera/video/VideoCapture;->y:Landroid/graphics/Rect;

    iget v5, v0, Landroidx/camera/video/VideoCapture;->z:I

    iget-object v8, v0, Landroidx/camera/core/UseCase;->h:Landroidx/camera/core/impl/UseCaseConfig;

    check-cast v8, Landroidx/camera/core/impl/ImageOutputConfig;

    invoke-interface {v8}, Landroidx/camera/core/impl/ImageOutputConfig;->b0()I

    move-result v26

    invoke-interface {v1}, Landroidx/camera/core/impl/CameraInternal;->p()Z

    move-result v8

    if-eqz v8, :cond_1c

    invoke-virtual {v0, v1}, Landroidx/camera/core/UseCase;->n(Landroidx/camera/core/impl/CameraInternal;)Z

    move-result v8

    if-eqz v8, :cond_1c

    const/16 v27, 0x1

    goto :goto_18

    :cond_1c
    const/16 v27, 0x0

    :goto_18
    const/16 v19, 0x2

    const/16 v20, 0x22

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    move/from16 v25, v5

    invoke-direct/range {v18 .. v27}, Landroidx/camera/core/processing/SurfaceEdge;-><init>(IILandroidx/camera/core/impl/StreamSpec;Landroid/graphics/Matrix;ZLandroid/graphics/Rect;IIZ)V

    move-object/from16 v3, v18

    iput-object v3, v0, Landroidx/camera/video/VideoCapture;->r:Landroidx/camera/core/processing/SurfaceEdge;

    invoke-virtual {v3, v7}, Landroidx/camera/core/processing/SurfaceEdge;->a(Ljava/lang/Runnable;)V

    iget-object v3, v0, Landroidx/camera/video/VideoCapture;->x:Landroidx/camera/core/processing/SurfaceProcessorNode;

    iget-object v4, v0, Landroidx/camera/video/VideoCapture;->r:Landroidx/camera/core/processing/SurfaceEdge;

    if-eqz v3, :cond_1d

    iget v3, v4, Landroidx/camera/core/processing/SurfaceEdge;->f:I

    iget v5, v4, Landroidx/camera/core/processing/SurfaceEdge;->a:I

    iget-object v7, v4, Landroidx/camera/core/processing/SurfaceEdge;->d:Landroid/graphics/Rect;

    iget v8, v4, Landroidx/camera/core/processing/SurfaceEdge;->i:I

    invoke-static {v7}, Landroidx/camera/core/impl/utils/TransformUtils;->g(Landroid/graphics/Rect;)Landroid/util/Size;

    move-result-object v9

    invoke-static {v9, v8}, Landroidx/camera/core/impl/utils/TransformUtils;->i(Landroid/util/Size;I)Landroid/util/Size;

    move-result-object v21

    iget v8, v4, Landroidx/camera/core/processing/SurfaceEdge;->i:I

    iget-boolean v4, v4, Landroidx/camera/core/processing/SurfaceEdge;->e:Z

    move/from16 v18, v3

    move/from16 v23, v4

    move/from16 v19, v5

    move-object/from16 v20, v7

    move/from16 v22, v8

    invoke-static/range {v18 .. v23}, Landroidx/camera/core/processing/util/OutConfig;->h(IILandroid/graphics/Rect;Landroid/util/Size;IZ)Landroidx/camera/core/processing/util/OutConfig;

    move-result-object v3

    iget-object v4, v0, Landroidx/camera/video/VideoCapture;->r:Landroidx/camera/core/processing/SurfaceEdge;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/camera/core/processing/SurfaceProcessorNode$In;->c(Landroidx/camera/core/processing/SurfaceEdge;Ljava/util/List;)Landroidx/camera/core/processing/SurfaceProcessorNode$In;

    move-result-object v4

    iget-object v5, v0, Landroidx/camera/video/VideoCapture;->x:Landroidx/camera/core/processing/SurfaceProcessorNode;

    invoke-virtual {v5, v4}, Landroidx/camera/core/processing/SurfaceProcessorNode;->c(Landroidx/camera/core/processing/SurfaceProcessorNode$In;)Landroidx/camera/core/processing/SurfaceProcessorNode$Out;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/processing/SurfaceEdge;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Loy0;

    move-object v4, v1

    const/4 v1, 0x2

    move-object/from16 v5, p1

    move v7, v2

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v7}, Loy0;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    move-object v1, v4

    move-object v4, v0

    move-object v0, v2

    move-object v2, v5

    invoke-virtual {v3, v4}, Landroidx/camera/core/processing/SurfaceEdge;->a(Ljava/lang/Runnable;)V

    const/4 v13, 0x1

    invoke-virtual {v3, v1, v13}, Landroidx/camera/core/processing/SurfaceEdge;->d(Landroidx/camera/core/impl/CameraInternal;Z)Landroidx/camera/core/SurfaceRequest;

    move-result-object v1

    iput-object v1, v0, Landroidx/camera/video/VideoCapture;->v:Landroidx/camera/core/SurfaceRequest;

    iget-object v1, v0, Landroidx/camera/video/VideoCapture;->r:Landroidx/camera/core/processing/SurfaceEdge;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    invoke-virtual {v1}, Landroidx/camera/core/processing/SurfaceEdge;->b()V

    iget-boolean v3, v1, Landroidx/camera/core/processing/SurfaceEdge;->j:Z

    xor-int/2addr v3, v13

    const-string v4, "Consumer can only be linked once."

    invoke-static {v4, v3}, Landroidx/core/util/Preconditions;->f(Ljava/lang/String;Z)V

    iput-boolean v13, v1, Landroidx/camera/core/processing/SurfaceEdge;->j:Z

    iget-object v1, v1, Landroidx/camera/core/processing/SurfaceEdge;->l:Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;

    iput-object v1, v0, Landroidx/camera/video/VideoCapture;->q:Landroidx/camera/core/impl/DeferrableSurface;

    iget-object v3, v1, Landroidx/camera/core/impl/DeferrableSurface;->e:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v3}, Landroidx/camera/core/impl/utils/futures/Futures;->h(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    new-instance v4, Lw21;

    const/16 v5, 0xb

    invoke-direct {v4, v0, v1, v5}, Lw21;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->c()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_19

    :cond_1d
    move v7, v2

    const/4 v13, 0x1

    move-object/from16 v2, p1

    invoke-virtual {v4, v1, v13}, Landroidx/camera/core/processing/SurfaceEdge;->d(Landroidx/camera/core/impl/CameraInternal;Z)Landroidx/camera/core/SurfaceRequest;

    move-result-object v1

    iput-object v1, v0, Landroidx/camera/video/VideoCapture;->v:Landroidx/camera/core/SurfaceRequest;

    iget-object v1, v1, Landroidx/camera/core/SurfaceRequest;->m:Landroidx/camera/core/impl/DeferrableSurface;

    iput-object v1, v0, Landroidx/camera/video/VideoCapture;->q:Landroidx/camera/core/impl/DeferrableSurface;

    :goto_19
    sget-object v1, Landroidx/camera/video/impl/VideoCaptureConfig;->N:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v2, v1}, Landroidx/camera/core/impl/ReadableConfig;->a(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/video/VideoOutput;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Landroidx/camera/video/VideoCapture;->v:Landroidx/camera/core/SurfaceRequest;

    invoke-interface {v1, v3, v6, v7}, Landroidx/camera/video/VideoOutput;->g(Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;Z)V

    invoke-virtual {v0}, Landroidx/camera/video/VideoCapture;->O()V

    iget-object v1, v0, Landroidx/camera/video/VideoCapture;->q:Landroidx/camera/core/impl/DeferrableSurface;

    const-class v3, Landroid/media/MediaCodec;

    iput-object v3, v1, Landroidx/camera/core/impl/DeferrableSurface;->j:Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Landroidx/camera/core/impl/StreamSpec;->f()Landroid/util/Size;

    move-result-object v1

    invoke-static {v2, v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->m(Landroidx/camera/core/impl/UseCaseConfig;Landroid/util/Size;)Landroidx/camera/core/impl/SessionConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroidx/camera/core/impl/SessionConfig$Builder;->v(I)V

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v3}, Landroidx/camera/core/UseCase;->a(Landroidx/camera/core/impl/SessionConfig$Builder;Landroidx/camera/core/impl/StreamSpec;)V

    invoke-interface {v2}, Landroidx/camera/core/impl/UseCaseConfig;->w()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/SessionConfig$Builder;->x(I)V

    iget-object v2, v0, Landroidx/camera/video/VideoCapture;->C:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;->b()V

    :cond_1e
    new-instance v2, Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    new-instance v4, Lf20;

    const/4 v5, 0x3

    invoke-direct {v4, v0, v5}, Lf20;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v2, v4}, Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;-><init>(Landroidx/camera/core/impl/SessionConfig$ErrorListener;)V

    iput-object v2, v0, Landroidx/camera/video/VideoCapture;->C:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/SessionConfig$Builder;->p(Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;)V

    invoke-virtual {v3}, Landroidx/camera/core/impl/StreamSpec;->d()Landroidx/camera/core/impl/Config;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v3}, Landroidx/camera/core/impl/StreamSpec;->d()Landroidx/camera/core/impl/Config;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/camera/core/impl/SessionConfig$Builder;->e(Landroidx/camera/core/impl/Config;)V

    :cond_1f
    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lbm;->i(Ljava/lang/Throwable;)V

    const/16 v16, 0x0

    return-object v16
.end method

.method public final J(Landroidx/camera/core/impl/CameraInternal;)I
    .locals 2

    invoke-virtual {p0, p1}, Landroidx/camera/core/UseCase;->n(Landroidx/camera/core/impl/CameraInternal;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/camera/core/UseCase;->h(Landroidx/camera/core/impl/CameraInternal;Z)I

    move-result p1

    invoke-virtual {p0}, Landroidx/camera/video/VideoCapture;->P()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Landroidx/camera/video/VideoCapture;->s:Landroidx/camera/video/StreamInfo;

    check-cast p0, Landroidx/camera/video/AutoValue_StreamInfo;

    iget-object p0, p0, Landroidx/camera/video/AutoValue_StreamInfo;->f:Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/camera/core/SurfaceRequest$TransformationInfo;->b()I

    move-result v1

    invoke-virtual {p0}, Landroidx/camera/core/SurfaceRequest$TransformationInfo;->f()Z

    move-result p0

    if-eq v0, p0, :cond_0

    neg-int v1, v1

    :cond_0
    sub-int/2addr p1, v1

    invoke-static {p1}, Landroidx/camera/core/impl/utils/TransformUtils;->k(I)I

    move-result p0

    return p0

    :cond_1
    return p1
.end method

.method public final K()Landroidx/camera/video/VideoOutput;
    .locals 1

    iget-object p0, p0, Landroidx/camera/core/UseCase;->h:Landroidx/camera/core/impl/UseCaseConfig;

    check-cast p0, Landroidx/camera/video/impl/VideoCaptureConfig;

    sget-object v0, Landroidx/camera/video/impl/VideoCaptureConfig;->N:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {p0, v0}, Landroidx/camera/core/impl/ReadableConfig;->a(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/video/VideoOutput;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final L(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/video/impl/VideoCaptureConfig;ILandroid/graphics/Rect;Landroid/util/Size;Landroidx/camera/core/DynamicRange;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraInternal;->p()Z

    move-result p3

    if-eqz p3, :cond_1

    sget-object p3, Landroidx/camera/video/impl/VideoCaptureConfig;->P:Landroidx/camera/core/impl/Config$Option;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p3, v2}, Landroidx/camera/core/impl/ReadableConfig;->f(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraInternal;->p()Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Landroidx/camera/video/internal/compat/quirk/DeviceQuirks;->a:Landroidx/camera/core/impl/Quirks;

    invoke-static {p2}, Landroidx/camera/core/internal/compat/quirk/SurfaceProcessingQuirk;->e(Landroidx/camera/core/impl/Quirks;)Z

    move-result p2

    if-nez p2, :cond_8

    invoke-interface {p1}, Landroidx/camera/core/impl/CameraInternal;->k()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object p2

    invoke-interface {p2}, Landroidx/camera/core/impl/CameraInfoInternal;->j()Landroidx/camera/core/impl/Quirks;

    move-result-object p2

    invoke-static {p2}, Landroidx/camera/core/internal/compat/quirk/SurfaceProcessingQuirk;->e(Landroidx/camera/core/impl/Quirks;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    const-class p2, Landroidx/camera/video/internal/compat/quirk/HdrRepeatingRequestFailureQuirk;

    sget-object p3, Landroidx/camera/video/internal/compat/quirk/DeviceQuirks;->a:Landroidx/camera/core/impl/Quirks;

    invoke-virtual {p3, p2}, Landroidx/camera/core/impl/Quirks;->b(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object p2

    check-cast p2, Landroidx/camera/video/internal/compat/quirk/HdrRepeatingRequestFailureQuirk;

    invoke-interface {p1}, Landroidx/camera/core/impl/CameraInternal;->p()Z

    move-result p3

    if-eqz p3, :cond_4

    if-eqz p2, :cond_4

    sget-object p2, Landroidx/camera/core/DynamicRange;->d:Landroidx/camera/core/DynamicRange;

    if-eq p6, p2, :cond_3

    move p2, v1

    goto :goto_0

    :cond_3
    move p2, v0

    :goto_0
    const-string p3, "samsung"

    sget-object p6, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {p3, p6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    const-string p3, "pa3q"

    sget-object p6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {p3, p6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p5}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p3

    if-ne p2, p3, :cond_8

    invoke-virtual {p5}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p3

    if-eq p2, p3, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraInternal;->p()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p0, p1}, Landroidx/camera/core/UseCase;->n(Landroidx/camera/core/impl/CameraInternal;)Z

    move-result p1

    if-eqz p1, :cond_6

    return v1

    :cond_6
    invoke-virtual {p0}, Landroidx/camera/video/VideoCapture;->P()Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_2

    :cond_7
    :goto_1
    return v0

    :cond_8
    :goto_2
    return v1
.end method

.method public final M()V
    .locals 3

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->c()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/camera/video/VideoCapture;->H()V

    iget-object v0, p0, Landroidx/camera/core/UseCase;->h:Landroidx/camera/core/impl/UseCaseConfig;

    check-cast v0, Landroidx/camera/video/impl/VideoCaptureConfig;

    iget-object v1, p0, Landroidx/camera/core/UseCase;->i:Landroidx/camera/core/impl/StreamSpec;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Landroidx/camera/video/VideoCapture;->I(Landroidx/camera/video/impl/VideoCaptureConfig;Landroidx/camera/core/impl/StreamSpec;)Landroidx/camera/core/impl/SessionConfig$Builder;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/video/VideoCapture;->t:Landroidx/camera/core/impl/SessionConfig$Builder;

    iget-object v1, p0, Landroidx/camera/video/VideoCapture;->s:Landroidx/camera/video/StreamInfo;

    iget-object v2, p0, Landroidx/camera/core/UseCase;->i:Landroidx/camera/core/impl/StreamSpec;

    invoke-virtual {p0, v0, v1, v2}, Landroidx/camera/video/VideoCapture;->G(Landroidx/camera/core/impl/SessionConfig$Builder;Landroidx/camera/video/StreamInfo;Landroidx/camera/core/impl/StreamSpec;)V

    iget-object v0, p0, Landroidx/camera/video/VideoCapture;->t:Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$Builder;->k()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/camera/core/UseCase;->D(Ljava/util/List;)V

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->q()V

    return-void
.end method

.method public final O()V
    .locals 3

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->c()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/video/VideoCapture;->r:Landroidx/camera/core/processing/SurfaceEdge;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroidx/camera/video/VideoCapture;->J(Landroidx/camera/core/impl/CameraInternal;)I

    move-result v0

    iput v0, p0, Landroidx/camera/video/VideoCapture;->z:I

    iget-object p0, p0, Landroidx/camera/core/UseCase;->h:Landroidx/camera/core/impl/UseCaseConfig;

    check-cast p0, Landroidx/camera/core/impl/ImageOutputConfig;

    invoke-interface {p0}, Landroidx/camera/core/impl/ImageOutputConfig;->b0()I

    move-result p0

    new-instance v2, Le21;

    invoke-direct {v2, v1, v0, p0}, Le21;-><init>(Landroidx/camera/core/processing/SurfaceEdge;II)V

    invoke-static {v2}, Landroidx/camera/core/impl/utils/Threads;->c(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final P()Z
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/VideoCapture;->s:Landroidx/camera/video/StreamInfo;

    check-cast p0, Landroidx/camera/video/AutoValue_StreamInfo;

    iget-object p0, p0, Landroidx/camera/video/AutoValue_StreamInfo;->f:Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final f(ZLandroidx/camera/core/impl/UseCaseConfigFactory;)Landroidx/camera/core/impl/UseCaseConfig;
    .locals 3

    sget-object v0, Landroidx/camera/video/VideoCapture;->F:Landroidx/camera/video/VideoCapture$Defaults;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/camera/video/VideoCapture$Defaults;->a:Landroidx/camera/video/impl/VideoCaptureConfig;

    invoke-interface {v0}, Landroidx/camera/core/impl/UseCaseConfig;->S()Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p2, v1, v2}, Landroidx/camera/core/impl/UseCaseConfigFactory;->a(Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;I)Landroidx/camera/core/impl/Config;

    move-result-object p2

    if-eqz p1, :cond_0

    invoke-static {p2, v0}, Landroidx/camera/core/impl/Config;->U(Landroidx/camera/core/impl/Config;Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/OptionsBundle;

    move-result-object p2

    :cond_0
    if-nez p2, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {p0, p2}, Landroidx/camera/video/VideoCapture;->m(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/UseCaseConfig$Builder;

    move-result-object p0

    check-cast p0, Landroidx/camera/video/VideoCapture$Builder;

    new-instance p1, Landroidx/camera/video/impl/VideoCaptureConfig;

    iget-object p0, p0, Landroidx/camera/video/VideoCapture$Builder;->a:Landroidx/camera/core/impl/MutableOptionsBundle;

    invoke-static {p0}, Landroidx/camera/core/impl/OptionsBundle;->c0(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/OptionsBundle;

    move-result-object p0

    invoke-direct {p1, p0}, Landroidx/camera/video/impl/VideoCaptureConfig;-><init>(Landroidx/camera/core/impl/OptionsBundle;)V

    return-object p1
.end method

.method public final j(Landroidx/camera/core/impl/CameraInfoInternal;)Ljava/util/Set;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/camera/video/VideoCapture;->K()Landroidx/camera/video/VideoOutput;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Landroidx/camera/video/VideoOutput;->e(Landroidx/camera/core/CameraInfo;I)Landroidx/camera/video/VideoCapabilities;

    move-result-object p0

    invoke-interface {p0}, Landroidx/camera/video/VideoCapabilities;->a()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final k()Ljava/util/HashSet;
    .locals 1

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final m(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/UseCaseConfig$Builder;
    .locals 0

    new-instance p0, Landroidx/camera/video/VideoCapture$Builder;

    invoke-static {p1}, Landroidx/camera/core/impl/MutableOptionsBundle;->e0(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/MutableOptionsBundle;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/camera/video/VideoCapture$Builder;-><init>(Landroidx/camera/core/impl/MutableOptionsBundle;)V

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->g()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VideoCapture:"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/impl/UseCaseConfig$Builder;)Landroidx/camera/core/impl/UseCaseConfig;
    .locals 25

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Landroidx/camera/video/VideoCapture;->K()Landroidx/camera/video/VideoOutput;

    move-result-object v1

    invoke-interface {v1}, Landroidx/camera/video/VideoOutput;->b()Landroidx/camera/core/impl/Observable;

    move-result-object v1

    invoke-interface {v1}, Landroidx/camera/core/impl/Observable;->a()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    check-cast v1, Landroidx/camera/video/MediaSpec;

    if-eqz v1, :cond_2c

    move-object v2, v1

    check-cast v2, Landroidx/camera/video/AutoValue_MediaSpec;

    iget-object v2, v2, Landroidx/camera/video/AutoValue_MediaSpec;->a:Landroidx/camera/video/VideoSpec;

    check-cast v2, Landroidx/camera/video/AutoValue_VideoSpec;

    iget-object v4, v2, Landroidx/camera/video/AutoValue_VideoSpec;->c:Landroidx/camera/video/QualitySelector;

    invoke-interface/range {p2 .. p2}, Landroidx/camera/core/impl/UseCaseConfig$Builder;->d()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v5

    check-cast v5, Landroidx/camera/video/impl/VideoCaptureConfig;

    sget-object v6, Landroidx/camera/core/impl/ImageOutputConfig;->t:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v5, v6}, Landroidx/camera/core/impl/ReadableConfig;->b(Landroidx/camera/core/impl/Config$Option;)Z

    move-result v6

    const/4 v8, 0x1

    if-eqz v6, :cond_2

    sget-object v0, Landroidx/camera/video/VideoSpec;->b:Landroidx/camera/video/QualitySelector;

    if-ne v4, v0, :cond_1

    move v7, v8

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    const-string v0, "Custom ordered resolutions and QualitySelector can\'t both be set"

    invoke-static {v7, v0}, Landroidx/core/util/Preconditions;->b(ZLjava/lang/String;)V

    goto/16 :goto_1a

    :cond_2
    invoke-interface {v5}, Landroidx/camera/core/impl/ImageInputConfig;->I()Landroidx/camera/core/DynamicRange;

    move-result-object v6

    invoke-interface {v5}, Landroidx/camera/core/impl/UseCaseConfig;->T()I

    move-result v9

    sget-object v10, Landroidx/camera/core/impl/StreamSpec;->a:Landroid/util/Range;

    invoke-interface {v5, v10}, Landroidx/camera/core/impl/UseCaseConfig;->y(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Landroidx/camera/video/VideoCapture;->K()Landroidx/camera/video/VideoOutput;

    move-result-object v11

    invoke-interface {v11, v0, v9}, Landroidx/camera/video/VideoOutput;->e(Landroidx/camera/core/CameraInfo;I)Landroidx/camera/video/VideoCapabilities;

    move-result-object v11

    invoke-virtual {v6}, Landroidx/camera/core/DynamicRange;->toString()Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    const/4 v12, 0x3

    const-string v13, "VideoCapture"

    invoke-static {v12, v13}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    invoke-interface {v11, v6}, Landroidx/camera/video/VideoCapabilities;->c(Landroidx/camera/core/DynamicRange;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v12, v13}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_4

    if-eq v9, v8, :cond_3

    goto :goto_2

    :cond_3
    const-string v0, "No supported quality on the device for high-speed capture."

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-object v3

    :cond_4
    :goto_2
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    const/4 v3, 0x5

    if-eqz v15, :cond_5

    invoke-static {v3, v13}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    goto/16 :goto_1a

    :cond_5
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    const-string v8, "QualitySelector"

    if-eqz v15, :cond_6

    invoke-static {v3, v8}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v23, v1

    move-object/from16 v19, v4

    goto/16 :goto_d

    :cond_6
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-static {v12, v8}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    new-instance v15, Ljava/util/LinkedHashSet;

    invoke-direct {v15}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v7, v4, Landroidx/camera/video/QualitySelector;->a:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v12, v19

    check-cast v12, Landroidx/camera/video/Quality;

    sget-object v3, Landroidx/camera/video/Quality;->f:Landroidx/camera/video/Quality;

    if-ne v12, v3, :cond_7

    invoke-interface {v15, v14}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    :cond_7
    sget-object v3, Landroidx/camera/video/Quality;->e:Landroidx/camera/video/Quality;

    if-ne v12, v3, :cond_8

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-interface {v15, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    :cond_8
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v15, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x5

    goto :goto_4

    :cond_9
    invoke-static {v12}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const/4 v3, 0x5

    invoke-static {v3, v8}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    :goto_4
    const/4 v12, 0x3

    goto :goto_3

    :cond_a
    :goto_5
    iget-object v3, v4, Landroidx/camera/video/QualitySelector;->b:Landroidx/camera/video/FallbackStrategy;

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_b

    :goto_6
    move-object/from16 v23, v1

    move-object/from16 v19, v4

    goto/16 :goto_c

    :cond_b
    invoke-interface {v15, v14}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_c

    goto :goto_6

    :cond_c
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const/4 v7, 0x3

    invoke-static {v7, v8}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    sget-object v7, Landroidx/camera/video/FallbackStrategy;->a:Landroidx/camera/video/FallbackStrategy;

    if-ne v3, v7, :cond_d

    goto :goto_6

    :cond_d
    invoke-static {v3}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result v7

    const-string v12, "Currently only support type RuleStrategy"

    invoke-static {v12, v7}, Landroidx/core/util/Preconditions;->f(Ljava/lang/String;Z)V

    move-object v7, v3

    check-cast v7, Landroidx/camera/video/FallbackStrategy$RuleStrategy;

    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v19, v4

    sget-object v4, Landroidx/camera/video/Quality;->i:Ljava/util/List;

    invoke-direct {v12, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v4, v7

    check-cast v4, Landroidx/camera/video/AutoValue_FallbackStrategy_RuleStrategy;

    iget-object v4, v4, Landroidx/camera/video/AutoValue_FallbackStrategy_RuleStrategy;->b:Landroidx/camera/video/Quality;

    move-object/from16 v20, v7

    sget-object v7, Landroidx/camera/video/Quality;->f:Landroidx/camera/video/Quality;

    if-ne v4, v7, :cond_e

    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/camera/video/Quality;

    goto :goto_7

    :cond_e
    move-object/from16 v7, v20

    check-cast v7, Landroidx/camera/video/AutoValue_FallbackStrategy_RuleStrategy;

    iget-object v7, v7, Landroidx/camera/video/AutoValue_FallbackStrategy_RuleStrategy;->b:Landroidx/camera/video/Quality;

    sget-object v4, Landroidx/camera/video/Quality;->e:Landroidx/camera/video/Quality;

    if-ne v7, v4, :cond_f

    const/4 v4, 0x1

    invoke-static {v4, v12}, Lcj;->c(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/camera/video/Quality;

    :cond_f
    :goto_7
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    move-object/from16 v21, v7

    const/4 v7, -0x1

    if-eq v4, v7, :cond_10

    const/4 v7, 0x1

    :goto_8
    move/from16 v22, v4

    const/4 v4, 0x0

    goto :goto_9

    :cond_10
    const/4 v7, 0x0

    goto :goto_8

    :goto_9
    invoke-static {v4, v7}, Landroidx/core/util/Preconditions;->f(Ljava/lang/String;Z)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v7, v22, -0x1

    :goto_a
    if-ltz v7, :cond_12

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    move/from16 v24, v7

    move-object/from16 v7, v23

    check-cast v7, Landroidx/camera/video/Quality;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    add-int/lit8 v7, v24, -0x1

    goto :goto_a

    :cond_12
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/16 v17, 0x1

    add-int/lit8 v22, v22, 0x1

    move-object/from16 v23, v1

    move/from16 v1, v22

    :goto_b
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_14

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/video/Quality;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_13

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_14
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0, v8}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    move-object/from16 v1, v20

    check-cast v1, Landroidx/camera/video/AutoValue_FallbackStrategy_RuleStrategy;

    iget v1, v1, Landroidx/camera/video/AutoValue_FallbackStrategy_RuleStrategy;->c:I

    if-eqz v1, :cond_18

    const/4 v8, 0x1

    if-eq v1, v8, :cond_17

    const/4 v8, 0x2

    if-eq v1, v8, :cond_16

    if-ne v1, v0, :cond_15

    invoke-interface {v15, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v15, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_c

    :cond_15
    const-string v0, "Unhandled fallback strategy: "

    invoke-static {v3, v0}, Lno0;->t(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v16, 0x0

    return-object v16

    :cond_16
    invoke-interface {v15, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_c

    :cond_17
    invoke-interface {v15, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v15, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_18
    :goto_c
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_d
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Landroidx/camera/video/QualitySelector;->toString()Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0, v13}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2b

    sget-object v0, Landroidx/camera/video/impl/VideoCaptureConfig;->O:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v5, v0}, Landroidx/camera/core/impl/ReadableConfig;->a(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, v2, Landroidx/camera/video/AutoValue_VideoSpec;->f:I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v11, v6}, Landroidx/camera/video/VideoCapabilities;->c(Landroidx/camera/core/DynamicRange;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/video/Quality;

    invoke-interface {v11, v5, v6}, Landroidx/camera/video/VideoCapabilities;->d(Landroidx/camera/video/Quality;Landroidx/camera/core/DynamicRange;)Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;->g()Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->k()Landroid/util/Size;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_19
    const/4 v8, 0x1

    if-ne v9, v8, :cond_1b

    sget-object v4, Landroidx/camera/core/impl/StreamSpec;->a:Landroid/util/Range;

    invoke-virtual {v4, v10}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface/range {p1 .. p1}, Landroidx/camera/core/impl/CameraInfoInternal;->v()Ljava/util/List;

    move-result-object v4

    goto :goto_f

    :cond_1a
    move-object/from16 v4, p1

    invoke-interface {v4, v10}, Landroidx/camera/core/impl/CameraInfoInternal;->p(Landroid/util/Range;)Ljava/util/List;

    move-result-object v4

    goto :goto_f

    :cond_1b
    move-object/from16 v5, p0

    move-object/from16 v4, p1

    iget-object v5, v5, Landroidx/camera/core/UseCase;->h:Landroidx/camera/core/impl/UseCaseConfig;

    invoke-interface {v5}, Landroidx/camera/core/impl/ImageInputConfig;->m()I

    move-result v5

    invoke-interface {v4, v5}, Landroidx/camera/core/impl/CameraInfoInternal;->k(I)Ljava/util/List;

    move-result-object v4

    :goto_f
    new-instance v5, Landroidx/camera/video/QualityRatioToResolutionsTable;

    invoke-direct {v5, v4, v2}, Landroidx/camera/video/QualityRatioToResolutionsTable;-><init>(Ljava/util/List;Ljava/util/HashMap;)V

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/camera/video/Quality;

    new-instance v8, Landroidx/camera/video/AutoValue_QualityRatioToResolutionsTable_QualityRatio;

    invoke-direct {v8, v7, v1}, Landroidx/camera/video/AutoValue_QualityRatioToResolutionsTable_QualityRatio;-><init>(Landroidx/camera/video/Quality;I)V

    iget-object v9, v5, Landroidx/camera/video/QualityRatioToResolutionsTable;->a:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    new-instance v9, Ljava/util/ArrayList;

    if-eqz v8, :cond_1c

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v8, 0x0

    goto :goto_11

    :cond_1c
    const/4 v8, 0x0

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    :goto_11
    invoke-virtual {v4, v7, v9}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_1d
    invoke-virtual {v4}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1e

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    goto/16 :goto_18

    :cond_1e
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_13
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_27

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Size;

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1f

    goto :goto_13

    :cond_1f
    invoke-interface {v11, v8, v6}, Landroidx/camera/video/VideoCapabilities;->b(Landroid/util/Size;Landroidx/camera/core/DynamicRange;)Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

    move-result-object v9

    if-nez v9, :cond_20

    goto :goto_13

    :cond_20
    invoke-virtual {v6}, Landroidx/camera/core/DynamicRange;->b()Z

    move-result v10

    if-eqz v10, :cond_21

    move-object/from16 v10, v23

    invoke-static {v0, v9, v10, v6}, Landroidx/camera/video/VideoCapture;->N(Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;Landroidx/camera/video/MediaSpec;Landroidx/camera/core/DynamicRange;)Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    move-result-object v9

    :goto_14
    move-object/from16 v18, v2

    move-object/from16 p1, v3

    move-object/from16 v19, v4

    move-object/from16 v17, v6

    goto/16 :goto_17

    :cond_21
    move-object/from16 v10, v23

    invoke-interface {v9}, Landroidx/camera/core/impl/EncoderProfilesProxy;->b()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/high16 v14, -0x80000000

    move v15, v14

    const/4 v14, 0x0

    :goto_15
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_25

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v2

    move-object/from16 v2, v17

    check-cast v2, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    invoke-static {v2, v6}, Landroidx/camera/video/internal/utils/DynamicRangeUtil;->a(Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;Landroidx/camera/core/DynamicRange;)Z

    move-result v17

    if-eqz v17, :cond_24

    move-object/from16 p0, v2

    new-instance v2, Landroidx/camera/core/DynamicRange;

    invoke-virtual/range {p0 .. p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->g()I

    move-result v17

    move-object/from16 p1, v3

    sget-object v3, Landroidx/camera/video/internal/utils/DynamicRangeUtil;->d:Ljava/util/HashMap;

    move-object/from16 v19, v4

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Landroidx/core/util/Preconditions;->a(Z)V

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->b()I

    move-result v4

    move/from16 p0, v4

    sget-object v4, Landroidx/camera/video/internal/utils/DynamicRangeUtil;->c:Ljava/util/HashMap;

    move-object/from16 v17, v6

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Landroidx/core/util/Preconditions;->a(Z)V

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroidx/camera/core/DynamicRange;-><init>(II)V

    invoke-static {v0, v9, v10, v2}, Landroidx/camera/video/VideoCapture;->N(Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;Landroidx/camera/video/MediaSpec;Landroidx/camera/core/DynamicRange;)Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    move-result-object v2

    if-nez v2, :cond_23

    :cond_22
    :goto_16
    move-object/from16 v3, p1

    move-object/from16 v6, v17

    move-object/from16 v2, v18

    move-object/from16 v4, v19

    goto :goto_15

    :cond_23
    invoke-interface {v2}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->i()Landroid/util/Range;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->j()Landroid/util/Range;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v6, Landroidx/camera/core/internal/utils/SizeUtil;->a:Landroid/util/Size;

    mul-int/2addr v3, v4

    if-le v3, v15, :cond_22

    move-object v14, v2

    move v15, v3

    goto :goto_16

    :cond_24
    move-object/from16 p1, v3

    move-object/from16 v19, v4

    move-object/from16 v17, v6

    goto :goto_16

    :cond_25
    move-object v9, v14

    goto/16 :goto_14

    :goto_17
    if-eqz v9, :cond_26

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-interface {v9, v2, v3}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->e(II)Z

    move-result v2

    if-nez v2, :cond_26

    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    :cond_26
    move-object/from16 v3, p1

    move-object/from16 v23, v10

    move-object/from16 v6, v17

    move-object/from16 v2, v18

    move-object/from16 v4, v19

    goto/16 :goto_13

    :cond_27
    move-object/from16 v18, v2

    move-object/from16 p1, v3

    move-object/from16 v19, v4

    move-object/from16 v17, v6

    move-object/from16 v10, v23

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_28

    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/video/Quality;

    invoke-virtual {v1, v2, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    move-object/from16 v3, p1

    move-object/from16 v23, v10

    move-object/from16 v6, v17

    move-object/from16 v2, v18

    goto/16 :goto_12

    :cond_29
    move-object v0, v1

    :goto_18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_19

    :cond_2a
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0, v13}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    invoke-interface/range {p2 .. p2}, Landroidx/camera/core/ExtendableBuilder;->a()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    sget-object v2, Landroidx/camera/core/impl/ImageOutputConfig;->t:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v0, v2, v1}, Landroidx/camera/core/impl/MutableConfig;->o(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    :goto_1a
    invoke-interface/range {p2 .. p2}, Landroidx/camera/core/impl/UseCaseConfig$Builder;->d()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v0

    return-object v0

    :cond_2b
    const-string v0, "Unable to find selected quality"

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    const/16 v16, 0x0

    return-object v16

    :cond_2c
    move-object/from16 v16, v3

    const-string v0, "MediaSpec can\'t be null"

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-object v16

    :catch_0
    move-exception v0

    move-object/from16 v16, v3

    invoke-static {v0}, Lbm;->i(Ljava/lang/Throwable;)V

    return-object v16
.end method

.method public final v()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/camera/core/UseCase;->a:Z

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->e()Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "VideoCapture"

    invoke-static {v1, v2}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    iget-object v1, p0, Landroidx/camera/core/UseCase;->i:Landroidx/camera/core/impl/StreamSpec;

    if-eqz v1, :cond_3

    iget-object v2, p0, Landroidx/camera/video/VideoCapture;->v:Landroidx/camera/core/SurfaceRequest;

    if-eqz v2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/camera/video/VideoCapture;->K()Landroidx/camera/video/VideoOutput;

    move-result-object v2

    invoke-interface {v2}, Landroidx/camera/video/VideoOutput;->c()Landroidx/camera/core/impl/Observable;

    move-result-object v2

    sget-object v3, Landroidx/camera/video/StreamInfo;->a:Landroidx/camera/video/StreamInfo;

    invoke-interface {v2}, Landroidx/camera/core/impl/Observable;->a()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    check-cast v3, Landroidx/camera/video/StreamInfo;

    iput-object v3, p0, Landroidx/camera/video/VideoCapture;->s:Landroidx/camera/video/StreamInfo;

    iget-object v2, p0, Landroidx/camera/core/UseCase;->h:Landroidx/camera/core/impl/UseCaseConfig;

    check-cast v2, Landroidx/camera/video/impl/VideoCaptureConfig;

    invoke-virtual {p0, v2, v1}, Landroidx/camera/video/VideoCapture;->I(Landroidx/camera/video/impl/VideoCaptureConfig;Landroidx/camera/core/impl/StreamSpec;)Landroidx/camera/core/impl/SessionConfig$Builder;

    move-result-object v2

    iput-object v2, p0, Landroidx/camera/video/VideoCapture;->t:Landroidx/camera/core/impl/SessionConfig$Builder;

    iget-object v3, p0, Landroidx/camera/video/VideoCapture;->s:Landroidx/camera/video/StreamInfo;

    invoke-virtual {p0, v2, v3, v1}, Landroidx/camera/video/VideoCapture;->G(Landroidx/camera/core/impl/SessionConfig$Builder;Landroidx/camera/video/StreamInfo;Landroidx/camera/core/impl/StreamSpec;)V

    iget-object v1, p0, Landroidx/camera/video/VideoCapture;->t:Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-virtual {v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->k()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    aget-object v1, v1, v0

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/camera/core/UseCase;->D(Ljava/util/List;)V

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->p()V

    invoke-virtual {p0}, Landroidx/camera/video/VideoCapture;->K()Landroidx/camera/video/VideoOutput;

    move-result-object v1

    invoke-interface {v1}, Landroidx/camera/video/VideoOutput;->c()Landroidx/camera/core/impl/Observable;

    move-result-object v1

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->c()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    iget-object v3, p0, Landroidx/camera/video/VideoCapture;->E:Landroidx/camera/core/impl/Observable$Observer;

    invoke-interface {v1, v2, v3}, Landroidx/camera/core/impl/Observable;->b(Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/Observable$Observer;)V

    iget-object v1, p0, Landroidx/camera/video/VideoCapture;->B:Landroidx/camera/video/VideoCapture$SourceStreamRequirementObserver;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/camera/video/VideoCapture$SourceStreamRequirementObserver;->b()V

    :cond_2
    new-instance v1, Landroidx/camera/video/VideoCapture$SourceStreamRequirementObserver;

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->d()Landroidx/camera/core/impl/CameraControlInternal;

    move-result-object v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, v1, Landroidx/camera/video/VideoCapture$SourceStreamRequirementObserver;->b:Z

    iput-object v2, v1, Landroidx/camera/video/VideoCapture$SourceStreamRequirementObserver;->a:Landroidx/camera/core/impl/CameraControlInternal;

    iput-object v1, p0, Landroidx/camera/video/VideoCapture;->B:Landroidx/camera/video/VideoCapture$SourceStreamRequirementObserver;

    invoke-virtual {p0}, Landroidx/camera/video/VideoCapture;->K()Landroidx/camera/video/VideoOutput;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/video/VideoOutput;->f()Landroidx/camera/core/impl/Observable;

    move-result-object v0

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->c()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iget-object v2, p0, Landroidx/camera/video/VideoCapture;->B:Landroidx/camera/video/VideoCapture$SourceStreamRequirementObserver;

    invoke-interface {v0, v1, v2}, Landroidx/camera/core/impl/Observable;->b(Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/Observable$Observer;)V

    sget-object v0, Landroidx/camera/video/VideoOutput$SourceState;->ACTIVE_NON_STREAMING:Landroidx/camera/video/VideoOutput$SourceState;

    iget-object v1, p0, Landroidx/camera/video/VideoCapture;->w:Landroidx/camera/video/VideoOutput$SourceState;

    if-eq v0, v1, :cond_3

    iput-object v0, p0, Landroidx/camera/video/VideoCapture;->w:Landroidx/camera/video/VideoOutput$SourceState;

    invoke-virtual {p0}, Landroidx/camera/video/VideoCapture;->K()Landroidx/camera/video/VideoOutput;

    move-result-object p0

    invoke-interface {p0, v0}, Landroidx/camera/video/VideoOutput;->d(Landroidx/camera/video/VideoOutput$SourceState;)V

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lbm;->i(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final w()V
    .locals 4

    const/4 v0, 0x3

    const-string v1, "VideoCapture"

    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->b()Z

    move-result v2

    const-string v3, "VideoCapture can only be detached on the main thread."

    invoke-static {v3, v2}, Landroidx/core/util/Preconditions;->f(Ljava/lang/String;Z)V

    iget-object v2, p0, Landroidx/camera/video/VideoCapture;->B:Landroidx/camera/video/VideoCapture$SourceStreamRequirementObserver;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroidx/camera/video/VideoCapture;->K()Landroidx/camera/video/VideoOutput;

    move-result-object v2

    invoke-interface {v2}, Landroidx/camera/video/VideoOutput;->f()Landroidx/camera/core/impl/Observable;

    move-result-object v2

    iget-object v3, p0, Landroidx/camera/video/VideoCapture;->B:Landroidx/camera/video/VideoCapture$SourceStreamRequirementObserver;

    invoke-interface {v2, v3}, Landroidx/camera/core/impl/Observable;->d(Landroidx/camera/core/impl/Observable$Observer;)V

    iget-object v2, p0, Landroidx/camera/video/VideoCapture;->B:Landroidx/camera/video/VideoCapture$SourceStreamRequirementObserver;

    invoke-virtual {v2}, Landroidx/camera/video/VideoCapture$SourceStreamRequirementObserver;->b()V

    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/camera/video/VideoCapture;->B:Landroidx/camera/video/VideoCapture$SourceStreamRequirementObserver;

    :cond_0
    sget-object v2, Landroidx/camera/video/VideoOutput$SourceState;->INACTIVE:Landroidx/camera/video/VideoOutput$SourceState;

    iget-object v3, p0, Landroidx/camera/video/VideoCapture;->w:Landroidx/camera/video/VideoOutput$SourceState;

    if-eq v2, v3, :cond_1

    iput-object v2, p0, Landroidx/camera/video/VideoCapture;->w:Landroidx/camera/video/VideoOutput$SourceState;

    invoke-virtual {p0}, Landroidx/camera/video/VideoCapture;->K()Landroidx/camera/video/VideoOutput;

    move-result-object v3

    invoke-interface {v3, v2}, Landroidx/camera/video/VideoOutput;->d(Landroidx/camera/video/VideoOutput$SourceState;)V

    :cond_1
    invoke-virtual {p0}, Landroidx/camera/video/VideoCapture;->K()Landroidx/camera/video/VideoOutput;

    move-result-object v2

    invoke-interface {v2}, Landroidx/camera/video/VideoOutput;->c()Landroidx/camera/core/impl/Observable;

    move-result-object v2

    iget-object v3, p0, Landroidx/camera/video/VideoCapture;->E:Landroidx/camera/core/impl/Observable$Observer;

    invoke-interface {v2, v3}, Landroidx/camera/core/impl/Observable;->d(Landroidx/camera/core/impl/Observable$Observer;)V

    iget-object v2, p0, Landroidx/camera/video/VideoCapture;->u:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    :cond_2
    invoke-virtual {p0}, Landroidx/camera/video/VideoCapture;->H()V

    return-void
.end method

.method public final x(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/StreamSpec;
    .locals 3

    iget-object v0, p0, Landroidx/camera/video/VideoCapture;->t:Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/SessionConfig$Builder;->e(Landroidx/camera/core/impl/Config;)V

    iget-object v0, p0, Landroidx/camera/video/VideoCapture;->t:Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$Builder;->k()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/camera/core/UseCase;->D(Ljava/util/List;)V

    iget-object p0, p0, Landroidx/camera/core/UseCase;->i:Landroidx/camera/core/impl/StreamSpec;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/camera/core/impl/StreamSpec;->i()Landroidx/camera/core/impl/StreamSpec$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/camera/core/impl/StreamSpec$Builder;->d(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/StreamSpec$Builder;

    invoke-virtual {p0}, Landroidx/camera/core/impl/StreamSpec$Builder;->a()Landroidx/camera/core/impl/StreamSpec;

    move-result-object p0

    return-object p0
.end method

.method public final y(Landroidx/camera/core/impl/StreamSpec;Landroidx/camera/core/impl/StreamSpec;)Landroidx/camera/core/impl/StreamSpec;
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const/4 p2, 0x3

    const-string v0, "VideoCapture"

    invoke-static {p2, v0}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    iget-object p0, p0, Landroidx/camera/core/UseCase;->h:Landroidx/camera/core/impl/UseCaseConfig;

    check-cast p0, Landroidx/camera/video/impl/VideoCaptureConfig;

    invoke-interface {p0}, Landroidx/camera/core/impl/ImageOutputConfig;->P()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroidx/camera/core/impl/StreamSpec;->f()Landroid/util/Size;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroidx/camera/core/impl/StreamSpec;->f()Landroid/util/Size;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    const/4 p0, 0x5

    invoke-static {p0, v0}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    :cond_0
    return-object p1
.end method
