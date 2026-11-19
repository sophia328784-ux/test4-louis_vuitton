.class public abstract Lcom/vuitton/android/presentation/screen/options/legaltext/components/LegalTextComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/options/legaltext/models/LegalTextViewState;",
        "viewState",
        "presentation"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextViewModel;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 17

    move/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x3f164c74

    move-object/from16 v1, p4

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v9

    or-int/lit8 v0, p5, 0x2

    and-int/lit8 v1, p5, 0x30

    if-nez v1, :cond_1

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x20

    goto :goto_0

    :cond_0
    const/16 v1, 0x10

    :goto_0
    or-int/2addr v0, v1

    :cond_1
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    const/16 v10, 0x100

    if-eqz v1, :cond_2

    move v1, v10

    goto :goto_1

    :cond_2
    const/16 v1, 0x80

    :goto_1
    or-int/2addr v0, v1

    move-object/from16 v1, p3

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x800

    goto :goto_2

    :cond_3
    const/16 v4, 0x400

    :goto_2
    or-int/2addr v0, v4

    and-int/lit16 v4, v0, 0x493

    const/16 v5, 0x492

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eq v4, v5, :cond_4

    move v4, v12

    goto :goto_3

    :cond_4
    move v4, v11

    :goto_3
    and-int/lit8 v5, v0, 0x1

    invoke-virtual {v9, v5, v4}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v4, p5, 0x1

    if-eqz v4, :cond_6

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int/lit8 v0, v0, -0xf

    move v4, v0

    move-object/from16 v0, p0

    goto :goto_7

    :cond_6
    :goto_4
    invoke-static {v9}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-static {v5, v9}, Landroidx/hilt/lifecycle/viewmodel/compose/HiltViewModelKt;->a(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/compose/runtime/Composer;)Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory;

    move-result-object v7

    instance-of v4, v5, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v4, :cond_7

    move-object v4, v5

    check-cast v4, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v4}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v4

    :goto_5
    move-object v8, v4

    goto :goto_6

    :cond_7
    sget-object v4, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->c:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    goto :goto_5

    :goto_6
    const-class v4, Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextViewModelImpl;

    sget-object v6, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v6, v4}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->a(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModel;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextViewModel;

    and-int/lit8 v0, v0, -0xf

    move-object/from16 v16, v4

    move v4, v0

    move-object/from16 v0, v16

    :goto_7
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v5, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v6

    const/4 v7, 0x7

    const/4 v8, 0x0

    invoke-static {v6, v8, v9, v11, v7}, Landroidx/lifecycle/compose/FlowExtKt;->c(Lkotlinx/coroutines/flow/StateFlow;Landroidx/lifecycle/Lifecycle$State;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v6

    sget-object v7, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v13

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v13, :cond_8

    if-ne v14, v15, :cond_9

    :cond_8
    new-instance v14, Lcom/vuitton/android/presentation/screen/options/legaltext/components/LegalTextComposableKt$LegalTextComposable$1$1;

    invoke-direct {v14, v0, v8}, Lcom/vuitton/android/presentation/screen/options/legaltext/components/LegalTextComposableKt$LegalTextComposable$1$1;-><init>(Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_9
    check-cast v14, Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v7, v14}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-eqz v2, :cond_a

    const v7, 0x7c1d1c48

    const v8, 0x7f140b1b

    invoke-static {v9, v7, v8, v9, v11}, Lcj;->f(Landroidx/compose/runtime/GapComposer;IILandroidx/compose/runtime/GapComposer;Z)Ljava/lang/String;

    move-result-object v7

    goto :goto_8

    :cond_a
    const v7, 0x7c1e6263

    const v8, 0x7f140c31

    invoke-static {v9, v7, v8, v9, v11}, Lcj;->f(Landroidx/compose/runtime/GapComposer;IILandroidx/compose/runtime/GapComposer;Z)Ljava/lang/String;

    move-result-object v7

    :goto_8
    if-eqz v2, :cond_b

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/options/legaltext/models/LegalTextViewState;

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/options/legaltext/models/LegalTextViewState;->a:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    invoke-static {v6, v5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->a(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    goto :goto_9

    :cond_b
    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/options/legaltext/models/LegalTextViewState;

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/options/legaltext/models/LegalTextViewState;->b:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    invoke-static {v6, v5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->a(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    :goto_9
    if-eqz v2, :cond_c

    const-string v6, "sharingPreferences_legalMentions_view"

    goto :goto_a

    :cond_c
    const-string v6, "sharingPreferences_privacyPolicy_view"

    :goto_a
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    and-int/lit16 v13, v4, 0x380

    if-ne v13, v10, :cond_d

    move v11, v12

    :cond_d
    or-int/2addr v8, v11

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v8, :cond_e

    if-ne v10, v15, :cond_f

    :cond_e
    new-instance v10, Lt30;

    const/16 v8, 0x9

    invoke-direct {v10, v0, v3, v8}, Lt30;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_f
    check-cast v10, Lkotlin/jvm/functions/Function0;

    shl-int/lit8 v4, v4, 0x3

    const v8, 0xe000

    and-int/2addr v4, v8

    move-object v8, v10

    move v10, v4

    move-object v4, v7

    move-object v7, v8

    move-object v8, v1

    invoke-static/range {v4 .. v10}, Lcom/vuitton/android/presentation/screen/options/legaltext/components/LegalTextScreenKt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    move-object v1, v0

    goto :goto_b

    :cond_10
    const-string v0, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_11
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v1, p0

    :goto_b
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_12

    new-instance v0, Lzr;

    move-object/from16 v4, p3

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lzr;-><init>(Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextViewModel;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V

    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_12
    return-void
.end method
