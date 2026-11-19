.class public final synthetic Lza0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;

.field public final synthetic c:Lcom/google/android/filament/utils/Quaternion;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/filament/utils/Quaternion;Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lza0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lza0;->c:Lcom/google/android/filament/utils/Quaternion;

    iput-object p2, p0, Lza0;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;Lcom/google/android/filament/utils/Quaternion;I)V
    .locals 0

    .line 11
    iput p3, p0, Lza0;->a:I

    iput-object p1, p0, Lza0;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;

    iput-object p2, p0, Lza0;->c:Lcom/google/android/filament/utils/Quaternion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 14

    iget v0, p0, Lza0;->a:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    iget-object v3, p0, Lza0;->c:Lcom/google/android/filament/utils/Quaternion;

    iget-object p0, p0, Lza0;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sget-object v0, Lcom/google/android/filament/utils/Quaternion;->e:Lcom/google/android/filament/utils/Quaternion$Companion;

    new-instance v4, Lcom/google/android/filament/utils/Float3;

    invoke-direct {v4, v2, v1, v2}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, p1}, Lcom/google/android/filament/utils/Quaternion$Companion;->a(Lcom/google/android/filament/utils/Float3;F)Lcom/google/android/filament/utils/Quaternion;

    move-result-object p1

    iget v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->H:I

    new-instance v1, Lcom/google/android/filament/utils/Quaternion;

    iget v2, v3, Lcom/google/android/filament/utils/Quaternion;->d:F

    iget v4, p1, Lcom/google/android/filament/utils/Quaternion;->a:F

    mul-float v5, v2, v4

    iget v6, v3, Lcom/google/android/filament/utils/Quaternion;->a:F

    iget v7, p1, Lcom/google/android/filament/utils/Quaternion;->d:F

    mul-float v8, v6, v7

    add-float/2addr v8, v5

    iget v5, v3, Lcom/google/android/filament/utils/Quaternion;->b:F

    iget v9, p1, Lcom/google/android/filament/utils/Quaternion;->c:F

    mul-float v10, v5, v9

    add-float/2addr v10, v8

    iget v3, v3, Lcom/google/android/filament/utils/Quaternion;->c:F

    iget p1, p1, Lcom/google/android/filament/utils/Quaternion;->b:F

    mul-float v8, v3, p1

    sub-float/2addr v10, v8

    mul-float v8, v2, p1

    mul-float v11, v6, v9

    sub-float/2addr v8, v11

    mul-float v11, v5, v7

    add-float/2addr v11, v8

    mul-float v8, v3, v4

    add-float/2addr v8, v11

    mul-float v11, v2, v9

    mul-float v12, v6, p1

    add-float/2addr v12, v11

    mul-float v11, v5, v4

    sub-float/2addr v12, v11

    mul-float v11, v3, v7

    add-float/2addr v11, v12

    mul-float/2addr v2, v7

    mul-float/2addr v6, v4

    sub-float/2addr v2, v6

    mul-float/2addr v5, p1

    sub-float/2addr v2, v5

    mul-float/2addr v3, v9

    sub-float/2addr v2, v3

    invoke-direct {v1, v10, v8, v11, v2}, Lcom/google/android/filament/utils/Quaternion;-><init>(FFFF)V

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Quaternion;->a()Lcom/google/android/filament/utils/Mat4;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->d(ILcom/google/android/filament/utils/Mat4;)V

    return-void

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v4, 0x41c80000    # 25.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-static {v4, v2, p1}, Lcom/google/android/material/math/MathUtils;->c(FFF)F

    move-result p1

    sget-object v4, Lcom/google/android/filament/utils/Quaternion;->e:Lcom/google/android/filament/utils/Quaternion$Companion;

    new-instance v5, Lcom/google/android/filament/utils/Float3;

    invoke-direct {v5, v2, v1, v2}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v0}, Lcom/google/android/filament/utils/Quaternion$Companion;->a(Lcom/google/android/filament/utils/Float3;F)Lcom/google/android/filament/utils/Quaternion;

    move-result-object v0

    new-instance v1, Lcom/google/android/filament/utils/Quaternion;

    iget v2, v3, Lcom/google/android/filament/utils/Quaternion;->d:F

    iget v4, v0, Lcom/google/android/filament/utils/Quaternion;->a:F

    mul-float v5, v2, v4

    iget v6, v3, Lcom/google/android/filament/utils/Quaternion;->a:F

    iget v7, v0, Lcom/google/android/filament/utils/Quaternion;->d:F

    mul-float v8, v6, v7

    add-float/2addr v8, v5

    iget v5, v3, Lcom/google/android/filament/utils/Quaternion;->b:F

    iget v9, v0, Lcom/google/android/filament/utils/Quaternion;->c:F

    mul-float v10, v5, v9

    add-float/2addr v10, v8

    iget v3, v3, Lcom/google/android/filament/utils/Quaternion;->c:F

    iget v0, v0, Lcom/google/android/filament/utils/Quaternion;->b:F

    mul-float v8, v3, v0

    sub-float/2addr v10, v8

    mul-float v8, v2, v0

    mul-float v11, v6, v9

    sub-float/2addr v8, v11

    mul-float v11, v5, v7

    add-float/2addr v11, v8

    mul-float v8, v3, v4

    add-float/2addr v8, v11

    mul-float v11, v2, v9

    mul-float v12, v6, v0

    add-float/2addr v12, v11

    mul-float v11, v5, v4

    sub-float/2addr v12, v11

    mul-float v11, v3, v7

    add-float/2addr v11, v12

    mul-float/2addr v2, v7

    mul-float/2addr v6, v4

    sub-float/2addr v2, v6

    mul-float/2addr v5, v0

    sub-float/2addr v2, v5

    mul-float/2addr v3, v9

    sub-float/2addr v2, v3

    invoke-direct {v1, v10, v8, v11, v2}, Lcom/google/android/filament/utils/Quaternion;-><init>(FFFF)V

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Quaternion;->a()Lcom/google/android/filament/utils/Mat4;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/filament/utils/Mat4;->c:Lcom/google/android/filament/utils/Float4;

    iput p1, v1, Lcom/google/android/filament/utils/Float4;->d:F

    iget-object p1, v0, Lcom/google/android/filament/utils/Mat4;->b:Lcom/google/android/filament/utils/Float4;

    const/high16 v1, -0x3f800000    # -4.0f

    iput v1, p1, Lcom/google/android/filament/utils/Float4;->d:F

    iget p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->H:I

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->d(ILcom/google/android/filament/utils/Mat4;)V

    return-void

    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->I:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager$SensorData;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sget-object v0, Lcom/google/android/filament/utils/Quaternion;->e:Lcom/google/android/filament/utils/Quaternion$Companion;

    new-instance v4, Lcom/google/android/filament/utils/Float3;

    invoke-direct {v4, v1, v2, v2}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->I:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager$SensorData;

    const/4 v6, 0x0

    const-string v7, "sensorData"

    if-eqz v5, :cond_1

    iget v5, v5, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager$SensorData;->b:F

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v5}, Lcom/google/android/filament/utils/Quaternion$Companion;->a(Lcom/google/android/filament/utils/Float3;F)Lcom/google/android/filament/utils/Quaternion;

    move-result-object v0

    new-instance v4, Lcom/google/android/filament/utils/Float3;

    invoke-direct {v4, v2, v1, v2}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->I:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager$SensorData;

    if-eqz v1, :cond_0

    iget v1, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager$SensorData;->c:F

    invoke-static {v4, v1}, Lcom/google/android/filament/utils/Quaternion$Companion;->a(Lcom/google/android/filament/utils/Float3;F)Lcom/google/android/filament/utils/Quaternion;

    move-result-object v1

    new-instance v2, Lcom/google/android/filament/utils/Quaternion;

    iget v4, v0, Lcom/google/android/filament/utils/Quaternion;->d:F

    iget v5, v1, Lcom/google/android/filament/utils/Quaternion;->a:F

    mul-float v6, v4, v5

    iget v7, v0, Lcom/google/android/filament/utils/Quaternion;->a:F

    iget v8, v1, Lcom/google/android/filament/utils/Quaternion;->d:F

    mul-float v9, v7, v8

    add-float/2addr v9, v6

    iget v6, v0, Lcom/google/android/filament/utils/Quaternion;->b:F

    iget v10, v1, Lcom/google/android/filament/utils/Quaternion;->c:F

    mul-float v11, v6, v10

    add-float/2addr v11, v9

    iget v0, v0, Lcom/google/android/filament/utils/Quaternion;->c:F

    iget v1, v1, Lcom/google/android/filament/utils/Quaternion;->b:F

    mul-float v9, v0, v1

    sub-float/2addr v11, v9

    mul-float v9, v4, v1

    mul-float v12, v7, v10

    sub-float/2addr v9, v12

    mul-float v12, v6, v8

    add-float/2addr v12, v9

    mul-float v9, v0, v5

    add-float/2addr v9, v12

    mul-float v12, v4, v10

    mul-float v13, v7, v1

    add-float/2addr v13, v12

    mul-float v12, v6, v5

    sub-float/2addr v13, v12

    mul-float v12, v0, v8

    add-float/2addr v12, v13

    mul-float/2addr v4, v8

    mul-float/2addr v7, v5

    sub-float/2addr v4, v7

    mul-float/2addr v6, v1

    sub-float/2addr v4, v6

    mul-float/2addr v0, v10

    sub-float/2addr v4, v0

    invoke-direct {v2, v11, v9, v12, v4}, Lcom/google/android/filament/utils/Quaternion;-><init>(FFFF)V

    iget v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->G:I

    invoke-static {v3, v2, p1}, Lcom/google/android/filament/utils/QuaternionKt;->c(Lcom/google/android/filament/utils/Quaternion;Lcom/google/android/filament/utils/Quaternion;F)Lcom/google/android/filament/utils/Quaternion;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Quaternion;->a()Lcom/google/android/filament/utils/Mat4;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->d(ILcom/google/android/filament/utils/Mat4;)V

    goto :goto_0

    :cond_0
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v6

    :cond_1
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v6

    :cond_2
    :goto_0
    return-void

    :pswitch_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->C:Lcom/google/android/filament/utils/Mat4;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Mat4;->a()Lcom/google/android/filament/utils/Quaternion;

    move-result-object v0

    iget v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->G:I

    invoke-static {v3, v0, p1}, Lcom/google/android/filament/utils/QuaternionKt;->c(Lcom/google/android/filament/utils/Quaternion;Lcom/google/android/filament/utils/Quaternion;F)Lcom/google/android/filament/utils/Quaternion;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Quaternion;->a()Lcom/google/android/filament/utils/Mat4;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->d(ILcom/google/android/filament/utils/Mat4;)V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
