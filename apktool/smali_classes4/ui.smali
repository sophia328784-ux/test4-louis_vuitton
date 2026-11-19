.class public final synthetic Lui;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;

.field public final synthetic d:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$CameraInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$CameraInfo;I)V
    .locals 0

    iput p3, p0, Lui;->b:I

    iput-object p1, p0, Lui;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;

    iput-object p2, p0, Lui;->d:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$CameraInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lui;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lui;->d:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$CameraInfo;

    iget-object p0, p0, Lui;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;->c:Lcom/perfectcorp/perfectlib/ShadeFinder;

    if-eqz v0, :cond_1

    iget-object v4, v3, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$CameraInfo;->a:Lcom/vuitton/core/infrastructure/perfectcorp/CameraFacing;

    sget-object v5, Lcom/vuitton/core/infrastructure/perfectcorp/CameraFacing;->FRONT:Lcom/vuitton/core/infrastructure/perfectcorp/CameraFacing;

    if-ne v4, v5, :cond_0

    move v1, v2

    :cond_0
    iget v2, v3, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$CameraInfo;->b:I

    iget v3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;->e:I

    iget p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;->f:I

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/perfectcorp/perfectlib/ShadeFinder;->onCameraOpened(ZIII)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;->b:Lcom/perfectcorp/perfectlib/MakeupCam;

    if-eqz v0, :cond_3

    iget-object v4, v3, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$CameraInfo;->a:Lcom/vuitton/core/infrastructure/perfectcorp/CameraFacing;

    sget-object v5, Lcom/vuitton/core/infrastructure/perfectcorp/CameraFacing;->FRONT:Lcom/vuitton/core/infrastructure/perfectcorp/CameraFacing;

    if-ne v4, v5, :cond_2

    move v1, v2

    :cond_2
    iget v2, v3, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$CameraInfo;->b:I

    iget v3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;->e:I

    iget p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;->f:I

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/perfectcorp/perfectlib/MakeupCam;->onCameraOpened(ZIII)V

    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
