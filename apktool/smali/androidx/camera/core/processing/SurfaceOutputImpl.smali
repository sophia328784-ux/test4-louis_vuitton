.class final Landroidx/camera/core/processing/SurfaceOutputImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/SurfaceOutput;


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:Landroid/view/Surface;

.field public final d:I

.field public final e:Landroid/util/Size;

.field public final f:[F

.field public final g:[F

.field public h:Landroidx/core/util/Consumer;

.field public i:Ljava/util/concurrent/Executor;

.field public j:Z

.field public k:Z

.field public final l:Lcom/google/common/util/concurrent/ListenableFuture;

.field public m:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;


# direct methods
.method public constructor <init>(Landroid/view/Surface;ILandroid/util/Size;Landroidx/camera/core/SurfaceOutput$CameraInputInfo;Landroidx/camera/core/SurfaceOutput$CameraInputInfo;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->b:Ljava/lang/Object;

    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->f:[F

    new-array v2, v0, [F

    iput-object v2, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->g:[F

    new-array v3, v0, [F

    new-array v0, v0, [F

    const/4 v4, 0x0

    iput-boolean v4, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->j:Z

    iput-boolean v4, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->k:Z

    iput-object p1, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->c:Landroid/view/Surface;

    iput p2, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->d:I

    iput-object p3, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->e:Landroid/util/Size;

    invoke-static {v1, v3, p4}, Landroidx/camera/core/processing/SurfaceOutputImpl;->c([F[FLandroidx/camera/core/SurfaceOutput$CameraInputInfo;)V

    invoke-static {v2, v0, p5}, Landroidx/camera/core/processing/SurfaceOutputImpl;->c([F[FLandroidx/camera/core/SurfaceOutput$CameraInputInfo;)V

    new-instance p1, Landroidx/camera/core/processing/e;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Landroidx/camera/core/processing/e;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->a(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->l:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public static c([F[FLandroidx/camera/core/SurfaceOutput$CameraInputInfo;)V
    .locals 11

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Landroidx/camera/core/impl/utils/MatrixExt;->b([F)V

    invoke-virtual {p2}, Landroidx/camera/core/SurfaceOutput$CameraInputInfo;->e()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1, p0}, Landroidx/camera/core/impl/utils/MatrixExt;->a(F[F)V

    invoke-virtual {p2}, Landroidx/camera/core/SurfaceOutput$CameraInputInfo;->d()Z

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    invoke-static {p0, v0, v4, v3, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    invoke-static {p0, v0, v2, v4, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    :cond_1
    invoke-virtual {p2}, Landroidx/camera/core/SurfaceOutput$CameraInputInfo;->c()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {p2}, Landroidx/camera/core/SurfaceOutput$CameraInputInfo;->e()I

    move-result v5

    invoke-static {v1, v5}, Landroidx/camera/core/impl/utils/TransformUtils;->i(Landroid/util/Size;I)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {p2}, Landroidx/camera/core/SurfaceOutput$CameraInputInfo;->c()Landroid/util/Size;

    move-result-object v5

    invoke-static {v5}, Landroidx/camera/core/impl/utils/TransformUtils;->j(Landroid/util/Size;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-static {v1}, Landroidx/camera/core/impl/utils/TransformUtils;->j(Landroid/util/Size;)Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {p2}, Landroidx/camera/core/SurfaceOutput$CameraInputInfo;->e()I

    move-result v7

    invoke-virtual {p2}, Landroidx/camera/core/SurfaceOutput$CameraInputInfo;->d()Z

    move-result v8

    invoke-static {v5, v6, v7, v8}, Landroidx/camera/core/impl/utils/TransformUtils;->a(Landroid/graphics/RectF;Landroid/graphics/RectF;IZ)Landroid/graphics/Matrix;

    move-result-object v5

    new-instance v6, Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroidx/camera/core/SurfaceOutput$CameraInputInfo;->b()Landroid/graphics/Rect;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v5, v6, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v8

    sub-float/2addr v7, v8

    iget v8, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v8

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v8

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v6, v1

    invoke-static {p0, v0, v5, v7, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    invoke-static {p0, v0, v8, v6, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    invoke-virtual {p2}, Landroidx/camera/core/SurfaceOutput$CameraInputInfo;->a()Landroidx/camera/core/impl/CameraInternal;

    move-result-object p2

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-static {p1}, Landroidx/camera/core/impl/utils/MatrixExt;->b([F)V

    if-eqz p2, :cond_2

    invoke-interface {p2}, Landroidx/camera/core/impl/CameraInternal;->p()Z

    move-result v1

    const-string v5, "Camera has no transform."

    invoke-static {v5, v1}, Landroidx/core/util/Preconditions;->f(Ljava/lang/String;Z)V

    invoke-interface {p2}, Landroidx/camera/core/impl/CameraInternal;->b()Landroidx/camera/core/CameraInfo;

    move-result-object v1

    invoke-interface {v1}, Landroidx/camera/core/CameraInfo;->d()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1, p1}, Landroidx/camera/core/impl/utils/MatrixExt;->a(F[F)V

    invoke-interface {p2}, Landroidx/camera/core/impl/CameraInternal;->l()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {p1, v0, v4, v3, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    invoke-static {p1, v0, v2, v4, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    :cond_2
    invoke-static {p1, v0, p1, v0}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    move-object v9, p0

    move-object v5, p0

    move-object v7, p1

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    return-void
.end method


# virtual methods
.method public final Q0([F[F)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroidx/camera/core/processing/SurfaceOutputImpl;->v([F[FZ)V

    return-void
.end method

.method public final R0(Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->i:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->h:Landroidx/core/util/Consumer;

    iget-boolean p1, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->j:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/camera/core/processing/SurfaceOutputImpl;->h()V

    :cond_0
    iget-object p0, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->c:Landroid/view/Surface;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final close()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->k:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->k:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->m:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->b(Ljava/lang/Object;)Z

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getFormat()I
    .locals 0

    iget p0, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->d:I

    return p0
.end method

.method public final getSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->e:Landroid/util/Size;

    return-object p0
.end method

.method public final h()V
    .locals 5

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v1, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->i:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->h:Landroidx/core/util/Consumer;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v4, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->k:Z

    if-nez v4, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v2, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->i:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    iput-boolean v4, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->j:Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    iput-boolean v3, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->j:Z

    :cond_2
    const/4 v2, 0x0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    :try_start_1
    new-instance v1, Landroidx/camera/core/processing/b;

    invoke-direct {v1, p0, v0, v3}, Landroidx/camera/core/processing/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    const-string p0, "SurfaceOutputImpl"

    const/4 v0, 0x3

    invoke-static {v0, p0}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    :cond_3
    return-void

    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final v([F[FZ)V
    .locals 6

    if-eqz p3, :cond_0

    iget-object p0, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->f:[F

    :goto_0
    move-object v4, p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->g:[F

    goto :goto_0

    :goto_1
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    return-void
.end method
