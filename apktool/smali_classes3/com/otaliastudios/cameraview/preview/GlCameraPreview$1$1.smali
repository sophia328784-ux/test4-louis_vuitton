.class Lcom/otaliastudios/cameraview/preview/GlCameraPreview$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/otaliastudios/cameraview/preview/GlCameraPreview$1;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/preview/GlCameraPreview$1;)V
    .locals 0

    iput-object p1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$1$1;->this$1:Lcom/otaliastudios/cameraview/preview/GlCameraPreview$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object p0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$1$1;->this$1:Lcom/otaliastudios/cameraview/preview/GlCameraPreview$1;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$1;->c:Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;->b:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->k:Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->k:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    iput-object v1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->k:Landroid/graphics/SurfaceTexture;

    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->l:Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->b()V

    iput-object v1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->l:Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;

    :cond_1
    return-void
.end method
