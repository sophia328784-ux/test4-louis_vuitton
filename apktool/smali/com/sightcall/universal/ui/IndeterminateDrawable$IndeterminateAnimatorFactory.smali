.class final Lcom/sightcall/universal/ui/IndeterminateDrawable$IndeterminateAnimatorFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/ui/IndeterminateDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IndeterminateAnimatorFactory"
.end annotation


# static fields
.field private static final END_ANGLE:Ljava/lang/String; = "endAngle"

.field private static final END_ANGLE_MAX:F = 360.0f

.field private static final ROTATION:Ljava/lang/String; = "rotation"

.field private static final ROTATION_END_ANGLE:I = 0x2cf

.field private static final START_ANGLE:Ljava/lang/String; = "startAngle"

.field private static final START_ANGLE_MAX:F = 359.0f


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createAnimationAnimator(Lcom/sightcall/universal/ui/IndeterminateDrawable;Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;)Landroid/animation/Animator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "rotation"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-static {p1}, Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;->c(Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;)I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x4433c000    # 719.0f
    .end array-data
.end method

.method private static createEndInterpolator()Landroid/view/animation/Interpolator;
    .locals 7

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/high16 v1, 0x3f000000    # 0.5f

    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const v1, 0x3f333333    # 0.7f

    const v2, 0x3e19999a    # 0.15f

    const v3, 0x3f19999a    # 0.6f

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v0}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/graphics/Path;)V

    return-object v1
.end method

.method public static createIndeterminateDrawableAnimator(Lcom/sightcall/universal/ui/IndeterminateDrawable;Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;)Landroid/animation/Animator;
    .locals 3

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {p0, p1}, Lcom/sightcall/universal/ui/IndeterminateDrawable$IndeterminateAnimatorFactory;->createStartAngleAnimator(Lcom/sightcall/universal/ui/IndeterminateDrawable;Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;)Landroid/animation/Animator;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/sightcall/universal/ui/IndeterminateDrawable$IndeterminateAnimatorFactory;->createSweepAngleAnimator(Lcom/sightcall/universal/ui/IndeterminateDrawable;Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;)Landroid/animation/Animator;

    move-result-object v2

    invoke-static {p0, p1}, Lcom/sightcall/universal/ui/IndeterminateDrawable$IndeterminateAnimatorFactory;->createAnimationAnimator(Lcom/sightcall/universal/ui/IndeterminateDrawable;Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;)Landroid/animation/Animator;

    move-result-object p0

    filled-new-array {v1, v2, p0}, [Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0
.end method

.method private static createStartAngleAnimator(Lcom/sightcall/universal/ui/IndeterminateDrawable;Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;)Landroid/animation/Animator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "startAngle"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-static {p1}, Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;->d(Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;)I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    invoke-static {}, Lcom/sightcall/universal/ui/IndeterminateDrawable$IndeterminateAnimatorFactory;->createStartInterpolator()Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x43b38000    # 359.0f
    .end array-data
.end method

.method private static createStartInterpolator()Landroid/view/animation/Interpolator;
    .locals 7

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/high16 v5, 0x3f000000    # 0.5f

    const v6, 0x3f59999a    # 0.85f

    const v1, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v0}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/graphics/Path;)V

    return-object v1
.end method

.method private static createSweepAngleAnimator(Lcom/sightcall/universal/ui/IndeterminateDrawable;Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;)Landroid/animation/Animator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "endAngle"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-static {p1}, Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;->d(Lcom/sightcall/universal/ui/IndeterminateDrawable$Builder;)I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    invoke-static {}, Lcom/sightcall/universal/ui/IndeterminateDrawable$IndeterminateAnimatorFactory;->createEndInterpolator()Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method
