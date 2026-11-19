.class public final synthetic Lcom/google/android/material/floatingactionbutton/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

.field public final synthetic b:F

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:F

.field public final synthetic g:F

.field public final synthetic h:F

.field public final synthetic i:Landroid/graphics/Matrix;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;FFFFFFFLandroid/graphics/Matrix;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/a;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    iput p2, p0, Lcom/google/android/material/floatingactionbutton/a;->b:F

    iput p3, p0, Lcom/google/android/material/floatingactionbutton/a;->c:F

    iput p4, p0, Lcom/google/android/material/floatingactionbutton/a;->d:F

    iput p5, p0, Lcom/google/android/material/floatingactionbutton/a;->e:F

    iput p6, p0, Lcom/google/android/material/floatingactionbutton/a;->f:F

    iput p7, p0, Lcom/google/android/material/floatingactionbutton/a;->g:F

    iput p8, p0, Lcom/google/android/material/floatingactionbutton/a;->h:F

    iput-object p9, p0, Lcom/google/android/material/floatingactionbutton/a;->i:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    sget-object v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->B:Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/a;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    iget-object v1, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    iget v4, p0, Lcom/google/android/material/floatingactionbutton/a;->b:F

    iget v5, p0, Lcom/google/android/material/floatingactionbutton/a;->c:F

    invoke-static {v4, v5, v2, v3, p1}, Lcom/google/android/material/animation/AnimationUtils;->b(FFFFF)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget v2, p0, Lcom/google/android/material/floatingactionbutton/a;->d:F

    iget v3, p0, Lcom/google/android/material/floatingactionbutton/a;->e:F

    invoke-static {v2, v3, p1}, Lcom/google/android/material/animation/AnimationUtils;->a(FFF)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleX(F)V

    iget v2, p0, Lcom/google/android/material/floatingactionbutton/a;->f:F

    invoke-static {v2, v3, p1}, Lcom/google/android/material/animation/AnimationUtils;->a(FFF)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleY(F)V

    iget v2, p0, Lcom/google/android/material/floatingactionbutton/a;->g:F

    iget v3, p0, Lcom/google/android/material/floatingactionbutton/a;->h:F

    invoke-static {v2, v3, p1}, Lcom/google/android/material/animation/AnimationUtils;->a(FFF)F

    move-result v4

    iput v4, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->p:F

    invoke-static {v2, v3, p1}, Lcom/google/android/material/animation/AnimationUtils;->a(FFF)F

    move-result p1

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/a;->i:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->a(FLandroid/graphics/Matrix;)V

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method
