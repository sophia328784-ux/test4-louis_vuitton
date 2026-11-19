.class Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field public final synthetic b:Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer$2;->b:Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;

    return-void
.end method


# virtual methods
.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer$2;->b:Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;->b:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->b:Landroid/view/View;

    check-cast p0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void
.end method
