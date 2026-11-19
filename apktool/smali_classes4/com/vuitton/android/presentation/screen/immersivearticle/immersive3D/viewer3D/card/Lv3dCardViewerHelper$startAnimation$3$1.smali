.class final Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper$startAnimation$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper$startAnimation$3$1;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper$startAnimation$3$1;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->Q:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->N:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->R:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iput-boolean v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->R:Z

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->B:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->Q:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const v4, 0x3e2a9931    # 0.1666f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v2, v2, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/high16 v1, 0x43340000    # 180.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    iget v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->H:I

    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->b(I)Lcom/google/android/filament/utils/Mat4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Mat4;->a()Lcom/google/android/filament/utils/Quaternion;

    move-result-object v1

    new-instance v4, Lza0;

    const/4 v6, 0x3

    invoke-direct {v4, p0, v1, v6}, Lza0;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;Lcom/google/android/filament/utils/Quaternion;I)V

    invoke-virtual {p1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/PathInterpolator;

    invoke-direct {v4, v2, v2, v2, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    iput-boolean v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->N:Z

    iget v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->G:I

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->b(I)Lcom/google/android/filament/utils/Mat4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Mat4;->a()Lcom/google/android/filament/utils/Quaternion;

    move-result-object v0

    new-instance v2, Lza0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lza0;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;Lcom/google/android/filament/utils/Quaternion;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper$flipAnimation$$inlined$doOnEnd$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper$flipAnimation$$inlined$doOnEnd$1;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
