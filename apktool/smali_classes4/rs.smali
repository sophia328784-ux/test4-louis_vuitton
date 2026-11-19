.class public final synthetic Lrs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lrs;->b:I

    iput-object p1, p0, Lrs;->c:Ljava/lang/Object;

    iput-object p2, p0, Lrs;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 10
    iput p4, p0, Lrs;->b:I

    iput-object p1, p0, Lrs;->c:Ljava/lang/Object;

    iput-object p2, p0, Lrs;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget v2, v0, Lrs;->b:I

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x7fffffff

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget-object v9, v0, Lrs;->d:Ljava/lang/Object;

    iget-object v0, v0, Lrs;->c:Ljava/lang/Object;

    packed-switch v2, :pswitch_data_0

    check-cast v0, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    check-cast v9, Landroidx/compose/runtime/MutableState;

    move-object/from16 v2, p1

    check-cast v2, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->b:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->a:I

    invoke-interface {v0, v7}, Landroidx/compose/ui/hapticfeedback/HapticFeedback;->a(I)V

    invoke-interface {v9, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    check-cast v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    check-cast v9, Landroidx/compose/runtime/State;

    move-object/from16 v2, p1

    check-cast v2, Ljava/lang/String;

    move-object v6, v1

    check-cast v6, Lcom/vuitton/android/presentation/screen/filter/model/FilterType;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;->h:Ljava/lang/String;

    sget-object v4, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;->PLP:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;Ljava/util/UUID;Lcom/vuitton/android/presentation/screen/filter/model/FilterType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;->Y0(Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    check-cast v0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl;

    check-cast v9, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;

    move-object/from16 v2, p1

    check-cast v2, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;

    check-cast v1, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$NewMessage;

    invoke-static {v0, v9, v2, v1}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl;->e(Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$NewMessage;)Lkotlin/Pair;

    move-result-object v0

    return-object v0

    :pswitch_2
    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    check-cast v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    check-cast v1, Landroidx/compose/ui/unit/Constraints;

    new-instance v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;

    invoke-direct {v3, v0, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;Landroidx/compose/ui/layout/SubcomposeMeasureScope;)V

    iget-wide v0, v1, Landroidx/compose/ui/unit/Constraints;->a:J

    invoke-interface {v9, v3, v0, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;->a(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;J)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0

    :pswitch_3
    check-cast v0, Landroidx/compose/foundation/lazy/grid/GridCells$Fixed;

    check-cast v9, Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/ui/unit/Density;

    check-cast v1, Landroidx/compose/ui/unit/Constraints;

    iget-wide v5, v1, Landroidx/compose/ui/unit/Constraints;->a:J

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    move-result v3

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "LazyHorizontalGrid\'s height should be bound by parent."

    invoke-static {v3}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    :goto_0
    iget-wide v3, v1, Landroidx/compose/ui/unit/Constraints;->a:J

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    move-result v1

    invoke-interface {v9}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->a()F

    move-result v3

    invoke-interface {v2, v3}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroidx/compose/foundation/lazy/grid/GridCells$Fixed;->a(II)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->x0(Ljava/util/Collection;)[I

    move-result-object v0

    array-length v3, v0

    new-array v3, v3, [I

    invoke-interface {v9, v2, v1, v0, v3}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->b(Landroidx/compose/ui/unit/Density;I[I[I)V

    new-instance v1, Landroidx/compose/foundation/lazy/grid/LazyGridSlots;

    invoke-direct {v1, v0, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridSlots;-><init>([I[I)V

    return-object v1

    :pswitch_4
    check-cast v0, Landroidx/compose/foundation/lazy/grid/GridCells$Fixed;

    move-object v10, v9

    check-cast v10, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-object/from16 v11, p1

    check-cast v11, Landroidx/compose/ui/unit/Density;

    check-cast v1, Landroidx/compose/ui/unit/Constraints;

    iget-wide v2, v1, Landroidx/compose/ui/unit/Constraints;->a:J

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    move-result v2

    if-eq v2, v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "LazyVerticalGrid\'s width should be bound by parent."

    invoke-static {v2}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    :goto_1
    iget-wide v1, v1, Landroidx/compose/ui/unit/Constraints;->a:J

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    move-result v12

    invoke-interface {v10}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->a()F

    move-result v1

    invoke-interface {v11, v1}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v1

    invoke-virtual {v0, v12, v1}, Landroidx/compose/foundation/lazy/grid/GridCells$Fixed;->a(II)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->x0(Ljava/util/Collection;)[I

    move-result-object v13

    array-length v0, v13

    new-array v15, v0, [I

    sget-object v14, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-interface/range {v10 .. v15}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->c(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridSlots;

    invoke-direct {v0, v13, v15}, Landroidx/compose/foundation/lazy/grid/LazyGridSlots;-><init>([I[I)V

    return-object v0

    :pswitch_5
    check-cast v0, Landroidx/compose/foundation/pager/PagerState;

    check-cast v9, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/runtime/Composer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v3, v1, 0x3

    if-eq v3, v6, :cond_2

    move v3, v8

    goto :goto_2

    :cond_2
    move v3, v7

    :goto_2
    and-int/2addr v1, v8

    invoke-interface {v2, v1, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v1

    add-int/2addr v1, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->o()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const v3, 0x7f140341

    invoke-static {v3, v1, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->b(I[Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v3

    add-int/2addr v3, v8

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->o()I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVPageNumberIndicatorKt$WhenMappings;->a:[I

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v8, :cond_4

    if-ne v0, v6, :cond_3

    const v0, -0x42cec727

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v3, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->F()V

    :goto_3
    move-wide v12, v3

    goto :goto_4

    :cond_3
    const v0, -0x42cede74

    invoke-static {v2, v0}, Lo60;->v(Landroidx/compose/runtime/Composer;I)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_4
    const v0, -0x42ced321

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v3, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->m:J

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_3

    :goto_4
    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->m:Landroidx/compose/ui/text/TextStyle;

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v4, "LVPageNumberIndicator$lambda$0$0"

    invoke-direct {v3, v4}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_5

    if-ne v6, v5, :cond_6

    :cond_5
    new-instance v6, Llt;

    const/16 v4, 0xe

    invoke-direct {v6, v1, v4}, Llt;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v7, v6}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    const/16 v31, 0x0

    const v32, 0x1fff8

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v30, 0x0

    move-object/from16 v28, v0

    move-object/from16 v29, v2

    invoke-static/range {v10 .. v32}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    goto :goto_5

    :cond_7
    move-object/from16 v29, v2

    invoke-interface/range {v29 .. v29}, Landroidx/compose/runtime/Composer;->D()V

    :goto_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_6
    check-cast v0, Landroidx/compose/runtime/MutableState;

    check-cast v9, Landroidx/compose/runtime/MutableFloatState;

    move-object/from16 v2, p1

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    sub-float v2, v3, v2

    :cond_8
    invoke-interface {v9, v2}, Landroidx/compose/runtime/MutableFloatState;->w(F)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_7
    check-cast v0, Lcom/vuitton/android/designkit/ui/theme/atoms/DropdownItem;

    check-cast v9, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/runtime/Composer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v3, v1, 0x3

    if-eq v3, v6, :cond_9

    move v7, v8

    :cond_9
    and-int/2addr v1, v8

    invoke-interface {v2, v1, v7}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v10, v0, Lcom/vuitton/android/designkit/ui/theme/atoms/DropdownItem;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->g:Landroidx/compose/ui/text/TextStyle;

    iget-boolean v0, v0, Lcom/vuitton/android/designkit/ui/theme/atoms/DropdownItem;->b:Z

    if-eqz v0, :cond_a

    iget-wide v3, v9, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;->u:J

    :goto_6
    move-wide v12, v3

    goto :goto_7

    :cond_a
    iget-wide v3, v9, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;->v:J

    goto :goto_6

    :goto_7
    sget-object v0, Landroidx/compose/ui/text/style/TextOverflow;->a:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v23, Landroidx/compose/ui/text/style/TextOverflow;->c:I

    const/16 v31, 0x6180

    const v32, 0x1affa

    const/4 v11, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v30, 0x0

    move-object/from16 v28, v1

    move-object/from16 v29, v2

    invoke-static/range {v10 .. v32}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    goto :goto_8

    :cond_b
    move-object/from16 v29, v2

    invoke-interface/range {v29 .. v29}, Landroidx/compose/runtime/Composer;->D()V

    :goto_8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_8
    check-cast v0, Lkotlin/jvm/functions/Function1;

    check-cast v9, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/runtime/Composer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/vuitton/android/presentation/compose/components/LVAvatarKt;->a:F

    const v1, -0x262a2d03

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v10, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v1, "LVAvatar$lambda$2"

    invoke-direct {v10, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_c

    if-ne v3, v5, :cond_d

    :cond_c
    new-instance v3, Lt30;

    const/4 v1, 0x4

    invoke-direct {v3, v0, v9, v1}, Lt30;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_d
    move-object v14, v3

    check-cast v14, Lkotlin/jvm/functions/Function0;

    const/16 v15, 0x1f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->F()V

    return-object v0

    :pswitch_9
    check-cast v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/runtime/Composer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x7

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v1

    invoke-static {v0, v9, v2, v1}, Lcom/vuitton/android/presentation/screen/account/inbox/components/InboxErrorScreenKt;->a(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_a
    check-cast v0, Lkotlin/jvm/functions/Function1;

    check-cast v9, Lcom/vuitton/android/presentation/screen/immersivearticle/models/VideoCtaArticleSectionUiModel;

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/runtime/Composer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, -0x75b65597

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v10, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v1, "AssetBlock$lambda$0"

    invoke-direct {v10, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_e

    if-ne v3, v5, :cond_f

    :cond_e
    new-instance v3, Lw30;

    invoke-direct {v3, v0, v9, v7}, Lw30;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/immersivearticle/models/VideoCtaArticleSectionUiModel;I)V

    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_f
    move-object v14, v3

    check-cast v14, Lkotlin/jvm/functions/Function0;

    const/16 v15, 0xf

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Landroidx/compose/foundation/ClickableKt;->d(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v1, Lcom/vuitton/android/designkit/ui/theme/AlphaKt;->a:Landroidx/compose/ui/graphics/SolidColor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/designkit/ui/theme/AlphaKt;->b:Landroidx/compose/ui/graphics/SolidColor;

    invoke-static {v0, v1}, Lcom/vuitton/android/designkit/ui/theme/GradientKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Brush;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->F()V

    return-object v0

    :pswitch_b
    check-cast v0, Landroidx/compose/runtime/composer/RememberManager;

    check-cast v9, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    move-object/from16 v2, p1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    instance-of v3, v1, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    if-eqz v3, :cond_10

    check-cast v1, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/composer/RememberManager;->c(Landroidx/compose/runtime/ComposeNodeLifecycleCallback;)V

    goto :goto_9

    :cond_10
    instance-of v3, v1, Landroidx/compose/runtime/ReusableRememberObserverHolder;

    if-nez v3, :cond_12

    instance-of v3, v1, Landroidx/compose/runtime/RememberObserverHolder;

    if-eqz v3, :cond_11

    invoke-static {v9, v2, v1}, Landroidx/compose/runtime/GapComposerKt;->d(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;ILjava/lang/Object;)V

    check-cast v1, Landroidx/compose/runtime/RememberObserverHolder;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/composer/RememberManager;->g(Landroidx/compose/runtime/RememberObserverHolder;)V

    goto :goto_9

    :cond_11
    instance-of v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;

    if-eqz v0, :cond_12

    invoke-static {v9, v2, v1}, Landroidx/compose/runtime/GapComposerKt;->d(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;ILjava/lang/Object;)V

    move-object v0, v1

    check-cast v0, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->c()V

    :cond_12
    :goto_9
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_c
    check-cast v0, Landroidx/compose/runtime/MovableContent;

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/runtime/Composer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v3, v1, 0x3

    if-eq v3, v6, :cond_13

    move v3, v8

    goto :goto_a

    :cond_13
    move v3, v7

    :goto_a
    and-int/2addr v1, v8

    invoke-interface {v2, v1, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_14

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v0, v0, Landroidx/compose/runtime/MovableContent;->a:Lkotlin/jvm/functions/Function3;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v9, v2, v1}, Lkotlin/jvm/functions/Function3;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_14
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->D()V

    :goto_b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_d
    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModel;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/runtime/Composer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v1

    invoke-static {v0, v9, v2, v1}, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/ForgetPasswordComposableKt;->a(Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_e
    check-cast v0, Lcom/vuitton/android/presentation/screen/forceupdate/ForceUpdateActivity;

    check-cast v9, Lcom/vuitton/android/presentation/screen/forceupdate/ForceUpdateType;

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/runtime/Composer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v3, Lcom/vuitton/android/presentation/screen/forceupdate/ForceUpdateActivity;->q:Lcom/vuitton/android/presentation/screen/forceupdate/ForceUpdateActivity$Companion;

    and-int/lit8 v3, v1, 0x3

    if-eq v3, v6, :cond_15

    move v7, v8

    :cond_15
    and-int/2addr v1, v8

    invoke-interface {v2, v1, v7}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_16

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Lcom/vuitton/android/presentation/screen/forceupdate/a;

    invoke-direct {v1, v0, v9}, Lcom/vuitton/android/presentation/screen/forceupdate/a;-><init>(Lcom/vuitton/android/presentation/screen/forceupdate/ForceUpdateActivity;Lcom/vuitton/android/presentation/screen/forceupdate/ForceUpdateType;)V

    const v0, -0x7a58749b    # -1.575581E-35f

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const/16 v1, 0x30

    const/4 v3, 0x0

    invoke-static {v3, v0, v2, v1}, Lcom/vuitton/android/designkit/ui/theme/ThemeKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_c

    :cond_16
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->D()V

    :goto_c
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_f
    check-cast v0, Landroidx/compose/ui/Modifier;

    check-cast v9, Lcom/vuitton/android/presentation/model/storelocator/StoreOpeningHoursUiModel;

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/runtime/Composer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v1

    invoke-static {v0, v9, v2, v1}, Lcom/vuitton/android/presentation/screen/pdp/components/findinstore/FindInStoreRowKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/model/storelocator/StoreOpeningHoursUiModel;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_10
    check-cast v0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;

    check-cast v9, Lkotlin/jvm/functions/Function1;

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/runtime/Composer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v3, v1, 0x3

    if-eq v3, v6, :cond_17

    move v7, v8

    :cond_17
    and-int/2addr v1, v8

    invoke-interface {v2, v1, v7}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_1a

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v10, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v1, "FindInStoreRow$lambda$3$2$0$0$1"

    invoke-direct {v10, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v13, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v14, 0x0

    const/16 v15, 0xb

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v10 .. v15}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v10

    iget-object v11, v0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->d:Ljava/lang/String;

    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_18

    if-ne v3, v5, :cond_19

    :cond_18
    new-instance v3, Lxy;

    invoke-direct {v3, v9, v0, v8}, Lxy;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;I)V

    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_19
    move-object v15, v3

    check-cast v15, Lkotlin/jvm/functions/Function0;

    const/16 v17, 0x0

    const/16 v18, 0x1c

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v16, v2

    invoke-static/range {v10 .. v18}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVLinkKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    goto :goto_d

    :cond_1a
    move-object/from16 v16, v2

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/Composer;->D()V

    :goto_d
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_11
    check-cast v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModel;

    check-cast v9, Landroid/content/Context;

    move-object/from16 v2, p1

    check-cast v2, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v2}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModel;->I1(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v2}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModel;->y3(Ljava/lang/String;)Z

    move-result v4

    invoke-interface {v0, v2}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModel;->Q3(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->b(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    if-eqz v0, :cond_1b

    new-instance v2, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToPlpPage;

    invoke-direct {v2, v3, v1, v4}, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToPlpPage;-><init>(Ljava/util/List;Ljava/lang/String;Z)V

    invoke-static {v2, v0}, Lcom/vuitton/android/presentation/screen/feed/FeedDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/feed/FeedDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_12
    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity;

    check-cast v9, Lcom/vuitton/android/presentation/databinding/ActivityFaqCategoryListBinding;

    move-object/from16 v2, p1

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategory;

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;

    sget-object v3, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity;->s:Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity;->t:Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity$Companion;

    iget-object v4, v9, Lcom/vuitton/android/presentation/databinding/ActivityFaqCategoryListBinding;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v2, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategory;->d:Ljava/util/List;

    check-cast v5, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v5, v7}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqItem;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqItemUiModel;

    iget-object v9, v7, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqItem;->a:Ljava/lang/String;

    iget-object v7, v7, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqItem;->b:Ljava/lang/String;

    invoke-direct {v8, v9, v7}, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqItemUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_1c
    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategory;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v6, v2, v1}, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity$Companion;->b(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_13
    check-cast v0, Lcom/vuitton/android/presentation/screen/exclusivesales/models/ExclusiveSalesCategoryUiModel;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/runtime/Composer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v1

    invoke-static {v0, v9, v2, v1}, Lcom/vuitton/android/presentation/screen/exclusivesales/components/ExclusiveSalesCardKt;->a(Lcom/vuitton/android/presentation/screen/exclusivesales/models/ExclusiveSalesCategoryUiModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_14
    check-cast v0, Lcom/vuitton/android/presentation/screen/account/editavatar/models/EditAvatarViewState;

    move-object/from16 v18, v9

    check-cast v18, Lkotlin/jvm/functions/Function0;

    move-object/from16 v12, p1

    check-cast v12, Landroidx/compose/runtime/Composer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v6, :cond_1d

    move v7, v8

    :cond_1d
    and-int/2addr v1, v8

    invoke-interface {v12, v1, v7}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_1f

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/models/EditAvatarViewState$Success;

    if-eqz v1, :cond_1e

    const v1, -0x2bc9fd18

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->b(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    move-result-object v1

    iget-object v14, v1, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v2, "EditAvatarScreen$lambda$1"

    invoke-direct {v1, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-static {v1, v4, v2, v5, v3}, Landroidx/compose/foundation/layout/PaddingKt;->l(Landroidx/compose/ui/Modifier;FFFF)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const-string v2, "avatarLibrary_avatarSave_button"

    invoke-static {v1, v2}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v13

    const v1, 0x7f14110d

    invoke-static {v12, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v17

    check-cast v0, Lcom/vuitton/android/presentation/screen/account/editavatar/models/EditAvatarViewState$Success;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/models/EditAvatarViewState$Success;->d:Z

    const/4 v10, 0x0

    const/16 v11, 0x178

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    move/from16 v20, v0

    invoke-static/range {v10 .. v21}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonKt;->b(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZZ)V

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_f

    :cond_1e
    const v0, -0x2bbd8494

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_f

    :cond_1f
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->D()V

    :goto_f
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_15
    check-cast v0, Ljava/lang/String;

    check-cast v9, Ljava/util/List;

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/runtime/Composer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v1

    invoke-static {v0, v9, v2, v1}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/formsections/DistantRepairProductComponentKt;->c(Ljava/lang/String;Ljava/util/List;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_16
    check-cast v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;

    check-cast v9, Ljava/lang/String;

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/runtime/Composer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v1

    invoke-static {v0, v9, v2, v1}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/formsections/DistantRepairInitiateComponentKt;->e(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_17
    check-cast v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/runtime/Composer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v3, v1, 0x3

    if-eq v3, v6, :cond_20

    move v3, v8

    goto :goto_10

    :cond_20
    move v3, v7

    :goto_10
    and-int/2addr v1, v8

    invoke-interface {v2, v1, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_24

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/FormStateUIModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/FormStateUIModel;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;

    sget-object v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;->CONFIRM:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;

    if-ne v1, v3, :cond_21

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->g:Z

    if-nez v0, :cond_21

    move v10, v8

    goto :goto_11

    :cond_21
    move v10, v7

    :goto_11
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x12

    if-ne v0, v5, :cond_22

    new-instance v0, Lx20;

    invoke-direct {v0, v1}, Lx20;-><init>(I)V

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_22
    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {v0}, Landroidx/compose/animation/EnterExitTransitionKt;->r(Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/EnterTransition;

    move-result-object v12

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_23

    new-instance v0, Lx20;

    invoke-direct {v0, v1}, Lx20;-><init>(I)V

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_23
    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {v8, v0}, Landroidx/compose/animation/EnterExitTransitionKt;->v(ILkotlin/jvm/functions/Function1;)Landroidx/compose/animation/ExitTransition;

    move-result-object v13

    new-instance v0, La3;

    const/16 v1, 0xb

    invoke-direct {v0, v9, v1}, La3;-><init>(Lkotlin/jvm/functions/Function0;I)V

    const v1, -0x379efd1a

    invoke-static {v1, v0, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v15

    const v17, 0x30d80

    const/16 v18, 0x12

    const/4 v11, 0x0

    const/4 v14, 0x0

    move-object/from16 v16, v2

    invoke-static/range {v10 .. v18}, Landroidx/compose/animation/AnimatedVisibilityKt;->e(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    goto :goto_12

    :cond_24
    move-object/from16 v16, v2

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/Composer;->D()V

    :goto_12
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_18
    check-cast v0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModel;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/runtime/Composer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v1

    invoke-static {v0, v9, v2, v1}, Lcom/vuitton/android/presentation/screen/options/dispatch/components/DispatchComposableKt;->a(Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_19
    check-cast v0, Ljava/util/List;

    check-cast v9, Ljava/util/Collection;

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/runtime/Composer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v1

    invoke-static {v0, v9, v2, v1}, Landroidx/navigation/compose/DialogHostKt;->b(Ljava/util/List;Ljava/util/Collection;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1a
    check-cast v0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;

    check-cast v9, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/runtime/Composer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v1

    invoke-static {v0, v9, v2, v1}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->a(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1b
    check-cast v0, Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride;

    check-cast v9, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/runtime/Composer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v1

    invoke-virtual {v0, v9, v2, v1}, Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride;->a(Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1c
    check-cast v0, Landroidx/compose/material3/DefaultBasicAlertDialogOverride;

    check-cast v9, Landroidx/compose/material3/BasicAlertDialogOverrideScope;

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/runtime/Composer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v1

    invoke-virtual {v0, v9, v2, v1}, Landroidx/compose/material3/DefaultBasicAlertDialogOverride;->a(Landroidx/compose/material3/BasicAlertDialogOverrideScope;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    nop

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
