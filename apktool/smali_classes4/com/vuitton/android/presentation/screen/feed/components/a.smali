.class public final synthetic Lcom/vuitton/android/presentation/screen/feed/components/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/vuitton/android/presentation/screen/feed/components/a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vuitton/android/presentation/screen/feed/components/a;->b:I

    const/4 v1, 0x0

    sget-object v2, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x3

    packed-switch v0, :pswitch_data_0

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/feed/components/ComposableSingletons$FeedForYouSuccessScreenKt;->a:Lcom/vuitton/android/presentation/screen/feed/components/ComposableSingletons$FeedForYouSuccessScreenKt;

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v4, :cond_0

    move v2, v6

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    and-int/2addr v1, v6

    invoke-interface {v0, v1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v5, v0, v7}, Landroidx/compose/foundation/lazy/LazyListStateKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/LazyListState;

    move-result-object v8

    new-instance v9, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;

    sget-object v10, Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;->LIGHT:Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

    new-instance v21, Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;

    const/16 v24, 0xfff

    const/16 v25, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v11, v21

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v11 .. v25}, Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/time/LocalDateTime;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v28, 0x3f7fe

    const/16 v29, 0x0

    move-object/from16 v21, v11

    const/4 v11, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v9 .. v29}, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;-><init>(Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState;Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState;Ljava/util/List;ZLcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;Lcom/vuitton/android/presentation/model/common/A11ySettings;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;ZLcom/vuitton/android/presentation/screen/feed/FeedBottomSheet;Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;ZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v10, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;

    sget-object v1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-direct {v10, v1}, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;-><init>(Ljava/util/List;)V

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_1

    new-instance v1, Lwn;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lwn;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    move-object v11, v1

    check-cast v11, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_2

    new-instance v1, Ltn;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Ltn;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    move-object v12, v1

    check-cast v12, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_3

    new-instance v1, Lwn;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lwn;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    move-object/from16 v16, v1

    check-cast v16, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_4

    new-instance v1, Lwn;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lwn;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    move-object/from16 v17, v1

    check-cast v17, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_5

    new-instance v1, Lwn;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lwn;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5
    move-object/from16 v18, v1

    check-cast v18, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_6

    new-instance v1, Lwn;

    invoke-direct {v1, v4}, Lwn;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    move-object/from16 v19, v1

    check-cast v19, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_7

    new-instance v1, Lwn;

    invoke-direct {v1, v7}, Lwn;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_7
    move-object/from16 v20, v1

    check-cast v20, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_8

    sget-object v1, Lcom/vuitton/android/presentation/screen/feed/components/ComposableSingletons$FeedForYouSuccessScreenKt$lambda$6453700$1$8$1;->b:Lcom/vuitton/android/presentation/screen/feed/components/ComposableSingletons$FeedForYouSuccessScreenKt$lambda$6453700$1$8$1;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    move-object/from16 v21, v1

    check-cast v21, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_9

    sget-object v1, Lcom/vuitton/android/presentation/screen/feed/components/ComposableSingletons$FeedForYouSuccessScreenKt$lambda$6453700$1$9$1;->b:Lcom/vuitton/android/presentation/screen/feed/components/ComposableSingletons$FeedForYouSuccessScreenKt$lambda$6453700$1$9$1;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_9
    move-object/from16 v22, v1

    check-cast v22, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_a

    new-instance v1, Lvn;

    invoke-direct {v1, v7}, Lvn;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    move-object/from16 v23, v1

    check-cast v23, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_b

    new-instance v1, Lwn;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lwn;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_b
    move-object/from16 v24, v1

    check-cast v24, Lkotlin/jvm/functions/Function1;

    const v27, 0x1b6db6

    const/16 v28, 0x60

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const v26, 0x36c06c00

    move-object/from16 v25, v0

    invoke-static/range {v8 .. v28}, Lcom/vuitton/android/presentation/screen/feed/components/FeedForYouSuccessScreenKt;->a(Landroidx/compose/foundation/lazy/LazyListState;Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V

    goto :goto_1

    :cond_c
    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v8, p2

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sget-object v9, Lcom/vuitton/android/presentation/screen/feed/components/ComposableSingletons$FeedDiscoverSuccessScreenKt;->a:Lcom/vuitton/android/presentation/screen/feed/components/ComposableSingletons$FeedDiscoverSuccessScreenKt;

    and-int/lit8 v9, v8, 0x3

    if-eq v9, v4, :cond_d

    move v4, v6

    goto :goto_2

    :cond_d
    move v4, v5

    :goto_2
    and-int/2addr v8, v6

    invoke-interface {v0, v8, v4}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_19

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v4, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v8, "lambda__705599680$lambda$0"

    invoke-direct {v4, v8}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v8

    iget-object v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->f:J

    invoke-static {v4, v8, v9, v2}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v4, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v2, v4}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v4, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v4

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v8

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v9

    invoke-static {v0, v2}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v11

    if-eqz v11, :cond_18

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    :cond_e
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->o()V

    :goto_3
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v4, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v9, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v5, v0, v7}, Landroidx/compose/foundation/lazy/LazyListStateKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/LazyListState;

    move-result-object v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/feed/models/FeedMocksKt;->b:Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;

    new-instance v7, Lcom/vuitton/android/presentation/model/common/A11ySettings;

    const/4 v11, 0x7

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v7 .. v12}, Lcom/vuitton/android/presentation/model/common/A11ySettings;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_f

    new-instance v4, Lwn;

    invoke-direct {v4, v5}, Lwn;-><init>(I)V

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_f
    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_10

    new-instance v5, Ltn;

    const/16 v8, 0xa

    invoke-direct {v5, v8}, Ltn;-><init>(I)V

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_10
    move-object v8, v5

    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_11

    new-instance v5, Lwn;

    invoke-direct {v5, v6}, Lwn;-><init>(I)V

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_11
    move-object v9, v5

    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_12

    new-instance v5, Lrn;

    const/16 v6, 0x14

    invoke-direct {v5, v6}, Lrn;-><init>(I)V

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_12
    move-object v10, v5

    check-cast v10, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_13

    new-instance v5, Lrn;

    const/16 v6, 0x15

    invoke-direct {v5, v6}, Lrn;-><init>(I)V

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_13
    move-object v11, v5

    check-cast v11, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_14

    new-instance v5, Lrn;

    const/16 v6, 0x16

    invoke-direct {v5, v6}, Lrn;-><init>(I)V

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_14
    move-object v12, v5

    check-cast v12, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_15

    sget-object v5, Lcom/vuitton/android/presentation/screen/feed/components/ComposableSingletons$FeedDiscoverSuccessScreenKt$lambda$-705599680$1$1$7$1;->b:Lcom/vuitton/android/presentation/screen/feed/components/ComposableSingletons$FeedDiscoverSuccessScreenKt$lambda$-705599680$1$1$7$1;

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_15
    move-object v13, v5

    check-cast v13, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_16

    sget-object v5, Lcom/vuitton/android/presentation/screen/feed/components/ComposableSingletons$FeedDiscoverSuccessScreenKt$lambda$-705599680$1$1$8$1;->b:Lcom/vuitton/android/presentation/screen/feed/components/ComposableSingletons$FeedDiscoverSuccessScreenKt$lambda$-705599680$1$1$8$1;

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_16
    move-object v14, v5

    check-cast v14, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_17

    new-instance v5, Lrn;

    const/16 v3, 0x17

    invoke-direct {v5, v3}, Lrn;-><init>(I)V

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_17
    move-object v15, v5

    check-cast v15, Lkotlin/jvm/functions/Function1;

    const/16 v18, 0x6db6

    const/16 v19, 0x2

    move-object v3, v2

    const/4 v2, 0x0

    move-object v6, v7

    move-object v7, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v17, 0x36d86c00

    move-object/from16 v16, v0

    invoke-static/range {v1 .. v19}, Lcom/vuitton/android/presentation/screen/feed/components/FeedDiscoverSuccessScreenKt;->a(Landroidx/compose/foundation/lazy/LazyListState;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;ZZLcom/vuitton/android/presentation/model/common/A11ySettings;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/Composer;->r()V

    goto :goto_4

    :cond_18
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v1

    :cond_19
    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/Composer;->D()V

    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v8, p2

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sget-object v9, Lcom/vuitton/android/presentation/screen/feed/components/ComposableSingletons$FeedDiscoverSuccessScreenKt;->a:Lcom/vuitton/android/presentation/screen/feed/components/ComposableSingletons$FeedDiscoverSuccessScreenKt;

    and-int/lit8 v9, v8, 0x3

    if-eq v9, v4, :cond_1a

    move v4, v6

    goto :goto_5

    :cond_1a
    move v4, v5

    :goto_5
    and-int/2addr v6, v8

    invoke-interface {v0, v6, v4}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_26

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v4, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v6, "lambda__201538554$lambda$0"

    invoke-direct {v4, v6}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v6

    iget-object v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v8, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    invoke-static {v4, v8, v9, v2}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v4, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v2, v4}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v4, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v4

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v0, v2}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v10

    if-eqz v10, :cond_25

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_6

    :cond_1b
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->o()V

    :goto_6
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v4, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v8, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v5, v0, v7}, Landroidx/compose/foundation/lazy/LazyListStateKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/LazyListState;

    move-result-object v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/feed/models/FeedMocksKt;->b:Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;

    new-instance v4, Lcom/vuitton/android/presentation/model/common/A11ySettings;

    const/4 v8, 0x7

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/vuitton/android/presentation/model/common/A11ySettings;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_1c

    new-instance v5, Lrn;

    const/16 v6, 0x18

    invoke-direct {v5, v6}, Lrn;-><init>(I)V

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1c
    move-object v7, v5

    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_1d

    new-instance v5, Ltn;

    const/16 v6, 0x9

    invoke-direct {v5, v6}, Ltn;-><init>(I)V

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1d
    move-object v8, v5

    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_1e

    new-instance v5, Lrn;

    const/16 v6, 0x19

    invoke-direct {v5, v6}, Lrn;-><init>(I)V

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1e
    move-object v9, v5

    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_1f

    new-instance v5, Lrn;

    const/16 v6, 0x1a

    invoke-direct {v5, v6}, Lrn;-><init>(I)V

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1f
    move-object v10, v5

    check-cast v10, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_20

    new-instance v5, Lrn;

    const/16 v6, 0x1b

    invoke-direct {v5, v6}, Lrn;-><init>(I)V

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_20
    move-object v11, v5

    check-cast v11, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_21

    new-instance v5, Lrn;

    const/16 v6, 0x1c

    invoke-direct {v5, v6}, Lrn;-><init>(I)V

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_21
    move-object v12, v5

    check-cast v12, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_22

    sget-object v5, Lcom/vuitton/android/presentation/screen/feed/components/ComposableSingletons$FeedDiscoverSuccessScreenKt$lambda$-201538554$1$1$7$1;->b:Lcom/vuitton/android/presentation/screen/feed/components/ComposableSingletons$FeedDiscoverSuccessScreenKt$lambda$-201538554$1$1$7$1;

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_22
    move-object v13, v5

    check-cast v13, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_23

    sget-object v5, Lcom/vuitton/android/presentation/screen/feed/components/ComposableSingletons$FeedDiscoverSuccessScreenKt$lambda$-201538554$1$1$8$1;->b:Lcom/vuitton/android/presentation/screen/feed/components/ComposableSingletons$FeedDiscoverSuccessScreenKt$lambda$-201538554$1$1$8$1;

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_23
    move-object v14, v5

    check-cast v14, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_24

    new-instance v5, Lrn;

    const/16 v3, 0x1d

    invoke-direct {v5, v3}, Lrn;-><init>(I)V

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_24
    move-object v15, v5

    check-cast v15, Lkotlin/jvm/functions/Function1;

    const/16 v18, 0x6db6

    const/16 v19, 0x2

    move-object v3, v2

    const/4 v2, 0x0

    move-object v6, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v17, 0x36d86c00

    move-object/from16 v16, v0

    invoke-static/range {v1 .. v19}, Lcom/vuitton/android/presentation/screen/feed/components/FeedDiscoverSuccessScreenKt;->a(Landroidx/compose/foundation/lazy/LazyListState;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;ZZLcom/vuitton/android/presentation/model/common/A11ySettings;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/Composer;->r()V

    goto :goto_7

    :cond_25
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v1

    :cond_26
    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/Composer;->D()V

    :goto_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
