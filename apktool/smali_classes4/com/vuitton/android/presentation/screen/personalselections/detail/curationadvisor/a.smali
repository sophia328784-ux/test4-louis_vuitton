.class public final synthetic Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:Lkotlin/jvm/functions/Function3;

.field public final synthetic c:Lkotlin/jvm/functions/Function0;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModel;

.field public final synthetic g:Lkotlin/jvm/functions/Function1;

.field public final synthetic h:Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;

.field public final synthetic i:Lkotlin/jvm/functions/Function1;

.field public final synthetic j:Landroidx/navigation/NavHostController;

.field public final synthetic k:Lkotlin/jvm/functions/Function1;

.field public final synthetic l:Lkotlin/jvm/functions/Function1;

.field public final synthetic m:Landroidx/compose/runtime/State;

.field public final synthetic n:Landroidx/compose/runtime/State;

.field public final synthetic o:Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;

.field public final synthetic p:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModel;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;Lkotlin/jvm/functions/Function1;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;Landroidx/compose/runtime/State;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/a;->b:Lkotlin/jvm/functions/Function3;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/a;->c:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/a;->d:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/a;->e:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/a;->f:Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModel;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/a;->g:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/a;->h:Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/a;->i:Lkotlin/jvm/functions/Function1;

    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/a;->j:Landroidx/navigation/NavHostController;

    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/a;->k:Lkotlin/jvm/functions/Function1;

    iput-object p11, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/a;->l:Lkotlin/jvm/functions/Function1;

    iput-object p12, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/a;->m:Landroidx/compose/runtime/State;

    iput-object p13, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/a;->n:Landroidx/compose/runtime/State;

    iput-object p14, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/a;->o:Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;

    iput-object p15, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/a;->p:Landroidx/compose/runtime/State;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v3, p3

    check-cast v3, Landroidx/compose/runtime/Composer;

    move-object/from16 v4, p4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/a;->m:Landroidx/compose/runtime/State;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorViewState;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/a;->n:Landroidx/compose/runtime/State;

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorProductState;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/a;->p:Landroidx/compose/runtime/State;

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/a;->f:Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModel;

    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v7, :cond_0

    if-ne v8, v14, :cond_1

    :cond_0
    new-instance v7, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorNavHostKt$PersonalSelectionsCurationAdvisorNavHost$2$1$1$1$1;

    const-string v12, "getPersonalSelection()V"

    const/4 v13, 0x0

    const/4 v8, 0x0

    const-class v10, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModel;

    const-string v11, "getPersonalSelection"

    invoke-direct/range {v7 .. v13}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v8, v7

    :cond_1
    check-cast v8, Lkotlin/reflect/KFunction;

    move-object v15, v8

    check-cast v15, Lkotlin/jvm/functions/Function0;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/a;->g:Lkotlin/jvm/functions/Function1;

    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v8, v10

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v8, :cond_2

    if-ne v10, v14, :cond_3

    :cond_2
    new-instance v10, Ljm0;

    const/4 v8, 0x7

    invoke-direct {v10, v7, v9, v8}, Ljm0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    move-object/from16 v16, v10

    check-cast v16, Lkotlin/jvm/functions/Function0;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/a;->h:Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;

    iget-object v8, v7, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;->i:Lkotlin/jvm/functions/Function0;

    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;->j:Lkotlin/jvm/functions/Function0;

    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v10

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v10, :cond_4

    if-ne v11, v14, :cond_5

    :cond_4
    new-instance v11, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorNavHostKt$PersonalSelectionsCurationAdvisorNavHost$2$1$1$3$1;

    invoke-direct {v11, v9}, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorNavHostKt$PersonalSelectionsCurationAdvisorNavHost$2$1$1$3$1;-><init>(Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModel;)V

    invoke-interface {v3, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5
    move-object/from16 v17, v11

    check-cast v17, Lkotlin/jvm/functions/Function1;

    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v10

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v10, :cond_6

    if-ne v11, v14, :cond_7

    :cond_6
    move-object v13, v7

    goto :goto_0

    :cond_7
    move-object/from16 v18, v7

    move-object/from16 v19, v8

    goto :goto_1

    :goto_0
    new-instance v7, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorNavHostKt$PersonalSelectionsCurationAdvisorNavHost$2$1$1$4$1;

    const-string v12, "deleteInteraction-1Zqi3gk(Ljava/lang/String;)V"

    move-object v10, v13

    const/4 v13, 0x0

    move-object v11, v8

    const/4 v8, 0x1

    move-object/from16 v18, v10

    const-class v10, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModel;

    move-object/from16 v19, v11

    const-string v11, "deleteInteraction"

    invoke-direct/range {v7 .. v13}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v11, v7

    :goto_1
    check-cast v11, Lkotlin/reflect/KFunction;

    check-cast v11, Lkotlin/jvm/functions/Function1;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/a;->j:Landroidx/navigation/NavHostController;

    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v8, v10

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v8, :cond_8

    if-ne v10, v14, :cond_9

    :cond_8
    new-instance v10, Lxg0;

    invoke-direct {v10, v7, v9}, Lxg0;-><init>(Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModel;)V

    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_9
    check-cast v10, Lkotlin/jvm/functions/Function1;

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v7, v8

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/a;->o:Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;

    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v7, v9

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v7, :cond_a

    if-ne v9, v14, :cond_b

    :cond_a
    new-instance v9, Lcl0;

    invoke-direct {v9, v8, v1, v4}, Lcl0;-><init>(Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V

    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_b
    move-object/from16 v20, v9

    check-cast v20, Lkotlin/jvm/functions/Function1;

    const/16 v22, 0x0

    move-object v4, v5

    move-object v5, v6

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/a;->b:Lkotlin/jvm/functions/Function3;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/a;->c:Lkotlin/jvm/functions/Function0;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/a;->d:Lkotlin/jvm/functions/Function0;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/a;->e:Lkotlin/jvm/functions/Function0;

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/a;->i:Lkotlin/jvm/functions/Function1;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/a;->k:Lkotlin/jvm/functions/Function1;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/a;->l:Lkotlin/jvm/functions/Function1;

    move-object/from16 v12, v17

    move-object/from16 v17, v10

    move-object v10, v15

    move-object v15, v12

    move-object/from16 v12, v16

    move-object/from16 v16, v11

    move-object v11, v12

    move-object/from16 v21, v3

    move-object/from16 v13, v18

    move-object/from16 v12, v19

    move-object/from16 v19, v0

    move-object/from16 v18, v1

    move-object v3, v2

    invoke-static/range {v3 .. v22}, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/components/PersonalSelectionsCurationAdvisorComposableKt;->a(Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorViewState;Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorProductState;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
