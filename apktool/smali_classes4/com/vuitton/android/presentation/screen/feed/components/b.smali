.class public final synthetic Lcom/vuitton/android/presentation/screen/feed/components/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lkotlin/jvm/functions/Function0;

.field public final synthetic c:Lkotlin/jvm/functions/Function0;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/feed/FeedViewModel;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;

.field public final synthetic f:Lkotlinx/coroutines/flow/SharedFlow;

.field public final synthetic g:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

.field public final synthetic h:Lkotlin/jvm/functions/Function1;

.field public final synthetic i:Lkotlin/jvm/functions/Function1;

.field public final synthetic j:Lqb0;

.field public final synthetic k:Lkotlin/jvm/functions/Function1;

.field public final synthetic l:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/feed/FeedViewModel;Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;Lkotlinx/coroutines/flow/SharedFlow;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lqb0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/feed/components/b;->b:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/feed/components/b;->c:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/feed/components/b;->d:Lcom/vuitton/android/presentation/screen/feed/FeedViewModel;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/feed/components/b;->e:Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/feed/components/b;->f:Lkotlinx/coroutines/flow/SharedFlow;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/feed/components/b;->g:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/feed/components/b;->h:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/feed/components/b;->i:Lkotlin/jvm/functions/Function1;

    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/feed/components/b;->j:Lqb0;

    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/feed/components/b;->k:Lkotlin/jvm/functions/Function1;

    iput-object p11, p0, Lcom/vuitton/android/presentation/screen/feed/components/b;->l:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 49

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x2

    if-eq v2, v11, :cond_0

    move v2, v9

    goto :goto_0

    :cond_0
    move v2, v10

    :goto_0
    and-int/2addr v1, v9

    invoke-interface {v5, v1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_43

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/content/Context;

    sget-object v1, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;

    sget-object v1, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->FEED:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    const/4 v7, 0x6

    const/16 v8, 0x18

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/feed/components/b;->b:Lkotlin/jvm/functions/Function0;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/feed/components/b;->c:Lkotlin/jvm/functions/Function0;

    const/4 v4, 0x0

    move-object v6, v5

    const/4 v5, 0x0

    invoke-static/range {v1 .. v8}, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetKt;->b(Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModel;Landroidx/compose/runtime/Composer;II)Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;

    move-result-object v1

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/feed/components/b;->d:Lcom/vuitton/android/presentation/screen/feed/FeedViewModel;

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v3

    invoke-static {v3, v6}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/feed/components/b;->e:Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;

    invoke-interface {v4}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v5

    invoke-static {v5, v6}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    const/4 v7, 0x7

    const/4 v8, 0x0

    invoke-static {v10, v7, v6, v8}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v14

    invoke-static {v10, v7, v6, v8}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v28

    invoke-static {v10, v7, v6, v8}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v16

    invoke-static {v6}, Lcom/vuitton/android/presentation/notification/NotificationBuilderKt;->a(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v7

    move-object/from16 v17, v14

    new-instance v14, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    const-string v9, ""

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v11, v10, :cond_1

    invoke-interface {v6, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v11, v9

    :cond_1
    check-cast v11, Ljava/lang/String;

    iput-object v11, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    move-object/from16 v11, v17

    move-object/from16 v17, v15

    new-instance v15, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v10, :cond_2

    new-instance v8, Lew;

    move-object/from16 v18, v11

    const/16 v11, 0x18

    invoke-direct {v8, v11}, Lew;-><init>(I)V

    invoke-interface {v6, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    move-object/from16 v18, v11

    :goto_1
    check-cast v8, Lkotlin/jvm/functions/Function0;

    iput-object v8, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v10, :cond_3

    new-instance v11, Lcom/vuitton/android/presentation/model/common/VideoIdUiModel;

    invoke-direct {v11, v9}, Lcom/vuitton/android/presentation/model/common/VideoIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    check-cast v11, Lcom/vuitton/android/presentation/model/common/VideoIdUiModel;

    iget-object v9, v11, Lcom/vuitton/android/presentation/model/common/VideoIdUiModel;->b:Ljava/lang/String;

    iput-object v9, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v10, :cond_4

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;

    iget-object v9, v9, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->b:Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    invoke-static {v9}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v9

    invoke-interface {v6, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    check-cast v9, Landroidx/compose/runtime/MutableState;

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;

    iget-object v11, v11, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->b:Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v19

    move-object/from16 v20, v12

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v19, :cond_6

    if-ne v12, v10, :cond_5

    goto :goto_2

    :cond_5
    move-object/from16 v19, v13

    goto :goto_3

    :cond_6
    :goto_2
    new-instance v12, Lcom/vuitton/android/presentation/screen/feed/components/FeedComposableKt$FeedComposable$1$1$1;

    move-object/from16 v19, v13

    const/4 v13, 0x0

    invoke-direct {v12, v3, v9, v13}, Lcom/vuitton/android/presentation/screen/feed/components/FeedComposableKt$FeedComposable$1$1$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v6, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :goto_3
    check-cast v12, Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v11, v12}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v11, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;

    invoke-direct {v11}, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;-><init>()V

    new-instance v12, Lg4;

    move-object/from16 v13, v19

    const/16 v19, 0x4

    move-object/from16 v26, v18

    move-object/from16 v18, v9

    move-object/from16 v9, v26

    move-object/from16 v26, v20

    invoke-direct/range {v12 .. v19}, Lg4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v27, v14

    move-object/from16 v30, v15

    move-object/from16 v29, v16

    move-object/from16 v15, v17

    const/4 v14, 0x0

    invoke-static {v11, v12, v6, v14}, Landroidx/activity/compose/ActivityResultRegistryKt;->a(Landroidx/activity/result/contract/ActivityResultContract;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Landroidx/activity/compose/ManagedActivityResultLauncher;

    move-result-object v11

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v10, :cond_7

    new-instance v12, Landroidx/compose/material3/SnackbarHostState;

    invoke-direct {v12}, Landroidx/compose/material3/SnackbarHostState;-><init>()V

    invoke-interface {v6, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_7
    move-object v14, v12

    check-cast v14, Landroidx/compose/material3/SnackbarHostState;

    sget-object v12, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v16

    invoke-interface {v6, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v17

    or-int v16, v16, v17

    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v17

    or-int v16, v16, v17

    move-object/from16 v17, v2

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v16, :cond_8

    if-ne v2, v10, :cond_9

    :cond_8
    move-object v2, v12

    goto :goto_4

    :cond_9
    move-object/from16 v31, v3

    move-object v3, v12

    move-object v12, v2

    move-object v2, v13

    move-object/from16 v13, v17

    goto :goto_5

    :goto_4
    new-instance v12, Lcom/vuitton/android/presentation/screen/feed/components/FeedComposableKt$FeedComposable$1$2$1;

    move-object/from16 v19, v13

    move-object/from16 v13, v17

    const/16 v17, 0x0

    move-object/from16 v16, v3

    move-object v3, v2

    move-object/from16 v2, v19

    invoke-direct/range {v12 .. v17}, Lcom/vuitton/android/presentation/screen/feed/components/FeedComposableKt$FeedComposable$1$2$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModel;Landroidx/compose/material3/SnackbarHostState;Landroid/content/Context;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v31, v16

    invoke-interface {v6, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :goto_5
    check-cast v12, Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v3, v12}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v12, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v12}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    invoke-interface {v6, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v16

    move-object/from16 v32, v11

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v16, :cond_b

    if-ne v11, v10, :cond_a

    goto :goto_6

    :cond_a
    move-object/from16 v16, v14

    const/4 v14, 0x0

    goto :goto_7

    :cond_b
    :goto_6
    new-instance v11, Lfx;

    move-object/from16 v16, v14

    const/4 v14, 0x0

    invoke-direct {v11, v13, v14}, Lfx;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModel;I)V

    invoke-interface {v6, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :goto_7
    check-cast v11, Lkotlin/jvm/functions/Function1;

    invoke-static {v12, v11, v6, v14}, Landroidx/activity/compose/ActivityResultRegistryKt;->a(Landroidx/activity/result/contract/ActivityResultContract;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Landroidx/activity/compose/ManagedActivityResultLauncher;

    move-result-object v11

    new-instance v12, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v12}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    invoke-interface {v6, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v14

    move-object/from16 v33, v11

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v14, :cond_c

    if-ne v11, v10, :cond_d

    :cond_c
    new-instance v11, Lfx;

    const/4 v14, 0x1

    invoke-direct {v11, v13, v14}, Lfx;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModel;I)V

    invoke-interface {v6, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_d
    check-cast v11, Lkotlin/jvm/functions/Function1;

    const/4 v14, 0x0

    invoke-static {v12, v11, v6, v14}, Landroidx/activity/compose/ActivityResultRegistryKt;->a(Landroidx/activity/result/contract/ActivityResultContract;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Landroidx/activity/compose/ManagedActivityResultLauncher;

    move-result-object v11

    new-instance v12, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v12}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v14, Lgv;

    move-object/from16 v34, v11

    const/16 v11, 0x8

    invoke-direct {v14, v13, v8, v11}, Lgv;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const/4 v11, 0x0

    invoke-static {v12, v14, v6, v11}, Landroidx/activity/compose/ActivityResultRegistryKt;->a(Landroidx/activity/result/contract/ActivityResultContract;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Landroidx/activity/compose/ManagedActivityResultLauncher;

    move-result-object v12

    new-instance v11, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v11}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    invoke-interface {v6, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v14

    move-object/from16 v17, v12

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v14, :cond_e

    if-ne v12, v10, :cond_f

    :cond_e
    new-instance v12, Lef;

    const/4 v14, 0x4

    invoke-direct {v12, v15, v14}, Lef;-><init>(Landroid/content/Context;I)V

    invoke-interface {v6, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_f
    check-cast v12, Lkotlin/jvm/functions/Function1;

    const/4 v14, 0x0

    invoke-static {v11, v12, v6, v14}, Landroidx/activity/compose/ActivityResultRegistryKt;->a(Landroidx/activity/result/contract/ActivityResultContract;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Landroidx/activity/compose/ManagedActivityResultLauncher;

    move-result-object v11

    invoke-interface {v6, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v12

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v12, :cond_10

    if-ne v14, v10, :cond_11

    :cond_10
    new-instance v14, Lcom/vuitton/android/presentation/screen/feed/components/FeedComposableKt$FeedComposable$1$3$1;

    const/4 v12, 0x0

    invoke-direct {v14, v13, v12}, Lcom/vuitton/android/presentation/screen/feed/components/FeedComposableKt$FeedComposable$1$3$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v6, v14}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_11
    check-cast v14, Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v3, v14}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/feed/components/b;->f:Lkotlinx/coroutines/flow/SharedFlow;

    invoke-interface {v6, v12}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v14

    invoke-interface {v6, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v19

    or-int v14, v14, v19

    move/from16 v19, v14

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v19, :cond_13

    if-ne v14, v10, :cond_12

    goto :goto_8

    :cond_12
    move-object/from16 v35, v9

    const/4 v9, 0x0

    goto :goto_9

    :cond_13
    :goto_8
    new-instance v14, Lcom/vuitton/android/presentation/screen/feed/components/FeedComposableKt$FeedComposable$1$4$1;

    move-object/from16 v35, v9

    const/4 v9, 0x0

    invoke-direct {v14, v12, v13, v9}, Lcom/vuitton/android/presentation/screen/feed/components/FeedComposableKt$FeedComposable$1$4$1;-><init>(Lkotlinx/coroutines/flow/SharedFlow;Lcom/vuitton/android/presentation/screen/feed/FeedViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v6, v14}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :goto_9
    check-cast v14, Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v3, v14}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v12

    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v12, v14

    invoke-interface {v6, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v12, v14

    invoke-interface {v6, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v12, v14

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v12, :cond_15

    if-ne v14, v10, :cond_14

    goto :goto_a

    :cond_14
    move-object v7, v13

    move-object v13, v4

    move-object v4, v7

    move-object v7, v2

    move-object/from16 v36, v16

    move-object/from16 v2, v17

    move-object/from16 v25, v18

    goto :goto_b

    :cond_15
    :goto_a
    new-instance v12, Lcom/vuitton/android/presentation/screen/feed/components/FeedComposableKt$FeedComposable$1$5$1;

    const/16 v19, 0x0

    move-object v14, v13

    move-object v13, v4

    move-object v4, v14

    move-object v14, v2

    move-object/from16 v2, v17

    move-object/from16 v17, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v7

    invoke-direct/range {v12 .. v19}, Lcom/vuitton/android/presentation/screen/feed/components/FeedComposableKt$FeedComposable$1$5$1;-><init>(Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;Landroidx/compose/material3/SnackbarHostState;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Landroid/content/Context;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    move-object v7, v14

    move-object/from16 v36, v15

    move-object/from16 v15, v17

    move-object/from16 v25, v18

    invoke-interface {v6, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v14, v12

    :goto_b
    check-cast v14, Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v3, v14}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v12

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/feed/components/b;->g:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    invoke-interface {v6, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v16

    or-int v12, v12, v16

    invoke-interface {v6, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v16

    or-int v12, v12, v16

    invoke-interface {v6, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v16

    or-int v12, v12, v16

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v12, :cond_17

    if-ne v9, v10, :cond_16

    goto :goto_c

    :cond_16
    move-object v12, v13

    move-object v13, v4

    move-object v4, v12

    move-object v12, v9

    move-object v9, v11

    move-object v11, v14

    goto :goto_d

    :cond_17
    :goto_c
    new-instance v12, Lcom/vuitton/android/presentation/screen/feed/components/FeedComposableKt$FeedComposable$1$6$1;

    const/16 v17, 0x0

    move-object/from16 v16, v13

    move-object v13, v4

    move-object/from16 v4, v16

    move-object/from16 v16, v11

    invoke-direct/range {v12 .. v17}, Lcom/vuitton/android/presentation/screen/feed/components/FeedComposableKt$FeedComposable$1$6$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModel;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Landroid/content/Context;Landroidx/activity/compose/ManagedActivityResultLauncher;Lkotlin/coroutines/Continuation;)V

    move-object v11, v14

    move-object/from16 v9, v16

    invoke-interface {v6, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :goto_d
    check-cast v12, Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v3, v12}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v3, :cond_19

    if-ne v12, v10, :cond_18

    goto :goto_e

    :cond_18
    move-object v14, v4

    goto :goto_f

    :cond_19
    :goto_e
    new-instance v16, Lcom/vuitton/android/presentation/screen/feed/components/FeedComposableKt$FeedComposable$1$7$1;

    const-string v21, "onNotificationPermissionGranted(Z)V"

    const/16 v22, 0x0

    const/16 v17, 0x0

    const-class v19, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;

    const-string v20, "onNotificationPermissionGranted"

    move-object/from16 v18, v4

    invoke-direct/range {v16 .. v22}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v12, v16

    move-object/from16 v14, v18

    invoke-interface {v6, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :goto_f
    check-cast v12, Lkotlin/jvm/functions/Function0;

    const/4 v3, 0x0

    invoke-static {v14, v12, v6, v3}, Lcom/vuitton/android/presentation/screen/permissions/models/HandleNotificationsPermissionStateKt;->a(Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-interface/range {v31 .. v31}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;

    invoke-interface/range {v25 .. v25}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;

    iget-boolean v12, v12, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;->c:Z

    if-eqz v12, :cond_1a

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;

    iget-boolean v12, v12, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;->d:Z

    if-eqz v12, :cond_1a

    move-object/from16 v37, v3

    const/4 v3, 0x1

    goto :goto_10

    :cond_1a
    move-object/from16 v37, v3

    const/4 v3, 0x0

    :goto_10
    invoke-interface {v6, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v12

    move/from16 v38, v3

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v12, :cond_1b

    if-ne v3, v10, :cond_1c

    :cond_1b
    new-instance v3, Lgx;

    const/4 v12, 0x0

    invoke-direct {v3, v7, v12}, Lgx;-><init>(Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;I)V

    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1c
    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {v6, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v12

    invoke-interface {v6, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v16

    or-int v12, v12, v16

    move-object/from16 v39, v3

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v12, :cond_1d

    if-ne v3, v10, :cond_1e

    :cond_1d
    new-instance v3, Ldt;

    const/16 v12, 0xd

    invoke-direct {v3, v7, v15, v12}, Ldt;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1e
    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {v6, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v12

    move-object/from16 v40, v3

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v12, :cond_1f

    if-ne v3, v10, :cond_20

    :cond_1f
    new-instance v3, Lhx;

    const/4 v12, 0x0

    invoke-direct {v3, v13, v12}, Lhx;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModel;I)V

    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_20
    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {v6, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v12

    move-object/from16 v41, v3

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v12, :cond_21

    if-ne v3, v10, :cond_22

    :cond_21
    new-instance v3, Lhx;

    const/4 v12, 0x1

    invoke-direct {v3, v13, v12}, Lhx;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModel;I)V

    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_22
    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {v6, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v12

    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v16

    or-int v12, v12, v16

    move-object/from16 v42, v3

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v12, :cond_23

    if-ne v3, v10, :cond_24

    :cond_23
    new-instance v3, Lix;

    const/4 v12, 0x0

    invoke-direct {v3, v7, v1, v12}, Lix;-><init>(Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;I)V

    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_24
    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {v6, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v12

    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v16

    or-int v12, v12, v16

    move-object/from16 v43, v3

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v12, :cond_25

    if-ne v3, v10, :cond_26

    :cond_25
    new-instance v3, Lix;

    const/4 v12, 0x1

    invoke-direct {v3, v7, v1, v12}, Lix;-><init>(Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;I)V

    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_26
    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {v6, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v12

    move-object/from16 v23, v1

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v12, :cond_28

    if-ne v1, v10, :cond_27

    goto :goto_11

    :cond_27
    const/4 v12, 0x2

    goto :goto_12

    :cond_28
    :goto_11
    new-instance v1, Lfx;

    const/4 v12, 0x2

    invoke-direct {v1, v13, v12}, Lfx;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModel;I)V

    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :goto_12
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v16

    invoke-interface {v6, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v17

    or-int v16, v16, v17

    invoke-interface {v6, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v17

    or-int v16, v16, v17

    invoke-interface {v6, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v17

    or-int v16, v16, v17

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v16, :cond_2a

    if-ne v12, v10, :cond_29

    goto :goto_13

    :cond_29
    move-object/from16 v44, v5

    move-object/from16 v5, v25

    goto :goto_14

    :cond_2a
    :goto_13
    new-instance v16, Ld1;

    const/16 v22, 0x5

    move-object/from16 v20, v5

    move-object/from16 v17, v7

    move-object/from16 v18, v13

    move-object/from16 v19, v14

    move-object/from16 v21, v25

    invoke-direct/range {v16 .. v22}, Ld1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v12, v16

    move-object/from16 v44, v20

    move-object/from16 v5, v21

    invoke-interface {v6, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :goto_14
    move-object/from16 v19, v12

    check-cast v19, Lkotlin/jvm/functions/Function1;

    new-instance v16, Ld1;

    const/16 v18, 0x6

    move-object/from16 v45, v14

    move-object/from16 v12, v16

    move-object/from16 v16, v30

    move-object/from16 v17, v32

    const/16 v20, 0x2

    move-object v14, v13

    move-object/from16 v13, v27

    invoke-direct/range {v12 .. v18}, Ld1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object v13, v14

    move-object/from16 v16, v12

    move-object v12, v15

    new-instance v14, Lcom/vuitton/android/presentation/screen/feed/components/FeedComposableKt$FeedComposable$1$17;

    invoke-direct {v14, v8, v12, v2}, Lcom/vuitton/android/presentation/screen/feed/components/FeedComposableKt$FeedComposable$1$17;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;Landroidx/activity/compose/ManagedActivityResultLauncher;)V

    invoke-interface {v6, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v6, v12}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v2, v8

    invoke-interface {v6, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v2, v8

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v2, :cond_2c

    if-ne v8, v10, :cond_2b

    goto :goto_15

    :cond_2b
    const/4 v2, 0x0

    goto :goto_16

    :cond_2c
    :goto_15
    new-instance v8, Ljx;

    const/4 v2, 0x0

    invoke-direct {v8, v11, v12, v9, v2}, Ljx;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v6, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :goto_16
    move-object/from16 v18, v8

    check-cast v18, Lkotlin/jvm/functions/Function1;

    invoke-interface {v6, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v6, v12}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v8, v9

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_2d

    if-ne v9, v10, :cond_2e

    :cond_2d
    new-instance v9, Lcom/vuitton/android/presentation/screen/feed/components/FeedComposableKt$FeedComposable$1$19$1;

    invoke-direct {v9, v13, v12}, Lcom/vuitton/android/presentation/screen/feed/components/FeedComposableKt$FeedComposable$1$19$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModel;Landroid/content/Context;)V

    invoke-interface {v6, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2e
    check-cast v9, Lkotlin/jvm/functions/Function2;

    move-object/from16 v11, v35

    invoke-interface {v6, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v8, :cond_2f

    if-ne v15, v10, :cond_30

    :cond_2f
    new-instance v15, Lt8;

    const/4 v8, 0x7

    invoke-direct {v15, v11, v8}, Lt8;-><init>(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;I)V

    invoke-interface {v6, v15}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_30
    move-object/from16 v21, v15

    check-cast v21, Lkotlin/jvm/functions/Function0;

    invoke-interface {v6, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v8, :cond_31

    if-ne v15, v10, :cond_32

    :cond_31
    new-instance v15, Lgv;

    const/4 v8, 0x6

    invoke-direct {v15, v13, v5, v8}, Lgv;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v6, v15}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_32
    move-object/from16 v22, v15

    check-cast v22, Lkotlin/jvm/functions/Function1;

    invoke-interface {v6, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v6, v12}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v15

    or-int/2addr v8, v15

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 p2, v1

    const/16 v1, 0xb

    if-nez v8, :cond_33

    if-ne v15, v10, :cond_34

    :cond_33
    new-instance v15, Lrs;

    invoke-direct {v15, v13, v12, v1}, Lrs;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v6, v15}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_34
    check-cast v15, Lkotlin/jvm/functions/Function2;

    invoke-interface {v6, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v6, v12}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v17

    or-int v8, v8, v17

    move-object/from16 v1, v34

    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v24

    or-int v8, v8, v24

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v8, :cond_35

    if-ne v2, v10, :cond_36

    :cond_35
    new-instance v2, Ln0;

    const/16 v8, 0x1d

    invoke-direct {v2, v7, v12, v1, v8}, Ln0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_36
    check-cast v2, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, v26

    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v6, v12}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v7, v8

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_37

    if-ne v8, v10, :cond_38

    :cond_37
    new-instance v8, Lgv;

    const/4 v7, 0x7

    invoke-direct {v8, v1, v12, v7}, Lgv;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v6, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_38
    move-object/from16 v25, v8

    check-cast v25, Lkotlin/jvm/functions/Function1;

    const/16 v27, 0xc00

    move-object v1, v5

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/feed/components/b;->h:Lkotlin/jvm/functions/Function1;

    move-object v7, v12

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/feed/components/b;->i:Lkotlin/jvm/functions/Function1;

    move-object v8, v13

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/feed/components/b;->j:Lqb0;

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/feed/components/b;->k:Lkotlin/jvm/functions/Function1;

    move-object/from16 v20, v1

    move-object/from16 v24, v2

    move-object v2, v4

    move-object/from16 v26, v6

    move-object/from16 v34, v7

    move-object/from16 v48, v8

    move-object v0, v10

    move-object/from16 v35, v11

    move-object/from16 v17, v14

    move-object/from16 v46, v23

    move-object/from16 v47, v33

    move-object/from16 v4, v36

    move-object/from16 v1, v37

    move-object/from16 v6, v39

    move-object/from16 v7, v40

    move-object/from16 v8, v41

    move-object/from16 v10, v43

    move-object/from16 v33, p1

    move-object/from16 v14, p2

    move-object v11, v3

    move-object/from16 v23, v15

    move-object/from16 v15, v19

    move/from16 v3, v38

    move-object/from16 v19, v9

    move-object/from16 v9, v42

    invoke-static/range {v1 .. v27}, Lcom/vuitton/android/presentation/screen/feed/components/FeedScreenKt;->a(Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;ZLandroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lqb0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ld1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v6, v26

    invoke-interface/range {v31 .. v31}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->p:Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;

    if-nez v1, :cond_39

    const v1, 0x6a7cbd01

    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->F()V

    move-object/from16 v15, v34

    const/4 v10, 0x0

    goto/16 :goto_17

    :cond_39
    const v2, 0x6a7cbd02

    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_3a

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3a
    check-cast v2, Landroidx/compose/runtime/MutableState;

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3b

    new-instance v3, Lcom/vuitton/android/presentation/screen/feed/components/FeedComposableKt$FeedComposable$1$25$1$1;

    const/4 v13, 0x0

    invoke-direct {v3, v2, v13}, Lcom/vuitton/android/presentation/screen/feed/components/FeedComposableKt$FeedComposable$1$25$1$1;-><init>(Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3b
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v1, v3}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sget-object v3, Landroidx/compose/animation/core/EasingKt;->a:Landroidx/compose/animation/core/CubicBezierEasing;

    const/16 v4, 0x1f4

    const/4 v10, 0x0

    const/4 v12, 0x2

    invoke-static {v4, v10, v3, v12}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v5

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v0, :cond_3c

    new-instance v7, Liv;

    const/16 v8, 0x17

    invoke-direct {v7, v8}, Liv;-><init>(I)V

    invoke-interface {v6, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3c
    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-static {v7, v5}, Landroidx/compose/animation/EnterExitTransitionKt;->q(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/FiniteAnimationSpec;)Landroidx/compose/animation/EnterTransition;

    move-result-object v5

    invoke-static {v4, v10, v3, v12}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v12}, Landroidx/compose/animation/EnterExitTransitionKt;->f(Landroidx/compose/animation/core/FiniteAnimationSpec;FI)Landroidx/compose/animation/EnterTransition;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroidx/compose/animation/EnterTransition;->b(Landroidx/compose/animation/EnterTransition;)Landroidx/compose/animation/EnterTransition;

    move-result-object v3

    new-instance v4, Lg1;

    const/16 v5, 0x12

    move-object/from16 v15, v34

    move-object/from16 v7, v47

    invoke-direct {v4, v1, v15, v7, v5}, Lg1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const v1, 0x59364d49

    invoke-static {v1, v4, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    const/high16 v8, 0x30000

    const/16 v9, 0x1a

    move-object v5, v6

    move-object v6, v1

    move v1, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v7, v5

    const/4 v5, 0x0

    invoke-static/range {v1 .. v9}, Landroidx/compose/animation/AnimatedVisibilityKt;->e(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object v6, v7

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->F()V

    :goto_17
    invoke-interface/range {v31 .. v31}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->i:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    move-object/from16 v13, v48

    invoke-interface {v6, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    move-object/from16 v3, p0

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/feed/components/b;->l:Lkotlin/jvm/functions/Function0;

    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v2, v4

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_3d

    if-ne v4, v0, :cond_3e

    :cond_3d
    new-instance v4, Ldt;

    const/16 v2, 0xb

    invoke-direct {v4, v13, v3, v2}, Ldt;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3e
    check-cast v4, Lkotlin/jvm/functions/Function0;

    sget v7, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/lit8 v2, v7, 0x3

    shl-int/lit8 v3, v7, 0x6

    or-int/2addr v2, v3

    move-object v8, v0

    move-object v0, v1

    move-object v5, v6

    move-object/from16 v3, v20

    move-object/from16 v1, v35

    move v6, v2

    move-object/from16 v2, v28

    invoke-static/range {v0 .. v6}, Lcom/vuitton/android/presentation/contact/compose/ContactUsBottomSheetKt;->a(Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    move-object v6, v5

    invoke-interface/range {v31 .. v31}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->k:Lcom/vuitton/android/presentation/screen/feed/FeedBottomSheet;

    if-nez v0, :cond_40

    invoke-interface/range {v44 .. v44}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;->a:Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;

    sget-object v1, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet$None;->f:Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet$None;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    goto :goto_19

    :cond_3f
    const v0, 0x6ac8c503

    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->F()V

    move v14, v10

    :goto_18
    move-object/from16 v0, v46

    goto :goto_1a

    :cond_40
    :goto_19
    const v0, 0x6aa87231

    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    const v0, 0x7f140319

    invoke-static {v6, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    move-object/from16 v14, v45

    invoke-interface {v6, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_41

    if-ne v2, v8, :cond_42

    :cond_41
    new-instance v2, Ldt;

    const/16 v0, 0xc

    invoke-direct {v2, v13, v14, v0}, Ldt;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_42
    check-cast v2, Lkotlin/jvm/functions/Function0;

    new-instance v12, Llf;

    const/16 v21, 0x5

    move-object/from16 v18, v30

    move-object/from16 v16, v31

    move-object/from16 v19, v32

    move-object/from16 v17, v33

    move-object/from16 v20, v44

    invoke-direct/range {v12 .. v21}, Llf;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const v0, 0x1602ba8e

    invoke-static {v0, v12, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v9

    shl-int/lit8 v0, v7, 0x9

    const/high16 v3, 0x6000000

    or-int v11, v0, v3

    const/16 v12, 0xf1

    const/4 v0, 0x0

    const/4 v4, 0x0

    move-object v7, v6

    const-wide/16 v5, 0x0

    move-object/from16 v26, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v14, v10

    move-object/from16 v10, v26

    move-object/from16 v3, v29

    invoke-static/range {v0 .. v12}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/foundation/layout/WindowInsets;JZLandroidx/compose/material3/ModalBottomSheetProperties;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object v6, v10

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_18

    :goto_1a
    invoke-static {v0, v6, v14}, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetKt;->a(Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_1b

    :cond_43
    move-object v6, v5

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
