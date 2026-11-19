.class public final Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper$frameCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;-><init>(Landroid/view/SurfaceView;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;)V
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
        "com/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper$frameCallback$1",
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

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper$frameCallback$1;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 35

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper$frameCallback$1;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;

    iget-object v4, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->q:Landroid/view/Choreographer;

    iget-wide v5, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper$frameCallback$1;->b:J

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    sub-long v5, p1, v5

    iget-wide v9, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->S:J

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
    iget-boolean v5, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->O:Z

    if-eqz v5, :cond_4

    iget-object v5, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->I:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager$SensorData;

    if-eqz v5, :cond_3

    iget-boolean v5, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->N:Z

    if-nez v5, :cond_3

    iget-object v5, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->C:Lcom/google/android/filament/utils/Mat4;

    if-eqz v5, :cond_3

    iget-object v6, v5, Lcom/google/android/filament/utils/Mat4;->a:Lcom/google/android/filament/utils/Float4;

    iget-object v7, v5, Lcom/google/android/filament/utils/Mat4;->b:Lcom/google/android/filament/utils/Float4;

    iget-object v9, v5, Lcom/google/android/filament/utils/Mat4;->c:Lcom/google/android/filament/utils/Float4;

    iget-object v5, v5, Lcom/google/android/filament/utils/Mat4;->d:Lcom/google/android/filament/utils/Float4;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Lcom/google/android/filament/utils/Mat4;

    invoke-direct {v10, v6, v7, v9, v5}, Lcom/google/android/filament/utils/Mat4;-><init>(Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;)V

    sget-object v5, Lcom/google/android/filament/utils/Quaternion;->e:Lcom/google/android/filament/utils/Quaternion$Companion;

    new-instance v6, Lcom/google/android/filament/utils/Float3;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v8, v8}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    iget-object v9, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->I:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager$SensorData;

    const/4 v11, 0x0

    const-string v12, "sensorData"

    if-eqz v9, :cond_2

    iget v9, v9, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager$SensorData;->b:F

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v9}, Lcom/google/android/filament/utils/Quaternion$Companion;->a(Lcom/google/android/filament/utils/Float3;F)Lcom/google/android/filament/utils/Quaternion;

    move-result-object v5

    new-instance v6, Lcom/google/android/filament/utils/Float3;

    invoke-direct {v6, v8, v7, v8}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    iget-object v7, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->I:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager$SensorData;

    if-eqz v7, :cond_1

    iget v7, v7, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager$SensorData;->c:F

    invoke-static {v6, v7}, Lcom/google/android/filament/utils/Quaternion$Companion;->a(Lcom/google/android/filament/utils/Float3;F)Lcom/google/android/filament/utils/Quaternion;

    move-result-object v6

    new-instance v7, Lcom/google/android/filament/utils/Quaternion;

    iget v8, v5, Lcom/google/android/filament/utils/Quaternion;->d:F

    iget v9, v6, Lcom/google/android/filament/utils/Quaternion;->a:F

    mul-float v11, v8, v9

    iget v12, v5, Lcom/google/android/filament/utils/Quaternion;->a:F

    iget v13, v6, Lcom/google/android/filament/utils/Quaternion;->d:F

    mul-float v14, v12, v13

    add-float/2addr v14, v11

    iget v11, v5, Lcom/google/android/filament/utils/Quaternion;->b:F

    iget v15, v6, Lcom/google/android/filament/utils/Quaternion;->c:F

    mul-float v16, v11, v15

    add-float v16, v16, v14

    iget v5, v5, Lcom/google/android/filament/utils/Quaternion;->c:F

    iget v6, v6, Lcom/google/android/filament/utils/Quaternion;->b:F

    mul-float v14, v5, v6

    sub-float v14, v16, v14

    mul-float v16, v8, v6

    mul-float v17, v12, v15

    sub-float v16, v16, v17

    mul-float v17, v11, v13

    add-float v17, v17, v16

    mul-float v16, v5, v9

    move/from16 v18, v5

    add-float v5, v16, v17

    mul-float v16, v8, v15

    mul-float v17, v12, v6

    add-float v17, v17, v16

    mul-float v16, v11, v9

    sub-float v17, v17, v16

    mul-float v16, v18, v13

    move/from16 v19, v6

    add-float v6, v16, v17

    mul-float/2addr v8, v13

    mul-float/2addr v12, v9

    sub-float/2addr v8, v12

    mul-float v11, v11, v19

    sub-float/2addr v8, v11

    mul-float v9, v18, v15

    sub-float/2addr v8, v9

    invoke-direct {v7, v14, v5, v6, v8}, Lcom/google/android/filament/utils/Quaternion;-><init>(FFFF)V

    iget v5, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->G:I

    invoke-virtual {v7}, Lcom/google/android/filament/utils/Quaternion;->a()Lcom/google/android/filament/utils/Mat4;

    move-result-object v6

    new-instance v7, Lcom/google/android/filament/utils/Mat4;

    new-instance v8, Lcom/google/android/filament/utils/Float4;

    iget-object v9, v10, Lcom/google/android/filament/utils/Mat4;->a:Lcom/google/android/filament/utils/Float4;

    iget v11, v9, Lcom/google/android/filament/utils/Float4;->a:F

    iget v12, v9, Lcom/google/android/filament/utils/Float4;->c:F

    iget v13, v9, Lcom/google/android/filament/utils/Float4;->b:F

    iget-object v14, v6, Lcom/google/android/filament/utils/Mat4;->a:Lcom/google/android/filament/utils/Float4;

    iget v15, v14, Lcom/google/android/filament/utils/Float4;->a:F

    mul-float v16, v11, v15

    move/from16 v17, v11

    iget-object v11, v10, Lcom/google/android/filament/utils/Mat4;->b:Lcom/google/android/filament/utils/Float4;

    move/from16 v18, v12

    iget v12, v11, Lcom/google/android/filament/utils/Float4;->a:F

    move/from16 v19, v12

    iget v12, v11, Lcom/google/android/filament/utils/Float4;->c:F

    move/from16 v20, v12

    iget v12, v11, Lcom/google/android/filament/utils/Float4;->b:F

    move/from16 v21, v12

    iget v12, v14, Lcom/google/android/filament/utils/Float4;->b:F

    mul-float v22, v19, v12

    add-float v22, v22, v16

    move/from16 v16, v12

    iget-object v12, v10, Lcom/google/android/filament/utils/Mat4;->c:Lcom/google/android/filament/utils/Float4;

    move/from16 v23, v13

    iget v13, v12, Lcom/google/android/filament/utils/Float4;->a:F

    move/from16 v24, v13

    iget v13, v12, Lcom/google/android/filament/utils/Float4;->c:F

    move/from16 v25, v13

    iget v13, v12, Lcom/google/android/filament/utils/Float4;->b:F

    move/from16 v26, v13

    iget v13, v14, Lcom/google/android/filament/utils/Float4;->c:F

    mul-float v27, v24, v13

    add-float v27, v27, v22

    iget-object v10, v10, Lcom/google/android/filament/utils/Mat4;->d:Lcom/google/android/filament/utils/Float4;

    move/from16 v22, v13

    iget v13, v10, Lcom/google/android/filament/utils/Float4;->a:F

    move/from16 v28, v13

    iget v13, v10, Lcom/google/android/filament/utils/Float4;->c:F

    move/from16 v29, v13

    iget v13, v10, Lcom/google/android/filament/utils/Float4;->b:F

    iget v14, v14, Lcom/google/android/filament/utils/Float4;->d:F

    mul-float v30, v28, v14

    move/from16 v31, v13

    add-float v13, v30, v27

    mul-float v27, v23, v15

    mul-float v30, v21, v16

    add-float v30, v30, v27

    mul-float v27, v26, v22

    add-float v27, v27, v30

    mul-float v30, v31, v14

    move/from16 v32, v14

    add-float v14, v30, v27

    mul-float v27, v18, v15

    mul-float v30, v20, v16

    add-float v30, v30, v27

    mul-float v27, v25, v22

    add-float v27, v27, v30

    mul-float v30, v29, v32

    move/from16 v33, v15

    add-float v15, v30, v27

    move-object/from16 v27, v4

    iget v4, v9, Lcom/google/android/filament/utils/Float4;->d:F

    mul-float v4, v4, v33

    move/from16 v30, v4

    iget v4, v11, Lcom/google/android/filament/utils/Float4;->d:F

    mul-float v4, v4, v16

    add-float v4, v4, v30

    move/from16 v16, v4

    iget v4, v12, Lcom/google/android/filament/utils/Float4;->d:F

    mul-float v4, v4, v22

    add-float v4, v4, v16

    move/from16 v16, v4

    iget v4, v10, Lcom/google/android/filament/utils/Float4;->d:F

    mul-float v4, v4, v32

    add-float v4, v4, v16

    invoke-direct {v8, v13, v14, v15, v4}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    new-instance v4, Lcom/google/android/filament/utils/Float4;

    iget-object v13, v6, Lcom/google/android/filament/utils/Mat4;->b:Lcom/google/android/filament/utils/Float4;

    iget v14, v13, Lcom/google/android/filament/utils/Float4;->a:F

    mul-float v15, v17, v14

    move/from16 v16, v14

    iget v14, v13, Lcom/google/android/filament/utils/Float4;->b:F

    mul-float v22, v19, v14

    add-float v22, v22, v15

    iget v15, v13, Lcom/google/android/filament/utils/Float4;->c:F

    mul-float v30, v24, v15

    add-float v30, v30, v22

    iget v13, v13, Lcom/google/android/filament/utils/Float4;->d:F

    mul-float v22, v28, v13

    move/from16 v32, v13

    add-float v13, v22, v30

    mul-float v22, v23, v16

    mul-float v30, v21, v14

    add-float v30, v30, v22

    mul-float v22, v26, v15

    add-float v22, v22, v30

    mul-float v30, v31, v32

    move/from16 v33, v14

    add-float v14, v30, v22

    mul-float v22, v18, v16

    mul-float v30, v20, v33

    add-float v30, v30, v22

    mul-float v22, v25, v15

    add-float v22, v22, v30

    mul-float v30, v29, v32

    move/from16 v34, v15

    add-float v15, v30, v22

    iget v0, v9, Lcom/google/android/filament/utils/Float4;->d:F

    mul-float v0, v0, v16

    move/from16 v16, v0

    iget v0, v11, Lcom/google/android/filament/utils/Float4;->d:F

    mul-float v0, v0, v33

    add-float v0, v0, v16

    move/from16 v16, v0

    iget v0, v12, Lcom/google/android/filament/utils/Float4;->d:F

    mul-float v0, v0, v34

    add-float v0, v0, v16

    move/from16 v16, v0

    iget v0, v10, Lcom/google/android/filament/utils/Float4;->d:F

    mul-float v0, v0, v32

    add-float v0, v0, v16

    invoke-direct {v4, v13, v14, v15, v0}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    new-instance v0, Lcom/google/android/filament/utils/Float4;

    iget-object v13, v6, Lcom/google/android/filament/utils/Mat4;->c:Lcom/google/android/filament/utils/Float4;

    iget v14, v13, Lcom/google/android/filament/utils/Float4;->a:F

    mul-float v15, v17, v14

    move/from16 v16, v14

    iget v14, v13, Lcom/google/android/filament/utils/Float4;->b:F

    mul-float v22, v19, v14

    add-float v22, v22, v15

    iget v15, v13, Lcom/google/android/filament/utils/Float4;->c:F

    mul-float v30, v24, v15

    add-float v30, v30, v22

    iget v13, v13, Lcom/google/android/filament/utils/Float4;->d:F

    mul-float v22, v28, v13

    move/from16 v32, v13

    add-float v13, v22, v30

    mul-float v22, v23, v16

    mul-float v30, v21, v14

    add-float v30, v30, v22

    mul-float v22, v26, v15

    add-float v22, v22, v30

    mul-float v30, v31, v32

    move/from16 v33, v14

    add-float v14, v30, v22

    mul-float v22, v18, v16

    mul-float v30, v20, v33

    add-float v30, v30, v22

    mul-float v22, v25, v15

    add-float v22, v22, v30

    mul-float v30, v29, v32

    move/from16 v34, v15

    add-float v15, v30, v22

    iget v1, v9, Lcom/google/android/filament/utils/Float4;->d:F

    mul-float v1, v1, v16

    iget v2, v11, Lcom/google/android/filament/utils/Float4;->d:F

    mul-float v2, v2, v33

    add-float/2addr v2, v1

    iget v1, v12, Lcom/google/android/filament/utils/Float4;->d:F

    mul-float v1, v1, v34

    add-float/2addr v1, v2

    iget v2, v10, Lcom/google/android/filament/utils/Float4;->d:F

    mul-float v2, v2, v32

    add-float/2addr v2, v1

    invoke-direct {v0, v13, v14, v15, v2}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    new-instance v1, Lcom/google/android/filament/utils/Float4;

    iget-object v2, v6, Lcom/google/android/filament/utils/Mat4;->d:Lcom/google/android/filament/utils/Float4;

    iget v6, v2, Lcom/google/android/filament/utils/Float4;->a:F

    mul-float v13, v17, v6

    iget v14, v2, Lcom/google/android/filament/utils/Float4;->b:F

    mul-float v15, v19, v14

    add-float/2addr v15, v13

    iget v13, v2, Lcom/google/android/filament/utils/Float4;->c:F

    mul-float v16, v24, v13

    add-float v16, v16, v15

    iget v2, v2, Lcom/google/android/filament/utils/Float4;->d:F

    mul-float v15, v28, v2

    add-float v15, v15, v16

    mul-float v16, v23, v6

    mul-float v17, v21, v14

    add-float v17, v17, v16

    mul-float v16, v26, v13

    add-float v16, v16, v17

    mul-float v17, v31, v2

    move/from16 v19, v2

    add-float v2, v17, v16

    mul-float v16, v18, v6

    mul-float v17, v20, v14

    add-float v17, v17, v16

    mul-float v16, v25, v13

    add-float v16, v16, v17

    mul-float v17, v29, v19

    move/from16 v18, v6

    add-float v6, v17, v16

    iget v9, v9, Lcom/google/android/filament/utils/Float4;->d:F

    mul-float v9, v9, v18

    iget v11, v11, Lcom/google/android/filament/utils/Float4;->d:F

    mul-float/2addr v11, v14

    add-float/2addr v11, v9

    iget v9, v12, Lcom/google/android/filament/utils/Float4;->d:F

    mul-float/2addr v9, v13

    add-float/2addr v9, v11

    iget v10, v10, Lcom/google/android/filament/utils/Float4;->d:F

    mul-float v10, v10, v19

    add-float/2addr v10, v9

    invoke-direct {v1, v15, v2, v6, v10}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    invoke-direct {v7, v8, v4, v0, v1}, Lcom/google/android/filament/utils/Mat4;-><init>(Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;)V

    invoke-virtual {v3, v5, v7}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->d(ILcom/google/android/filament/utils/Mat4;)V

    goto :goto_0

    :cond_1
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v11

    :cond_2
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v11

    :cond_3
    move-object/from16 v27, v4

    :goto_0
    iget-object v0, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->r:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->d(J)V

    :goto_1
    move-object/from16 v0, p0

    goto :goto_2

    :cond_4
    move-wide/from16 v1, p1

    move-object/from16 v27, v4

    goto :goto_1

    :goto_2
    iput-wide v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper$frameCallback$1;->b:J

    move-object/from16 v1, v27

    invoke-virtual {v1, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
