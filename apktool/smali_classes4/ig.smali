.class public final synthetic Lig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState;

.field public final synthetic c:Lkotlin/jvm/functions/Function0;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Landroidx/compose/foundation/lazy/LazyListState;

.field public final synthetic f:Z

.field public final synthetic g:Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;

.field public final synthetic h:Lkotlin/jvm/functions/Function1;

.field public final synthetic i:Lkotlin/jvm/functions/Function2;

.field public final synthetic j:Lkotlin/jvm/functions/Function2;

.field public final synthetic k:Lkotlin/jvm/functions/Function1;

.field public final synthetic l:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

.field public final synthetic m:Lkotlin/jvm/functions/Function0;

.field public final synthetic n:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;

.field public final synthetic o:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Landroidx/compose/foundation/lazy/LazyListState;ZLcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lig;->b:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState;

    iput-object p2, p0, Lig;->c:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lig;->d:Ljava/lang/String;

    iput-object p4, p0, Lig;->e:Landroidx/compose/foundation/lazy/LazyListState;

    iput-boolean p5, p0, Lig;->f:Z

    iput-object p6, p0, Lig;->g:Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;

    iput-object p7, p0, Lig;->h:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Lig;->i:Lkotlin/jvm/functions/Function2;

    iput-object p9, p0, Lig;->j:Lkotlin/jvm/functions/Function2;

    iput-object p10, p0, Lig;->k:Lkotlin/jvm/functions/Function1;

    iput-object p11, p0, Lig;->l:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    iput-object p12, p0, Lig;->m:Lkotlin/jvm/functions/Function0;

    iput-object p13, p0, Lig;->n:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;

    iput-object p14, p0, Lig;->o:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    check-cast v3, Landroidx/compose/foundation/layout/PaddingValues;

    move-object/from16 v14, p2

    check-cast v14, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v2, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationScreenKt;->b:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v2, v1, 0x6

    if-nez v2, :cond_1

    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    :cond_1
    and-int/lit8 v2, v1, 0x13

    const/16 v4, 0x12

    if-eq v2, v4, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    and-int/lit8 v4, v1, 0x1

    invoke-interface {v14, v4, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_c

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v5, v0, Lig;->b:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState;

    instance-of v2, v5, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Error;

    const-string v4, "BookingReservationScreen$lambda$3$4"

    if-eqz v2, :cond_3

    const v1, -0x3835b93b

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v4}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v2, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v1, v2}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const v1, 0x7f140967

    invoke-static {v14, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v6

    const v1, 0x7f1404b4

    invoke-static {v14, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    const/16 v13, 0x7a

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v10, v0, Lig;->c:Lkotlin/jvm/functions/Function0;

    move-object v11, v14

    invoke-static/range {v4 .. v13}, Lcom/vuitton/android/designkit/ui/theme/templates/LVEmptyViewKt;->e(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SnackbarHostState;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->F()V

    goto/16 :goto_4

    :cond_3
    const v2, -0x382cdb54

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    instance-of v2, v5, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Loading;

    if-nez v2, :cond_5

    instance-of v6, v5, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    const v0, 0x40409e16

    invoke-static {v14, v0}, Lo60;->v(Landroidx/compose/runtime/Composer;I)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_5
    :goto_2
    const v6, -0x382a84e2

    invoke-interface {v14, v6}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v2, :cond_8

    const v2, -0x382b16ec

    invoke-static {v2, v14, v4}, Lpq0;->j(ILandroidx/compose/runtime/Composer;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v2

    iget-object v4, v0, Lig;->d:Ljava/lang/String;

    invoke-interface {v14, v4}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_6

    if-ne v8, v6, :cond_7

    :cond_6
    new-instance v8, La4;

    const/16 v7, 0xf

    invoke-direct {v8, v4, v7}, La4;-><init>(Ljava/lang/String;I)V

    invoke-interface {v14, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_7
    check-cast v8, Lkotlin/jvm/functions/Function1;

    const/4 v4, 0x3

    const/4 v7, 0x0

    invoke-static {v2, v7, v8, v4}, Lcom/vuitton/android/presentation/extensions/ModifierExtKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_3

    :cond_8
    const v2, -0x3826d099

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->F()V

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v2, v4}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    :goto_3
    sget-object v4, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v2, v4}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v4}, Landroidx/compose/foundation/layout/Arrangement;->f(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v12

    iget-boolean v4, v0, Lig;->f:Z

    invoke-interface {v14, v4}, Landroidx/compose/runtime/Composer;->b(Z)Z

    move-result v7

    invoke-interface {v14, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v7, v8

    move v8, v7

    iget-object v7, v0, Lig;->g:Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    invoke-interface {v14, v9}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v9

    or-int/2addr v8, v9

    move v9, v8

    iget-object v8, v0, Lig;->h:Lkotlin/jvm/functions/Function1;

    invoke-interface {v14, v8}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v9, v10

    move v10, v9

    iget-object v9, v0, Lig;->i:Lkotlin/jvm/functions/Function2;

    invoke-interface {v14, v9}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v10, v11

    move v11, v10

    iget-object v10, v0, Lig;->j:Lkotlin/jvm/functions/Function2;

    invoke-interface {v14, v10}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v11, v13

    move v13, v11

    iget-object v11, v0, Lig;->k:Lkotlin/jvm/functions/Function1;

    invoke-interface {v14, v11}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v15

    or-int/2addr v13, v15

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v13, :cond_9

    if-ne v15, v6, :cond_a

    :cond_9
    move v6, v4

    new-instance v4, Lkg;

    invoke-direct/range {v4 .. v11}, Lkg;-><init>(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState;ZLcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v14, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v15, v4

    :cond_a
    move-object v9, v15

    check-cast v9, Lkotlin/jvm/functions/Function1;

    shl-int/lit8 v1, v1, 0x6

    and-int/lit16 v11, v1, 0x380

    move-object v4, v12

    const/16 v12, 0x1e8

    move-object v1, v2

    iget-object v2, v0, Lig;->e:Landroidx/compose/foundation/lazy/LazyListState;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v10, v14

    invoke-static/range {v1 .. v12}, Landroidx/compose/foundation/lazy/LazyDslKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->F()V

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->F()V

    :goto_4
    iget-object v7, v0, Lig;->l:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    invoke-virtual {v7}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->a()Z

    move-result v1

    if-eqz v1, :cond_b

    const v1, -0x37d6d003

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    const v1, 0x7f140319

    invoke-static {v14, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v14}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-result-object v8

    new-instance v1, Lf1;

    const/16 v2, 0xc

    iget-object v3, v0, Lig;->n:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;

    iget-object v4, v0, Lig;->o:Lkotlin/jvm/functions/Function1;

    invoke-direct {v1, v3, v4, v2}, Lf1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const v2, -0x567ac015

    invoke-static {v2, v1, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v13

    sget v1, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/lit8 v1, v1, 0x9

    const/high16 v2, 0x6000000

    or-int v15, v1, v2

    const/16 v16, 0xe1

    const/4 v4, 0x0

    iget-object v6, v0, Lig;->m:Lkotlin/jvm/functions/Function0;

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v4 .. v16}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/foundation/layout/WindowInsets;JZLandroidx/compose/material3/ModalBottomSheetProperties;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_5

    :cond_b
    const v0, -0x37cde3f1

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_5

    :cond_c
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->D()V

    :goto_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
