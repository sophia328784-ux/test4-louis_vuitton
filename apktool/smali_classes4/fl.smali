.class public final synthetic Lfl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lfl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(IB)V
    .locals 0

    .line 7
    iput p1, p0, Lfl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    iget v0, v0, Lfl;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x6

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/components/ComposableSingletons$CancellationReasonsErrorScreenKt;->a:Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/components/ComposableSingletons$CancellationReasonsErrorScreenKt;

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v4, :cond_0

    move v5, v6

    :cond_0
    and-int/2addr v1, v6

    invoke-interface {v0, v1, v5}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const/16 v20, 0x0

    const/16 v21, 0xff7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "topBar"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0xc00

    move-object/from16 v18, v0

    invoke-static/range {v7 .. v21}, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVStandardTopBarKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarNavIcon;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function4;Landroidx/compose/foundation/layout/WindowInsets;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;III)V

    goto :goto_0

    :cond_1
    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroidx/compose/runtime/Composer;->D()V

    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/String;

    move-object/from16 v1, p2

    check-cast v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;

    sget-object v2, Lcom/vuitton/android/presentation/screen/booking/form/components/ComposableSingletons$BookingReservationScreenKt;->a:Lcom/vuitton/android/presentation/screen/booking/form/components/ComposableSingletons$BookingReservationScreenKt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/String;

    move-object/from16 v1, p2

    check-cast v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;

    sget-object v2, Lcom/vuitton/android/presentation/screen/booking/form/components/ComposableSingletons$BookingReservationScreenKt;->a:Lcom/vuitton/android/presentation/screen/booking/form/components/ComposableSingletons$BookingReservationScreenKt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_2
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/String;

    move-object/from16 v1, p2

    check-cast v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;

    sget-object v2, Lcom/vuitton/android/presentation/screen/booking/form/components/ComposableSingletons$BookingReservationScreenKt;->a:Lcom/vuitton/android/presentation/screen/booking/form/components/ComposableSingletons$BookingReservationScreenKt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_3
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/String;

    move-object/from16 v1, p2

    check-cast v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;

    sget-object v2, Lcom/vuitton/android/presentation/screen/booking/form/components/ComposableSingletons$BookingReservationScreenKt;->a:Lcom/vuitton/android/presentation/screen/booking/form/components/ComposableSingletons$BookingReservationScreenKt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_4
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/String;

    move-object/from16 v1, p2

    check-cast v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;

    sget-object v2, Lcom/vuitton/android/presentation/screen/booking/form/components/ComposableSingletons$BookingReservationScreenKt;->a:Lcom/vuitton/android/presentation/screen/booking/form/components/ComposableSingletons$BookingReservationScreenKt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_5
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/String;

    move-object/from16 v1, p2

    check-cast v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;

    sget-object v2, Lcom/vuitton/android/presentation/screen/booking/form/components/ComposableSingletons$BookingReservationScreenKt;->a:Lcom/vuitton/android/presentation/screen/booking/form/components/ComposableSingletons$BookingReservationScreenKt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_6
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/String;

    move-object/from16 v1, p2

    check-cast v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;

    sget-object v2, Lcom/vuitton/android/presentation/screen/booking/form/components/ComposableSingletons$BookingReservationScreenKt;->a:Lcom/vuitton/android/presentation/screen/booking/form/components/ComposableSingletons$BookingReservationScreenKt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_7
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/String;

    move-object/from16 v1, p2

    check-cast v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;

    sget-object v2, Lcom/vuitton/android/presentation/screen/booking/form/components/ComposableSingletons$BookingReservationScreenKt;->a:Lcom/vuitton/android/presentation/screen/booking/form/components/ComposableSingletons$BookingReservationScreenKt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_8
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/vuitton/android/presentation/screen/booking/form/components/module/ComposableSingletons$BookingModuleGridKt;->a:Lcom/vuitton/android/presentation/screen/booking/form/components/module/ComposableSingletons$BookingModuleGridKt;

    and-int/lit8 v3, v2, 0x3

    if-eq v3, v4, :cond_2

    move v3, v6

    goto :goto_1

    :cond_2
    move v3, v5

    :goto_1
    and-int/2addr v2, v6

    invoke-interface {v0, v2, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v1, v0, v5, v6}, Lcom/vuitton/android/presentation/screen/booking/form/components/module/BookingModuleGridKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    goto :goto_2

    :cond_3
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->D()V

    :goto_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_9
    move v0, v5

    move-object/from16 v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/booking/form/components/module/ComposableSingletons$BookingModuleGridKt;->a:Lcom/vuitton/android/presentation/screen/booking/form/components/module/ComposableSingletons$BookingModuleGridKt;

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v4, :cond_4

    move v0, v6

    :cond_4
    and-int/2addr v1, v6

    invoke-interface {v5, v1, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const-string v0, "12:00"

    const-string v1, "01:00"

    const-string v2, "10:00"

    const-string v3, "11:00"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v0, "lambda_1879517912$lambda$0"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v4, Lcom/vuitton/android/presentation/screen/booking/form/components/module/ComposableSingletons$BookingModuleGridKt;->c:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/16 v6, 0xc36

    const/4 v7, 0x4

    const/4 v3, 0x0

    invoke-static/range {v1 .. v7}, Lcom/vuitton/android/presentation/screen/booking/form/components/module/BookingModuleGridKt;->a(Ljava/util/List;Landroidx/compose/ui/Modifier;ILkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    goto :goto_3

    :cond_5
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->D()V

    :goto_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_a
    move v0, v5

    move-object/from16 v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/booking/confirmation/components/ComposableSingletons$BookingConfirmationScreenKt;->a:Lcom/vuitton/android/presentation/screen/booking/confirmation/components/ComposableSingletons$BookingConfirmationScreenKt;

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v4, :cond_6

    move v2, v6

    goto :goto_4

    :cond_6
    move v2, v0

    :goto_4
    and-int/2addr v1, v6

    invoke-interface {v8, v1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationViewState$Success;

    sget-object v2, Lcom/vuitton/android/presentation/screen/booking/list/models/MocksKt;->a:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationViewState$Success;-><init>(Ljava/util/List;)V

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_7

    new-instance v2, Lnn;

    invoke-direct {v2, v0}, Lnn;-><init>(I)V

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_7
    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_8

    new-instance v0, Lnn;

    invoke-direct {v0, v6}, Lnn;-><init>(I)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function0;

    const/16 v9, 0x1b0

    const/16 v10, 0x78

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v10}, Lcom/vuitton/android/presentation/screen/booking/confirmation/components/BookingConfirmationScreenKt;->d(Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    goto :goto_5

    :cond_9
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->D()V

    :goto_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_b
    move v0, v5

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/runtime/Composer;

    move-object/from16 v5, p2

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v7, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/ComposableSingletons$AudioPlayerControlsKt;->a:Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/ComposableSingletons$AudioPlayerControlsKt;

    and-int/lit8 v7, v5, 0x3

    if-eq v7, v4, :cond_a

    move v4, v6

    goto :goto_6

    :cond_a
    move v4, v0

    :goto_6
    and-int/2addr v5, v6

    invoke-interface {v2, v5, v4}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_13

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v4, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v5, "lambda_1706645478$lambda$0"

    invoke-direct {v4, v5}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideMockKt;->b:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;

    iget-wide v6, v5, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->e:J

    sget-object v8, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v4, v6, v7, v8}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-static {v4, v6}, Landroidx/compose/foundation/layout/PaddingKt;->i(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v6, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v6, v0}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v0

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v7

    invoke-static {v2, v4}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v9

    if-eqz v9, :cond_12

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_7

    :cond_b
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->o()V

    :goto_7
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v7, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v0}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v4, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->f:Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

    invoke-static {v0, v2}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideExtKt;->a(Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;

    move-result-object v0

    sget-object v9, Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;->SPEED_1X:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_c

    new-instance v1, Lcm;

    const/16 v4, 0x19

    invoke-direct {v1, v4}, Lcm;-><init>(I)V

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_c
    move-object v10, v1

    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_d

    new-instance v1, Lkm;

    const/16 v4, 0xb

    invoke-direct {v1, v4}, Lkm;-><init>(I)V

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_d
    move-object v11, v1

    check-cast v11, Lkotlin/jvm/functions/Function1;

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_e

    new-instance v1, Lcm;

    const/16 v4, 0x1a

    invoke-direct {v1, v4}, Lcm;-><init>(I)V

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_e
    move-object v12, v1

    check-cast v12, Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_f

    new-instance v1, Lcm;

    const/16 v4, 0x1b

    invoke-direct {v1, v4}, Lcm;-><init>(I)V

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_f
    move-object v13, v1

    check-cast v13, Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_10

    new-instance v1, Lcm;

    const/16 v4, 0x1c

    invoke-direct {v1, v4}, Lcm;-><init>(I)V

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_10
    move-object v14, v1

    check-cast v14, Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_11

    new-instance v1, Lcm;

    const/16 v3, 0x1d

    invoke-direct {v1, v3}, Lcm;-><init>(I)V

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_11
    move-object v15, v1

    check-cast v15, Lkotlin/jvm/functions/Function0;

    const/16 v18, 0x1b6

    const/16 v19, 0x21

    const/4 v1, 0x0

    const-wide/32 v3, 0xafc8

    const-wide/32 v5, 0x2bf20

    const/4 v7, 0x1

    const/4 v8, 0x0

    const v17, 0x36d86d80

    move-object/from16 v16, v2

    move-object v2, v0

    invoke-static/range {v1 .. v19}, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/AudioPlayerControlsKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;JJZZLcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;III)V

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/Composer;->r()V

    goto :goto_8

    :cond_12
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v1

    :cond_13
    move-object/from16 v16, v2

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/Composer;->D()V

    :goto_8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_c
    move v0, v5

    move-object/from16 v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/audioguide/components/ComposableSingletons$AudioGuideLanguageSelectorKt;->a:Lcom/vuitton/android/presentation/screen/audioguide/components/ComposableSingletons$AudioGuideLanguageSelectorKt;

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v4, :cond_14

    move v5, v6

    goto :goto_9

    :cond_14
    move v5, v0

    :goto_9
    and-int/lit8 v0, v1, 0x1

    invoke-interface {v7, v0, v5}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AvailableLanguageUiModel;

    const-string v1, "EN"

    const-string v2, "English"

    invoke-direct {v0, v1, v2}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AvailableLanguageUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;->DARK:Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

    new-instance v5, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AvailableLanguageUiModel;

    invoke-direct {v5, v1, v2}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AvailableLanguageUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AvailableLanguageUiModel;

    const-string v2, "FR"

    const-string v6, "French"

    invoke-direct {v1, v2, v6}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AvailableLanguageUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v5, v1}, [Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AvailableLanguageUiModel;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_15

    new-instance v2, Lkm;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lkm;-><init>(I)V

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_15
    move-object v5, v2

    check-cast v5, Lkotlin/jvm/functions/Function1;

    const/16 v8, 0x6030

    const/16 v9, 0x21

    move-object v2, v4

    move-object v4, v1

    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v3, v0

    invoke-static/range {v1 .. v9}, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideLanguageSelectorKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AvailableLanguageUiModel;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    goto :goto_a

    :cond_16
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->D()V

    :goto_a
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_d
    move v0, v5

    move v1, v6

    move-object/from16 v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/vuitton/android/presentation/screen/audioguide/components/ComposableSingletons$AudioGuideLanguageSelectorKt;->a:Lcom/vuitton/android/presentation/screen/audioguide/components/ComposableSingletons$AudioGuideLanguageSelectorKt;

    and-int/lit8 v3, v2, 0x3

    if-eq v3, v4, :cond_17

    move v3, v1

    goto :goto_b

    :cond_17
    move v3, v0

    :goto_b
    and-int/2addr v1, v2

    invoke-interface {v6, v1, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_18

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v2, "lambda_408842164$lambda$0"

    invoke-direct {v1, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->n:F

    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->q0:I

    invoke-static {v1, v6, v0}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v1

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v4, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->u:J

    const/16 v7, 0x38

    const/4 v8, 0x0

    const/4 v2, 0x0

    invoke-static/range {v1 .. v8}, Landroidx/compose/material3/IconKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    goto :goto_c

    :cond_18
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->D()V

    :goto_c
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_e
    move v0, v5

    move v1, v6

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/runtime/Composer;

    move-object/from16 v5, p2

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v6, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/sections/ComposableSingletons$AssessmentSendComponentKt;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/sections/ComposableSingletons$AssessmentSendComponentKt;

    and-int/lit8 v6, v5, 0x3

    if-eq v6, v4, :cond_19

    move v0, v1

    :cond_19
    and-int/2addr v1, v5

    invoke-interface {v2, v1, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;->EDIT:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_1a

    new-instance v1, Lkm;

    const/16 v4, 0x8

    invoke-direct {v1, v4}, Lkm;-><init>(I)V

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1a
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_1b

    new-instance v4, Lkm;

    const/16 v3, 0x9

    invoke-direct {v4, v3}, Lkm;-><init>(I)V

    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1b
    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/16 v3, 0x1b6

    invoke-static {v0, v1, v4, v2, v3}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/sections/AssessmentSendComponentKt;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_d

    :cond_1c
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->D()V

    :goto_d
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_f
    move v0, v5

    move v1, v6

    move-object/from16 v3, p1

    check-cast v3, Landroidx/compose/runtime/Composer;

    move-object/from16 v5, p2

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v6, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/ComposableSingletons$AssessmentFormComponentKt;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/ComposableSingletons$AssessmentFormComponentKt;

    and-int/lit8 v6, v5, 0x3

    if-eq v6, v4, :cond_1d

    move v4, v1

    goto :goto_e

    :cond_1d
    move v4, v0

    :goto_e
    and-int/2addr v1, v5

    invoke-interface {v3, v1, v4}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_1e

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v0, v3, v2}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/AssessmentFormComponentKt;->c(ZLandroidx/compose/runtime/Composer;I)V

    goto :goto_f

    :cond_1e
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->D()V

    :goto_f
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_10
    move v0, v5

    move v1, v6

    move-object/from16 v3, p1

    check-cast v3, Landroidx/compose/runtime/Composer;

    move-object/from16 v5, p2

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v6, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/ComposableSingletons$AssessmentFormComponentKt;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/ComposableSingletons$AssessmentFormComponentKt;

    and-int/lit8 v6, v5, 0x3

    if-eq v6, v4, :cond_1f

    move v0, v1

    :cond_1f
    and-int/lit8 v4, v5, 0x1

    invoke-interface {v3, v4, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v1, v3, v2}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/AssessmentFormComponentKt;->c(ZLandroidx/compose/runtime/Composer;I)V

    goto :goto_10

    :cond_20
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->D()V

    :goto_10
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_11
    move v0, v5

    move v1, v6

    move-object/from16 v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/ComposableSingletons$AssessmentDisclaimerKt;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/ComposableSingletons$AssessmentDisclaimerKt;

    and-int/lit8 v3, v2, 0x3

    if-eq v3, v4, :cond_21

    move v5, v1

    goto :goto_11

    :cond_21
    move v5, v0

    :goto_11
    and-int/lit8 v0, v2, 0x1

    invoke-interface {v7, v0, v5}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_22

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v4, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->b:J

    sget-object v6, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/ComposableSingletons$AssessmentDisclaimerKt;->c:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/16 v8, 0x6030

    const/4 v9, 0x5

    const/4 v1, 0x0

    const-string v2, "This is a disclaimer message."

    const/4 v3, 0x0

    invoke-static/range {v1 .. v9}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/AssessmentDisclaimerKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;JLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    goto :goto_12

    :cond_22
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->D()V

    :goto_12
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_12
    move v0, v5

    move v1, v6

    move-object/from16 v3, p1

    check-cast v3, Landroidx/compose/runtime/Composer;

    move-object/from16 v5, p2

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v6, Lcom/vuitton/android/presentation/screen/account/addressbook/components/ComposableSingletons$AddressLoadingScreenKt;->a:Lcom/vuitton/android/presentation/screen/account/addressbook/components/ComposableSingletons$AddressLoadingScreenKt;

    and-int/lit8 v6, v5, 0x3

    if-eq v6, v4, :cond_23

    move v0, v1

    :cond_23
    and-int/2addr v1, v5

    invoke-interface {v3, v1, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_24

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Lcom/vuitton/android/presentation/screen/account/addressbook/components/ComposableSingletons$AddressLoadingScreenKt;->c:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static {v0, v3, v2}, Lcom/vuitton/android/presentation/screen/account/addressbook/components/AddressLoadingScreenKt;->a(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_13

    :cond_24
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->D()V

    :goto_13
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_13
    move v0, v5

    move v1, v6

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v5, Lcom/vuitton/android/presentation/screen/account/addressbook/components/ComposableSingletons$AddressLoadingScreenKt;->a:Lcom/vuitton/android/presentation/screen/account/addressbook/components/ComposableSingletons$AddressLoadingScreenKt;

    and-int/lit8 v5, v3, 0x3

    if-eq v5, v4, :cond_25

    move v5, v1

    goto :goto_14

    :cond_25
    move v5, v0

    :goto_14
    and-int/lit8 v0, v3, 0x1

    invoke-interface {v2, v0, v5}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_26

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_15

    :cond_26
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->D()V

    :goto_15
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_14
    move v0, v5

    move v1, v6

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v5, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/ComposableSingletons$AICompanionChatMessagesKt;->a:Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/ComposableSingletons$AICompanionChatMessagesKt;

    and-int/lit8 v5, v3, 0x3

    if-eq v5, v4, :cond_27

    move v5, v1

    goto :goto_16

    :cond_27
    move v5, v0

    :goto_16
    and-int/lit8 v0, v3, 0x1

    invoke-interface {v2, v0, v5}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_28

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    new-instance v1, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;

    sget-object v3, Lcom/vuitton/android/presentation/utils/MockUtilsKt;->a:Lcom/vuitton/android/presentation/utils/MockUtilsKt$noOpTracker$1;

    invoke-direct {v1, v3}, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;-><init>(Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    sget-object v1, Lcom/vuitton/android/presentation/tracking/GA4TrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    new-instance v4, Lcom/vuitton/android/presentation/tracking/GA4Tracker;

    invoke-direct {v4, v3}, Lcom/vuitton/android/presentation/tracking/GA4Tracker;-><init>(Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V

    invoke-virtual {v1, v4}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v1

    filled-new-array {v0, v1}, [Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/ComposableSingletons$AICompanionChatMessagesKt;->i:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/16 v3, 0x38

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/runtime/CompositionLocalKt;->b([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_17

    :cond_28
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->D()V

    :goto_17
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_15
    move v0, v5

    move v1, v6

    move-object/from16 v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/ComposableSingletons$AICompanionChatMessagesKt;->a:Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/ComposableSingletons$AICompanionChatMessagesKt;

    and-int/lit8 v3, v2, 0x3

    if-eq v3, v4, :cond_29

    move v3, v1

    goto :goto_18

    :cond_29
    move v3, v0

    :goto_18
    and-int/2addr v1, v2

    invoke-interface {v6, v1, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_2a

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->w:I

    invoke-static {v1, v6, v0}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v1

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v4, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    const/16 v7, 0x38

    const/4 v8, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v8}, Landroidx/compose/material3/IconKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    goto :goto_19

    :cond_2a
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->D()V

    :goto_19
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_16
    move v0, v5

    move v1, v6

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v5, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/ComposableSingletons$AICompanionChatMessagesKt;->a:Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/ComposableSingletons$AICompanionChatMessagesKt;

    and-int/lit8 v5, v3, 0x3

    if-eq v5, v4, :cond_2b

    move v5, v1

    goto :goto_1a

    :cond_2b
    move v5, v0

    :goto_1a
    and-int/lit8 v0, v3, 0x1

    invoke-interface {v2, v0, v5}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_2c

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const v0, 0x7f140a6e

    invoke-static {v2, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->h:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    const/16 v22, 0x0

    const v23, 0x1fffa

    move-object/from16 v20, v2

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    move-object/from16 v19, v0

    invoke-static/range {v1 .. v23}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    goto :goto_1b

    :cond_2c
    move-object/from16 v20, v2

    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_17
    move v0, v5

    move v1, v6

    move-object/from16 v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/ComposableSingletons$AICompanionChatMessagesKt;->a:Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/ComposableSingletons$AICompanionChatMessagesKt;

    and-int/lit8 v3, v2, 0x3

    if-eq v3, v4, :cond_2d

    move v3, v1

    goto :goto_1c

    :cond_2d
    move v3, v0

    :goto_1c
    and-int/2addr v1, v2

    invoke-interface {v6, v1, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_2e

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->P1:I

    invoke-static {v1, v6, v0}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v1

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v4, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    const/16 v7, 0x38

    const/4 v8, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v8}, Landroidx/compose/material3/IconKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    goto :goto_1d

    :cond_2e
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1d
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_18
    move v0, v5

    move v1, v6

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v5, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/ComposableSingletons$AICompanionChatMessagesKt;->a:Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/ComposableSingletons$AICompanionChatMessagesKt;

    and-int/lit8 v5, v3, 0x3

    if-eq v5, v4, :cond_2f

    move v5, v1

    goto :goto_1e

    :cond_2f
    move v5, v0

    :goto_1e
    and-int/lit8 v0, v3, 0x1

    invoke-interface {v2, v0, v5}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_30

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const v0, 0x7f140617

    invoke-static {v2, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->h:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    const/16 v22, 0x0

    const v23, 0x1fffa

    move-object/from16 v20, v2

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    move-object/from16 v19, v0

    invoke-static/range {v1 .. v23}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    goto :goto_1f

    :cond_30
    move-object/from16 v20, v2

    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1f
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_19
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/String;

    move-object/from16 v1, p2

    check-cast v1, Lkotlin/coroutines/CoroutineContext$Element;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_31

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    :cond_31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_20
    return-object v0

    :pswitch_1a
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, -0x1cdb0ee0

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v1, "CertificateDiamondItem$lambda$1$0"

    invoke-direct {v2, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v4, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v6, 0x0

    const/16 v7, 0xd

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->F()V

    return-object v1

    :pswitch_1b
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x6ca027aa

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v1, "CertificateRubyItem$lambda$1$0"

    invoke-direct {v2, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v4, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v6, 0x0

    const/16 v7, 0xd

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->F()V

    return-object v1

    :pswitch_1c
    move v1, v6

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/vuitton/android/presentation/screen/certificates/components/add/CertificateConfirmationScreenKt;->b(Landroidx/compose/runtime/Composer;I)V

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
