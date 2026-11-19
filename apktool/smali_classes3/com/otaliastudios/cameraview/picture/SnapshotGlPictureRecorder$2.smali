.class Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;

.field final synthetic val$eglContext:Landroid/opengl/EGLContext;

.field final synthetic val$rotation:I

.field final synthetic val$scaleX:F

.field final synthetic val$scaleY:F

.field final synthetic val$surfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;Landroid/graphics/SurfaceTexture;IFFLandroid/opengl/EGLContext;)V
    .locals 0

    iput-object p1, p0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder$2;->this$0:Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder$2;->val$surfaceTexture:Landroid/graphics/SurfaceTexture;

    iput p3, p0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder$2;->val$rotation:I

    iput p4, p0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder$2;->val$scaleX:F

    iput p5, p0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder$2;->val$scaleY:F

    iput-object p6, p0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder$2;->val$eglContext:Landroid/opengl/EGLContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder$2;->this$0:Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;

    iget-object v2, v0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder$2;->val$surfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v3, v0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder$2;->val$rotation:I

    iget v4, v0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder$2;->val$scaleX:F

    iget v5, v0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder$2;->val$scaleY:F

    iget-object v0, v0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder$2;->val$eglContext:Landroid/opengl/EGLContext;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Landroid/graphics/SurfaceTexture;

    const/16 v7, 0x270f

    invoke-direct {v6, v7}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iget-object v7, v1, Lcom/otaliastudios/cameraview/picture/PictureRecorder;->b:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    iget-object v7, v7, Lcom/otaliastudios/cameraview/PictureResult$Stub;->d:Lcom/otaliastudios/cameraview/size/Size;

    iget v8, v7, Lcom/otaliastudios/cameraview/size/Size;->b:I

    iget v7, v7, Lcom/otaliastudios/cameraview/size/Size;->c:I

    invoke-virtual {v6, v8, v7}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    new-instance v7, Lcom/otaliastudios/opengl/core/EglCore;

    const/4 v8, 0x1

    invoke-direct {v7, v0, v8}, Lcom/otaliastudios/opengl/core/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    new-instance v9, Lcom/otaliastudios/opengl/surface/EglWindowSurface;

    invoke-direct {v9, v7, v6}, Lcom/otaliastudios/opengl/surface/EglWindowSurface;-><init>(Lcom/otaliastudios/opengl/core/EglCore;Landroid/graphics/SurfaceTexture;)V

    iget-object v0, v9, Lcom/otaliastudios/opengl/surface/EglNativeSurface;->a:Lcom/otaliastudios/opengl/core/EglCore;

    iget-object v10, v9, Lcom/otaliastudios/opengl/surface/EglNativeSurface;->b:Lcom/otaliastudios/opengl/internal/EglSurface;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v0, Lcom/otaliastudios/opengl/core/EglNativeCore;->a:Lcom/otaliastudios/opengl/internal/EglDisplay;

    sget-object v12, Lcom/otaliastudios/opengl/internal/EglKt;->a:Lcom/otaliastudios/opengl/internal/EglContext;

    iget-object v0, v0, Lcom/otaliastudios/opengl/core/EglNativeCore;->b:Lcom/otaliastudios/opengl/internal/EglContext;

    iget-object v11, v11, Lcom/otaliastudios/opengl/internal/EglDisplay;->a:Landroid/opengl/EGLDisplay;

    iget-object v10, v10, Lcom/otaliastudios/opengl/internal/EglSurface;->a:Landroid/opengl/EGLSurface;

    iget-object v0, v0, Lcom/otaliastudios/opengl/internal/EglContext;->a:Landroid/opengl/EGLContext;

    invoke-static {v11, v10, v10, v0}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->k:Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;

    iget-object v10, v0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->b:[F

    invoke-virtual {v2, v10}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v0, v11, v4

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v0, v12

    sub-float v13, v11, v5

    div-float/2addr v13, v12

    const/4 v12, 0x0

    const/4 v14, 0x0

    invoke-static {v10, v12, v0, v13, v14}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    invoke-static {v10, v12, v4, v5, v11}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v10, v12, v4, v4, v14}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v0, v1, Lcom/otaliastudios/cameraview/picture/PictureRecorder;->b:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    iget v0, v0, Lcom/otaliastudios/cameraview/PictureResult$Stub;->c:I

    add-int/2addr v3, v0

    int-to-float v0, v3

    move v3, v14

    const/high16 v15, 0x3f800000    # 1.0f

    move v5, v11

    const/4 v11, 0x0

    const/4 v13, 0x0

    move v8, v12

    move v12, v0

    invoke-static/range {v10 .. v15}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    const/high16 v11, -0x40800000    # -1.0f

    invoke-static {v10, v8, v5, v11, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    const/high16 v12, -0x41000000    # -0.5f

    invoke-static {v10, v8, v12, v12, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-boolean v0, v1, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->i:Z

    const v10, 0x8d65

    const/4 v13, 0x0

    if-eqz v0, :cond_1

    iget-object v14, v1, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->j:Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;

    sget-object v0, Lcom/otaliastudios/cameraview/overlay/Overlay$Target;->PICTURE_SNAPSHOT:Lcom/otaliastudios/cameraview/overlay/Overlay$Target;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v15, v14, Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;->a:Lcom/otaliastudios/cameraview/overlay/Overlay;

    invoke-interface {v15}, Lcom/otaliastudios/cameraview/overlay/Overlay;->getHardwareCanvasEnabled()Z

    move-result v15
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v12, v14, Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;->c:Landroid/view/Surface;

    if-eqz v15, :cond_0

    :try_start_1
    invoke-virtual {v12}, Landroid/view/Surface;->lockHardwareCanvas()Landroid/graphics/Canvas;

    move-result-object v12

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-virtual {v12, v13}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v12

    :goto_0
    sget-object v15, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v12, v8, v15}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v15, v14, Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;->a:Lcom/otaliastudios/cameraview/overlay/Overlay;

    invoke-interface {v15, v0, v12}, Lcom/otaliastudios/cameraview/overlay/Overlay;->b(Lcom/otaliastudios/cameraview/overlay/Overlay$Target;Landroid/graphics/Canvas;)V

    iget-object v0, v14, Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;->c:Landroid/view/Surface;

    invoke-virtual {v0, v12}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    sget-object v12, Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;->g:Lcom/otaliastudios/cameraview/CameraLogger;

    const-string v15, "Got Surface.OutOfResourcesException while drawing video overlays"

    filled-new-array {v15, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v15, 0x2

    invoke-virtual {v12, v15, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    :goto_2
    iget-object v12, v14, Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;->f:Ljava/lang/Object;

    monitor-enter v12

    :try_start_2
    iget-object v0, v14, Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;->e:Lcom/otaliastudios/cameraview/internal/Issue514Workaround;

    iget v0, v0, Lcom/otaliastudios/cameraview/internal/Issue514Workaround;->a:I

    invoke-static {v10, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v0, v14, Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;->b:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, v14, Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;->b:Landroid/graphics/SurfaceTexture;

    iget-object v12, v14, Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;->d:Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;

    iget-object v12, v12, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->b:[F

    invoke-virtual {v0, v12}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    iget-object v0, v1, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->j:Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;->d:Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->b:[F

    invoke-static {v0, v8, v4, v4, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v0, v1, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->j:Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;->d:Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->b:[F

    iget-object v4, v1, Lcom/otaliastudios/cameraview/picture/PictureRecorder;->b:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    iget v4, v4, Lcom/otaliastudios/cameraview/PictureResult$Stub;->c:I

    int-to-float v4, v4

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v0

    move/from16 v18, v4

    invoke-static/range {v16 .. v21}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-object v0, v1, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->j:Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;->d:Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->b:[F

    invoke-static {v0, v8, v5, v11, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget-object v0, v1, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->j:Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;->d:Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->b:[F

    const/high16 v4, -0x41000000    # -0.5f

    invoke-static {v0, v8, v4, v4, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_1
    :goto_3
    iget-object v0, v1, Lcom/otaliastudios/cameraview/picture/PictureRecorder;->b:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    iput v8, v0, Lcom/otaliastudios/cameraview/PictureResult$Stub;->c:I

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sget-object v0, Lcom/otaliastudios/cameraview/picture/SnapshotPictureRecorder;->e:Lcom/otaliastudios/cameraview/CameraLogger;

    const-string v4, "takeFrame:"

    const-string v5, "timestampUs:"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    filled-new-array {v4, v5, v11}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v0, v5, v4}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, v1, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->k:Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;

    invoke-virtual {v0, v2, v3}, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->a(J)V

    iget-boolean v0, v1, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->i:Z

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->j:Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0xb44

    invoke-static {v4}, Landroid/opengl/GLES20;->glDisable(I)V

    const/16 v4, 0xb71

    invoke-static {v4}, Landroid/opengl/GLES20;->glDisable(I)V

    const/16 v4, 0xbe2

    invoke-static {v4}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v4, 0x302

    const/16 v5, 0x303

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    iget-object v4, v0, Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;->f:Ljava/lang/Object;

    monitor-enter v4

    :try_start_4
    iget-object v0, v0, Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;->d:Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;

    invoke-virtual {v0, v2, v3}, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->a(J)V

    monitor-exit v4

    goto :goto_4

    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_2
    :goto_4
    iget-object v0, v1, Lcom/otaliastudios/cameraview/picture/PictureRecorder;->b:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_5
    invoke-virtual {v9, v2}, Lcom/otaliastudios/opengl/surface/EglSurface;->a(Ljava/io/ByteArrayOutputStream;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    iput-object v3, v0, Lcom/otaliastudios/cameraview/PictureResult$Stub;->e:[B

    iget-object v0, v9, Lcom/otaliastudios/opengl/surface/EglNativeSurface;->a:Lcom/otaliastudios/opengl/core/EglCore;

    iget-object v2, v9, Lcom/otaliastudios/opengl/surface/EglNativeSurface;->b:Lcom/otaliastudios/opengl/internal/EglSurface;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/otaliastudios/opengl/core/EglNativeCore;->a:Lcom/otaliastudios/opengl/internal/EglDisplay;

    iget-object v0, v0, Lcom/otaliastudios/opengl/internal/EglDisplay;->a:Landroid/opengl/EGLDisplay;

    iget-object v2, v2, Lcom/otaliastudios/opengl/internal/EglSurface;->a:Landroid/opengl/EGLSurface;

    invoke-static {v0, v2}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    sget-object v0, Lcom/otaliastudios/opengl/internal/EglKt;->c:Lcom/otaliastudios/opengl/internal/EglSurface;

    iput-object v0, v9, Lcom/otaliastudios/opengl/surface/EglNativeSurface;->b:Lcom/otaliastudios/opengl/internal/EglSurface;

    iget-boolean v0, v9, Lcom/otaliastudios/opengl/surface/EglWindowSurface;->d:Z

    if-eqz v0, :cond_4

    iget-object v0, v9, Lcom/otaliastudios/opengl/surface/EglWindowSurface;->c:Landroid/view/Surface;

    if-nez v0, :cond_3

    goto :goto_5

    :cond_3
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :goto_5
    iput-object v13, v9, Lcom/otaliastudios/opengl/surface/EglWindowSurface;->c:Landroid/view/Surface;

    :cond_4
    iget-object v0, v1, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->k:Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->b()V

    invoke-virtual {v6}, Landroid/graphics/SurfaceTexture;->release()V

    iget-boolean v0, v1, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->i:Z

    if-eqz v0, :cond_8

    iget-object v0, v1, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->j:Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;

    iget-object v2, v0, Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;->e:Lcom/otaliastudios/cameraview/internal/Issue514Workaround;

    if-eqz v2, :cond_5

    invoke-static {v10, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iput-object v13, v0, Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;->e:Lcom/otaliastudios/cameraview/internal/Issue514Workaround;

    :cond_5
    iget-object v2, v0, Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;->b:Landroid/graphics/SurfaceTexture;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->release()V

    iput-object v13, v0, Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;->b:Landroid/graphics/SurfaceTexture;

    :cond_6
    iget-object v2, v0, Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;->c:Landroid/view/Surface;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    iput-object v13, v0, Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;->c:Landroid/view/Surface;

    :cond_7
    iget-object v2, v0, Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;->d:Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->b()V

    iput-object v13, v0, Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;->d:Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;

    :cond_8
    invoke-virtual {v7}, Lcom/otaliastudios/opengl/core/EglCore;->b()V

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->a()V

    return-void

    :catchall_2
    move-exception v0

    move-object v1, v0

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_9
    const-string v0, "eglMakeCurrent failed"

    invoke-static {v0}, Lv7;->h(Ljava/lang/String;)V

    return-void
.end method
