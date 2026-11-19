.class public final synthetic Lzg0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic b:[F

.field public final synthetic c:Lah0;

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:Lah0;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$FloatRef;[FLah0;FFLah0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzg0;->a:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p2, p0, Lzg0;->b:[F

    iput-object p3, p0, Lzg0;->c:Lah0;

    iput p4, p0, Lzg0;->d:F

    iput p5, p0, Lzg0;->e:F

    iput-object p6, p0, Lzg0;->f:Lah0;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    sget-object v0, Lcom/vuitton/android/presentation/screen/onboarding/components/OnboardingIconComposableKt;->a:Landroid/graphics/PathMeasure;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lzg0;->a:Lkotlin/jvm/internal/Ref$FloatRef;

    iput p1, v0, Lkotlin/jvm/internal/Ref$FloatRef;->b:F

    sget-object v1, Lcom/vuitton/android/presentation/screen/onboarding/components/OnboardingIconComposableKt;->a:Landroid/graphics/PathMeasure;

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v2

    mul-float/2addr v2, p1

    const/4 p1, 0x0

    iget-object v3, p0, Lzg0;->b:[F

    invoke-virtual {v1, v2, v3, p1}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    const/4 p1, 0x0

    aget p1, v3, p1

    const/4 v1, 0x1

    aget v1, v3, v1

    sget v2, Lcom/vuitton/android/presentation/screen/onboarding/components/OnboardingIconComposableKt;->c:F

    iget v3, v0, Lkotlin/jvm/internal/Ref$FloatRef;->b:F

    mul-float/2addr v3, v2

    iget v4, p0, Lzg0;->d:F

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v0, v0, Lkotlin/jvm/internal/Ref$FloatRef;->b:F

    mul-float/2addr v2, v0

    iget v0, p0, Lzg0;->e:F

    add-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object v2, p0, Lzg0;->c:Lah0;

    invoke-virtual {v2, v3, v0}, Lah0;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object p0, p0, Lzg0;->f:Lah0;

    invoke-virtual {p0, p1, v0}, Lah0;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
