.class public abstract Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/account/editavatar/models/EditAvatarViewState;",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 19

    move-object/from16 v2, p0

    move-object/from16 v7, p2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x46764d52

    move-object/from16 v1, p3

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v13

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/4 v8, 0x4

    if-eqz v0, :cond_0

    move v0, v8

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p4, v0

    move-object/from16 v9, p1

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    const/16 v3, 0x100

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    const/16 v1, 0x80

    :goto_2
    or-int v10, v0, v1

    and-int/lit16 v0, v10, 0x93

    const/16 v1, 0x92

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eq v0, v1, :cond_3

    move v0, v12

    goto :goto_3

    :cond_3
    move v0, v11

    :goto_3
    and-int/lit8 v1, v10, 0x1

    invoke-virtual {v13, v1, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v4, 0x0

    invoke-static {v0, v4, v13, v11, v1}, Landroidx/lifecycle/compose/FlowExtKt;->c(Lkotlinx/coroutines/flow/StateFlow;Landroidx/lifecycle/Lifecycle$State;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    and-int/lit8 v14, v10, 0xe

    if-eq v14, v8, :cond_4

    move v6, v11

    goto :goto_4

    :cond_4
    move v6, v12

    :goto_4
    and-int/lit16 v15, v10, 0x380

    if-ne v15, v3, :cond_5

    move v3, v12

    goto :goto_5

    :cond_5
    move v3, v11

    :goto_5
    or-int/2addr v3, v6

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v3, v6

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v3, :cond_6

    if-ne v6, v15, :cond_7

    :cond_6
    new-instance v6, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarComposableKt$EditAvatarComposable$1$1;

    invoke-direct {v6, v2, v7, v1, v4}, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarComposableKt$EditAvatarComposable$1$1;-><init>(Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModel;Lkotlin/jvm/functions/Function2;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_7
    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v5, v6}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/vuitton/android/presentation/screen/account/editavatar/models/EditAvatarViewState;

    if-eq v14, v8, :cond_8

    move v0, v11

    goto :goto_6

    :cond_8
    move v0, v12

    :goto_6
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_9

    if-ne v1, v15, :cond_a

    :cond_9
    new-instance v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarComposableKt$EditAvatarComposable$2$1;

    const-string v5, "onSaveAvatar()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModel;

    const-string v4, "onSaveAvatar"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_a
    check-cast v1, Lkotlin/reflect/KFunction;

    move-object/from16 v17, v1

    check-cast v17, Lkotlin/jvm/functions/Function0;

    if-eq v14, v8, :cond_b

    move v0, v11

    goto :goto_7

    :cond_b
    move v0, v12

    :goto_7
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_c

    if-ne v1, v15, :cond_d

    :cond_c
    new-instance v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarComposableKt$EditAvatarComposable$3$1;

    const-string v5, "onAvatarSelected(Ljava/lang/String;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModel;

    const-string v4, "onAvatarSelected"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_d
    check-cast v1, Lkotlin/reflect/KFunction;

    move-object/from16 v18, v1

    check-cast v18, Lkotlin/jvm/functions/Function1;

    if-eq v14, v8, :cond_e

    goto :goto_8

    :cond_e
    move v11, v12

    :goto_8
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v11, :cond_f

    if-ne v0, v15, :cond_10

    :cond_f
    new-instance v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarComposableKt$EditAvatarComposable$4$1;

    const-string v5, "loadAvatars()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModel;

    const-string v4, "loadAvatars"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_10
    check-cast v0, Lkotlin/reflect/KFunction;

    move-object v12, v0

    check-cast v12, Lkotlin/jvm/functions/Function0;

    and-int/lit8 v14, v10, 0x70

    move-object/from16 v8, v16

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    invoke-static/range {v8 .. v14}, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarScreenKt;->a(Lcom/vuitton/android/presentation/screen/account/editavatar/models/EditAvatarViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_9

    :cond_11
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_9
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_12

    new-instance v0, Lu;

    const/16 v2, 0x1b

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v1, p4

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lu;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_12
    return-void
.end method
