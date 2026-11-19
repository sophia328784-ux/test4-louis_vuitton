.class public final synthetic Lbh0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Lkotlin/jvm/functions/Function1;

.field public final synthetic c:Landroidx/compose/runtime/MutableState;

.field public final synthetic d:Landroidx/compose/runtime/MutableState;

.field public final synthetic e:Landroidx/compose/runtime/MutableState;

.field public final synthetic f:Landroidx/compose/runtime/MutableState;

.field public final synthetic g:Landroidx/compose/runtime/MutableFloatState;

.field public final synthetic h:Landroidx/compose/runtime/MutableFloatState;

.field public final synthetic i:Landroidx/compose/runtime/MutableIntState;

.field public final synthetic j:Landroidx/compose/runtime/MutableFloatState;

.field public final synthetic k:Landroidx/compose/runtime/MutableFloatState;

.field public final synthetic l:Landroidx/compose/runtime/MutableFloatState;

.field public final synthetic m:Lkotlin/jvm/functions/Function0;

.field public final synthetic n:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

.field public final synthetic o:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableFloatState;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbh0;->b:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lbh0;->c:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lbh0;->d:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lbh0;->e:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Lbh0;->f:Landroidx/compose/runtime/MutableState;

    iput-object p6, p0, Lbh0;->g:Landroidx/compose/runtime/MutableFloatState;

    iput-object p7, p0, Lbh0;->h:Landroidx/compose/runtime/MutableFloatState;

    iput-object p8, p0, Lbh0;->i:Landroidx/compose/runtime/MutableIntState;

    iput-object p9, p0, Lbh0;->j:Landroidx/compose/runtime/MutableFloatState;

    iput-object p10, p0, Lbh0;->k:Landroidx/compose/runtime/MutableFloatState;

    iput-object p11, p0, Lbh0;->l:Landroidx/compose/runtime/MutableFloatState;

    iput-object p12, p0, Lbh0;->m:Lkotlin/jvm/functions/Function0;

    iput-object p13, p0, Lbh0;->n:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    iput-object p14, p0, Lbh0;->o:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 14

    sget-object v0, Lcom/vuitton/android/presentation/screen/onboarding/components/OnboardingIconComposableKt;->a:Landroid/graphics/PathMeasure;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p0, Lbh0;->c:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object v1, p0, Lbh0;->d:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object v1, p0, Lbh0;->e:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object v5, p0, Lbh0;->f:Landroidx/compose/runtime/MutableState;

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbh0;->b:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lbh0;->g:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {v0}, Landroidx/compose/runtime/FloatState;->a()F

    move-result v10

    iget-object v1, p0, Lbh0;->h:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {v1}, Landroidx/compose/runtime/FloatState;->a()F

    move-result v11

    iget-object v2, p0, Lbh0;->i:Landroidx/compose/runtime/MutableIntState;

    invoke-interface {v2}, Landroidx/compose/runtime/IntState;->f()I

    move-result v8

    new-instance v12, Lah0;

    const/4 v2, 0x1

    iget-object v3, p0, Lbh0;->j:Landroidx/compose/runtime/MutableFloatState;

    iget-object v4, p0, Lbh0;->k:Landroidx/compose/runtime/MutableFloatState;

    invoke-direct {v12, v3, v4, v2}, Lah0;-><init>(Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableFloatState;I)V

    new-instance v9, Lah0;

    const/4 v13, 0x2

    invoke-direct {v9, v0, v1, v13}, Lah0;-><init>(Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableFloatState;I)V

    new-instance v0, Lz30;

    iget-object v1, p0, Lbh0;->l:Landroidx/compose/runtime/MutableFloatState;

    invoke-direct {v0, v1, v13}, Lz30;-><init>(Landroidx/compose/runtime/MutableFloatState;I)V

    new-instance v2, Lr0;

    const/16 v7, 0xf

    iget-object v3, p0, Lbh0;->m:Lkotlin/jvm/functions/Function0;

    iget-object v4, p0, Lbh0;->n:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    iget-object v6, p0, Lbh0;->o:Landroidx/compose/runtime/MutableState;

    invoke-direct/range {v2 .. v7}, Lr0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/runtime/MutableState;Ljava/lang/Object;I)V

    sget-object p0, Lcom/vuitton/android/presentation/screen/onboarding/components/OnboardingIconComposableKt;->a:Landroid/graphics/PathMeasure;

    sget-object v1, Lcom/vuitton/android/presentation/screen/onboarding/components/OnboardingIconComposableKt;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/Path;

    instance-of v3, v1, Landroidx/compose/ui/graphics/AndroidPath;

    if-eqz v3, :cond_0

    check-cast v1, Landroidx/compose/ui/graphics/AndroidPath;

    iget-object v1, v1, Landroidx/compose/ui/graphics/AndroidPath;->a:Landroid/graphics/Path;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    new-instance v7, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    new-array v8, v13, [F

    fill-array-data v8, :array_0

    new-array v1, v13, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result p0

    float-to-double v3, p0

    const-wide v5, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v3, v5

    double-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v6, Lzg0;

    invoke-direct/range {v6 .. v12}, Lzg0;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;[FLah0;FFLah0;)V

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p0, Lcom/vuitton/android/presentation/screen/onboarding/components/OnboardingIconComposableKt$initAndLaunchAnimation$$inlined$doOnEnd$1;

    invoke-direct {p0, v0, v2}, Lcom/vuitton/android/presentation/screen/onboarding/components/OnboardingIconComposableKt$initAndLaunchAnimation$$inlined$doOnEnd$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v1, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_0
    const-string p0, "Unable to obtain android.graphics.Path"

    invoke-static {p0}, Lmt;->i(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
