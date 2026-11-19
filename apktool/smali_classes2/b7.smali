.class public final synthetic Lb7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lb7;->a:I

    iput-object p1, p0, Lb7;->b:Ljava/lang/Object;

    iput-object p2, p0, Lb7;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 14

    iget v0, p0, Lb7;->a:I

    iget-object v1, p0, Lb7;->c:Ljava/lang/Object;

    iget-object p0, p0, Lb7;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/core/view/ViewPropertyAnimatorUpdateListener;

    invoke-interface {p0}, Landroidx/core/view/ViewPropertyAnimatorUpdateListener;->a()V

    return-void

    :pswitch_0
    check-cast p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;

    check-cast v1, Lcom/google/android/filament/utils/Quaternion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sget-object v0, Lcom/google/android/filament/utils/Quaternion;->e:Lcom/google/android/filament/utils/Quaternion$Companion;

    new-instance v2, Lcom/google/android/filament/utils/Float3;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->M:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager$SensorData;

    const/4 v6, 0x0

    const-string v7, "sensorData"

    if-eqz v5, :cond_1

    iget v5, v5, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager$SensorData;->b:F

    neg-float v5, v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v5}, Lcom/google/android/filament/utils/Quaternion$Companion;->a(Lcom/google/android/filament/utils/Float3;F)Lcom/google/android/filament/utils/Quaternion;

    move-result-object v0

    new-instance v2, Lcom/google/android/filament/utils/Float3;

    invoke-direct {v2, v4, v3, v4}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->M:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager$SensorData;

    if-eqz v3, :cond_0

    iget v3, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager$SensorData;->c:F

    invoke-static {v2, v3}, Lcom/google/android/filament/utils/Quaternion$Companion;->a(Lcom/google/android/filament/utils/Float3;F)Lcom/google/android/filament/utils/Quaternion;

    move-result-object v2

    new-instance v3, Lcom/google/android/filament/utils/Quaternion;

    iget v4, v0, Lcom/google/android/filament/utils/Quaternion;->d:F

    iget v5, v2, Lcom/google/android/filament/utils/Quaternion;->a:F

    mul-float v6, v4, v5

    iget v7, v0, Lcom/google/android/filament/utils/Quaternion;->a:F

    iget v8, v2, Lcom/google/android/filament/utils/Quaternion;->d:F

    mul-float v9, v7, v8

    add-float/2addr v9, v6

    iget v6, v0, Lcom/google/android/filament/utils/Quaternion;->b:F

    iget v10, v2, Lcom/google/android/filament/utils/Quaternion;->c:F

    mul-float v11, v6, v10

    add-float/2addr v11, v9

    iget v0, v0, Lcom/google/android/filament/utils/Quaternion;->c:F

    iget v2, v2, Lcom/google/android/filament/utils/Quaternion;->b:F

    mul-float v9, v0, v2

    sub-float/2addr v11, v9

    mul-float v9, v4, v2

    mul-float v12, v7, v10

    sub-float/2addr v9, v12

    mul-float v12, v6, v8

    add-float/2addr v12, v9

    mul-float v9, v0, v5

    add-float/2addr v9, v12

    mul-float v12, v4, v10

    mul-float v13, v7, v2

    add-float/2addr v13, v12

    mul-float v12, v6, v5

    sub-float/2addr v13, v12

    mul-float v12, v0, v8

    add-float/2addr v12, v13

    mul-float/2addr v4, v8

    mul-float/2addr v7, v5

    sub-float/2addr v4, v7

    mul-float/2addr v6, v2

    sub-float/2addr v4, v6

    mul-float/2addr v0, v10

    sub-float/2addr v4, v0

    invoke-direct {v3, v11, v9, v12, v4}, Lcom/google/android/filament/utils/Quaternion;-><init>(FFFF)V

    invoke-static {v1, v3, p1}, Lcom/google/android/filament/utils/QuaternionKt;->a(Lcom/google/android/filament/utils/Quaternion;Lcom/google/android/filament/utils/Quaternion;F)Lcom/google/android/filament/utils/Quaternion;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->P:Lcom/google/android/filament/utils/Quaternion;

    iget v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->C:I

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Quaternion;->a()Lcom/google/android/filament/utils/Mat4;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->d(ILcom/google/android/filament/utils/Mat4;)V

    return-void

    :cond_0
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v6

    :cond_1
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v6

    :pswitch_1
    check-cast p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;

    check-cast v1, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    sget-object p1, Lcom/google/android/material/progressindicator/DeterminateDrawable;->z:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->b(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, v1, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->m:I

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_2
    return-void

    :pswitch_2
    check-cast p0, Lcom/google/android/material/appbar/AppBarLayout;

    check-cast v1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    sget v0, Lcom/google/android/material/appbar/AppBarLayout;->B:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->q(F)V

    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->x:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->q(F)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout$LiftOnScrollListener;

    invoke-interface {v1}, Lcom/google/android/material/appbar/AppBarLayout$LiftOnScrollListener;->a()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->s:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout$LiftOnScrollProgressListener;

    iget v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->z:F

    div-float v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/appbar/AppBarLayout$LiftOnScrollProgressListener;->a(F)V

    goto :goto_1

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
