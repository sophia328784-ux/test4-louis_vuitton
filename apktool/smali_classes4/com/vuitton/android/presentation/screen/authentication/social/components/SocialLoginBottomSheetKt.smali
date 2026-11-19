.class public abstract Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
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
.method public static final a(Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;Landroidx/compose/runtime/Composer;I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, -0x729ae1bd

    move-object/from16 v3, p1

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v13

    and-int/lit8 v2, v1, 0x6

    const/4 v3, 0x2

    if-nez v2, :cond_1

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    or-int/2addr v2, v1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    and-int/lit8 v4, v2, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v4, v3, :cond_2

    move v3, v6

    goto :goto_2

    :cond_2
    move v3, v5

    :goto_2
    and-int/2addr v2, v6

    invoke-virtual {v13, v2, v3}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;->b:Landroidx/compose/runtime/State;

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;->c:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    invoke-virtual {v4}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->a()Z

    move-result v4

    if-eqz v4, :cond_3

    const v4, 0x4a4176fc    # 3169727.0f

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;->c:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    const v4, 0x7f140319

    invoke-static {v13, v4}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Lyj0;

    const/16 v8, 0xa

    invoke-direct {v7, v0, v3, v2, v8}, Lyj0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const v2, -0x74bdc4ec

    invoke-static {v2, v7, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v12

    sget v2, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/lit8 v2, v2, 0x9

    const/high16 v3, 0x6000000

    or-int v14, v2, v3

    const/16 v15, 0xf5

    const/4 v3, 0x0

    move v2, v5

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v3 .. v15}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/foundation/layout/WindowInsets;JZLandroidx/compose/material3/ModalBottomSheetProperties;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_3

    :cond_3
    move v2, v5

    const v3, 0x4a78801f    # 4071431.8f

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_3

    :cond_4
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_3
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v2

    if-eqz v2, :cond_5

    new-instance v3, Lom;

    const/16 v4, 0xd

    invoke-direct {v3, v0, v1, v4}, Lom;-><init>(Ljava/lang/Object;II)V

    iput-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_5
    return-void
.end method

.method public static final b(Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModel;Landroidx/compose/runtime/Composer;II)Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;
    .locals 21

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v0, p7, 0x8

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v0, :cond_1

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_0

    new-instance v0, Lnw0;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lnw0;-><init>(I)V

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_0
    check-cast v0, Lkotlin/jvm/functions/Function0;

    move-object v8, v0

    goto :goto_0

    :cond_1
    move-object/from16 v8, p3

    :goto_0
    and-int/lit8 v0, p7, 0x10

    const/4 v9, 0x0

    if-eqz v0, :cond_4

    invoke-static {v5}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v1, v5}, Landroidx/hilt/lifecycle/viewmodel/compose/HiltViewModelKt;->a(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/compose/runtime/Composer;)Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory;

    move-result-object v3

    instance-of v0, v1, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v0

    :goto_1
    move-object v4, v0

    goto :goto_2

    :cond_2
    sget-object v0, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->c:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    goto :goto_1

    :goto_2
    const-class v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->a(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModel;

    move-object v11, v0

    goto :goto_3

    :cond_3
    const-string v0, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v9

    :cond_4
    move-object/from16 v11, p4

    :goto_3
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/content/Context;

    invoke-interface {v11}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-static {v0, v9, v5, v1, v2}, Landroidx/lifecycle/compose/FlowExtKt;->c(Lkotlinx/coroutines/flow/StateFlow;Landroidx/lifecycle/Lifecycle$State;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-static {v1, v2, v5, v9}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v2

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v7, :cond_5

    invoke-static {v9}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    invoke-interface {v5, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5
    check-cast v3, Landroidx/compose/runtime/MutableState;

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v7, :cond_6

    new-instance v4, Landroidx/compose/material3/SnackbarHostState;

    invoke-direct {v4}, Landroidx/compose/material3/SnackbarHostState;-><init>()V

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v4, Landroidx/compose/material3/SnackbarHostState;

    new-instance v10, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v10}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    const v12, 0xe000

    and-int/2addr v12, v6

    xor-int/lit16 v12, v12, 0x6000

    const/16 v16, 0x1

    const/16 v14, 0x4000

    if-le v12, v14, :cond_7

    invoke-interface {v5, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    :cond_7
    and-int/lit16 v15, v6, 0x6000

    if-ne v15, v14, :cond_9

    :cond_8
    move/from16 v15, v16

    goto :goto_4

    :cond_9
    move v15, v1

    :goto_4
    invoke-interface {v5, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v17

    or-int v15, v15, v17

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v15, :cond_a

    if-ne v9, v7, :cond_b

    :cond_a
    new-instance v9, Lrp0;

    const/16 v15, 0x18

    invoke-direct {v9, v11, v13, v15}, Lrp0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v5, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_b
    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-static {v10, v9, v5, v1}, Landroidx/activity/compose/ActivityResultRegistryKt;->a(Landroidx/activity/result/contract/ActivityResultContract;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Landroidx/activity/compose/ManagedActivityResultLauncher;

    move-result-object v9

    new-instance v10, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v10}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    and-int/lit16 v15, v6, 0x1c00

    xor-int/lit16 v15, v15, 0xc00

    const/16 v14, 0x800

    if-le v15, v14, :cond_c

    invoke-interface {v5, v8}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_d

    :cond_c
    and-int/lit16 v1, v6, 0xc00

    if-ne v1, v14, :cond_e

    :cond_d
    move/from16 v1, v16

    goto :goto_5

    :cond_e
    const/4 v1, 0x0

    :goto_5
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v1, :cond_f

    if-ne v14, v7, :cond_10

    :cond_f
    new-instance v14, Lbo0;

    const/16 v1, 0xa

    invoke-direct {v14, v8, v1}, Lbo0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v5, v14}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_10
    check-cast v14, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    invoke-static {v10, v14, v5, v1}, Landroidx/activity/compose/ActivityResultRegistryKt;->a(Landroidx/activity/result/contract/ActivityResultContract;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Landroidx/activity/compose/ManagedActivityResultLauncher;

    move-result-object v10

    sget-object v14, Lkotlin/Unit;->a:Lkotlin/Unit;

    const/16 v1, 0x4000

    if-le v12, v1, :cond_12

    invoke-interface {v5, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_11

    goto :goto_6

    :cond_11
    move-object/from16 p4, v0

    goto :goto_7

    :cond_12
    :goto_6
    move-object/from16 p4, v0

    and-int/lit16 v0, v6, 0x6000

    if-ne v0, v1, :cond_13

    :goto_7
    move/from16 v0, v16

    goto :goto_8

    :cond_13
    const/4 v0, 0x0

    :goto_8
    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v18

    or-int v0, v0, v18

    invoke-interface {v5, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v18

    or-int v0, v0, v18

    and-int/lit8 v18, v6, 0xe

    xor-int/lit8 v1, v18, 0x6

    move/from16 v18, v0

    const/4 v0, 0x4

    if-le v1, v0, :cond_14

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v1

    if-nez v1, :cond_15

    :cond_14
    and-int/lit8 v1, v6, 0x6

    if-ne v1, v0, :cond_16

    :cond_15
    move/from16 v0, v16

    goto :goto_9

    :cond_16
    const/4 v0, 0x0

    :goto_9
    or-int v0, v18, v0

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_17

    if-ne v1, v7, :cond_18

    :cond_17
    move v0, v12

    move-object v12, v10

    goto :goto_a

    :cond_18
    move-object v10, v1

    move-object/from16 v20, v4

    move-object/from16 v17, v9

    move v0, v12

    move-object v4, v14

    move v1, v15

    const/16 v9, 0x4000

    goto :goto_b

    :goto_a
    new-instance v10, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$2$1;

    move v1, v15

    const/4 v15, 0x0

    move-object/from16 v20, v4

    move-object/from16 v17, v9

    move-object v4, v14

    const/16 v9, 0x4000

    move-object/from16 v14, p0

    invoke-direct/range {v10 .. v15}, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$2$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModel;Landroidx/activity/compose/ManagedActivityResultLauncher;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :goto_b
    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v4, v10}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-le v0, v9, :cond_19

    invoke-interface {v5, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1a

    :cond_19
    and-int/lit16 v10, v6, 0x6000

    if-ne v10, v9, :cond_1b

    :cond_1a
    move/from16 v10, v16

    :goto_c
    const/16 v12, 0x800

    goto :goto_d

    :cond_1b
    const/4 v10, 0x0

    goto :goto_c

    :goto_d
    if-le v1, v12, :cond_1c

    invoke-interface {v5, v8}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    :cond_1c
    and-int/lit16 v1, v6, 0xc00

    if-ne v1, v12, :cond_1e

    :cond_1d
    move/from16 v1, v16

    goto :goto_e

    :cond_1e
    const/4 v1, 0x0

    :goto_e
    or-int/2addr v1, v10

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v1, :cond_1f

    if-ne v10, v7, :cond_20

    :cond_1f
    new-instance v10, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$3$1;

    const/4 v1, 0x0

    invoke-direct {v10, v11, v8, v1}, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$3$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_20
    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v4, v10}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-le v0, v9, :cond_21

    invoke-interface {v5, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    :cond_21
    and-int/lit16 v1, v6, 0x6000

    if-ne v1, v9, :cond_23

    :cond_22
    move/from16 v1, v16

    goto :goto_f

    :cond_23
    const/4 v1, 0x0

    :goto_f
    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v1, v8

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v1, :cond_24

    if-ne v8, v7, :cond_25

    :cond_24
    new-instance v8, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$4$1;

    const/4 v1, 0x0

    invoke-direct {v8, v11, v3, v2, v1}, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$4$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModel;Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v5, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_25
    check-cast v8, Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v4, v8}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-le v0, v9, :cond_26

    invoke-interface {v5, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    :cond_26
    and-int/lit16 v1, v6, 0x6000

    if-ne v1, v9, :cond_28

    :cond_27
    move/from16 v8, v16

    :goto_10
    move-object/from16 v1, v17

    goto :goto_11

    :cond_28
    const/4 v8, 0x0

    goto :goto_10

    :goto_11
    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v8, v10

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v8, :cond_29

    if-ne v10, v7, :cond_2a

    :cond_29
    new-instance v10, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$5$1;

    const/4 v8, 0x0

    invoke-direct {v10, v11, v1, v8}, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$5$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModel;Landroidx/activity/compose/ManagedActivityResultLauncher;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2a
    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v4, v10}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-le v0, v9, :cond_2b

    invoke-interface {v5, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    :cond_2b
    and-int/lit16 v0, v6, 0x6000

    if-ne v0, v9, :cond_2d

    :cond_2c
    move/from16 v1, v16

    goto :goto_12

    :cond_2d
    const/4 v1, 0x0

    :goto_12
    invoke-interface {v5, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v1

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_2f

    if-ne v1, v7, :cond_2e

    goto :goto_13

    :cond_2e
    move-object/from16 v0, v20

    goto :goto_14

    :cond_2f
    :goto_13
    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$6$1;

    move-object/from16 v0, v20

    const/4 v8, 0x0

    invoke-direct {v1, v11, v0, v13, v8}, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$6$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModel;Landroidx/compose/material3/SnackbarHostState;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :goto_14
    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v4, v1}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_30

    if-ne v4, v7, :cond_31

    :cond_30
    new-instance v10, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;

    new-instance v14, Lb01;

    const/16 v19, 0x0

    move-object/from16 v18, p1

    move-object/from16 v15, p4

    move-object/from16 v17, v2

    move-object/from16 v16, v3

    invoke-direct/range {v14 .. v19}, Lb01;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function0;I)V

    move-object v1, v14

    new-instance v14, Lb01;

    const/16 v19, 0x1

    move-object/from16 v18, p2

    invoke-direct/range {v14 .. v19}, Lb01;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function0;I)V

    move-object/from16 v19, v1

    move-object/from16 v20, v14

    move-object v12, v15

    move-object/from16 v14, v16

    move-object/from16 v13, v17

    move-object/from16 v16, v18

    move-object/from16 v17, p0

    move-object/from16 v15, p1

    move-object/from16 v18, v0

    invoke-direct/range {v10 .. v20}, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;-><init>(Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModel;Landroidx/compose/runtime/State;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v4, v10

    :cond_31
    check-cast v4, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;

    return-object v4
.end method
