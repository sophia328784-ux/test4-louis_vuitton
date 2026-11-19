.class public final synthetic Lbi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Lkotlin/Function;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Ljava/util/List;ZZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    const/4 p8, 0x1

    iput p8, p0, Lbi;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbi;->e:Ljava/lang/Object;

    iput-object p2, p0, Lbi;->f:Ljava/lang/Object;

    iput-object p3, p0, Lbi;->g:Ljava/lang/Object;

    iput-boolean p4, p0, Lbi;->c:Z

    iput-boolean p5, p0, Lbi;->d:Z

    iput-object p6, p0, Lbi;->h:Ljava/lang/Object;

    iput-object p7, p0, Lbi;->i:Lkotlin/Function;

    return-void
.end method

.method public synthetic constructor <init>(ZLandroidx/compose/foundation/lazy/LazyItemScope;ZLkotlin/jvm/functions/Function4;Lcom/kizitonwose/calendar/core/CalendarMonth;Lcom/kizitonwose/calendar/compose/ItemCoordinatesStore;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 1

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lbi;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lbi;->c:Z

    iput-object p2, p0, Lbi;->e:Ljava/lang/Object;

    iput-boolean p3, p0, Lbi;->d:Z

    iput-object p4, p0, Lbi;->f:Ljava/lang/Object;

    iput-object p5, p0, Lbi;->g:Ljava/lang/Object;

    iput-object p6, p0, Lbi;->h:Ljava/lang/Object;

    iput-object p7, p0, Lbi;->i:Lkotlin/Function;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lbi;->b:I

    const/4 v2, 0x1

    iget-object v3, v0, Lbi;->i:Lkotlin/Function;

    iget-object v4, v0, Lbi;->h:Ljava/lang/Object;

    iget-object v5, v0, Lbi;->g:Ljava/lang/Object;

    iget-object v6, v0, Lbi;->f:Ljava/lang/Object;

    iget-object v7, v0, Lbi;->e:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    move-object v8, v7

    check-cast v8, Landroidx/compose/ui/Modifier;

    move-object v9, v6

    check-cast v9, Landroidx/compose/foundation/pager/PagerState;

    move-object v10, v5

    check-cast v10, Ljava/util/List;

    move-object v13, v4

    check-cast v13, Lkotlin/jvm/functions/Function1;

    move-object v14, v3

    check-cast v14, Lkotlin/jvm/functions/Function1;

    move-object/from16 v15, p1

    check-cast v15, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v16

    iget-boolean v11, v0, Lbi;->c:Z

    iget-boolean v12, v0, Lbi;->d:Z

    invoke-static/range {v8 .. v16}, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightSkuPagerKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Ljava/util/List;ZZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    check-cast v7, Landroidx/compose/foundation/lazy/LazyItemScope;

    check-cast v6, Lkotlin/jvm/functions/Function4;

    move-object v10, v5

    check-cast v10, Lcom/kizitonwose/calendar/core/CalendarMonth;

    check-cast v4, Lcom/kizitonwose/calendar/compose/ItemCoordinatesStore;

    check-cast v3, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-object/from16 v12, p1

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v5, Lcom/kizitonwose/calendar/compose/CalendarMonthsKt;->a:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    and-int/lit8 v8, v1, 0x3

    const/4 v9, 0x2

    const/4 v11, 0x0

    if-eq v8, v9, :cond_0

    move v8, v2

    goto :goto_0

    :cond_0
    move v8, v11

    :goto_0
    and-int/2addr v1, v2

    invoke-interface {v12, v1, v8}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const/high16 v1, 0x3f800000    # 1.0f

    iget-boolean v2, v0, Lbi;->c:Z

    const-string v8, "CalendarMonths$lambda$1$3$0"

    if-eqz v2, :cond_1

    invoke-static {v8, v1}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v9

    goto :goto_1

    :cond_1
    new-instance v9, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v9, v8}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v9}, Landroidx/compose/foundation/lazy/LazyItemScope;->d(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    :goto_1
    iget-boolean v0, v0, Lbi;->d:Z

    const/4 v13, 0x0

    if-eqz v0, :cond_3

    if-eqz v2, :cond_2

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v2, v8}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v1}, Landroidx/compose/foundation/layout/SizeKt;->c(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    goto :goto_2

    :cond_2
    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v8}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v1}, Landroidx/compose/foundation/lazy/LazyItemScope;->b(Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    goto :goto_2

    :cond_3
    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v8}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-static {v1, v13, v2}, Landroidx/compose/foundation/layout/SizeKt;->v(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Vertical;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    :goto_2
    invoke-interface {v9, v1}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v7, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v2, v7, v12, v11}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v2

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v12, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v12, v9}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    :cond_4
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->o()V

    :goto_3
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v2, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v8, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v2, v7}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v12, v2}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v1, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v9, Landroidx/compose/foundation/layout/ColumnScopeInstance;->a:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    if-nez v6, :cond_5

    const v1, 0x3d551557

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    :goto_4
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_5

    :cond_5
    const v1, -0x48581816

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v6, v9, v10, v12, v5}, Lkotlin/jvm/functions/Function4;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :goto_5
    sget-object v8, Lcom/kizitonwose/calendar/compose/CalendarMonthsKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    new-instance v1, Lcom/kizitonwose/calendar/compose/c;

    invoke-direct {v1, v0, v10, v4, v3}, Lcom/kizitonwose/calendar/compose/c;-><init>(ZLcom/kizitonwose/calendar/core/CalendarMonth;Lcom/kizitonwose/calendar/compose/ItemCoordinatesStore;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    const v0, -0x365fcaa2

    invoke-static {v0, v1, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v11

    const/16 v0, 0x186

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual/range {v8 .. v13}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->D(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x3d771497

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->F()V

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->r()V

    goto :goto_6

    :cond_6
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v13

    :cond_7
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->D()V

    :goto_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
