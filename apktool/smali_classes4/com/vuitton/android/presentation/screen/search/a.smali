.class public final synthetic Lcom/vuitton/android/presentation/screen/search/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/search/SearchActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/search/SearchActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/search/a;->b:Lcom/vuitton/android/presentation/screen/search/SearchActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/search/a;->b:Lcom/vuitton/android/presentation/screen/search/SearchActivity;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/search/SearchActivity;->p:Lkotlin/Lazy;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/search/SearchActivity;->u:Landroidx/lifecycle/ViewModelLazy;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/search/SearchActivity;->q:Lkotlin/Lazy;

    move-object v10, p1

    check-cast v10, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object p2, Lcom/vuitton/android/presentation/screen/search/SearchActivity;->y:Lcom/vuitton/android/presentation/screen/search/SearchActivity$Companion;

    and-int/lit8 p2, p1, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq p2, v5, :cond_0

    move p2, v4

    goto :goto_0

    :cond_0
    move p2, v3

    :goto_0
    and-int/2addr p1, v4

    invoke-interface {v10, p1, p2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_c

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v1}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PSPViewModel;

    invoke-interface {p1}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v6, 0x7

    invoke-static {p1, p2, v10, v3, v6}, Landroidx/lifecycle/compose/FlowExtKt;->c(Lkotlinx/coroutines/flow/StateFlow;Landroidx/lifecycle/Lifecycle$State;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    invoke-virtual {v1}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PSPViewModel;

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PSPViewModel;->M0()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-static {v1, p2, v10, v3, v6}, Landroidx/lifecycle/compose/FlowExtKt;->c(Lkotlinx/coroutines/flow/StateFlow;Landroidx/lifecycle/Lifecycle$State;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->a:Ljava/lang/String;

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v10, p0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v6, v7

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v6, :cond_1

    if-ne v7, v8, :cond_2

    :cond_1
    new-instance v7, Lcom/vuitton/android/presentation/screen/search/SearchActivity$onCreate$2$1$1$1;

    invoke-direct {v7, v1, p0, p2}, Lcom/vuitton/android/presentation/screen/search/SearchActivity$onCreate$2$1$1$1;-><init>(Landroidx/compose/runtime/State;Lcom/vuitton/android/presentation/screen/search/SearchActivity;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-static {v10, p1, v7}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const p1, -0xbe50899

    const-string p2, "onCreate$lambda$1$0"

    invoke-static {p1, v10, p2}, Lpq0;->j(ILandroidx/compose/runtime/Composer;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object p1

    sget-object p2, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {p1, p2}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/search/SearchActivity;->t:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p1}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/search/SearchViewModel;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-boolean v6, p0, Lcom/vuitton/android/presentation/screen/search/SearchActivity;->s:Z

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    invoke-interface {v10, p0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_4

    if-ne v1, v8, :cond_5

    :cond_4
    new-instance v1, Lnu0;

    invoke-direct {v1, p0, v4}, Lnu0;-><init>(Lcom/vuitton/android/presentation/screen/search/SearchActivity;I)V

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v10, p0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_6

    if-ne v2, v8, :cond_7

    :cond_6
    new-instance v2, Lnu0;

    invoke-direct {v2, p0, v5}, Lnu0;-><init>(Lcom/vuitton/android/presentation/screen/search/SearchActivity;I)V

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_7
    move-object v9, v2

    check-cast v9, Lkotlin/jvm/functions/Function1;

    const/4 v11, 0x6

    move-object v4, p1

    move-object v5, p2

    move-object v8, v1

    invoke-static/range {v3 .. v11}, Lcom/vuitton/android/presentation/screen/search/components/StoreModeSearchScreenComposableKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/search/SearchViewModel;Ljava/lang/String;ZLjava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_3

    :cond_8
    :goto_1
    const p1, -0xc17031f

    invoke-interface {v10, p1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_9

    sget-object p1, Lcom/vuitton/android/presentation/screen/search/components/SearchRoutes$PSP;->INSTANCE:Lcom/vuitton/android/presentation/screen/search/components/SearchRoutes$PSP;

    goto :goto_2

    :cond_9
    sget-object p1, Lcom/vuitton/android/presentation/screen/search/components/SearchRoutes$Search;->INSTANCE:Lcom/vuitton/android/presentation/screen/search/components/SearchRoutes$Search;

    :goto_2
    new-array v0, v4, [Landroidx/navigation3/runtime/NavKey;

    aput-object p1, v0, v3

    invoke-static {v0, v10}, Landroidx/navigation3/runtime/RememberNavBackStackKt;->a([Landroidx/navigation3/runtime/NavKey;Landroidx/compose/runtime/Composer;)Landroidx/navigation3/runtime/NavBackStack;

    move-result-object p1

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v10, p0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_a

    if-ne v2, v8, :cond_b

    :cond_a
    new-instance v2, Lcom/vuitton/android/presentation/screen/search/SearchActivity$onCreate$2$1$2$1;

    invoke-direct {v2, p0, p2}, Lcom/vuitton/android/presentation/screen/search/SearchActivity$onCreate$2$1$2$1;-><init>(Lcom/vuitton/android/presentation/screen/search/SearchActivity;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_b
    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v0, v2}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance p2, Lcom/vuitton/android/presentation/screen/search/b;

    invoke-direct {p2, p0, p1}, Lcom/vuitton/android/presentation/screen/search/b;-><init>(Lcom/vuitton/android/presentation/screen/search/SearchActivity;Landroidx/navigation3/runtime/NavBackStack;)V

    const p0, -0x3a9e0495

    invoke-static {p0, p2, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object p0

    const/4 p1, 0x6

    invoke-static {p0, v10, p1}, Lcom/vuitton/android/presentation/compose/components/compositionlocalprovider/LVSearchCompositionLocalProviderKt;->a(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_3

    :cond_c
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->D()V

    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
