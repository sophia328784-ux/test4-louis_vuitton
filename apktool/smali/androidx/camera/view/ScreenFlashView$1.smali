.class Landroidx/camera/view/ScreenFlashView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/ImageCapture$ScreenFlash;


# instance fields
.field public a:F

.field public b:Landroid/animation/ValueAnimator;

.field public final synthetic c:Landroidx/camera/view/ScreenFlashView;


# direct methods
.method public constructor <init>(Landroidx/camera/view/ScreenFlashView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/view/ScreenFlashView$1;->c:Landroidx/camera/view/ScreenFlashView;

    return-void
.end method


# virtual methods
.method public final a(JLandroidx/camera/core/ImageCapture$ScreenFlashListener;)V
    .locals 3

    const/4 p1, 0x3

    const-string p2, "ScreenFlashView"

    invoke-static {p1, p2}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    iget-object v0, p0, Landroidx/camera/view/ScreenFlashView$1;->c:Landroidx/camera/view/ScreenFlashView;

    invoke-static {v0}, Landroidx/camera/view/ScreenFlashView;->a(Landroidx/camera/view/ScreenFlashView;)F

    move-result v1

    iput v1, p0, Landroidx/camera/view/ScreenFlashView$1;->a:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroidx/camera/view/ScreenFlashView;->b(Landroidx/camera/view/ScreenFlashView;F)V

    iget-object v1, p0, Landroidx/camera/view/ScreenFlashView$1;->b:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lhn0;

    const/16 v2, 0x10

    invoke-direct {v1, p3, v2}, Lhn0;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, p2}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {v0}, Landroidx/camera/view/ScreenFlashView;->getVisibilityRampUpAnimationDurationMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p2, Lft;

    const/4 p3, 0x6

    invoke-direct {p2, v0, p3}, Lft;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p2, Landroidx/camera/view/ScreenFlashView$2;

    invoke-direct {p2, v1}, Landroidx/camera/view/ScreenFlashView$2;-><init>(Lhn0;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iput-object p1, p0, Landroidx/camera/view/ScreenFlashView$1;->b:Landroid/animation/ValueAnimator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final clear()V
    .locals 2

    const-string v0, "ScreenFlashView"

    const/4 v1, 0x3

    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    iget-object v0, p0, Landroidx/camera/view/ScreenFlashView$1;->b:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/camera/view/ScreenFlashView$1;->b:Landroid/animation/ValueAnimator;

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/camera/view/ScreenFlashView$1;->c:Landroidx/camera/view/ScreenFlashView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    iget p0, p0, Landroidx/camera/view/ScreenFlashView$1;->a:F

    invoke-static {v1, p0}, Landroidx/camera/view/ScreenFlashView;->b(Landroidx/camera/view/ScreenFlashView;F)V

    return-void
.end method
