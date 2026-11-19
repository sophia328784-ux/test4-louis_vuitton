.class public final synthetic Lcom/vuitton/android/presentation/screen/options/components/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/options/OptionsViewModel;

.field public final synthetic d:Landroidx/navigation/NavController;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;

.field public final synthetic f:Lkotlin/jvm/functions/Function0;

.field public final synthetic g:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

.field public final synthetic h:Lkotlin/jvm/functions/Function0;

.field public final synthetic i:Lkotlin/jvm/functions/Function0;

.field public final synthetic j:Lkotlin/jvm/functions/Function0;

.field public final synthetic k:Lkotlin/jvm/functions/Function0;

.field public final synthetic l:Lkotlin/jvm/functions/Function0;

.field public final synthetic m:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/options/OptionsViewModel;Landroidx/navigation/NavController;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/options/components/a;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/options/components/a;->c:Lcom/vuitton/android/presentation/screen/options/OptionsViewModel;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/options/components/a;->d:Landroidx/navigation/NavController;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/options/components/a;->e:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/options/components/a;->f:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/options/components/a;->g:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/options/components/a;->h:Lkotlin/jvm/functions/Function0;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/options/components/a;->i:Lkotlin/jvm/functions/Function0;

    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/options/components/a;->j:Lkotlin/jvm/functions/Function0;

    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/options/components/a;->k:Lkotlin/jvm/functions/Function0;

    iput-object p11, p0, Lcom/vuitton/android/presentation/screen/options/components/a;->l:Lkotlin/jvm/functions/Function0;

    iput-object p12, p0, Lcom/vuitton/android/presentation/screen/options/components/a;->m:Landroidx/compose/runtime/State;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/layout/PaddingValues;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v4, v3, 0x6

    const/4 v6, 0x2

    if-nez v4, :cond_1

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    or-int/2addr v3, v4

    :cond_1
    and-int/lit8 v4, v3, 0x13

    const/16 v7, 0x12

    if-eq v4, v7, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    and-int/lit8 v8, v3, 0x1

    invoke-interface {v2, v8, v4}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_1b

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/options/components/a;->m:Landroidx/compose/runtime/State;

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/options/models/OptionsViewState;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/options/components/a;->b:Landroid/content/Context;

    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/options/components/a;->c:Lcom/vuitton/android/presentation/screen/options/OptionsViewModel;

    invoke-interface {v2, v12}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v9, v10

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v9, :cond_3

    if-ne v10, v11, :cond_4

    :cond_3
    new-instance v10, Lrh0;

    invoke-direct {v10, v8, v12, v6}, Lrh0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v2, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    move-object v9, v10

    check-cast v9, Lkotlin/jvm/functions/Function0;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/options/components/a;->d:Landroidx/navigation/NavController;

    invoke-interface {v2, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v13

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v13, :cond_5

    if-ne v14, v11, :cond_6

    :cond_5
    new-instance v14, Lbg0;

    invoke-direct {v14, v10, v6}, Lbg0;-><init>(Landroidx/navigation/NavController;I)V

    invoke-interface {v2, v14}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    move-object v6, v14

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-interface {v2, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v13

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v13, :cond_7

    if-ne v14, v11, :cond_8

    :cond_7
    new-instance v14, Lbg0;

    const/4 v13, 0x3

    invoke-direct {v14, v10, v13}, Lbg0;-><init>(Landroidx/navigation/NavController;I)V

    invoke-interface {v2, v14}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    move-object/from16 v17, v14

    check-cast v17, Lkotlin/jvm/functions/Function0;

    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v13

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v13, :cond_9

    if-ne v14, v11, :cond_a

    :cond_9
    new-instance v14, Lje;

    const/16 v13, 0x11

    invoke-direct {v14, v8, v13}, Lje;-><init>(Landroid/content/Context;I)V

    invoke-interface {v2, v14}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    move-object/from16 v18, v14

    check-cast v18, Lkotlin/jvm/functions/Function0;

    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v13

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v13, :cond_b

    if-ne v14, v11, :cond_c

    :cond_b
    new-instance v14, Lje;

    invoke-direct {v14, v8, v7}, Lje;-><init>(Landroid/content/Context;I)V

    invoke-interface {v2, v14}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_c
    move-object v7, v14

    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-interface {v2, v12}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v13

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v13, :cond_d

    if-ne v14, v11, :cond_e

    :cond_d
    move-object v13, v10

    goto :goto_2

    :cond_e
    move-object/from16 v19, v1

    move-object v5, v10

    move-object v1, v11

    goto :goto_3

    :goto_2
    new-instance v10, Lcom/vuitton/android/presentation/screen/options/components/OptionsComposableKt$OptionsComposable$6$6$1;

    const-string v15, "openContact()V"

    const/16 v16, 0x0

    move-object v14, v11

    const/4 v11, 0x0

    move-object/from16 v19, v13

    const-class v13, Lcom/vuitton/android/presentation/screen/options/OptionsViewModel;

    move-object/from16 v20, v14

    const-string v14, "openContact"

    move-object/from16 v5, v19

    move-object/from16 v19, v1

    move-object/from16 v1, v20

    invoke-direct/range {v10 .. v16}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v2, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v14, v10

    :goto_3
    check-cast v14, Lkotlin/reflect/KFunction;

    move-object/from16 v20, v14

    check-cast v20, Lkotlin/jvm/functions/Function0;

    invoke-interface {v2, v12}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v10

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v10, :cond_f

    if-ne v11, v1, :cond_10

    :cond_f
    new-instance v10, Lcom/vuitton/android/presentation/screen/options/components/OptionsComposableKt$OptionsComposable$6$7$1;

    const-string v15, "openConsumerRights()V"

    const/16 v16, 0x0

    const/4 v11, 0x0

    const-class v13, Lcom/vuitton/android/presentation/screen/options/OptionsViewModel;

    const-string v14, "openConsumerRights"

    invoke-direct/range {v10 .. v16}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v2, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v11, v10

    :cond_10
    check-cast v11, Lkotlin/reflect/KFunction;

    move-object/from16 v21, v11

    check-cast v21, Lkotlin/jvm/functions/Function0;

    invoke-interface {v2, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v10

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v10, :cond_11

    if-ne v11, v1, :cond_12

    :cond_11
    new-instance v11, Lbg0;

    const/4 v10, 0x4

    invoke-direct {v11, v5, v10}, Lbg0;-><init>(Landroidx/navigation/NavController;I)V

    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_12
    move-object/from16 v22, v11

    check-cast v22, Lkotlin/jvm/functions/Function0;

    invoke-interface {v2, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v10

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v10, :cond_13

    if-ne v11, v1, :cond_14

    :cond_13
    new-instance v11, Lbg0;

    const/4 v10, 0x5

    invoke-direct {v11, v5, v10}, Lbg0;-><init>(Landroidx/navigation/NavController;I)V

    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_14
    move-object v5, v11

    check-cast v5, Lkotlin/jvm/functions/Function0;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/options/components/a;->g:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    invoke-interface {v2, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v11

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v13

    if-nez v11, :cond_15

    if-ne v13, v1, :cond_16

    :cond_15
    new-instance v23, Lcom/vuitton/android/presentation/screen/options/components/OptionsComposableKt$OptionsComposable$6$10$1;

    const-string v28, "show()V"

    const/16 v29, 0x0

    const/16 v24, 0x0

    const-class v26, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    const-string v27, "show"

    move-object/from16 v25, v10

    invoke-direct/range {v23 .. v29}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v13, v23

    invoke-interface {v2, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_16
    check-cast v13, Lkotlin/reflect/KFunction;

    move-object/from16 v23, v13

    check-cast v23, Lkotlin/jvm/functions/Function0;

    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v10

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v10, :cond_17

    if-ne v11, v1, :cond_18

    :cond_17
    new-instance v11, Lje;

    const/16 v10, 0x13

    invoke-direct {v11, v8, v10}, Lje;-><init>(Landroid/content/Context;I)V

    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_18
    move-object v8, v11

    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-interface {v2, v12}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v10

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v10, :cond_19

    if-ne v11, v1, :cond_1a

    :cond_19
    new-instance v10, Lcom/vuitton/android/presentation/screen/options/components/OptionsComposableKt$OptionsComposable$6$12$1;

    const-string v15, "toggleUiTestMode()V"

    const/16 v16, 0x0

    const/4 v11, 0x0

    const-class v13, Lcom/vuitton/android/presentation/screen/options/OptionsViewModel;

    const-string v14, "toggleUiTestMode"

    invoke-direct/range {v10 .. v16}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v2, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v11, v10

    :cond_1a
    check-cast v11, Lkotlin/reflect/KFunction;

    check-cast v11, Lkotlin/jvm/functions/Function0;

    and-int/lit8 v1, v3, 0xe

    move-object v3, v6

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/options/components/a;->e:Lkotlin/jvm/functions/Function0;

    move-object/from16 v14, v20

    move-object/from16 v20, v11

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/options/components/a;->f:Lkotlin/jvm/functions/Function0;

    move-object/from16 v10, v22

    move/from16 v22, v1

    move-object v1, v4

    move-object/from16 v4, v17

    move-object/from16 v17, v8

    move-object v8, v14

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/options/components/a;->h:Lkotlin/jvm/functions/Function0;

    iget-object v15, v0, Lcom/vuitton/android/presentation/screen/options/components/a;->i:Lkotlin/jvm/functions/Function0;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/options/components/a;->j:Lkotlin/jvm/functions/Function0;

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/options/components/a;->k:Lkotlin/jvm/functions/Function0;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/options/components/a;->l:Lkotlin/jvm/functions/Function0;

    move-object/from16 v16, v19

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v16, v21

    move-object/from16 v21, v2

    move-object v2, v9

    move-object/from16 v9, v16

    move-object/from16 v16, v12

    move-object v12, v5

    move-object/from16 v5, v18

    move-object/from16 v18, v13

    move-object/from16 v13, v23

    invoke-static/range {v0 .. v22}, Lcom/vuitton/android/presentation/screen/options/components/OptionsScreenKt;->a(Landroidx/compose/foundation/layout/PaddingValues;Lcom/vuitton/android/presentation/screen/options/models/OptionsViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_4

    :cond_1b
    move-object/from16 v21, v2

    invoke-interface/range {v21 .. v21}, Landroidx/compose/runtime/Composer;->D()V

    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
