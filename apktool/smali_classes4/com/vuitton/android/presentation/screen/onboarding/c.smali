.class public final synthetic Lcom/vuitton/android/presentation/screen/onboarding/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lkotlin/jvm/functions/Function2;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModel;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;

.field public final synthetic g:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/State;I)V
    .locals 0

    iput p6, p0, Lcom/vuitton/android/presentation/screen/onboarding/c;->b:I

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/onboarding/c;->c:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/onboarding/c;->d:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModel;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/onboarding/c;->e:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/onboarding/c;->f:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/onboarding/c;->g:Landroidx/compose/runtime/State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget v0, p0, Lcom/vuitton/android/presentation/screen/onboarding/c;->b:I

    const/4 v1, 0x0

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/onboarding/c;->g:Landroidx/compose/runtime/State;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/onboarding/c;->d:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModel;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/onboarding/c;->c:Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x0

    check-cast p1, Landroidx/compose/animation/AnimatedContentScope;

    packed-switch v0, :pswitch_data_0

    move-object v0, p2

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v11, p3

    check-cast v11, Landroidx/compose/runtime/Composer;

    move-object/from16 v7, p4

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v0, :cond_0

    if-ne v7, v2, :cond_1

    :cond_0
    new-instance v7, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingNavHostKt$OnboardingNavHost$3$1$11$1$1;

    invoke-direct {v7, v5, v1}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingNavHostKt$OnboardingNavHost$3$1$11$1$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-static {v11, p1, v7}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v11, v6}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingNavHostKt;->a(Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_2

    if-ne v1, v2, :cond_3

    :cond_2
    new-instance v1, Ldh0;

    const/4 v0, 0x2

    invoke-direct {v1, v4, v0}, Ldh0;-><init>(Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModel;I)V

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    move-object v8, v1

    check-cast v8, Lkotlin/jvm/functions/Function0;

    const/4 v12, 0x0

    iget-object v9, p0, Lcom/vuitton/android/presentation/screen/onboarding/c;->e:Lkotlin/jvm/functions/Function0;

    iget-object v10, p0, Lcom/vuitton/android/presentation/screen/onboarding/c;->f:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v7 .. v12}, Lcom/vuitton/android/presentation/screen/onboarding/components/OnboardingPreferencesComposableKt;->b(Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    return-object p1

    :pswitch_0
    move-object v0, p2

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v11, p3

    check-cast v11, Landroidx/compose/runtime/Composer;

    move-object/from16 v7, p4

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v0, :cond_4

    if-ne v7, v2, :cond_5

    :cond_4
    new-instance v7, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingNavHostKt$OnboardingNavHost$3$1$10$1$1;

    invoke-direct {v7, v5, v1}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingNavHostKt$OnboardingNavHost$3$1$10$1$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5
    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-static {v11, p1, v7}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v11, v6}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingNavHostKt;->a(Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_6

    if-ne v1, v2, :cond_7

    :cond_6
    new-instance v1, Ldh0;

    invoke-direct {v1, v4, v6}, Ldh0;-><init>(Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModel;I)V

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_7
    move-object v8, v1

    check-cast v8, Lkotlin/jvm/functions/Function0;

    const/4 v12, 0x0

    iget-object v9, p0, Lcom/vuitton/android/presentation/screen/onboarding/c;->e:Lkotlin/jvm/functions/Function0;

    iget-object v10, p0, Lcom/vuitton/android/presentation/screen/onboarding/c;->f:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v7 .. v12}, Lcom/vuitton/android/presentation/screen/onboarding/components/OnboardingPreferencesComposableKt;->d(Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
