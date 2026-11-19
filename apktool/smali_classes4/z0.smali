.class public final synthetic Lz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lz0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz0;->c:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;

    iput-object p2, p0, Lz0;->d:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lz0;->e:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    .line 13
    const/4 p4, 0x1

    iput p4, p0, Lz0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz0;->c:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;

    iput-object p2, p0, Lz0;->d:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lz0;->e:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lz0;->b:I

    const/4 v1, 0x1

    iget-object v2, p0, Lz0;->e:Lkotlin/jvm/functions/Function0;

    iget-object v3, p0, Lz0;->d:Lkotlin/jvm/functions/Function0;

    iget-object p0, p0, Lz0;->c:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    invoke-static {p0, v3, v2, p1, p2}, Lcom/vuitton/android/presentation/screen/aicompanion/components/onboarding/AICompanionOnboardingComposableKt;->a(Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    and-int/lit8 p2, p1, 0x3

    const/4 v0, 0x2

    const/4 v5, 0x0

    if-eq p2, v0, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v5

    :goto_0
    and-int/2addr p1, v1

    invoke-interface {v4, p1, p2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    const/4 p1, 0x0

    const/4 p2, 0x7

    invoke-static {p0, p1, v4, v5, p2}, Landroidx/lifecycle/compose/FlowExtKt;->c(Lkotlinx/coroutines/flow/StateFlow;Landroidx/lifecycle/Lifecycle$State;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object p0

    sget-object p1, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v4, p1}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;

    invoke-interface {v4, p1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p0

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p2

    or-int/2addr p0, p2

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p2

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez p0, :cond_1

    if-ne p2, v5, :cond_2

    :cond_1
    new-instance p2, Lj;

    invoke-direct {p2, p1, v3, v0}, Lj;-><init>(Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v4, p2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v4, p1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p0

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr p0, v0

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez p0, :cond_3

    if-ne v0, v5, :cond_4

    :cond_3
    new-instance v0, Lj;

    const/4 p0, 0x3

    invoke-direct {v0, p1, v2, p0}, Lj;-><init>(Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x0

    const/4 v0, 0x0

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/aicompanion/components/onboarding/AICompanionOnboardingScreenKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_5
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
