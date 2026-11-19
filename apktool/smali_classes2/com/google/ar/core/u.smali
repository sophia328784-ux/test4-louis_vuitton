.class final Lcom/google/ar/core/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lcom/google/ar/core/InstallActivity;


# direct methods
.method public constructor <init>(Lcom/google/ar/core/InstallActivity;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/ar/core/u;->a:I

    iput p3, p0, Lcom/google/ar/core/u;->b:I

    iput p4, p0, Lcom/google/ar/core/u;->c:I

    iput-object p1, p0, Lcom/google/ar/core/u;->d:Lcom/google/ar/core/InstallActivity;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/google/ar/core/u;->b:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    mul-float/2addr p1, v1

    iget-object v1, p0, Lcom/google/ar/core/u;->d:Lcom/google/ar/core/InstallActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget v3, p0, Lcom/google/ar/core/u;->c:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, p1

    iget p0, p0, Lcom/google/ar/core/u;->a:I

    int-to-float p0, p0

    mul-float/2addr p0, v0

    add-float/2addr p0, p1

    float-to-int p0, p0

    float-to-int p1, v3

    invoke-virtual {v2, p0, p1}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    return-void
.end method
