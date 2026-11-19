.class Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic a:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

.field public final synthetic b:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;


# direct methods
.method public constructor <init>(Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;->b:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    iput-object p2, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;->a:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 4

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;->b:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;->a:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->a(FLandroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;Z)V

    iget v3, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->e:F

    iput v3, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->k:F

    iget v3, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->f:F

    iput v3, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->l:F

    iget v3, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->g:F

    iput v3, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->m:F

    iget v3, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->j:I

    add-int/2addr v3, v2

    iget-object v2, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->i:[I

    array-length v2, v2

    rem-int/2addr v3, v2

    invoke-virtual {p0, v3}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->a(I)V

    iget-boolean v2, v0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->g:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->g:Z

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    const-wide/16 v2, 0x534

    invoke-virtual {p1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    iget-boolean p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->n:Z

    if-eqz p1, :cond_0

    iput-boolean v1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->n:Z

    :cond_0
    return-void

    :cond_1
    iget p0, v0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->f:F

    add-float/2addr p0, v1

    iput p0, v0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->f:F

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;->b:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->f:F

    return-void
.end method
