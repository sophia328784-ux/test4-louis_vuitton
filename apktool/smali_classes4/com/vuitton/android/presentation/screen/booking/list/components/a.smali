.class public final synthetic Lcom/vuitton/android/presentation/screen/booking/list/components/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;

.field public final synthetic e:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/list/components/a;->b:Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/booking/list/components/a;->c:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/booking/list/components/a;->d:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/booking/list/components/a;->e:Landroidx/compose/runtime/State;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/layout/PaddingValues;

    move-object/from16 v6, p2

    check-cast v6, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v3, v2, 0x6

    if-nez v3, :cond_1

    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v2, v3

    :cond_1
    and-int/lit8 v3, v2, 0x13

    const/16 v4, 0x12

    const/4 v5, 0x1

    const/4 v7, 0x0

    if-eq v3, v4, :cond_2

    move v3, v5

    goto :goto_1

    :cond_2
    move v3, v7

    :goto_1
    and-int/2addr v2, v5

    invoke-interface {v6, v2, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_f

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v3, "BookingListComposable$lambda$4"

    invoke-direct {v2, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v2, v4}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v4

    iget-object v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->b:J

    sget-object v8, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v2, v4, v5, v8}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v2, v7}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v2

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v5

    invoke-static {v6, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v10

    const/4 v11, 0x0

    if-eqz v10, :cond_e

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v6, v9}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    :cond_3
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->o()V

    :goto_2
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v2, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v5, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v2, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v6, v2}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v1, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/booking/list/components/a;->e:Landroidx/compose/runtime/State;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingListViewState;

    iget-boolean v2, v2, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingListViewState;->b:Z

    if-eqz v2, :cond_4

    const v0, -0x49e14757

    invoke-static {v0, v6, v3}, Lpq0;->j(ILandroidx/compose/runtime/Composer;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    sget-object v2, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-virtual {v2, v0, v1}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v8, 0x6

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v8}, Lcom/vuitton/android/presentation/compose/components/ProgressViewKt;->a(Landroidx/compose/ui/Modifier;JZLandroidx/compose/runtime/Composer;II)V

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->F()V

    goto/16 :goto_3

    :cond_4
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingListViewState;

    iget-boolean v2, v2, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingListViewState;->c:Z

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/booking/list/components/a;->b:Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v2, :cond_7

    const v0, -0x49e13975

    invoke-static {v0, v6, v3}, Lpq0;->j(ILandroidx/compose/runtime/Composer;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v0

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->b:J

    invoke-static {v0, v1, v2, v8}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const-string v1, "personalSelectionsDetail_error_view"

    invoke-static {v0, v1}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const v0, 0x7f140b62

    invoke-static {v6, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f140b61

    invoke-static {v6, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v5

    const v1, 0x7f1404b4

    invoke-static {v6, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_5

    if-ne v3, v4, :cond_6

    :cond_5
    new-instance v12, Lcom/vuitton/android/presentation/screen/booking/list/components/BookingListComposableKt$BookingListComposable$4$1$1$1;

    const-string v17, "fetchExperiences()V"

    const/16 v18, 0x0

    const/4 v13, 0x0

    const-class v15, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModel;

    const-string v16, "fetchExperiences"

    invoke-direct/range {v12 .. v18}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v3, v12

    :cond_6
    check-cast v3, Lkotlin/reflect/KFunction;

    move-object v8, v3

    check-cast v8, Lkotlin/jvm/functions/Function0;

    const/4 v10, 0x0

    const/16 v11, 0x72

    const/4 v3, 0x0

    move-object v9, v6

    const/4 v6, 0x0

    move-object v4, v0

    invoke-static/range {v2 .. v11}, Lcom/vuitton/android/designkit/ui/theme/templates/LVEmptyViewKt;->e(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SnackbarHostState;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    move-object v6, v9

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_3

    :cond_7
    const v2, 0xdc33ad8

    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v6, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_8

    if-ne v5, v4, :cond_9

    :cond_8
    new-instance v5, Lcom/vuitton/android/presentation/screen/booking/list/components/BookingListComposableKt$BookingListComposable$4$1$2$1;

    invoke-direct {v5, v14, v11}, Lcom/vuitton/android/presentation/screen/booking/list/components/BookingListComposableKt$BookingListComposable$4$1$2$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_9
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v2, v5}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingListViewState;

    invoke-interface {v6, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/booking/list/components/a;->c:Lkotlin/jvm/functions/Function1;

    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v2, v5

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v2, :cond_a

    if-ne v5, v4, :cond_b

    :cond_a
    new-instance v5, Lcom/vuitton/android/presentation/screen/booking/list/components/BookingListComposableKt$BookingListComposable$4$1$3$1;

    invoke-direct {v5, v14, v3}, Lcom/vuitton/android/presentation/screen/booking/list/components/BookingListComposableKt$BookingListComposable$4$1$3$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_b
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-interface {v6, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/booking/list/components/a;->d:Lkotlin/jvm/functions/Function1;

    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_c

    if-ne v3, v4, :cond_d

    :cond_c
    new-instance v3, Lsf;

    invoke-direct {v3, v14, v0, v7}, Lsf;-><init>(Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_d
    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v5, v3, v6, v7}, Lcom/vuitton/android/presentation/screen/booking/list/components/BookingListScreenKt;->a(Lcom/vuitton/android/presentation/screen/booking/list/models/BookingListViewState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->F()V

    :goto_3
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->r()V

    goto :goto_4

    :cond_e
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v11

    :cond_f
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->D()V

    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
