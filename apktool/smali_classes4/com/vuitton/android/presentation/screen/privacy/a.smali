.class public final synthetic Lcom/vuitton/android/presentation/screen/privacy/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/privacy/a;->b:Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity;

    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/privacy/a;->c:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity;->s:Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity$Companion;

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq v2, v5, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    and-int/2addr v1, v3

    invoke-interface {v9, v1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_13

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/privacy/a;->b:Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity;

    invoke-virtual {v12}, Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity;->H()Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->y:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {v1, v9}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    const/4 v6, 0x5

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v7, :cond_1

    new-instance v2, Lyn0;

    invoke-direct {v2, v6}, Lyn0;-><init>(I)V

    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/16 v8, 0x30

    invoke-static {v8, v6, v9, v2}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v2

    sget-object v6, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v9, v12}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    const/4 v11, 0x0

    if-nez v8, :cond_2

    if-ne v10, v7, :cond_3

    :cond_2
    new-instance v10, Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity$onCreate$1$1$1$1;

    invoke-direct {v10, v12, v11}, Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity$onCreate$1$1$1$1;-><init>(Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v6, v10}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/privacy/models/PrivacyViewState;

    iget-boolean v6, v6, Lcom/vuitton/android/presentation/screen/privacy/models/PrivacyViewState;->c:Z

    if-eqz v6, :cond_4

    const v0, 0x2e7d832f

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v4, v9, v4, v3}, Lcom/vuitton/android/designkit/components/components/LVLoadingOverlayKt;->a(ZLandroidx/compose/runtime/Composer;II)V

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->F()V

    goto/16 :goto_5

    :cond_4
    const v6, 0x2e7f565d

    invoke-interface {v9, v6}, Landroidx/compose/runtime/Composer;->L(I)V

    new-array v4, v4, [Landroidx/navigation/Navigator;

    invoke-static {v4, v9}, Landroidx/navigation/compose/NavHostControllerKt;->a([Landroidx/navigation/Navigator;Landroidx/compose/runtime/Composer;)Landroidx/navigation/NavHostController;

    move-result-object v4

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/privacy/models/PrivacyViewState;

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/privacy/models/PrivacyViewState;->a:Lcom/vuitton/foundation/model/domain/model/privacy/PrivacyType;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/privacy/models/PrivacyViewState;

    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/privacy/models/PrivacyViewState;->d:Z

    sget-object v8, Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity$WhenMappings;->a:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v8, v6

    const/4 v8, 0x4

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/privacy/a;->c:Z

    const/4 v10, 0x3

    if-eq v6, v3, :cond_9

    if-eq v6, v5, :cond_8

    if-eq v6, v10, :cond_6

    if-ne v6, v8, :cond_5

    sget-object v1, Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyRoutes$Privacy;->INSTANCE:Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyRoutes$Privacy;

    :goto_1
    move v3, v0

    move-object v0, v4

    goto :goto_2

    :cond_5
    invoke-static {}, Lv40;->g()V

    return-object v11

    :cond_6
    if-eqz v1, :cond_7

    sget-object v1, Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyRoutes$Privacy;->INSTANCE:Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyRoutes$Privacy;

    goto :goto_1

    :cond_7
    sget-object v1, Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyRoutes$PrivacyPiplCbdt;->INSTANCE:Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyRoutes$PrivacyPiplCbdt;

    goto :goto_1

    :cond_8
    sget-object v1, Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyRoutes$PrivacyPreCompliance;->INSTANCE:Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyRoutes$PrivacyPreCompliance;

    goto :goto_1

    :cond_9
    if-eqz v0, :cond_a

    sget-object v1, Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyRoutes$PrivacyPreCompliance;->INSTANCE:Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyRoutes$PrivacyPreCompliance;

    goto :goto_1

    :cond_a
    sget-object v1, Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyRoutes$Privacy;->INSTANCE:Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyRoutes$Privacy;

    goto :goto_1

    :goto_2
    invoke-virtual {v12}, Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity;->H()Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;

    move-result-object v4

    invoke-interface {v9, v12}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_b

    if-ne v6, v7, :cond_c

    :cond_b
    move v5, v10

    goto :goto_3

    :cond_c
    move v5, v10

    goto :goto_4

    :goto_3
    new-instance v10, Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity$onCreate$1$1$2$1;

    const-string v15, "onCloseBottomSheet()V"

    const/16 v16, 0x0

    const/4 v11, 0x0

    const-class v13, Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity;

    const-string v14, "onCloseBottomSheet"

    invoke-direct/range {v10 .. v16}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v6, v10

    :goto_4
    check-cast v6, Lkotlin/reflect/KFunction;

    invoke-interface {v9, v12}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v10

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v10, :cond_d

    if-ne v11, v7, :cond_e

    :cond_d
    new-instance v10, Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity$onCreate$1$1$3$1;

    const-string v15, "finish()V"

    const/16 v16, 0x0

    const/4 v11, 0x0

    const-class v13, Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity;

    const-string v14, "finish"

    invoke-direct/range {v10 .. v16}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v11, v10

    :cond_e
    move-object/from16 v17, v11

    check-cast v17, Lkotlin/reflect/KFunction;

    invoke-interface {v9, v12}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v10

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v10, :cond_f

    if-ne v11, v7, :cond_10

    :cond_f
    new-instance v10, Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity$onCreate$1$1$4$1;

    const-string v15, "onDeeplinkClicked(Ljava/lang/String;)V"

    const/16 v16, 0x0

    const/4 v11, 0x1

    const-class v13, Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity;

    const-string v14, "onDeeplinkClicked"

    invoke-direct/range {v10 .. v16}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v11, v10

    :cond_10
    check-cast v11, Lkotlin/reflect/KFunction;

    invoke-interface {v9, v12}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v10

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v13

    if-nez v10, :cond_11

    if-ne v13, v7, :cond_12

    :cond_11
    new-instance v13, Lxn0;

    invoke-direct {v13, v12, v8}, Lxn0;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v9, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_12
    check-cast v13, Lkotlin/jvm/functions/Function0;

    check-cast v17, Lkotlin/jvm/functions/Function0;

    move-object v7, v6

    check-cast v7, Lkotlin/jvm/functions/Function0;

    move-object v8, v11

    check-cast v8, Lkotlin/jvm/functions/Function1;

    sget v6, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/lit8 v10, v6, 0x3

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    move-object v5, v13

    move-object/from16 v6, v17

    invoke-static/range {v0 .. v10}, Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyNavHostKt;->a(Landroidx/navigation/NavHostController;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyRoutes;ZLcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_5

    :cond_13
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->D()V

    :goto_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
