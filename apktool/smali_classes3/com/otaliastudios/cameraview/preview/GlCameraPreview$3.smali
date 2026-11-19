.class Lcom/otaliastudios/cameraview/preview/GlCameraPreview$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

.field final synthetic val$filter:Lcom/otaliastudios/cameraview/filter/Filter;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;Lcom/otaliastudios/cameraview/filter/Filter;)V
    .locals 0

    iput-object p1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$3;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$3;->val$filter:Lcom/otaliastudios/cameraview/filter/Filter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$3;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    iget-object v1, v0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->l:Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$3;->val$filter:Lcom/otaliastudios/cameraview/filter/Filter;

    iput-object v2, v1, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->d:Lcom/otaliastudios/cameraview/filter/Filter;

    :cond_0
    iget-object v0, v0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->m:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/otaliastudios/cameraview/preview/RendererFrameCallback;

    iget-object v2, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$3;->val$filter:Lcom/otaliastudios/cameraview/filter/Filter;

    invoke-interface {v1, v2}, Lcom/otaliastudios/cameraview/preview/RendererFrameCallback;->c(Lcom/otaliastudios/cameraview/filter/Filter;)V

    goto :goto_0

    :cond_1
    return-void
.end method
