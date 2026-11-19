.class public final Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$frameCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;-><init>(Landroid/content/Context;Landroid/view/SurfaceView;Landroidx/lifecycle/LifecycleCoroutineScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$frameCallback$1",
        "Landroid/view/Choreographer$FrameCallback;",
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
.field public b:J

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$frameCallback$1;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$frameCallback$1;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;

    iget-object v4, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->q:Landroid/view/Choreographer;

    iget-wide v5, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$frameCallback$1;->b:J

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    sub-long v5, v1, v5

    iget-wide v9, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->k0:J

    cmp-long v7, v5, v9

    if-gez v7, :cond_0

    sub-long/2addr v9, v5

    const-wide/32 v5, 0xf4240

    div-long/2addr v9, v5

    long-to-float v5, v9

    cmpl-float v5, v5, v8

    if-lez v5, :cond_0

    invoke-virtual {v4, v0, v9, v10}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    return-void

    :cond_0
    iget-boolean v5, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->Z:Z

    if-eqz v5, :cond_9

    iget-object v5, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->M:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager$SensorData;

    if-eqz v5, :cond_3

    iget-boolean v5, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->Y:Z

    if-eqz v5, :cond_3

    sget-object v5, Lcom/google/android/filament/utils/Quaternion;->e:Lcom/google/android/filament/utils/Quaternion$Companion;

    new-instance v7, Lcom/google/android/filament/utils/Float3;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v7, v9, v8, v8}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    iget-object v10, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->M:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager$SensorData;

    const/4 v11, 0x0

    const-string v12, "sensorData"

    if-eqz v10, :cond_2

    iget v10, v10, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager$SensorData;->b:F

    neg-float v10, v10

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v10}, Lcom/google/android/filament/utils/Quaternion$Companion;->a(Lcom/google/android/filament/utils/Float3;F)Lcom/google/android/filament/utils/Quaternion;

    move-result-object v5

    new-instance v7, Lcom/google/android/filament/utils/Float3;

    invoke-direct {v7, v8, v9, v8}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    iget-object v8, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->M:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager$SensorData;

    if-eqz v8, :cond_1

    iget v8, v8, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager$SensorData;->c:F

    invoke-static {v7, v8}, Lcom/google/android/filament/utils/Quaternion$Companion;->a(Lcom/google/android/filament/utils/Float3;F)Lcom/google/android/filament/utils/Quaternion;

    move-result-object v7

    new-instance v8, Lcom/google/android/filament/utils/Quaternion;

    iget v9, v5, Lcom/google/android/filament/utils/Quaternion;->d:F

    iget v10, v7, Lcom/google/android/filament/utils/Quaternion;->a:F

    mul-float v11, v9, v10

    iget v12, v5, Lcom/google/android/filament/utils/Quaternion;->a:F

    iget v13, v7, Lcom/google/android/filament/utils/Quaternion;->d:F

    mul-float v14, v12, v13

    add-float/2addr v14, v11

    iget v11, v5, Lcom/google/android/filament/utils/Quaternion;->b:F

    iget v15, v7, Lcom/google/android/filament/utils/Quaternion;->c:F

    mul-float v16, v11, v15

    add-float v16, v16, v14

    iget v5, v5, Lcom/google/android/filament/utils/Quaternion;->c:F

    iget v7, v7, Lcom/google/android/filament/utils/Quaternion;->b:F

    mul-float v14, v5, v7

    sub-float v14, v16, v14

    mul-float v16, v9, v7

    mul-float v17, v12, v15

    sub-float v16, v16, v17

    mul-float v17, v11, v13

    add-float v17, v17, v16

    mul-float v16, v5, v10

    add-float v6, v16, v17

    mul-float v16, v9, v15

    mul-float v17, v12, v7

    add-float v17, v17, v16

    mul-float v16, v11, v10

    sub-float v17, v17, v16

    mul-float v16, v5, v13

    move/from16 v18, v5

    add-float v5, v16, v17

    mul-float/2addr v9, v13

    mul-float/2addr v12, v10

    sub-float/2addr v9, v12

    mul-float/2addr v11, v7

    sub-float/2addr v9, v11

    mul-float v7, v18, v15

    sub-float/2addr v9, v7

    invoke-direct {v8, v14, v6, v5, v9}, Lcom/google/android/filament/utils/Quaternion;-><init>(FFFF)V

    iget-object v5, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->P:Lcom/google/android/filament/utils/Quaternion;

    const v6, 0x3df5c28f    # 0.12f

    invoke-static {v5, v8, v6}, Lcom/google/android/filament/utils/QuaternionKt;->a(Lcom/google/android/filament/utils/Quaternion;Lcom/google/android/filament/utils/Quaternion;F)Lcom/google/android/filament/utils/Quaternion;

    move-result-object v5

    iput-object v5, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->P:Lcom/google/android/filament/utils/Quaternion;

    iget v6, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->C:I

    invoke-virtual {v5}, Lcom/google/android/filament/utils/Quaternion;->a()Lcom/google/android/filament/utils/Mat4;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->d(ILcom/google/android/filament/utils/Mat4;)V

    goto :goto_0

    :cond_1
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v11

    :cond_2
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v11

    :cond_3
    :goto_0
    iget v5, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->D:I

    invoke-virtual {v3, v5}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->b(I)Lcom/google/android/filament/utils/Mat4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/filament/utils/Mat4;->a()Lcom/google/android/filament/utils/Quaternion;

    move-result-object v5

    sget-object v6, Lcom/google/android/filament/utils/Quaternion;->e:Lcom/google/android/filament/utils/Quaternion$Companion;

    iget-object v7, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->R:Lcom/google/android/filament/utils/Float3;

    sget-object v8, Lcom/google/android/filament/utils/RotationsOrder;->ZYX:Lcom/google/android/filament/utils/RotationsOrder;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v6, v7, Lcom/google/android/filament/utils/Float3;->a:F

    iget v9, v7, Lcom/google/android/filament/utils/Float3;->b:F

    iget v7, v7, Lcom/google/android/filament/utils/Float3;->c:F

    new-instance v10, Lcom/google/android/filament/utils/Float3;

    invoke-direct {v10, v6, v9, v7}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    iget v6, v10, Lcom/google/android/filament/utils/Float3;->a:F

    const v7, 0x3c8efa35

    mul-float/2addr v6, v7

    iput v6, v10, Lcom/google/android/filament/utils/Float3;->a:F

    iget v6, v10, Lcom/google/android/filament/utils/Float3;->b:F

    mul-float/2addr v6, v7

    iput v6, v10, Lcom/google/android/filament/utils/Float3;->b:F

    iget v6, v10, Lcom/google/android/filament/utils/Float3;->c:F

    mul-float/2addr v6, v7

    iput v6, v10, Lcom/google/android/filament/utils/Float3;->c:F

    invoke-virtual {v8}, Lcom/google/android/filament/utils/RotationsOrder;->c()Lcom/google/android/filament/utils/VectorComponent;

    move-result-object v6

    invoke-virtual {v10, v6}, Lcom/google/android/filament/utils/Float3;->a(Lcom/google/android/filament/utils/VectorComponent;)F

    move-result v6

    invoke-virtual {v8}, Lcom/google/android/filament/utils/RotationsOrder;->a()Lcom/google/android/filament/utils/VectorComponent;

    move-result-object v7

    invoke-virtual {v10, v7}, Lcom/google/android/filament/utils/Float3;->a(Lcom/google/android/filament/utils/VectorComponent;)F

    move-result v7

    invoke-virtual {v8}, Lcom/google/android/filament/utils/RotationsOrder;->b()Lcom/google/android/filament/utils/VectorComponent;

    move-result-object v9

    invoke-virtual {v10, v9}, Lcom/google/android/filament/utils/Float3;->a(Lcom/google/android/filament/utils/VectorComponent;)F

    move-result v9

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v6, v10

    float-to-double v11, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    double-to-float v6, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v11, v11

    mul-float/2addr v7, v10

    float-to-double v12, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v7, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v12, v12

    mul-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    double-to-float v13, v13

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v9, v9

    sget-object v10, Lcom/google/android/filament/utils/Quaternion$Companion$WhenMappings;->a:[I

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v8, v10, v8

    packed-switch v8, :pswitch_data_0

    invoke-static {}, Lv40;->g()V

    return-void

    :pswitch_0
    new-instance v8, Lcom/google/android/filament/utils/Quaternion;

    mul-float v10, v6, v12

    mul-float v14, v10, v13

    mul-float v15, v11, v7

    mul-float v16, v15, v9

    sub-float v14, v14, v16

    mul-float/2addr v11, v12

    mul-float v12, v11, v13

    mul-float/2addr v6, v7

    mul-float v7, v6, v9

    add-float/2addr v7, v12

    mul-float/2addr v15, v13

    mul-float/2addr v10, v9

    add-float/2addr v10, v15

    mul-float/2addr v6, v13

    mul-float/2addr v11, v9

    sub-float/2addr v6, v11

    invoke-direct {v8, v14, v7, v10, v6}, Lcom/google/android/filament/utils/Quaternion;-><init>(FFFF)V

    goto/16 :goto_1

    :pswitch_1
    new-instance v8, Lcom/google/android/filament/utils/Quaternion;

    mul-float v10, v6, v7

    mul-float v14, v10, v9

    mul-float v15, v11, v12

    mul-float v16, v15, v13

    sub-float v14, v14, v16

    mul-float/2addr v11, v7

    mul-float v7, v11, v9

    mul-float/2addr v6, v12

    mul-float v12, v6, v13

    add-float/2addr v12, v7

    mul-float/2addr v11, v13

    mul-float/2addr v6, v9

    sub-float/2addr v11, v6

    mul-float/2addr v15, v9

    mul-float/2addr v10, v13

    add-float/2addr v10, v15

    invoke-direct {v8, v14, v12, v11, v10}, Lcom/google/android/filament/utils/Quaternion;-><init>(FFFF)V

    goto :goto_1

    :pswitch_2
    new-instance v8, Lcom/google/android/filament/utils/Quaternion;

    mul-float v10, v11, v12

    mul-float v14, v10, v13

    mul-float v15, v6, v7

    mul-float v16, v15, v9

    add-float v14, v16, v14

    mul-float/2addr v11, v7

    mul-float v7, v11, v13

    mul-float/2addr v6, v12

    mul-float v12, v6, v9

    add-float/2addr v12, v7

    mul-float/2addr v6, v13

    mul-float/2addr v11, v9

    sub-float/2addr v6, v11

    mul-float/2addr v15, v13

    mul-float/2addr v10, v9

    sub-float/2addr v15, v10

    invoke-direct {v8, v14, v12, v6, v15}, Lcom/google/android/filament/utils/Quaternion;-><init>(FFFF)V

    goto :goto_1

    :pswitch_3
    new-instance v8, Lcom/google/android/filament/utils/Quaternion;

    mul-float v10, v11, v7

    mul-float v14, v10, v9

    mul-float v15, v6, v12

    mul-float v16, v15, v13

    add-float v14, v16, v14

    mul-float/2addr v10, v13

    mul-float/2addr v15, v9

    sub-float/2addr v10, v15

    mul-float/2addr v6, v7

    mul-float v7, v6, v9

    mul-float/2addr v11, v12

    mul-float v12, v11, v13

    sub-float/2addr v7, v12

    mul-float/2addr v11, v9

    mul-float/2addr v6, v13

    add-float/2addr v6, v11

    invoke-direct {v8, v14, v10, v7, v6}, Lcom/google/android/filament/utils/Quaternion;-><init>(FFFF)V

    goto :goto_1

    :pswitch_4
    new-instance v8, Lcom/google/android/filament/utils/Quaternion;

    mul-float v10, v11, v7

    mul-float/2addr v10, v13

    mul-float v14, v12, v9

    mul-float/2addr v14, v6

    add-float/2addr v14, v10

    mul-float v10, v12, v6

    mul-float/2addr v10, v13

    mul-float v15, v11, v9

    mul-float/2addr v15, v7

    sub-float/2addr v10, v15

    mul-float/2addr v11, v12

    mul-float v12, v11, v13

    mul-float v15, v9, v6

    mul-float/2addr v15, v7

    add-float/2addr v15, v12

    mul-float/2addr v6, v7

    mul-float/2addr v6, v13

    mul-float/2addr v11, v9

    sub-float/2addr v6, v11

    invoke-direct {v8, v14, v10, v15, v6}, Lcom/google/android/filament/utils/Quaternion;-><init>(FFFF)V

    goto :goto_1

    :pswitch_5
    new-instance v8, Lcom/google/android/filament/utils/Quaternion;

    mul-float v10, v11, v7

    mul-float v14, v10, v13

    mul-float v15, v6, v12

    mul-float v16, v15, v9

    sub-float v14, v14, v16

    mul-float/2addr v6, v7

    mul-float v7, v6, v9

    mul-float/2addr v11, v12

    mul-float v12, v11, v13

    sub-float/2addr v7, v12

    mul-float/2addr v10, v9

    mul-float/2addr v15, v13

    add-float/2addr v15, v10

    mul-float/2addr v11, v9

    mul-float/2addr v6, v13

    add-float/2addr v6, v11

    invoke-direct {v8, v14, v7, v15, v6}, Lcom/google/android/filament/utils/Quaternion;-><init>(FFFF)V

    :goto_1
    iget v6, v5, Lcom/google/android/filament/utils/Quaternion;->a:F

    iget v7, v8, Lcom/google/android/filament/utils/Quaternion;->a:F

    mul-float/2addr v6, v7

    iget v7, v5, Lcom/google/android/filament/utils/Quaternion;->b:F

    iget v9, v8, Lcom/google/android/filament/utils/Quaternion;->b:F

    mul-float/2addr v7, v9

    add-float/2addr v7, v6

    iget v6, v5, Lcom/google/android/filament/utils/Quaternion;->c:F

    iget v9, v8, Lcom/google/android/filament/utils/Quaternion;->c:F

    mul-float/2addr v6, v9

    add-float/2addr v6, v7

    iget v7, v5, Lcom/google/android/filament/utils/Quaternion;->d:F

    iget v9, v8, Lcom/google/android/filament/utils/Quaternion;->d:F

    mul-float/2addr v7, v9

    add-float/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x3f7fff58    # 0.99999f

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_4

    const v6, 0x3df5c28f    # 0.12f

    invoke-static {v5, v8, v6}, Lcom/google/android/filament/utils/QuaternionKt;->c(Lcom/google/android/filament/utils/Quaternion;Lcom/google/android/filament/utils/Quaternion;F)Lcom/google/android/filament/utils/Quaternion;

    move-result-object v5

    iget v6, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->D:I

    invoke-virtual {v5}, Lcom/google/android/filament/utils/Quaternion;->a()Lcom/google/android/filament/utils/Mat4;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->d(ILcom/google/android/filament/utils/Mat4;)V

    :cond_4
    iget-boolean v5, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->a0:Z

    if-eqz v5, :cond_7

    iget-object v5, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->L:Landroid/animation/ValueAnimator;

    iget-object v6, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->K:Landroid/animation/ValueAnimator;

    iget-object v7, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->J:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_5
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_6
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_2

    :cond_7
    iget-object v5, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->x:Lkotlin/jvm/functions/Function1;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v5, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_2
    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->r:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;

    invoke-virtual {v3, v1, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->d(J)V

    :cond_9
    iput-wide v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper$frameCallback$1;->b:J

    invoke-virtual {v4, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
