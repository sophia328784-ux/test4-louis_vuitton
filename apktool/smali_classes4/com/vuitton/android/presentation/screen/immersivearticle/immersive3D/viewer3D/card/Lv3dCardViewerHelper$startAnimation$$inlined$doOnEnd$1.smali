.class public final Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper$startAnimation$$inlined$doOnEnd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "androidx/core/animation/AnimatorKt$addListener$listener$1",
        "Landroid/animation/Animator$AnimatorListener;",
        "core-ktx"
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
.field public final synthetic a:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper$startAnimation$$inlined$doOnEnd$1;->a:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper$startAnimation$$inlined$doOnEnd$1;->a:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->L:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->M:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->a:Landroid/view/SurfaceView;

    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper$startAnimation$3$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper$startAnimation$3$1;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;)V

    invoke-static {p1, v0}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->N:Z

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;->z:Lkotlin/jvm/functions/Function1;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
