.class public final synthetic Lo3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lkotlin/jvm/functions/Function0;

.field public final synthetic d:F

.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationViewState;Lkotlin/jvm/functions/Function0;FLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lo3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo3;->g:Ljava/lang/Object;

    iput-object p2, p0, Lo3;->c:Lkotlin/jvm/functions/Function0;

    iput p3, p0, Lo3;->d:F

    iput-object p4, p0, Lo3;->e:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lo3;->f:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lo3;->h:Ljava/lang/Object;

    iput-object p7, p0, Lo3;->i:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;FLandroid/content/Context;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;)V
    .locals 1

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lo3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo3;->e:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lo3;->g:Ljava/lang/Object;

    iput-object p3, p0, Lo3;->f:Lkotlin/jvm/functions/Function1;

    iput p4, p0, Lo3;->d:F

    iput-object p5, p0, Lo3;->h:Ljava/lang/Object;

    iput-object p6, p0, Lo3;->c:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Lo3;->i:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

    move-object/from16 v0, p0

    iget v1, v0, Lo3;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    iget-object v4, v0, Lo3;->i:Ljava/lang/Object;

    iget-object v5, v0, Lo3;->h:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lo3;->g:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationViewState;

    move-object v10, v5

    check-cast v10, Lkotlin/jvm/functions/Function2;

    move-object v11, v4

    check-cast v11, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/layout/PaddingValues;

    move-object/from16 v12, p2

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v4, p3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget v5, Lcom/vuitton/android/presentation/screen/booking/confirmation/components/BookingConfirmationScreenKt;->a:F

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v5, v4, 0x6

    if-nez v5, :cond_1

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x4

    :cond_0
    or-int/2addr v4, v2

    :cond_1
    and-int/lit8 v2, v4, 0x13

    const/16 v5, 0x12

    const/4 v6, 0x1

    if-eq v2, v5, :cond_2

    move v3, v6

    :cond_2
    and-int/lit8 v2, v4, 0x1

    invoke-interface {v12, v2, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    instance-of v2, v7, Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationViewState$Error;

    if-eqz v2, :cond_3

    const v2, 0x68c172b9

    const-string v3, "BookingConfirmationScreen$lambda$6"

    invoke-static {v2, v12, v3}, Lpq0;->j(ILandroidx/compose/runtime/Composer;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v2

    sget-object v3, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v2, v3}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const v2, 0x7f140967

    invoke-static {v12, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v14

    const v2, 0x7f1404b4

    invoke-static {v12, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x0

    const/16 v21, 0x7a

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-object v0, v0, Lo3;->c:Lkotlin/jvm/functions/Function0;

    move-object/from16 v18, v0

    move-object/from16 v19, v12

    move-object v12, v1

    invoke-static/range {v12 .. v21}, Lcom/vuitton/android/designkit/ui/theme/templates/LVEmptyViewKt;->e(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SnackbarHostState;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v12, v19

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_0

    :cond_3
    const v1, 0x68c93e78

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    const/4 v13, 0x0

    iget v6, v0, Lo3;->d:F

    iget-object v8, v0, Lo3;->e:Lkotlin/jvm/functions/Function1;

    iget-object v9, v0, Lo3;->f:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v6 .. v13}, Lcom/vuitton/android/presentation/screen/booking/confirmation/components/BookingConfirmationScreenKt;->a(FLcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationViewState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_0

    :cond_4
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->D()V

    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    check-cast v5, Landroid/content/Context;

    check-cast v4, Landroidx/compose/runtime/MutableState;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedVisibilityScope;

    move-object/from16 v15, p2

    check-cast v15, Landroidx/compose/runtime/Composer;

    move-object/from16 v6, p3

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt;->a:Landroidx/compose/animation/ExitTransition;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v12, 0x0

    if-eqz v1, :cond_5

    const/high16 v1, 0x3f800000    # 1.0f

    move v6, v1

    goto :goto_1

    :cond_5
    move v6, v12

    :goto_1
    const/16 v1, 0x12c

    const/4 v13, 0x0

    const/4 v7, 0x6

    invoke-static {v1, v3, v13, v7}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v7

    const/16 v10, 0x30

    const/16 v11, 0x1c

    const/4 v8, 0x0

    move-object v9, v15

    invoke-static/range {v6 .. v11}, Landroidx/compose/animation/core/AnimateAsStateKt;->b(FLandroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v1

    iget-object v3, v0, Lo3;->e:Lkotlin/jvm/functions/Function1;

    iget-object v6, v0, Lo3;->g:Ljava/lang/Object;

    invoke-interface {v3, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Ljava/lang/String;

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    iget-object v4, v0, Lo3;->f:Lkotlin/jvm/functions/Function1;

    invoke-interface {v4, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    if-eqz v4, :cond_6

    iget-object v13, v4, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;->b:Ljava/lang/String;

    :cond_6
    if-nez v13, :cond_7

    const-string v13, ""

    :cond_7
    move-object v10, v13

    move-object v13, v9

    sget-object v9, Lcom/vuitton/android/presentation/compose/components/TagFilterType;->ACTIVE_DELETABLE:Lcom/vuitton/android/presentation/compose/components/TagFilterType;

    new-instance v4, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v7, "AnimatedActiveFilterList_PfoAEA0$lambda$2$4"

    invoke-direct {v4, v7}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    iget v7, v0, Lo3;->d:F

    invoke-static {v4, v7, v12, v2}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v16

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v17

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v12, v1}, Landroidx/compose/ui/graphics/TransformOriginKt;->a(FF)J

    move-result-wide v23

    const/16 v26, 0x0

    const v27, 0x7fbfe

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    invoke-static/range {v16 .. v27}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->c(Landroidx/compose/ui/Modifier;FFFFFFJLandroidx/compose/ui/graphics/Shape;II)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v4, v7

    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v4, v7

    iget-object v14, v0, Lo3;->c:Lkotlin/jvm/functions/Function0;

    invoke-interface {v15, v14}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v4

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_8

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v4, v0, :cond_9

    :cond_8
    move-object v4, v5

    move-object v5, v3

    new-instance v3, Lk3;

    const/4 v8, 0x0

    move-object v7, v14

    invoke-direct/range {v3 .. v8}, Lk3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v4, v3

    :cond_9
    check-cast v4, Lkotlin/jvm/functions/Function1;

    const-string v0, "QAF_ActiveFilterItem_button"

    invoke-static {v1, v0, v4, v2}, Lcom/vuitton/android/presentation/extensions/ModifierExtKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/ui/Modifier;

    move-result-object v6

    const v16, 0xc00d80

    const/16 v17, 0x40

    const-string v8, "QAF_ActiveFilterNameItem_text"

    const/4 v12, 0x0

    move-object v7, v13

    const/4 v13, 0x1

    invoke-static/range {v6 .. v17}, Lcom/vuitton/android/presentation/compose/components/LVTagFilterKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/compose/components/TagFilterType;Ljava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
