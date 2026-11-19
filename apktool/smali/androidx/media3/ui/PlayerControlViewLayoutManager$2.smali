.class Landroidx/media3/ui/PlayerControlViewLayoutManager$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/ui/PlayerControlViewLayoutManager;-><init>(Landroidx/media3/ui/PlayerControlView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/media3/ui/PlayerControlViewLayoutManager;


# direct methods
.method public constructor <init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$2;->a:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$2;->a:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->b:Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->c:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->d:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->f:Landroid/view/ViewGroup;

    if-eqz p1, :cond_4

    iget-boolean v1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->B:Z

    if-eqz v1, :cond_3

    move v1, v0

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->k:Landroid/view/View;

    instance-of v1, p1, Landroidx/media3/ui/DefaultTimeBar;

    if-eqz v1, :cond_6

    iget-boolean p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->B:Z

    if-nez p0, :cond_6

    check-cast p1, Landroidx/media3/ui/DefaultTimeBar;

    iget-object p0, p1, Landroidx/media3/ui/DefaultTimeBar;->F:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_5
    iput-boolean v0, p1, Landroidx/media3/ui/DefaultTimeBar;->H:Z

    iget p1, p1, Landroidx/media3/ui/DefaultTimeBar;->G:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    aput p1, v1, v0

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const-wide/16 v0, 0xfa

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_6
    return-void
.end method
