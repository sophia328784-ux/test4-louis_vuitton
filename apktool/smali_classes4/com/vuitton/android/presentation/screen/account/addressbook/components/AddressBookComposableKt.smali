.class public abstract Lcom/vuitton/android/presentation/screen/account/addressbook/components/AddressBookComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0005\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u0012\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00028\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/account/addressbook/models/AddressBookViewState;",
        "viewState",
        "Lkotlin/Function0;",
        "",
        "currentOnBackPressed",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 20

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x1f95b4b2

    move-object/from16 v1, p4

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v9

    move-object/from16 v12, p0

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v4, 0x4

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int v0, p5, v0

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x20

    goto :goto_1

    :cond_1
    const/16 v5, 0x10

    :goto_1
    or-int/2addr v0, v5

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x100

    goto :goto_2

    :cond_2
    const/16 v5, 0x80

    :goto_2
    or-int/2addr v0, v5

    move-object/from16 v6, p3

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x800

    goto :goto_3

    :cond_3
    const/16 v5, 0x400

    :goto_3
    or-int/2addr v0, v5

    and-int/lit16 v5, v0, 0x493

    const/16 v7, 0x492

    const/4 v8, 0x0

    const/4 v10, 0x1

    if-eq v5, v7, :cond_4

    move v5, v10

    goto :goto_4

    :cond_4
    move v5, v8

    :goto_4
    and-int/lit8 v7, v0, 0x1

    invoke-virtual {v9, v7, v5}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v5

    if-eqz v5, :cond_e

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v12}, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v5

    invoke-static {v5, v9}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    shr-int/lit8 v7, v0, 0x3

    invoke-static {v2, v9}, Landroidx/compose/runtime/SnapshotStateKt;->l(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v11

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v13, v14, :cond_5

    new-instance v13, Lr1;

    invoke-direct {v13, v1, v11}, Lr1;-><init>(ILandroidx/compose/runtime/MutableState;)V

    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v11, 0x172d0b79

    invoke-direct {v1, v11, v10, v13}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v13, v1

    :cond_5
    move-object v1, v13

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/android/presentation/screen/account/addressbook/models/AddressBookViewState;

    iget-boolean v11, v11, Lcom/vuitton/android/presentation/screen/account/addressbook/models/AddressBookViewState;->b:Z

    const/4 v13, 0x6

    if-eqz v11, :cond_6

    const v0, -0x7189cd44

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v1, v9, v13}, Lcom/vuitton/android/presentation/screen/account/addressbook/components/AddressLoadingScreenKt;->a(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_9

    :cond_6
    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/android/presentation/screen/account/addressbook/models/AddressBookViewState;

    iget-boolean v11, v11, Lcom/vuitton/android/presentation/screen/account/addressbook/models/AddressBookViewState;->c:Z

    if-eqz v11, :cond_7

    const v0, -0x718886ad

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    and-int/lit8 v0, v7, 0x70

    or-int/2addr v0, v13

    invoke-static {v1, v3, v9, v0}, Lcom/vuitton/android/presentation/screen/account/addressbook/components/AddressEmptyScreenKt;->a(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_9

    :cond_7
    const v7, -0x7186ba66

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/account/addressbook/models/AddressBookViewState;

    and-int/lit8 v7, v0, 0xe

    if-eq v7, v4, :cond_8

    move v11, v8

    goto :goto_5

    :cond_8
    move v11, v10

    :goto_5
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v11, :cond_9

    if-ne v15, v14, :cond_a

    :cond_9
    move v11, v10

    goto :goto_6

    :cond_a
    move/from16 v17, v10

    move/from16 v18, v13

    move-object v8, v14

    goto :goto_7

    :goto_6
    new-instance v10, Lcom/vuitton/android/presentation/screen/account/addressbook/components/AddressBookComposableKt$AddressBookComposable$1$1;

    const-string v15, "setAddressIdToDelete(Ljava/lang/String;)V"

    const/16 v16, 0x0

    move/from16 v17, v11

    const/4 v11, 0x1

    move/from16 v18, v13

    const-class v13, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookViewModel;

    move-object/from16 v19, v14

    const-string v14, "setAddressIdToDelete"

    move-object/from16 v8, v19

    invoke-direct/range {v10 .. v16}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v15, v10

    :goto_7
    check-cast v15, Lkotlin/reflect/KFunction;

    move-object/from16 v19, v15

    check-cast v19, Lkotlin/jvm/functions/Function1;

    if-eq v7, v4, :cond_b

    const/4 v10, 0x0

    goto :goto_8

    :cond_b
    move/from16 v10, v17

    :goto_8
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v10, :cond_c

    if-ne v4, v8, :cond_d

    :cond_c
    new-instance v10, Lcom/vuitton/android/presentation/screen/account/addressbook/components/AddressBookComposableKt$AddressBookComposable$2$1;

    const-string v15, "deleteAddress()V"

    const/16 v16, 0x0

    const/4 v11, 0x0

    const-class v13, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookViewModel;

    const-string v14, "deleteAddress"

    move-object/from16 v12, p0

    invoke-direct/range {v10 .. v16}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v4, v10

    :cond_d
    check-cast v4, Lkotlin/reflect/KFunction;

    move-object v8, v4

    check-cast v8, Lkotlin/jvm/functions/Function0;

    and-int/lit16 v4, v0, 0x380

    or-int/lit8 v4, v4, 0x6

    and-int/lit16 v0, v0, 0x1c00

    or-int v10, v4, v0

    move-object v4, v5

    move-object/from16 v7, v19

    const/4 v0, 0x0

    move-object v5, v3

    move-object v3, v1

    invoke-static/range {v3 .. v10}, Lcom/vuitton/android/presentation/screen/account/addressbook/components/AddressBookScreenKt;->a(Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/account/addressbook/models/AddressBookViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_9

    :cond_e
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_9
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_f

    new-instance v0, Lz;

    const/4 v6, 0x4

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lz;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_f
    return-void
.end method

.method public static final b(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 17

    move-object/from16 v6, p0

    move/from16 v15, p2

    const v0, -0x38ef3b6

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    or-int/2addr v0, v15

    and-int/lit8 v3, v0, 0x3

    if-eq v3, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    and-int/lit8 v3, v0, 0x1

    invoke-virtual {v11, v3, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const v2, 0x7f140d56

    invoke-static {v11, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v3

    shl-int/lit8 v0, v0, 0x12

    const/high16 v2, 0x380000

    and-int v12, v0, v2

    const/4 v13, 0x0

    const/16 v14, 0xfb7

    const/4 v0, 0x0

    move v2, v1

    const/4 v1, 0x0

    move v4, v2

    const/4 v2, 0x0

    move v5, v4

    const/4 v4, 0x0

    move v7, v5

    const/4 v5, 0x0

    move v8, v7

    const/4 v7, 0x0

    move v9, v8

    const/4 v8, 0x0

    move v10, v9

    const/4 v9, 0x0

    move/from16 v16, v10

    const/4 v10, 0x0

    invoke-static/range {v0 .. v14}, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVStandardTopBarKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarNavIcon;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function4;Landroidx/compose/foundation/layout/WindowInsets;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;III)V

    goto :goto_2

    :cond_2
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_2
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Lo0;

    const/4 v2, 0x4

    invoke-direct {v1, v15, v2, v6}, Lo0;-><init>(IILkotlin/jvm/functions/Function0;)V

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_3
    return-void
.end method
