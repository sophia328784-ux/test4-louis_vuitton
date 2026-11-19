.class public final Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$5$1$surfaceCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$5$1$surfaceCallback$1",
        "Landroid/view/SurfaceHolder$Callback;",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$5$1$surfaceCallback$1;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;

    return-void
.end method


# virtual methods
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/vuitton/core/infrastructure/perfectcorp/CameraLibrary;->CAMERA_2:Lcom/vuitton/core/infrastructure/perfectcorp/CameraLibrary;

    sget-object v0, Lcom/vuitton/core/infrastructure/perfectcorp/CameraFacing;->FRONT:Lcom/vuitton/core/infrastructure/perfectcorp/CameraFacing;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$5$1$surfaceCallback$1;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;->a(Lcom/vuitton/core/infrastructure/perfectcorp/CameraLibrary;Lcom/vuitton/core/infrastructure/perfectcorp/CameraFacing;)V

    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$5$1$surfaceCallback$1;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;->b()V

    return-void
.end method
