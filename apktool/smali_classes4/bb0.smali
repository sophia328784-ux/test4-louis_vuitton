.class public final synthetic Lbb0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;

.field public final synthetic b:[F

.field public final synthetic c:[F


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;[F[F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbb0;->a:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;

    iput-object p2, p0, Lbb0;->b:[F

    iput-object p3, p0, Lbb0;->c:[F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lbb0;->a:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->h0:Landroid/graphics/PathMeasure;

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v2

    mul-float/2addr v2, p1

    iget-object p1, p0, Lbb0;->b:[F

    iget-object p0, p0, Lbb0;->c:[F

    invoke-virtual {v1, v2, p1, p0}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    const/4 p0, 0x0

    aget p0, p1, p0

    const/4 v1, 0x1

    aget p1, p1, v1

    iget v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->m:I

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->b(I)Lcom/google/android/filament/utils/Mat4;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/filament/utils/Mat4;->a:Lcom/google/android/filament/utils/Float4;

    iput p0, v2, Lcom/google/android/filament/utils/Float4;->d:F

    iget-object p0, v1, Lcom/google/android/filament/utils/Mat4;->b:Lcom/google/android/filament/utils/Float4;

    iput p1, p0, Lcom/google/android/filament/utils/Float4;->d:F

    iget p0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->m:I

    invoke-virtual {v0, p0, v1}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->d(ILcom/google/android/filament/utils/Mat4;)V

    return-void
.end method
