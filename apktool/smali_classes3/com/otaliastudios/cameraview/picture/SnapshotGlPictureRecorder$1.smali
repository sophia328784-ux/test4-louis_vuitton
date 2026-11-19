.class Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/otaliastudios/cameraview/preview/RendererFrameCallback;


# instance fields
.field public final synthetic a:Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder$1;->a:Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/SurfaceTexture;IFF)V
    .locals 7

    iget-object v1, p0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder$1;->a:Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;

    iget-object v0, v1, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->f:Lcom/otaliastudios/cameraview/preview/RendererCameraPreview;

    invoke-interface {v0, p0}, Lcom/otaliastudios/cameraview/preview/RendererCameraPreview;->d(Lcom/otaliastudios/cameraview/preview/RendererFrameCallback;)V

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v6

    new-instance v0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder$2;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder$2;-><init>(Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;Landroid/graphics/SurfaceTexture;IFFLandroid/opengl/EGLContext;)V

    const-string p0, "FallbackCameraThread"

    invoke-static {p0}, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->a(Ljava/lang/String;)Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    move-result-object p0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->c:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(I)V
    .locals 3

    new-instance v0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;

    invoke-direct {v0, p1}, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;-><init>(I)V

    iget-object p0, p0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder$1;->a:Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;

    iput-object v0, p0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->k:Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;

    iget-object p1, p0, Lcom/otaliastudios/cameraview/picture/PictureRecorder;->b:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    iget-object p1, p1, Lcom/otaliastudios/cameraview/PictureResult$Stub;->d:Lcom/otaliastudios/cameraview/size/Size;

    iget-object v0, p0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->g:Lcom/otaliastudios/cameraview/size/AspectRatio;

    invoke-static {p1, v0}, Lcom/otaliastudios/cameraview/internal/CropHelper;->a(Lcom/otaliastudios/cameraview/size/Size;Lcom/otaliastudios/cameraview/size/AspectRatio;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lcom/otaliastudios/cameraview/picture/PictureRecorder;->b:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    new-instance v1, Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-direct {v1, v2, p1}, Lcom/otaliastudios/cameraview/size/Size;-><init>(II)V

    iput-object v1, v0, Lcom/otaliastudios/cameraview/PictureResult$Stub;->d:Lcom/otaliastudios/cameraview/size/Size;

    iget-boolean p1, p0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->i:Z

    if-eqz p1, :cond_0

    new-instance p1, Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;

    iget-object v0, p0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->h:Lcom/otaliastudios/cameraview/overlay/Overlay;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/picture/PictureRecorder;->b:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    iget-object v1, v1, Lcom/otaliastudios/cameraview/PictureResult$Stub;->d:Lcom/otaliastudios/cameraview/size/Size;

    invoke-direct {p1, v0, v1}, Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;-><init>(Lcom/otaliastudios/cameraview/overlay/Overlay;Lcom/otaliastudios/cameraview/size/Size;)V

    iput-object p1, p0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->j:Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;

    :cond_0
    return-void
.end method

.method public final c(Lcom/otaliastudios/cameraview/filter/Filter;)V
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder$1;->a:Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->k:Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;

    invoke-interface {p1}, Lcom/otaliastudios/cameraview/filter/Filter;->a()Lcom/otaliastudios/cameraview/filter/BaseFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->d:Lcom/otaliastudios/cameraview/filter/Filter;

    return-void
.end method
