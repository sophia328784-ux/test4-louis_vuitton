.class Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;

.field final synthetic val$callback:Lcom/otaliastudios/cameraview/preview/CameraPreview$CropCallback;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;Lcom/otaliastudios/cameraview/preview/CameraPreview$CropCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$2;->this$0:Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$2;->val$callback:Lcom/otaliastudios/cameraview/preview/CameraPreview$CropCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$2;->this$0:Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;

    iget v1, v0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->g:I

    if-eqz v1, :cond_4

    iget v1, v0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->f:I

    if-eqz v1, :cond_4

    iget v1, v0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->e:I

    if-eqz v1, :cond_4

    iget v0, v0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->d:I

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {v0, v1}, Lcom/otaliastudios/cameraview/size/AspectRatio;->a(II)Lcom/otaliastudios/cameraview/size/AspectRatio;

    move-result-object v0

    iget-object v1, p0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$2;->this$0:Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;

    iget v2, v1, Lcom/otaliastudios/cameraview/preview/CameraPreview;->f:I

    iget v1, v1, Lcom/otaliastudios/cameraview/preview/CameraPreview;->g:I

    invoke-static {v2, v1}, Lcom/otaliastudios/cameraview/size/AspectRatio;->a(II)Lcom/otaliastudios/cameraview/size/AspectRatio;

    move-result-object v1

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/size/AspectRatio;->c()F

    move-result v2

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/size/AspectRatio;->c()F

    move-result v3

    cmpl-float v2, v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    if-ltz v2, :cond_1

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/size/AspectRatio;->c()F

    move-result v0

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/size/AspectRatio;->c()F

    move-result v1

    div-float/2addr v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/size/AspectRatio;->c()F

    move-result v1

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/size/AspectRatio;->c()F

    move-result v0

    div-float/2addr v1, v0

    move v0, v3

    move v3, v1

    :goto_0
    iget-object v1, p0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$2;->this$0:Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;

    iget-object v1, v1, Lcom/otaliastudios/cameraview/preview/CameraPreview;->b:Landroid/view/View;

    check-cast v1, Landroid/view/TextureView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, p0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$2;->this$0:Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;

    iget-object v1, v1, Lcom/otaliastudios/cameraview/preview/CameraPreview;->b:Landroid/view/View;

    check-cast v1, Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object v1, p0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$2;->this$0:Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;

    const v2, 0x3f828f5c    # 1.02f

    cmpl-float v4, v3, v2

    const/4 v5, 0x1

    if-gtz v4, :cond_3

    cmpl-float v2, v0, v2

    if-lez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    move v2, v5

    :goto_2
    iput-boolean v2, v1, Lcom/otaliastudios/cameraview/preview/CameraPreview;->c:Z

    sget-object v1, Lcom/otaliastudios/cameraview/preview/CameraPreview;->i:Lcom/otaliastudios/cameraview/CameraLogger;

    const-string v2, "applied scaleX="

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "crop:"

    filled-new-array {v4, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    const-string v2, "applied scaleY="

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v4, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$2;->val$callback:Lcom/otaliastudios/cameraview/preview/CameraPreview$CropCallback;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/otaliastudios/cameraview/preview/CameraPreview$CropCallback;->a()V

    return-void

    :cond_4
    :goto_3
    iget-object p0, p0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$2;->val$callback:Lcom/otaliastudios/cameraview/preview/CameraPreview$CropCallback;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/otaliastudios/cameraview/preview/CameraPreview$CropCallback;->a()V

    :cond_5
    return-void
.end method
