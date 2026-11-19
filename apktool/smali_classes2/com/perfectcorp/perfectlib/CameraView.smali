.class public final Lcom/perfectcorp/perfectlib/CameraView;
.super Landroid/opengl/GLSurfaceView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/CameraView$ScaleType;
    }
.end annotation


# instance fields
.field public b:Lcom/cyberlink/clgpuimage/GPUImage;

.field public volatile c:Lcom/perfectcorp/perfectlib/CameraView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/CameraView;->a()V

    sget-object p1, Lcom/perfectcorp/perfectlib/CameraView$ScaleType;->CENTER_INSIDE:Lcom/perfectcorp/perfectlib/CameraView$ScaleType;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/CameraView;->setScaleType(Lcom/perfectcorp/perfectlib/CameraView$ScaleType;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/CameraView;->a()V

    sget-object p1, Lcom/perfectcorp/perfectlib/CameraView$ScaleType;->CENTER_INSIDE:Lcom/perfectcorp/perfectlib/CameraView$ScaleType;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/CameraView;->setScaleType(Lcom/perfectcorp/perfectlib/CameraView$ScaleType;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/cyberlink/clgpuimage/GPUImage;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cyberlink/clgpuimage/GPUImage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/CameraView;->b:Lcom/cyberlink/clgpuimage/GPUImage;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    iget-object v1, v0, Lcom/cyberlink/clgpuimage/GPUImage;->a:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    iget-object v0, v0, Lcom/cyberlink/clgpuimage/GPUImage;->a:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lfw;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lfw;-><init>(Ljava/lang/Object;I)V

    iput-object v1, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->f:Lcom/cyberlink/clgpuimage/GlInvalidator;

    return-void
.end method

.method public final getGPUImage()Lcom/cyberlink/clgpuimage/GPUImage;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/CameraView;->b:Lcom/cyberlink/clgpuimage/GPUImage;

    return-object p0
.end method

.method public final getScaleType()Lcom/perfectcorp/perfectlib/CameraView$ScaleType;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/CameraView;->c:Lcom/perfectcorp/perfectlib/CameraView$ScaleType;

    return-object p0
.end method

.method public final setScaleType(Lcom/perfectcorp/perfectlib/CameraView$ScaleType;)V
    .locals 1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/CameraView;->c:Lcom/perfectcorp/perfectlib/CameraView$ScaleType;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/CameraView;->b:Lcom/cyberlink/clgpuimage/GPUImage;

    iget-object v0, v0, Lcom/cyberlink/clgpuimage/GPUImage;->a:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/CameraView$ScaleType;->a:Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;

    invoke-virtual {v0, p1}, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->j(Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;)V

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void
.end method
