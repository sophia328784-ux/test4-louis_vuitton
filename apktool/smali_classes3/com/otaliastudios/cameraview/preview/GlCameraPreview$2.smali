.class Lcom/otaliastudios/cameraview/preview/GlCameraPreview$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

.field final synthetic val$callback:Lcom/otaliastudios/cameraview/preview/RendererFrameCallback;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;Lcom/otaliastudios/cameraview/preview/RendererFrameCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$2;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$2;->val$callback:Lcom/otaliastudios/cameraview/preview/RendererFrameCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$2;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->m:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$2;->val$callback:Lcom/otaliastudios/cameraview/preview/RendererFrameCallback;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$2;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->l:Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->a:Lcom/otaliastudios/opengl/texture/GlTexture;

    iget v0, v0, Lcom/otaliastudios/opengl/texture/GlTexture;->g:I

    iget-object v1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$2;->val$callback:Lcom/otaliastudios/cameraview/preview/RendererFrameCallback;

    invoke-interface {v1, v0}, Lcom/otaliastudios/cameraview/preview/RendererFrameCallback;->b(I)V

    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$2;->val$callback:Lcom/otaliastudios/cameraview/preview/RendererFrameCallback;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$2;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->q:Lcom/otaliastudios/cameraview/filter/Filter;

    invoke-interface {v0, p0}, Lcom/otaliastudios/cameraview/preview/RendererFrameCallback;->c(Lcom/otaliastudios/cameraview/filter/Filter;)V

    return-void
.end method
