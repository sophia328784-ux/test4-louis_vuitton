.class public final Landroidx/camera/core/Preview;
.super Landroidx/camera/core/UseCase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/Preview$SurfaceProvider;,
        Landroidx/camera/core/Preview$Defaults;,
        Landroidx/camera/core/Preview$Builder;
    }
.end annotation


# static fields
.field public static final x:Landroidx/camera/core/Preview$Defaults;

.field public static final y:Ljava/util/concurrent/Executor;


# instance fields
.field public q:Landroidx/camera/core/Preview$SurfaceProvider;

.field public r:Ljava/util/concurrent/Executor;

.field public s:Landroidx/camera/core/impl/SessionConfig$Builder;

.field public t:Landroidx/camera/core/impl/DeferrableSurface;

.field public u:Landroidx/camera/core/processing/SurfaceEdge;

.field public v:Landroidx/camera/core/SurfaceRequest;

.field public w:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/core/Preview$Defaults;

    invoke-direct {v0}, Landroidx/camera/core/Preview$Defaults;-><init>()V

    sput-object v0, Landroidx/camera/core/Preview;->x:Landroidx/camera/core/Preview$Defaults;

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->c()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/Preview;->y:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final B(Landroid/graphics/Rect;)V
    .locals 2

    iput-object p1, p0, Landroidx/camera/core/UseCase;->k:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->c()Landroidx/camera/core/impl/CameraInternal;

    move-result-object p1

    iget-object v0, p0, Landroidx/camera/core/Preview;->u:Landroidx/camera/core/processing/SurfaceEdge;

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/camera/core/UseCase;->n(Landroidx/camera/core/impl/CameraInternal;)Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Landroidx/camera/core/UseCase;->h(Landroidx/camera/core/impl/CameraInternal;Z)I

    move-result p1

    iget-object p0, p0, Landroidx/camera/core/UseCase;->h:Landroidx/camera/core/impl/UseCaseConfig;

    check-cast p0, Landroidx/camera/core/impl/ImageOutputConfig;

    invoke-interface {p0}, Landroidx/camera/core/impl/ImageOutputConfig;->b0()I

    move-result p0

    new-instance v1, Le21;

    invoke-direct {v1, v0, p1, p0}, Le21;-><init>(Landroidx/camera/core/processing/SurfaceEdge;II)V

    invoke-static {v1}, Landroidx/camera/core/impl/utils/Threads;->c(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final E()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/core/Preview;->w:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;->b()V

    iput-object v1, p0, Landroidx/camera/core/Preview;->w:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    :cond_0
    iget-object v0, p0, Landroidx/camera/core/Preview;->t:Landroidx/camera/core/impl/DeferrableSurface;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/camera/core/impl/DeferrableSurface;->a()V

    iput-object v1, p0, Landroidx/camera/core/Preview;->t:Landroidx/camera/core/impl/DeferrableSurface;

    :cond_1
    iget-object v0, p0, Landroidx/camera/core/Preview;->u:Landroidx/camera/core/processing/SurfaceEdge;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/camera/core/processing/SurfaceEdge;->c()V

    iput-object v1, p0, Landroidx/camera/core/Preview;->u:Landroidx/camera/core/processing/SurfaceEdge;

    :cond_2
    iget-object v0, p0, Landroidx/camera/core/Preview;->v:Landroidx/camera/core/SurfaceRequest;

    if-eqz v0, :cond_3

    iget-object v2, v0, Landroidx/camera/core/SurfaceRequest;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iput-object v1, v0, Landroidx/camera/core/SurfaceRequest;->o:Landroidx/camera/core/SurfaceRequest$TransformationInfoListener;

    iput-object v1, v0, Landroidx/camera/core/SurfaceRequest;->p:Ljava/util/concurrent/Executor;

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_0
    iput-object v1, p0, Landroidx/camera/core/Preview;->v:Landroidx/camera/core/SurfaceRequest;

    return-void
.end method

.method public final F(Landroidx/camera/core/Preview$SurfaceProvider;)V
    .locals 1

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-object v0, p0, Landroidx/camera/core/Preview;->q:Landroidx/camera/core/Preview$SurfaceProvider;

    sget-object p1, Landroidx/camera/core/UseCase$State;->INACTIVE:Landroidx/camera/core/UseCase$State;

    iput-object p1, p0, Landroidx/camera/core/UseCase;->d:Landroidx/camera/core/UseCase$State;

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->r()V

    return-void

    :cond_0
    iput-object p1, p0, Landroidx/camera/core/Preview;->q:Landroidx/camera/core/Preview$SurfaceProvider;

    sget-object p1, Landroidx/camera/core/Preview;->y:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Landroidx/camera/core/Preview;->r:Ljava/util/concurrent/Executor;

    iget-object p1, p0, Landroidx/camera/core/UseCase;->i:Landroidx/camera/core/impl/StreamSpec;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/camera/core/impl/StreamSpec;->f()Landroid/util/Size;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    iget-object p1, p0, Landroidx/camera/core/UseCase;->h:Landroidx/camera/core/impl/UseCaseConfig;

    check-cast p1, Landroidx/camera/core/impl/PreviewConfig;

    iget-object v0, p0, Landroidx/camera/core/UseCase;->i:Landroidx/camera/core/impl/StreamSpec;

    invoke-virtual {p0, p1, v0}, Landroidx/camera/core/Preview;->G(Landroidx/camera/core/impl/PreviewConfig;Landroidx/camera/core/impl/StreamSpec;)V

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->q()V

    :cond_2
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->p()V

    return-void
.end method

.method public final G(Landroidx/camera/core/impl/PreviewConfig;Landroidx/camera/core/impl/StreamSpec;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    invoke-virtual {v0}, Landroidx/camera/core/UseCase;->c()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroidx/camera/core/Preview;->E()V

    iget-object v2, v0, Landroidx/camera/core/Preview;->u:Landroidx/camera/core/processing/SurfaceEdge;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const/4 v5, 0x0

    invoke-static {v5, v2}, Landroidx/core/util/Preconditions;->f(Ljava/lang/String;Z)V

    new-instance v6, Landroidx/camera/core/processing/SurfaceEdge;

    iget-object v10, v0, Landroidx/camera/core/UseCase;->l:Landroid/graphics/Matrix;

    invoke-interface {v1}, Landroidx/camera/core/impl/CameraInternal;->p()Z

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroidx/camera/core/impl/StreamSpec;->f()Landroid/util/Size;

    move-result-object v2

    iget-object v7, v0, Landroidx/camera/core/UseCase;->k:Landroid/graphics/Rect;

    if-eqz v7, :cond_1

    move-object v12, v7

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {v5, v3, v3, v7, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_2
    move-object v12, v5

    :goto_1
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/camera/core/UseCase;->n(Landroidx/camera/core/impl/CameraInternal;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/camera/core/UseCase;->h(Landroidx/camera/core/impl/CameraInternal;Z)I

    move-result v13

    iget-object v2, v0, Landroidx/camera/core/UseCase;->h:Landroidx/camera/core/impl/UseCaseConfig;

    check-cast v2, Landroidx/camera/core/impl/ImageOutputConfig;

    invoke-interface {v2}, Landroidx/camera/core/impl/ImageOutputConfig;->b0()I

    move-result v14

    invoke-interface {v1}, Landroidx/camera/core/impl/CameraInternal;->p()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v1}, Landroidx/camera/core/UseCase;->n(Landroidx/camera/core/impl/CameraInternal;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v15, v4

    goto :goto_2

    :cond_3
    move v15, v3

    :goto_2
    const/4 v7, 0x1

    const/16 v8, 0x22

    move-object/from16 v9, p2

    invoke-direct/range {v6 .. v15}, Landroidx/camera/core/processing/SurfaceEdge;-><init>(IILandroidx/camera/core/impl/StreamSpec;Landroid/graphics/Matrix;ZLandroid/graphics/Rect;IIZ)V

    iput-object v6, v0, Landroidx/camera/core/Preview;->u:Landroidx/camera/core/processing/SurfaceEdge;

    new-instance v2, Lhn0;

    const/4 v5, 0x7

    invoke-direct {v2, v0, v5}, Lhn0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v6, v2}, Landroidx/camera/core/processing/SurfaceEdge;->a(Ljava/lang/Runnable;)V

    iget-object v2, v0, Landroidx/camera/core/Preview;->u:Landroidx/camera/core/processing/SurfaceEdge;

    invoke-virtual {v2, v1, v4}, Landroidx/camera/core/processing/SurfaceEdge;->d(Landroidx/camera/core/impl/CameraInternal;Z)Landroidx/camera/core/SurfaceRequest;

    move-result-object v1

    iput-object v1, v0, Landroidx/camera/core/Preview;->v:Landroidx/camera/core/SurfaceRequest;

    iget-object v1, v1, Landroidx/camera/core/SurfaceRequest;->m:Landroidx/camera/core/impl/DeferrableSurface;

    iput-object v1, v0, Landroidx/camera/core/Preview;->t:Landroidx/camera/core/impl/DeferrableSurface;

    iget-object v1, v0, Landroidx/camera/core/Preview;->q:Landroidx/camera/core/Preview$SurfaceProvider;

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroidx/camera/core/UseCase;->c()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v1

    iget-object v2, v0, Landroidx/camera/core/Preview;->u:Landroidx/camera/core/processing/SurfaceEdge;

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v0, v1}, Landroidx/camera/core/UseCase;->n(Landroidx/camera/core/impl/CameraInternal;)Z

    move-result v5

    invoke-virtual {v0, v1, v5}, Landroidx/camera/core/UseCase;->h(Landroidx/camera/core/impl/CameraInternal;Z)I

    move-result v1

    iget-object v5, v0, Landroidx/camera/core/UseCase;->h:Landroidx/camera/core/impl/UseCaseConfig;

    check-cast v5, Landroidx/camera/core/impl/ImageOutputConfig;

    invoke-interface {v5}, Landroidx/camera/core/impl/ImageOutputConfig;->b0()I

    move-result v5

    new-instance v6, Le21;

    invoke-direct {v6, v2, v1, v5}, Le21;-><init>(Landroidx/camera/core/processing/SurfaceEdge;II)V

    invoke-static {v6}, Landroidx/camera/core/impl/utils/Threads;->c(Ljava/lang/Runnable;)V

    :cond_4
    iget-object v1, v0, Landroidx/camera/core/Preview;->q:Landroidx/camera/core/Preview$SurfaceProvider;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Landroidx/camera/core/Preview;->v:Landroidx/camera/core/SurfaceRequest;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v0, Landroidx/camera/core/Preview;->r:Ljava/util/concurrent/Executor;

    new-instance v6, Laa0;

    const/16 v7, 0x10

    invoke-direct {v6, v1, v2, v7}, Laa0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroidx/camera/core/impl/StreamSpec;->f()Landroid/util/Size;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->m(Landroidx/camera/core/impl/UseCaseConfig;Landroid/util/Size;)Landroidx/camera/core/impl/SessionConfig$Builder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroidx/camera/core/impl/StreamSpec;->g()I

    move-result v5

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SessionConfig$Builder;->v(I)V

    move-object/from16 v9, p2

    invoke-virtual {v0, v1, v9}, Landroidx/camera/core/UseCase;->a(Landroidx/camera/core/impl/SessionConfig$Builder;Landroidx/camera/core/impl/StreamSpec;)V

    invoke-interface {v2}, Landroidx/camera/core/impl/UseCaseConfig;->B()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/SessionConfig$Builder;->u(I)V

    invoke-virtual {v9}, Landroidx/camera/core/impl/StreamSpec;->d()Landroidx/camera/core/impl/Config;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v9}, Landroidx/camera/core/impl/StreamSpec;->d()Landroidx/camera/core/impl/Config;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/SessionConfig$Builder;->e(Landroidx/camera/core/impl/Config;)V

    :cond_6
    iget-object v2, v0, Landroidx/camera/core/Preview;->q:Landroidx/camera/core/Preview$SurfaceProvider;

    if-eqz v2, :cond_7

    iget-object v2, v0, Landroidx/camera/core/Preview;->t:Landroidx/camera/core/impl/DeferrableSurface;

    invoke-virtual {v9}, Landroidx/camera/core/impl/StreamSpec;->b()Landroidx/camera/core/DynamicRange;

    move-result-object v5

    iget-object v6, v0, Landroidx/camera/core/UseCase;->h:Landroidx/camera/core/impl/UseCaseConfig;

    check-cast v6, Landroidx/camera/core/impl/ImageOutputConfig;

    invoke-interface {v6}, Landroidx/camera/core/impl/ImageOutputConfig;->J()I

    move-result v6

    invoke-virtual {v1, v2, v5, v6}, Landroidx/camera/core/impl/SessionConfig$Builder;->i(Landroidx/camera/core/impl/DeferrableSurface;Landroidx/camera/core/DynamicRange;I)V

    :cond_7
    iget-object v2, v0, Landroidx/camera/core/Preview;->w:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;->b()V

    :cond_8
    new-instance v2, Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    new-instance v5, Lf20;

    invoke-direct {v5, v0, v4}, Lf20;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v2, v5}, Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;-><init>(Landroidx/camera/core/impl/SessionConfig$ErrorListener;)V

    iput-object v2, v0, Landroidx/camera/core/Preview;->w:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/SessionConfig$Builder;->p(Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;)V

    iput-object v1, v0, Landroidx/camera/core/Preview;->s:Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-virtual {v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->k()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/camera/core/UseCase;->D(Ljava/util/List;)V

    return-void
.end method

.method public final f(ZLandroidx/camera/core/impl/UseCaseConfigFactory;)Landroidx/camera/core/impl/UseCaseConfig;
    .locals 3

    sget-object v0, Landroidx/camera/core/Preview;->x:Landroidx/camera/core/Preview$Defaults;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/camera/core/Preview$Defaults;->a:Landroidx/camera/core/impl/PreviewConfig;

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
    invoke-virtual {p0, p2}, Landroidx/camera/core/Preview;->m(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/UseCaseConfig$Builder;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/Preview$Builder;

    new-instance p1, Landroidx/camera/core/impl/PreviewConfig;

    iget-object p0, p0, Landroidx/camera/core/Preview$Builder;->a:Landroidx/camera/core/impl/MutableOptionsBundle;

    invoke-static {p0}, Landroidx/camera/core/impl/OptionsBundle;->c0(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/OptionsBundle;

    move-result-object p0

    invoke-direct {p1, p0}, Landroidx/camera/core/impl/PreviewConfig;-><init>(Landroidx/camera/core/impl/OptionsBundle;)V

    return-object p1
.end method

.method public final k()Ljava/util/HashSet;
    .locals 1

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final m(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/UseCaseConfig$Builder;
    .locals 0

    new-instance p0, Landroidx/camera/core/Preview$Builder;

    invoke-static {p1}, Landroidx/camera/core/impl/MutableOptionsBundle;->e0(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/MutableOptionsBundle;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/camera/core/Preview$Builder;-><init>(Landroidx/camera/core/impl/MutableOptionsBundle;)V

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->g()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Preview:"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/impl/UseCaseConfig$Builder;)Landroidx/camera/core/impl/UseCaseConfig;
    .locals 1

    invoke-interface {p2}, Landroidx/camera/core/ExtendableBuilder;->a()Landroidx/camera/core/impl/MutableConfig;

    move-result-object p0

    sget-object p1, Landroidx/camera/core/impl/ImageInputConfig;->h:Landroidx/camera/core/impl/Config$Option;

    const/16 v0, 0x22

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Landroidx/camera/core/impl/MutableConfig;->o(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    invoke-interface {p2}, Landroidx/camera/core/impl/UseCaseConfig$Builder;->d()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object p0

    return-object p0
.end method

.method public final x(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/StreamSpec;
    .locals 3

    iget-object v0, p0, Landroidx/camera/core/Preview;->s:Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/SessionConfig$Builder;->e(Landroidx/camera/core/impl/Config;)V

    iget-object v0, p0, Landroidx/camera/core/Preview;->s:Landroidx/camera/core/impl/SessionConfig$Builder;

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

    const-string v0, "Preview"

    invoke-static {p2, v0}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    iget-object p2, p0, Landroidx/camera/core/UseCase;->h:Landroidx/camera/core/impl/UseCaseConfig;

    check-cast p2, Landroidx/camera/core/impl/PreviewConfig;

    invoke-virtual {p0, p2, p1}, Landroidx/camera/core/Preview;->G(Landroidx/camera/core/impl/PreviewConfig;Landroidx/camera/core/impl/StreamSpec;)V

    return-object p1
.end method

.method public final z()V
    .locals 0

    invoke-virtual {p0}, Landroidx/camera/core/Preview;->E()V

    return-void
.end method
