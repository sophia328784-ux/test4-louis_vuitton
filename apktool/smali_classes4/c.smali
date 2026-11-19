.class public final synthetic Lc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lc;->b:I

    iput-object p1, p0, Lc;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    .line 8
    iput p3, p0, Lc;->b:I

    iput-object p1, p0, Lc;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget v2, v0, Lc;->b:I

    const-string v3, ""

    const/16 v4, 0x30

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget-object v0, v0, Lc;->c:Ljava/lang/Object;

    packed-switch v2, :pswitch_data_0

    check-cast v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/runtime/Composer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v3, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->H:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$Companion;

    and-int/lit8 v3, v1, 0x3

    if-eq v3, v6, :cond_0

    move v7, v8

    :cond_0
    and-int/2addr v1, v8

    invoke-interface {v2, v1, v7}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Lcom/vuitton/android/presentation/screen/immersivearticle/a;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/immersivearticle/a;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;)V

    const v0, 0x57501664

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    invoke-static {v5, v0, v2, v4}, Lcom/vuitton/android/designkit/ui/theme/ThemeKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->D()V

    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    check-cast v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity;

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/runtime/Composer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v3, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity;->s:Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity$Companion;

    and-int/lit8 v3, v1, 0x3

    if-eq v3, v6, :cond_2

    move v3, v8

    goto :goto_1

    :cond_2
    move v3, v7

    :goto_1
    and-int/2addr v1, v8

    invoke-interface {v2, v1, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity;->H()Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayViewModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-static {v1, v2}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FilterOverlayViewState;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FilterOverlayViewState;->a:Ljava/util/Map;

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity;->I()Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

    if-eqz v3, :cond_3

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;->b:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;

    if-eqz v3, :cond_3

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;->b:Ljava/util/List;

    goto :goto_2

    :cond_3
    move-object v3, v5

    :goto_2
    check-cast v3, Ljava/util/Collection;

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_4
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FilterOverlayViewState;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FilterOverlayViewState;->a:Ljava/util/Map;

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity;->I()Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

    if-eqz v3, :cond_5

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;->b:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;

    if-eqz v3, :cond_5

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;->c:Ljava/util/List;

    goto :goto_3

    :cond_5
    move-object v3, v5

    :goto_3
    check-cast v3, Ljava/util/Collection;

    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_5

    :cond_6
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FilterOverlayViewState;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FilterOverlayViewState;->a:Ljava/util/Map;

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity;->I()Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

    if-eqz v3, :cond_7

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;->a:Ljava/util/List;

    goto :goto_4

    :cond_7
    move-object v3, v5

    :goto_4
    check-cast v3, Ljava/util/Collection;

    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    :goto_5
    move v7, v8

    :cond_9
    new-instance v3, Lcom/vuitton/android/presentation/screen/filter/quickaccess/a;

    invoke-direct {v3, v0, v7, v1}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/a;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity;ZLandroidx/compose/runtime/MutableState;)V

    const v0, 0x28f0bb64

    invoke-static {v0, v3, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    invoke-static {v5, v0, v2, v4}, Lcom/vuitton/android/designkit/ui/theme/ThemeKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_6

    :cond_a
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->D()V

    :goto_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    check-cast v0, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    move-object/from16 v14, p1

    check-cast v14, Landroidx/compose/runtime/Composer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v6, :cond_b

    move v2, v8

    goto :goto_7

    :cond_b
    move v2, v7

    :goto_7
    and-int/2addr v1, v8

    invoke-interface {v14, v1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v2, "FeedLiveCalendarIconButton$lambda$0"

    invoke-direct {v1, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->o:F

    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v11

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->I0:I

    invoke-static {v1, v14, v7}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v9

    sget-object v1, Lcom/vuitton/android/presentation/screen/feed/components/card/FeedNotifyIconButtonsKt$WhenMappings;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v8, :cond_d

    if-ne v0, v6, :cond_c

    const v0, 0x553d38e0

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->m:J

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->F()V

    :goto_8
    move-wide v12, v0

    goto :goto_9

    :cond_c
    const v0, 0x553d2341

    invoke-static {v14, v0}, Lo60;->v(Landroidx/compose/runtime/Composer;I)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_d
    const v0, 0x553d2e1a    # 1.30003564E13f

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_8

    :goto_9
    const v0, 0x7f1409f8

    invoke-static {v14, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v10

    const/16 v15, 0x8

    const/16 v16, 0x0

    invoke-static/range {v9 .. v16}, Landroidx/compose/material3/IconKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    goto :goto_a

    :cond_e
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->D()V

    :goto_a
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_2
    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity;

    move-object/from16 v2, p1

    check-cast v2, Ljava/lang/String;

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;

    sget-object v3, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity;->s:Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity;->I()Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesViewModel;

    move-result-object v0

    new-instance v3, Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$FaqCategoryClickEvent;

    invoke-direct {v3, v2, v1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$FaqCategoryClickEvent;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;)V

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesViewModel;->d:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {v3}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_3
    check-cast v0, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesActivity;

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/runtime/Composer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v3, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesActivity;->q:Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesActivity$Companion;

    and-int/lit8 v3, v1, 0x3

    if-eq v3, v6, :cond_f

    move v7, v8

    :cond_f
    and-int/2addr v1, v8

    invoke-interface {v2, v1, v7}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Lcom/vuitton/android/presentation/screen/exclusivesales/a;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/exclusivesales/a;-><init>(Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesActivity;)V

    const v0, 0x722fb311

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    invoke-static {v5, v0, v2, v4}, Lcom/vuitton/android/designkit/ui/theme/ThemeKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_b

    :cond_10
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->D()V

    :goto_b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_4
    check-cast v0, Lkotlin/jvm/internal/Ref$FloatRef;

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputChange;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    iput v1, v0, Lkotlin/jvm/internal/Ref$FloatRef;->b:F

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_5
    check-cast v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentTermsFragment;

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/runtime/Composer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v3, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentTermsFragment;->F:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentTermsFragment$Companion;

    and-int/lit8 v3, v1, 0x3

    if-eq v3, v6, :cond_11

    move v7, v8

    :cond_11
    and-int/2addr v1, v8

    invoke-interface {v2, v1, v7}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_12

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/b;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/b;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentTermsFragment;)V

    const v0, 0x7e7c3d7e

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    invoke-static {v5, v0, v2, v4}, Lcom/vuitton/android/designkit/ui/theme/ThemeKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_c

    :cond_12
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->D()V

    :goto_c
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_6
    check-cast v0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryActivity;

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/runtime/Composer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v3, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryActivity;->q:Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryActivity$Companion;

    and-int/lit8 v3, v1, 0x3

    if-eq v3, v6, :cond_13

    move v7, v8

    :cond_13
    and-int/2addr v1, v8

    invoke-interface {v2, v1, v7}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_14

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Lcom/vuitton/android/presentation/screen/options/dispatch/a;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/options/dispatch/a;-><init>(Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryActivity;)V

    const v0, -0x5d4262ab

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    invoke-static {v5, v0, v2, v4}, Lcom/vuitton/android/designkit/ui/theme/ThemeKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_d

    :cond_14
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->D()V

    :goto_d
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_7
    check-cast v0, Landroidx/navigation/compose/DialogNavigator;

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/runtime/Composer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v1

    invoke-static {v0, v2, v1}, Landroidx/navigation/compose/DialogHostKt;->a(Landroidx/navigation/compose/DialogNavigator;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_8
    check-cast v0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/runtime/Composer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->a:Landroidx/compose/ui/window/PopupProperties;

    const v1, 0x27b3a34e

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v0, v0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;->b:Ljava/lang/String;

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->F()V

    return-object v0

    :pswitch_9
    check-cast v0, Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/ui/unit/IntSize;

    check-cast v1, Landroidx/compose/ui/unit/IntSize;

    sget v1, Landroidx/compose/material3/DatePickerKt;->a:F

    return-object v0

    :pswitch_a
    check-cast v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/runtime/Composer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v1

    invoke-static {v0, v2, v1}, Landroidx/compose/foundation/text/CoreTextFieldKt;->d(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_b
    check-cast v0, Landroidx/compose/runtime/composer/RememberManager;

    move-object/from16 v2, p1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    instance-of v2, v1, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    if-eqz v2, :cond_15

    move-object v2, v1

    check-cast v2, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    invoke-interface {v0, v2}, Landroidx/compose/runtime/composer/RememberManager;->b(Landroidx/compose/runtime/ComposeNodeLifecycleCallback;)V

    :cond_15
    instance-of v2, v1, Landroidx/compose/runtime/RememberObserverHolder;

    if-eqz v2, :cond_16

    move-object v2, v1

    check-cast v2, Landroidx/compose/runtime/RememberObserverHolder;

    invoke-interface {v0, v2}, Landroidx/compose/runtime/composer/RememberManager;->g(Landroidx/compose/runtime/RememberObserverHolder;)V

    :cond_16
    instance-of v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;

    if-eqz v0, :cond_17

    move-object v0, v1

    check-cast v0, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->c()V

    :cond_17
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_c
    move-object v3, v0

    check-cast v3, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;

    move-object/from16 v10, p1

    check-cast v10, Landroidx/compose/runtime/Composer;

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/catalog/components/ComposableSingletons$CatalogSubcategoryScreenKt;->a:Lcom/vuitton/android/presentation/screen/catalog/components/ComposableSingletons$CatalogSubcategoryScreenKt;

    and-int/lit8 v1, v0, 0x3

    if-eq v1, v6, :cond_18

    move v7, v8

    :cond_18
    and-int/2addr v0, v8

    invoke-interface {v10, v0, v7}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Lcom/vuitton/android/presentation/screen/catalog/models/MocksKt;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v1, :cond_19

    new-instance v0, Lnn;

    const/16 v4, 0x1b

    invoke-direct {v0, v4}, Lnn;-><init>(I)V

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_19
    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_1a

    new-instance v0, Lrn;

    const/4 v5, 0x6

    invoke-direct {v0, v5}, Lrn;-><init>(I)V

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1a
    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_1b

    new-instance v0, Lrn;

    const/4 v6, 0x7

    invoke-direct {v0, v6}, Lrn;-><init>(I)V

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1b
    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_1c

    new-instance v0, Lrn;

    const/16 v7, 0x8

    invoke-direct {v0, v7}, Lrn;-><init>(I)V

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1c
    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_1d

    new-instance v0, Lrn;

    const/16 v8, 0x9

    invoke-direct {v0, v8}, Lrn;-><init>(I)V

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1d
    move-object v8, v0

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_1e

    new-instance v0, Lnn;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Lnn;-><init>(I)V

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1e
    move-object v9, v0

    check-cast v9, Lkotlin/jvm/functions/Function0;

    const v11, 0x6db6c00

    const/4 v1, 0x0

    invoke-static/range {v1 .. v11}, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogSubcategoryScreenKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_e

    :cond_1f
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->D()V

    :goto_e
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_d
    check-cast v0, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

    move-object/from16 v2, p1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, v0, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;->b:Lcom/vuitton/android/presentation/chat/ChatCoordinator;

    invoke-virtual {v3, v2, v1}, Lcom/vuitton/android/presentation/chat/ChatCoordinator;->b(II)V

    iget-object v0, v0, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;->d:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    sget-object v1, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnPowerfrontNotificationClickEvent;->a:Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnPowerfrontNotificationClickEvent;

    invoke-static {v1}, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_e
    check-cast v0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;

    move-object/from16 v12, p1

    check-cast v12, Landroidx/compose/runtime/Composer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v2, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/CatalogStoreModeKt;->a:F

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v6, :cond_20

    move v7, v8

    :cond_20
    and-int/2addr v1, v8

    invoke-interface {v12, v1, v7}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_22

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->f:Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistSummaryUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistSummaryUiModel;->b:Ljava/lang/String;

    if-nez v0, :cond_21

    move-object v10, v3

    goto :goto_f

    :cond_21
    move-object v10, v0

    :goto_f
    const/4 v13, 0x0

    const/4 v14, 0x5

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-static/range {v9 .. v14}, Lcom/vuitton/android/presentation/compose/components/PushCardImageLoaderKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/Integer;Landroidx/compose/runtime/Composer;II)V

    goto :goto_10

    :cond_22
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->D()V

    :goto_10
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_f
    check-cast v0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeDataUiModel;

    move-object/from16 v12, p1

    check-cast v12, Landroidx/compose/runtime/Composer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v2, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/CatalogStoreModeKt;->a:F

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v6, :cond_23

    move v7, v8

    :cond_23
    and-int/2addr v1, v8

    invoke-interface {v12, v1, v7}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_24

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    check-cast v0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeDataUiModel$StoreModeSimpleUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeDataUiModel$StoreModeSimpleUiModel;->c:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    iget-object v10, v0, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;->b:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x5

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-static/range {v9 .. v14}, Lcom/vuitton/android/presentation/compose/components/PushCardImageLoaderKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/Integer;Landroidx/compose/runtime/Composer;II)V

    goto :goto_11

    :cond_24
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->D()V

    :goto_11
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_10
    check-cast v0, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/bff/CancellationReasonsBffActivity;

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/runtime/Composer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v3, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/bff/CancellationReasonsBffActivity;->q:Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/bff/CancellationReasonsBffActivity$Companion;

    and-int/lit8 v3, v1, 0x3

    if-eq v3, v6, :cond_25

    move v7, v8

    :cond_25
    and-int/2addr v1, v8

    invoke-interface {v2, v1, v7}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_26

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/bff/a;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/bff/a;-><init>(Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/bff/CancellationReasonsBffActivity;)V

    const v0, 0x559e30a9

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    invoke-static {v5, v0, v2, v4}, Lcom/vuitton/android/designkit/ui/theme/ThemeKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_12

    :cond_26
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->D()V

    :goto_12
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_11
    check-cast v0, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsActivity;

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/runtime/Composer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v3, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsActivity;->q:Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsActivity$Companion;

    and-int/lit8 v3, v1, 0x3

    if-eq v3, v6, :cond_27

    move v7, v8

    :cond_27
    and-int/2addr v1, v8

    invoke-interface {v2, v1, v7}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_28

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/a;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/a;-><init>(Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsActivity;)V

    const v0, -0x2137002b

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    invoke-static {v5, v0, v2, v4}, Lcom/vuitton/android/designkit/ui/theme/ThemeKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_13

    :cond_28
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->D()V

    :goto_13
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_12
    check-cast v0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl;

    move-object/from16 v2, p1

    check-cast v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    check-cast v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldGenericUiModel;

    instance-of v2, v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    if-eqz v2, :cond_29

    move-object v8, v1

    check-cast v8, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    iget-object v2, v8, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v3, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->EMAIL:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    if-ne v2, v3, :cond_29

    new-instance v11, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldReadOnlyUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v11, v0, v7}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldReadOnlyUiModel;-><init>(Ljava/lang/String;Z)V

    const/16 v17, 0x0

    const/16 v18, 0x3fb

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v8 .. v18}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->c(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;ZLcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$WithoutTrailingAsterisk;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/customvalidation/FieldValidationRule;Ljava/lang/String;ZZI)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    move-result-object v1

    :cond_29
    return-object v1

    :pswitch_13
    check-cast v0, Lcom/vuitton/android/presentation/screen/booking/BookingActivity;

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/runtime/Composer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v3, Lcom/vuitton/android/presentation/screen/booking/BookingActivity;->r:Lcom/vuitton/android/presentation/screen/booking/BookingActivity$Companion;

    and-int/lit8 v3, v1, 0x3

    if-eq v3, v6, :cond_2a

    move v3, v8

    goto :goto_14

    :cond_2a
    move v3, v7

    :goto_14
    and-int/2addr v1, v8

    invoke-interface {v2, v1, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Lcom/vuitton/android/presentation/screen/booking/a;

    invoke-direct {v1, v0, v7}, Lcom/vuitton/android/presentation/screen/booking/a;-><init>(Lcom/vuitton/android/presentation/screen/base/BaseActivity;I)V

    const v0, -0x519f0ad6

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    invoke-static {v5, v0, v2, v4}, Lcom/vuitton/android/designkit/ui/theme/ThemeKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_15

    :cond_2b
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->D()V

    :goto_15
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_14
    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/runtime/Composer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$Companion;

    and-int/lit8 v3, v1, 0x3

    if-eq v3, v6, :cond_2c

    move v7, v8

    :cond_2c
    and-int/2addr v1, v8

    invoke-interface {v2, v1, v7}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_2d

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/a;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/a;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;)V

    const v0, 0x744252a4

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    invoke-static {v5, v0, v2, v4}, Lcom/vuitton/android/designkit/ui/theme/ThemeKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_16

    :cond_2d
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->D()V

    :goto_16
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_15
    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    move-object/from16 v12, p1

    check-cast v12, Landroidx/compose/runtime/Composer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyDualColorComparatorKt;->a:F

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v6, :cond_2e

    move v7, v8

    :cond_2e
    and-int/2addr v1, v8

    invoke-interface {v12, v1, v7}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_31

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->g:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ColorUiModel;

    if-eqz v0, :cond_2f

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ColorUiModel;->b:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    if-eqz v0, :cond_2f

    iget-object v5, v0, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;->b:Ljava/lang/String;

    :cond_2f
    if-nez v5, :cond_30

    move-object v9, v3

    goto :goto_17

    :cond_30
    move-object v9, v5

    :goto_17
    const/16 v13, 0x30

    const/4 v14, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v9 .. v14}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyDualColorComparatorKt;->c(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    goto :goto_18

    :cond_31
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->D()V

    :goto_18
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_16
    check-cast v0, Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/runtime/saveable/SaverScope;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->a(Landroidx/compose/foundation/text/selection/SelectionRegistrar;J)Z

    move-result v0

    if-eqz v0, :cond_32

    move-object v5, v1

    :cond_32
    return-object v5

    :pswitch_17
    check-cast v0, Landroidx/compose/ui/text/TextInclusionStrategy;

    move-object/from16 v2, p1

    check-cast v2, Landroid/graphics/RectF;

    check-cast v1, Landroid/graphics/RectF;

    invoke-static {v2}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->c(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    invoke-static {v1}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->c(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroidx/compose/ui/text/TextInclusionStrategy;->i(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_18
    check-cast v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorActivity;

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/runtime/Composer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v3, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorActivity;->r:Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorActivity$Companion;

    and-int/lit8 v3, v1, 0x3

    if-eq v3, v6, :cond_33

    move v7, v8

    :cond_33
    and-int/2addr v1, v8

    invoke-interface {v2, v1, v7}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_34

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Lcom/vuitton/android/presentation/screen/account/addresseditor/a;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/account/addresseditor/a;-><init>(Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorActivity;)V

    const v0, 0x717fa471

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    invoke-static {v5, v0, v2, v4}, Lcom/vuitton/android/designkit/ui/theme/ThemeKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_19

    :cond_34
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->D()V

    :goto_19
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_19
    check-cast v0, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookActivity;

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/runtime/Composer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v3, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookActivity;->q:Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookActivity$Companion;

    and-int/lit8 v3, v1, 0x3

    if-eq v3, v6, :cond_35

    move v7, v8

    :cond_35
    and-int/2addr v1, v8

    invoke-interface {v2, v1, v7}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_36

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Lcom/vuitton/android/presentation/screen/account/addressbook/a;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/account/addressbook/a;-><init>(Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookActivity;)V

    const v0, -0x884493

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    invoke-static {v5, v0, v2, v4}, Lcom/vuitton/android/designkit/ui/theme/ThemeKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1a

    :cond_36
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1a
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1a
    check-cast v0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateInfoUiModel;

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/runtime/Composer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v1

    invoke-static {v0, v2, v1}, Lcom/vuitton/android/presentation/screen/certificates/components/add/AddCertificateComposableKt;->b(Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateInfoUiModel;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1b
    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModel;

    move-object/from16 v2, p1

    check-cast v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v2, v1}, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModel;->f(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1c
    check-cast v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/runtime/Composer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v3, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;->v:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity$Companion;

    and-int/lit8 v3, v1, 0x3

    if-eq v3, v6, :cond_37

    move v7, v8

    :cond_37
    and-int/2addr v1, v8

    invoke-interface {v2, v1, v7}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_38

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Lcom/vuitton/android/presentation/screen/aicompanion/a;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/aicompanion/a;-><init>(Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;)V

    const v0, 0x5d2af5d5

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    invoke-static {v5, v0, v2, v4}, Lcom/vuitton/android/designkit/ui/theme/ThemeKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1b

    :cond_38
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
