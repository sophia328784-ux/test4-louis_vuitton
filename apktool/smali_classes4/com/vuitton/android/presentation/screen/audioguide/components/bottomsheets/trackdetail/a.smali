.class public final synthetic Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;

.field public final synthetic d:J

.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:Landroidx/compose/runtime/MutableState;

.field public final synthetic g:Landroidx/compose/runtime/MutableLongState;

.field public final synthetic h:Landroidx/compose/runtime/MutableState;

.field public final synthetic i:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;

.field public final synthetic j:Lkotlin/jvm/functions/Function0;

.field public final synthetic k:Lkotlin/jvm/functions/Function0;

.field public final synthetic l:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic m:Lkotlin/jvm/functions/Function0;

.field public final synthetic n:Lkotlin/jvm/functions/Function0;

.field public final synthetic o:Lkotlin/jvm/functions/Function0;

.field public final synthetic p:Landroidx/compose/runtime/MutableState;

.field public final synthetic q:Z

.field public final synthetic r:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;JLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableLongState;Landroidx/compose/runtime/MutableState;Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/a;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/a;->c:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;

    iput-wide p3, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/a;->d:J

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/a;->e:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/a;->f:Landroidx/compose/runtime/MutableState;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/a;->g:Landroidx/compose/runtime/MutableLongState;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/a;->h:Landroidx/compose/runtime/MutableState;

    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/a;->i:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;

    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/a;->j:Lkotlin/jvm/functions/Function0;

    iput-object p11, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/a;->k:Lkotlin/jvm/functions/Function0;

    iput-object p12, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/a;->l:Lkotlinx/coroutines/CoroutineScope;

    iput-object p13, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/a;->m:Lkotlin/jvm/functions/Function0;

    iput-object p14, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/a;->n:Lkotlin/jvm/functions/Function0;

    iput-object p15, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/a;->o:Lkotlin/jvm/functions/Function0;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/a;->p:Landroidx/compose/runtime/MutableState;

    move/from16 p1, p17

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/a;->q:Z

    move/from16 p1, p18

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/a;->r:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/a;->b:Landroidx/compose/ui/Modifier;

    const-string v13, "AudioPlayerControls$lambda$22"

    if-eqz v2, :cond_0

    invoke-static {v2, v13}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    :cond_0
    and-int/lit8 v3, v1, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x1

    const/4 v4, 0x0

    if-eq v3, v14, :cond_1

    move v3, v15

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    and-int/2addr v1, v15

    invoke-interface {v7, v1, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_11

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v5, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v3, v5, v7, v4}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v3

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v7, v2}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v9

    if-eqz v9, :cond_10

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v7, v8}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_2
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->o()V

    :goto_1
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v3, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v6, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v5, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v7, v5}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v2, v11, v13, v1}, Ln00;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/a;->f:Landroidx/compose/runtime/MutableState;

    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TooltipContent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/a;->g:Landroidx/compose/runtime/MutableLongState;

    invoke-interface {v1}, Landroidx/compose/runtime/LongState;->b()J

    move-result-wide v17

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v10, v15, :cond_3

    new-instance v10, Ltb;

    invoke-direct {v10, v1, v4}, Ltb;-><init>(Landroidx/compose/runtime/MutableLongState;I)V

    invoke-interface {v7, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    check-cast v10, Lkotlin/jvm/functions/Function1;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/a;->e:Lkotlin/jvm/functions/Function1;

    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v20

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v21, v2

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/a;->h:Landroidx/compose/runtime/MutableState;

    if-nez v20, :cond_4

    if-ne v14, v15, :cond_5

    :cond_4
    new-instance v14, Lr0;

    invoke-direct {v14, v4, v2, v12, v1}, Lr0;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableLongState;)V

    invoke-interface {v7, v14}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5
    check-cast v14, Lkotlin/jvm/functions/Function0;

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_6

    new-instance v1, Ld0;

    const/16 v4, 0xa

    invoke-direct {v1, v4, v2}, Ld0;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v1, Lkotlin/jvm/functions/Function0;

    move-object v2, v12

    const v12, 0xc30006

    move-object v4, v2

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/a;->c:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;

    move-object/from16 v20, v6

    move-object/from16 v22, v11

    move-object v11, v7

    iget-wide v6, v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/a;->d:J

    move-object/from16 p1, v16

    move-object/from16 v16, v3

    move-object/from16 v3, p1

    move-object/from16 v19, v4

    move-object/from16 v24, v5

    move-object/from16 p1, v15

    move-wide/from16 v4, v17

    move-object/from16 v23, v20

    move-object/from16 v25, v22

    const/high16 v0, 0x3f800000    # 1.0f

    move-object v15, v9

    move-object v9, v14

    move-object v14, v8

    move-object v8, v10

    move-object v10, v1

    move-object/from16 v1, v21

    invoke-static/range {v1 .. v12}, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/AudioPlayerControlsKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TooltipContent;JJLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    move-object v10, v2

    move-object v7, v11

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v13}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v7, v1}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v13}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/foundation/layout/Arrangement;->g:Landroidx/compose/foundation/layout/Arrangement$SpaceBetween$1;

    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    const/16 v3, 0x36

    invoke-static {v1, v2, v7, v3}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v1

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v3

    invoke-static {v7, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v7, v14}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    :cond_7
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->o()V

    :goto_2
    invoke-static {v7, v1, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v1, v16

    invoke-static {v7, v3, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v1, v23

    move-object/from16 v3, v24

    invoke-static {v2, v7, v1, v7, v3}, Lcj;->s(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v1, v25

    invoke-static {v7, v0, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/a;->i:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;

    invoke-virtual {v1}, Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;->a()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f140358

    invoke-static {v3, v2, v7}, Landroidx/compose/ui/res/StringResources_androidKt;->b(I[Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v3, v13}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->e:F

    neg-float v4, v4

    sget-object v5, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/4 v11, 0x0

    const/4 v5, 0x2

    invoke-static {v3, v4, v11, v5}, Landroidx/compose/foundation/layout/OffsetKt;->c(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const-string v4, "audioGuide_trackDetailSpeedToggle_button"

    invoke-static {v3, v4}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v12, p1

    if-nez v4, :cond_8

    if-ne v6, v12, :cond_9

    :cond_8
    new-instance v6, La4;

    invoke-direct {v6, v2, v5}, La4;-><init>(Ljava/lang/String;I)V

    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_9
    check-cast v6, Lkotlin/jvm/functions/Function1;

    const/4 v2, 0x3

    const/4 v4, 0x0

    invoke-static {v3, v4, v6, v2}, Lcom/vuitton/android/presentation/extensions/ModifierExtKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/ui/Modifier;

    move-result-object v2

    new-instance v3, Lf0;

    const/16 v4, 0xb

    invoke-direct {v3, v1, v10, v4}, Lf0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const v1, 0x18673661

    invoke-static {v1, v3, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v6

    const/high16 v8, 0x180000

    const/16 v9, 0x3c

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/a;->j:Lkotlin/jvm/functions/Function0;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v9}, Landroidx/compose/material3/IconButtonKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    const-string v1, "audioGuide_trackDetailGoBack15_button"

    invoke-static {v13, v1}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/a;->k:Lkotlin/jvm/functions/Function0;

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/a;->l:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v3, v5

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/a;->p:Landroidx/compose/runtime/MutableState;

    if-nez v3, :cond_b

    if-ne v5, v12, :cond_a

    goto :goto_3

    :cond_a
    move-object v14, v4

    move-object/from16 v20, v6

    goto :goto_4

    :cond_b
    :goto_3
    new-instance v16, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/b;

    const/16 v21, 0x1

    move-object/from16 v17, v1

    move-object/from16 v18, v4

    move-object/from16 v20, v6

    invoke-direct/range {v16 .. v21}, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/b;-><init>(Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;I)V

    move-object/from16 v5, v16

    move-object/from16 v14, v18

    invoke-interface {v7, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :goto_4
    move-object v1, v5

    check-cast v1, Lkotlin/jvm/functions/Function0;

    new-instance v3, Llb;

    const/4 v15, 0x0

    invoke-direct {v3, v10, v15}, Llb;-><init>(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;I)V

    const v4, 0x5861490a

    invoke-static {v4, v3, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v6

    const/high16 v8, 0x180000

    const/16 v9, 0x3c

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v9}, Landroidx/compose/material3/IconButtonKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v13}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->i:F

    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->s(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v7, v1}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v13}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const-string v2, "audioGuide_trackDetailPlayPause_button"

    invoke-static {v1, v2}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v12, :cond_c

    new-instance v2, Lu5;

    const/16 v3, 0xe

    invoke-direct {v2, v3}, Lu5;-><init>(I)V

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_c
    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v15, v2}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    new-instance v1, Lmb;

    iget-boolean v3, v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/a;->q:Z

    invoke-direct {v1, v3, v10, v15}, Lmb;-><init>(ZLcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;I)V

    const v3, -0x1c14ec97

    invoke-static {v3, v1, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v6

    const/high16 v8, 0x180000

    const/16 v9, 0x3c

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/a;->m:Lkotlin/jvm/functions/Function0;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v9}, Landroidx/compose/material3/IconButtonKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v13}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->i:F

    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->s(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v7, v1}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v13}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const-string v2, "audioGuide_trackDetailGoForward15_button"

    invoke-static {v1, v2}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/a;->n:Lkotlin/jvm/functions/Function0;

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v7, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_d

    if-ne v4, v12, :cond_e

    :cond_d
    new-instance v16, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/b;

    const/16 v21, 0x0

    move-object/from16 v17, v1

    move-object/from16 v18, v14

    invoke-direct/range {v16 .. v21}, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/b;-><init>(Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;I)V

    move-object/from16 v4, v16

    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_e
    move-object v1, v4

    check-cast v1, Lkotlin/jvm/functions/Function0;

    new-instance v3, Llb;

    const/4 v4, 0x1

    invoke-direct {v3, v10, v4}, Llb;-><init>(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;I)V

    const v4, 0x6f74ddc8

    invoke-static {v4, v3, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v6

    const/high16 v8, 0x180000

    const/16 v9, 0x3c

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v9}, Landroidx/compose/material3/IconButtonKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v13}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->e:F

    const/4 v5, 0x2

    invoke-static {v1, v2, v11, v5}, Landroidx/compose/foundation/layout/OffsetKt;->c(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const-string v2, "audioGuide_trackDetailListeningQueue_button"

    invoke-static {v1, v2}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    new-instance v2, Lmb;

    iget-boolean v3, v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/a;->r:Z

    const/4 v4, 0x1

    invoke-direct {v2, v3, v10, v4}, Lmb;-><init>(ZLcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;I)V

    const v3, -0x50157d9

    invoke-static {v3, v2, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v5

    move-object v11, v7

    const/high16 v7, 0x180000

    const/16 v8, 0x3c

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/a;->o:Lkotlin/jvm/functions/Function0;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, v11

    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/IconButtonKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    move-object v7, v6

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->r()V

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->r()V

    goto :goto_5

    :cond_f
    const/4 v4, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v4

    :cond_10
    const/4 v4, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v4

    :cond_11
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->D()V

    :goto_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
