.class Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;

.field final synthetic val$drawRotation:I

.field final synthetic val$task:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;ILcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    iput-object p1, p0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$3;->this$0:Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;

    iput p2, p0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$3;->val$drawRotation:I

    iput-object p3, p0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$3;->val$task:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget-object v1, p0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$3;->this$0:Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;

    iget v2, v1, Lcom/otaliastudios/cameraview/preview/CameraPreview;->d:I

    int-to-float v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v1, v1, Lcom/otaliastudios/cameraview/preview/CameraPreview;->e:I

    int-to-float v5, v1

    div-float/2addr v5, v4

    iget v4, p0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$3;->val$drawRotation:I

    rem-int/lit16 v4, v4, 0xb4

    if-eqz v4, :cond_0

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v1

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_0
    iget v1, p0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$3;->val$drawRotation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1, v3, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v1, p0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$3;->this$0:Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;

    iget-object v1, v1, Lcom/otaliastudios/cameraview/preview/CameraPreview;->b:Landroid/view/View;

    check-cast v1, Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    iget-object p0, p0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$3;->val$task:Lcom/google/android/gms/tasks/TaskCompletionSource;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->b(Ljava/lang/Object;)V

    return-void
.end method
