.class public final synthetic Lzn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lzn;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/ComposableSingletons$OsaLocationFormScreenKt;->a:Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/ComposableSingletons$OsaLocationFormScreenKt;

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    and-int/2addr v1, v5

    invoke-interface {v0, v1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_12

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lcom/vuitton/android/presentation/screen/osa/models/OsaFormMockKt;->a:Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;->a(Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;)Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-static {v4, v3, v0, v2}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v2

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v5, v6, :cond_1

    new-instance v5, Leo;

    const/4 v7, 0x4

    invoke-direct {v5, v7}, Leo;-><init>(I)V

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v6, :cond_2

    new-instance v7, Lco;

    const/16 v8, 0x13

    invoke-direct {v7, v8}, Lco;-><init>(I)V

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v6, :cond_3

    new-instance v8, Lco;

    const/16 v9, 0x14

    invoke-direct {v8, v9}, Lco;-><init>(I)V

    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    check-cast v8, Lkotlin/jvm/functions/Function0;

    new-instance v9, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;

    sget-object v12, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    new-instance v13, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

    const/16 v18, 0xc

    const/16 v19, 0x0

    const-string v14, "1"

    const-string v15, "Appointment reason 1"

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v13 .. v19}, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v16, 0x22

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v17}, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;-><init>(ZZLjava/util/List;Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v10, v7

    new-instance v7, Landroidx/compose/material3/SnackbarHostState;

    invoke-direct {v7}, Landroidx/compose/material3/SnackbarHostState;-><init>()V

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v6, :cond_4

    new-instance v11, Lco;

    const/16 v12, 0x15

    invoke-direct {v11, v12}, Lco;-><init>(I)V

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v6, :cond_5

    new-instance v12, Lco;

    const/16 v13, 0x16

    invoke-direct {v12, v13}, Lco;-><init>(I)V

    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5
    check-cast v12, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v6, :cond_6

    new-instance v13, Lzn;

    const/16 v14, 0x1d

    invoke-direct {v13, v14}, Lzn;-><init>(I)V

    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v13, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v6, :cond_7

    new-instance v14, Lfo;

    invoke-direct {v14, v4}, Lfo;-><init>(I)V

    invoke-interface {v0, v14}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_7
    check-cast v14, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v6, :cond_8

    new-instance v4, Lco;

    const/16 v15, 0x17

    invoke-direct {v4, v15}, Lco;-><init>(I)V

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v6, :cond_9

    new-instance v15, Leo;

    invoke-direct {v15, v3}, Leo;-><init>(I)V

    invoke-interface {v0, v15}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_9
    check-cast v15, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v6, :cond_a

    new-instance v3, Lco;

    move-object/from16 p0, v1

    const/16 v1, 0x18

    invoke-direct {v3, v1}, Lco;-><init>(I)V

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    goto :goto_1

    :cond_a
    move-object/from16 p0, v1

    :goto_1
    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v6, :cond_b

    new-instance v1, Lco;

    move-object/from16 p1, v2

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Lco;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    goto :goto_2

    :cond_b
    move-object/from16 p1, v2

    :goto_2
    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v6, :cond_c

    new-instance v2, Lco;

    move-object/from16 p2, v1

    const/16 v1, 0xf

    invoke-direct {v2, v1}, Lco;-><init>(I)V

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    goto :goto_3

    :cond_c
    move-object/from16 p2, v1

    :goto_3
    move-object/from16 v16, v2

    check-cast v16, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v6, :cond_d

    new-instance v1, Leo;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Leo;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_d
    move-object/from16 v17, v1

    check-cast v17, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v6, :cond_e

    new-instance v1, Lco;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lco;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_e
    move-object/from16 v18, v1

    check-cast v18, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v6, :cond_f

    new-instance v1, Lco;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Lco;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_f
    move-object/from16 v19, v1

    check-cast v19, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v6, :cond_10

    new-instance v1, Lco;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Lco;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_10
    move-object/from16 v20, v1

    check-cast v20, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v6, :cond_11

    new-instance v1, Leo;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Leo;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_11
    move-object/from16 v21, v1

    check-cast v21, Lkotlin/jvm/functions/Function1;

    sget v1, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/lit8 v1, v1, 0x3

    const v2, 0x36036d80

    or-int v23, v1, v2

    const v24, 0x36db6db6

    const/16 v25, 0x36

    const/4 v2, 0x0

    move-object v1, v14

    move-object v14, v3

    move-object v3, v5

    move-object v5, v8

    move-object v8, v11

    move-object v11, v1

    move-object/from16 v1, p1

    move-object/from16 v22, v0

    move-object v6, v9

    move-object v9, v12

    move-object/from16 v0, p0

    move-object v12, v4

    move-object v4, v10

    move-object v10, v13

    move-object v13, v15

    move-object/from16 v15, p2

    invoke-static/range {v0 .. v25}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormScreenKt;->c(Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormBottomSheetScreen;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V

    goto :goto_4

    :cond_12
    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/Composer;->D()V

    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method private final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/ComposableSingletons$OsaLocationFormScreenKt;->a:Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/ComposableSingletons$OsaLocationFormScreenKt;

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v2, v5, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    and-int/2addr v1, v4

    invoke-interface {v0, v1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_12

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lcom/vuitton/android/presentation/screen/osa/models/OsaFormMockKt;->a:Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;->a(Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;)Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x7

    invoke-static {v3, v4, v0, v2}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v2

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x8

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, v6, :cond_1

    new-instance v3, Leo;

    invoke-direct {v3, v4}, Leo;-><init>(I)V

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v6, :cond_2

    new-instance v7, Lco;

    invoke-direct {v7, v4}, Lco;-><init>(I)V

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    move-object v4, v7

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x9

    if-ne v7, v6, :cond_3

    new-instance v7, Lco;

    invoke-direct {v7, v8}, Lco;-><init>(I)V

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    check-cast v7, Lkotlin/jvm/functions/Function0;

    new-instance v9, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;

    new-instance v10, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

    const/16 v15, 0xc

    const/16 v16, 0x0

    const-string v11, "1"

    const-string v12, "Appointment reason 1"

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v10 .. v16}, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v11, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

    const/16 v16, 0xc

    const/16 v17, 0x0

    const-string v12, "2"

    const-string v13, "Appointment reason 2"

    const/4 v15, 0x0

    invoke-direct/range {v11 .. v17}, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    filled-new-array {v10, v11}, [Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

    move-result-object v10

    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    new-instance v13, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

    const/16 v18, 0xc

    const/16 v19, 0x0

    const-string v14, "1"

    const-string v15, "Appointment reason 1"

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v19}, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v16, 0x22

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v17}, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;-><init>(ZZLjava/util/List;Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v10, v7

    new-instance v7, Landroidx/compose/material3/SnackbarHostState;

    invoke-direct {v7}, Landroidx/compose/material3/SnackbarHostState;-><init>()V

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v6, :cond_4

    new-instance v11, Lco;

    const/16 v12, 0xa

    invoke-direct {v11, v12}, Lco;-><init>(I)V

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v6, :cond_5

    new-instance v12, Lco;

    const/16 v13, 0xb

    invoke-direct {v12, v13}, Lco;-><init>(I)V

    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5
    check-cast v12, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v13

    const/16 v14, 0x19

    if-ne v13, v6, :cond_6

    new-instance v13, Lzn;

    invoke-direct {v13, v14}, Lzn;-><init>(I)V

    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v13, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v15

    const/16 v5, 0x1a

    if-ne v15, v6, :cond_7

    new-instance v15, Lzn;

    invoke-direct {v15, v5}, Lzn;-><init>(I)V

    invoke-interface {v0, v15}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_7
    check-cast v15, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v6, :cond_8

    new-instance v8, Lco;

    const/16 v5, 0xc

    invoke-direct {v8, v5}, Lco;-><init>(I)V

    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    const/4 v14, 0x3

    if-ne v5, v6, :cond_9

    new-instance v5, Leo;

    invoke-direct {v5, v14}, Leo;-><init>(I)V

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_9
    check-cast v5, Lkotlin/jvm/functions/Function1;

    move/from16 v17, v14

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v6, :cond_a

    new-instance v14, Lco;

    move-object/from16 v18, v1

    const/16 v1, 0xd

    invoke-direct {v14, v1}, Lco;-><init>(I)V

    invoke-interface {v0, v14}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    goto :goto_1

    :cond_a
    move-object/from16 v18, v1

    :goto_1
    check-cast v14, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v6, :cond_b

    new-instance v1, Lco;

    move-object/from16 v19, v2

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Lco;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    goto :goto_2

    :cond_b
    move-object/from16 v19, v2

    :goto_2
    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v6, :cond_c

    new-instance v2, Lco;

    move-object/from16 v16, v1

    const/16 v1, 0x1a

    invoke-direct {v2, v1}, Lco;-><init>(I)V

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    goto :goto_3

    :cond_c
    move-object/from16 v16, v1

    :goto_3
    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v6, :cond_d

    new-instance v1, Leo;

    move-object/from16 p2, v2

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Leo;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    goto :goto_4

    :cond_d
    move-object/from16 p2, v2

    :goto_4
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v6, :cond_e

    new-instance v2, Lco;

    move-object/from16 p1, v1

    const/16 v1, 0x1b

    invoke-direct {v2, v1}, Lco;-><init>(I)V

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    goto :goto_5

    :cond_e
    move-object/from16 p1, v1

    :goto_5
    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v6, :cond_f

    new-instance v1, Lco;

    move-object/from16 v20, v2

    const/16 v2, 0x1c

    invoke-direct {v1, v2}, Lco;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    goto :goto_6

    :cond_f
    move-object/from16 v20, v2

    :goto_6
    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v6, :cond_10

    new-instance v2, Lco;

    move-object/from16 v21, v1

    const/16 v1, 0x1d

    invoke-direct {v2, v1}, Lco;-><init>(I)V

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    goto :goto_7

    :cond_10
    move-object/from16 v21, v1

    :goto_7
    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v6, :cond_11

    new-instance v1, Leo;

    const/4 v6, 0x2

    invoke-direct {v1, v6}, Leo;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_11
    check-cast v1, Lkotlin/jvm/functions/Function1;

    sget v6, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/lit8 v6, v6, 0x3

    const v17, 0x36036d80

    or-int v23, v6, v17

    const v24, 0x36db6db6

    const/16 v25, 0x36

    move-object/from16 v22, v0

    move-object/from16 v0, v18

    move-object/from16 v18, v20

    move-object/from16 v20, v2

    const/4 v2, 0x0

    move-object/from16 v6, v21

    move-object/from16 v21, v1

    move-object/from16 v1, v19

    move-object/from16 v19, v6

    move-object v6, v13

    move-object v13, v5

    move-object v5, v10

    move-object v10, v6

    move-object/from16 v17, p1

    move-object v6, v9

    move-object v9, v12

    move-object v12, v8

    move-object v8, v11

    move-object v11, v15

    move-object/from16 v15, v16

    move-object/from16 v16, p2

    invoke-static/range {v0 .. v25}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormScreenKt;->c(Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormBottomSheetScreen;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V

    goto :goto_8

    :cond_12
    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/Composer;->D()V

    :goto_8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 41

    move-object/from16 v0, p0

    iget v1, v0, Lzn;->b:I

    const/16 v2, 0x9

    const/16 v3, 0x8

    const/4 v4, 0x4

    const/4 v5, 0x7

    const/16 v14, 0x1b

    const/4 v15, 0x6

    const/4 v6, 0x5

    const/16 v7, 0x16

    const/16 v8, 0x36

    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x1

    packed-switch v1, :pswitch_data_0

    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/String;

    move-object/from16 v1, p2

    check-cast v1, Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;

    sget-object v2, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/ComposableSingletons$OsaLocationFormScreenKt;->a:Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/ComposableSingletons$OsaLocationFormScreenKt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    invoke-direct/range {p0 .. p2}, Lzn;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-direct/range {p0 .. p2}, Lzn;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_2
    move-object/from16 v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    move-object/from16 v1, p2

    check-cast v1, Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;

    sget-object v2, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/ComposableSingletons$OsaLocationFormScreenKt;->a:Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/ComposableSingletons$OsaLocationFormScreenKt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_3
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/String;

    move-object/from16 v1, p2

    check-cast v1, Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;

    sget-object v2, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/ComposableSingletons$OsaLocationFormScreenKt;->a:Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/ComposableSingletons$OsaLocationFormScreenKt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_4
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/osa/list/components/ComposableSingletons$OsaListLoadingScreenKt;->a:Lcom/vuitton/android/presentation/screen/osa/list/components/ComposableSingletons$OsaListLoadingScreenKt;

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v12, :cond_0

    move v11, v13

    :cond_0
    and-int/2addr v1, v13

    invoke-interface {v0, v1, v11}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v9, :cond_1

    new-instance v1, Landroidx/compose/material3/SnackbarHostState;

    invoke-direct {v1}, Landroidx/compose/material3/SnackbarHostState;-><init>()V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    check-cast v1, Landroidx/compose/material3/SnackbarHostState;

    sget-object v2, Lcom/vuitton/android/presentation/screen/osa/list/components/ComposableSingletons$OsaListLoadingScreenKt;->c:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static {v1, v2, v0, v8}, Lcom/vuitton/android/presentation/screen/osa/list/components/OsaListLoadingScreenKt;->a(Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->D()V

    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_5
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/osa/list/components/ComposableSingletons$OsaListLoadingScreenKt;->a:Lcom/vuitton/android/presentation/screen/osa/list/components/ComposableSingletons$OsaListLoadingScreenKt;

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v12, :cond_3

    move v11, v13

    :cond_3
    and-int/2addr v1, v13

    invoke-interface {v0, v1, v11}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_6
    move-object/from16 v0, p1

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-object/from16 v1, p2

    check-cast v1, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;

    sget-object v2, Lcom/vuitton/android/presentation/screen/osa/list/components/ComposableSingletons$OsaListDataScreenKt;->a:Lcom/vuitton/android/presentation/screen/osa/list/components/ComposableSingletons$OsaListDataScreenKt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_7
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/osa/list/components/ComposableSingletons$OsaListDataScreenKt;->a:Lcom/vuitton/android/presentation/screen/osa/list/components/ComposableSingletons$OsaListDataScreenKt;

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v12, :cond_5

    move v2, v13

    goto :goto_2

    :cond_5
    move v2, v11

    :goto_2
    and-int/2addr v1, v13

    invoke-interface {v0, v1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Lcom/vuitton/android/presentation/screen/options/dispatch/models/InAppDispatchMockKt;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    new-instance v14, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;

    sget-object v16, Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;->DISTANT:Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v21, Lcom/vuitton/android/presentation/screen/osa/models/StoreInformationItemUiModel;

    const-string v26, "+33 6 06 06 09 00 00"

    const-string v27, ""

    const-string v22, "0"

    const-string v23, "name"

    const-string v24, "102, rue de la republique"

    const-string v25, "Paris - France"

    invoke-direct/range {v21 .. v27}, Lcom/vuitton/android/presentation/screen/osa/models/StoreInformationItemUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v22, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

    const/16 v27, 0xc

    const/16 v28, 0x0

    const-string v23, "0"

    const-string v24, "Discover a collection"

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-direct/range {v22 .. v28}, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v24, "0"

    const/16 v25, 0x0

    const-string v15, "0"

    move-object/from16 v23, v22

    move-object/from16 v22, v21

    const-string v21, "2023-01-01T10:12:12.000"

    invoke-direct/range {v14 .. v25}, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/osa/models/StoreInformationItemUiModel;Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;Ljava/lang/String;Z)V

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v9, :cond_6

    new-instance v1, Lco;

    invoke-direct {v1, v5}, Lco;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v9, :cond_7

    new-instance v3, Lzn;

    invoke-direct {v3, v7}, Lzn;-><init>(I)V

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_7
    move-object v8, v3

    check-cast v8, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v9, :cond_8

    new-instance v3, Leo;

    invoke-direct {v3, v11}, Leo;-><init>(I)V

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v9, :cond_9

    new-instance v4, Leo;

    invoke-direct {v4, v13}, Leo;-><init>(I)V

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_9
    move-object v10, v4

    check-cast v10, Lkotlin/jvm/functions/Function1;

    const v12, 0x36db6c00

    const/4 v13, 0x1

    move-object v7, v1

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v11, v0

    move-object v9, v3

    move-object v3, v14

    invoke-static/range {v1 .. v13}, Lcom/vuitton/android/presentation/screen/osa/list/components/OsaListDataScreenKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;ZZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    goto :goto_3

    :cond_a
    move-object v11, v0

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->D()V

    :goto_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_8
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v7, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/ComposableSingletons$OsaContactFormBottomSheetScreenKt;->a:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/ComposableSingletons$OsaContactFormBottomSheetScreenKt;

    and-int/lit8 v7, v1, 0x3

    if-eq v7, v12, :cond_b

    move v11, v13

    :cond_b
    and-int/2addr v1, v13

    invoke-interface {v0, v1, v11}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_14

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lcom/vuitton/android/presentation/screen/options/dispatch/models/InAppDispatchMockKt;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v7, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen$ReplaceAppointmentBottomSheet;->a:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen$ReplaceAppointmentBottomSheet;

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v8

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v9, :cond_c

    new-instance v11, Lbo;

    invoke-direct {v11, v12}, Lbo;-><init>(I)V

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_c
    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v9, :cond_d

    new-instance v12, Lbo;

    invoke-direct {v12, v10}, Lbo;-><init>(I)V

    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_d
    move-object v10, v12

    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v9, :cond_e

    new-instance v12, Lbo;

    invoke-direct {v12, v4}, Lbo;-><init>(I)V

    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_e
    check-cast v12, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v9, :cond_f

    new-instance v4, Lbo;

    invoke-direct {v4, v6}, Lbo;-><init>(I)V

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_f
    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v9, :cond_10

    new-instance v6, Lbo;

    invoke-direct {v6, v15}, Lbo;-><init>(I)V

    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_10
    move-object v13, v6

    check-cast v13, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v9, :cond_11

    new-instance v6, Lbo;

    invoke-direct {v6, v5}, Lbo;-><init>(I)V

    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_11
    move-object v14, v6

    check-cast v14, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v9, :cond_12

    new-instance v5, Lbo;

    invoke-direct {v5, v3}, Lbo;-><init>(I)V

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_12
    move-object v15, v5

    check-cast v15, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v9, :cond_13

    new-instance v3, Lbo;

    invoke-direct {v3, v2}, Lbo;-><init>(I)V

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_13
    move-object/from16 v16, v3

    check-cast v16, Lkotlin/jvm/functions/Function0;

    const v19, 0x36db6

    const/16 v20, 0xe1

    move-object v2, v1

    const/4 v1, 0x0

    move-object v9, v11

    move-object v11, v12

    move-object v12, v4

    const-string v4, "Paris"

    const/4 v6, 0x0

    move-object v3, v7

    const/4 v7, 0x0

    move-object v5, v8

    const/4 v8, 0x0

    const v18, 0x36000d80

    move-object/from16 v17, v0

    invoke-static/range {v1 .. v20}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreenKt;->e(Landroidx/compose/ui/Modifier;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen;Ljava/lang/String;Ljava/time/LocalDateTime;ZLjava/time/LocalDateTime;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;III)V

    goto :goto_4

    :cond_14
    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/Composer;->D()V

    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_9
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/ComposableSingletons$OsaContactFormBottomSheetScreenKt;->a:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/ComposableSingletons$OsaContactFormBottomSheetScreenKt;

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v12, :cond_15

    move v2, v13

    goto :goto_5

    :cond_15
    move v2, v11

    :goto_5
    and-int/2addr v1, v13

    invoke-interface {v0, v1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_1e

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Lcom/vuitton/android/presentation/screen/options/dispatch/models/InAppDispatchMockKt;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v3, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen$GuestWithAppointmentConfirmBottomSheet;->a:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen$GuestWithAppointmentConfirmBottomSheet;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v9, :cond_16

    new-instance v1, Lco;

    invoke-direct {v1, v4}, Lco;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_16
    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v9, :cond_17

    new-instance v4, Lco;

    invoke-direct {v4, v6}, Lco;-><init>(I)V

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_17
    move-object v10, v4

    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v9, :cond_18

    new-instance v4, Lco;

    invoke-direct {v4, v15}, Lco;-><init>(I)V

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_18
    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v9, :cond_19

    new-instance v5, Lyn;

    invoke-direct {v5, v14}, Lyn;-><init>(I)V

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_19
    move-object v12, v5

    check-cast v12, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v9, :cond_1a

    new-instance v5, Lyn;

    const/16 v6, 0x1c

    invoke-direct {v5, v6}, Lyn;-><init>(I)V

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1a
    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v9, :cond_1b

    new-instance v6, Lyn;

    const/16 v7, 0x1d

    invoke-direct {v6, v7}, Lyn;-><init>(I)V

    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1b
    move-object v14, v6

    check-cast v14, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v9, :cond_1c

    new-instance v6, Lbo;

    invoke-direct {v6, v11}, Lbo;-><init>(I)V

    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1c
    move-object v15, v6

    check-cast v15, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v9, :cond_1d

    new-instance v6, Lbo;

    invoke-direct {v6, v13}, Lbo;-><init>(I)V

    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1d
    move-object/from16 v16, v6

    check-cast v16, Lkotlin/jvm/functions/Function0;

    const v19, 0x36db6

    const/16 v20, 0xf9

    move-object v9, v1

    const/4 v1, 0x0

    move-object v11, v4

    const/4 v4, 0x0

    move-object v13, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v18, 0x36000180

    move-object/from16 v17, v0

    invoke-static/range {v1 .. v20}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreenKt;->e(Landroidx/compose/ui/Modifier;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen;Ljava/lang/String;Ljava/time/LocalDateTime;ZLjava/time/LocalDateTime;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;III)V

    goto :goto_6

    :cond_1e
    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/Composer;->D()V

    :goto_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_a
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/ComposableSingletons$OsaContactFormBottomSheetScreenKt;->a:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/ComposableSingletons$OsaContactFormBottomSheetScreenKt;

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v12, :cond_1f

    move v11, v13

    :cond_1f
    and-int/2addr v1, v13

    invoke-interface {v0, v1, v11}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_28

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Lcom/vuitton/android/presentation/screen/options/dispatch/models/InAppDispatchMockKt;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v3, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen$AppointmentConfirmBottomSheet;->a:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen$AppointmentConfirmBottomSheet;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v9, :cond_20

    new-instance v1, Lbo;

    const/16 v4, 0xa

    invoke-direct {v1, v4}, Lbo;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_20
    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v9, :cond_21

    new-instance v4, Lbo;

    const/16 v5, 0xb

    invoke-direct {v4, v5}, Lbo;-><init>(I)V

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_21
    move-object v10, v4

    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v9, :cond_22

    new-instance v4, Lbo;

    const/16 v5, 0xc

    invoke-direct {v4, v5}, Lbo;-><init>(I)V

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_22
    move-object v11, v4

    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v9, :cond_23

    new-instance v4, Lbo;

    const/16 v5, 0xd

    invoke-direct {v4, v5}, Lbo;-><init>(I)V

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_23
    move-object v12, v4

    check-cast v12, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v9, :cond_24

    new-instance v4, Lbo;

    const/16 v5, 0xe

    invoke-direct {v4, v5}, Lbo;-><init>(I)V

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_24
    move-object v13, v4

    check-cast v13, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v9, :cond_25

    new-instance v4, Lbo;

    const/16 v5, 0xf

    invoke-direct {v4, v5}, Lbo;-><init>(I)V

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_25
    move-object v14, v4

    check-cast v14, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v9, :cond_26

    new-instance v4, Lbo;

    const/16 v5, 0x10

    invoke-direct {v4, v5}, Lbo;-><init>(I)V

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_26
    move-object v15, v4

    check-cast v15, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v9, :cond_27

    new-instance v4, Lbo;

    const/16 v5, 0x11

    invoke-direct {v4, v5}, Lbo;-><init>(I)V

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_27
    move-object/from16 v16, v4

    check-cast v16, Lkotlin/jvm/functions/Function0;

    const v19, 0x36db6

    const/16 v20, 0xf9

    move-object v9, v1

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v18, 0x36000180

    move-object/from16 v17, v0

    invoke-static/range {v1 .. v20}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreenKt;->e(Landroidx/compose/ui/Modifier;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen;Ljava/lang/String;Ljava/time/LocalDateTime;ZLjava/time/LocalDateTime;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;III)V

    goto :goto_7

    :cond_28
    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/Composer;->D()V

    :goto_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_b
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/ComposableSingletons$OsaContactFormBottomSheetScreenKt;->a:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/ComposableSingletons$OsaContactFormBottomSheetScreenKt;

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v12, :cond_29

    move v2, v13

    goto :goto_8

    :cond_29
    move v2, v11

    :goto_8
    and-int/2addr v1, v13

    invoke-interface {v0, v1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_32

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Lcom/vuitton/android/presentation/screen/options/dispatch/models/InAppDispatchMockKt;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v3, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen$AlreadyExistAccountBottomSheet;->a:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen$AlreadyExistAccountBottomSheet;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v9, :cond_2a

    new-instance v1, Lbo;

    const/16 v4, 0x1a

    invoke-direct {v1, v4}, Lbo;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2a
    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v9, :cond_2b

    new-instance v4, Lbo;

    invoke-direct {v4, v14}, Lbo;-><init>(I)V

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2b
    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v9, :cond_2c

    new-instance v5, Lbo;

    const/16 v6, 0x1c

    invoke-direct {v5, v6}, Lbo;-><init>(I)V

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2c
    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v9, :cond_2d

    new-instance v6, Lbo;

    const/16 v7, 0x1d

    invoke-direct {v6, v7}, Lbo;-><init>(I)V

    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2d
    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v9, :cond_2e

    new-instance v7, Lco;

    invoke-direct {v7, v11}, Lco;-><init>(I)V

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2e
    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v9, :cond_2f

    new-instance v8, Lco;

    invoke-direct {v8, v13}, Lco;-><init>(I)V

    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2f
    move-object v14, v8

    check-cast v14, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v9, :cond_30

    new-instance v8, Lco;

    invoke-direct {v8, v12}, Lco;-><init>(I)V

    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_30
    move-object v15, v8

    check-cast v15, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v9, :cond_31

    new-instance v8, Lco;

    invoke-direct {v8, v10}, Lco;-><init>(I)V

    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_31
    move-object/from16 v16, v8

    check-cast v16, Lkotlin/jvm/functions/Function0;

    const v19, 0x36db6

    const/16 v20, 0xf9

    move-object v9, v1

    const/4 v1, 0x0

    move-object v10, v4

    const/4 v4, 0x0

    move-object v11, v5

    const/4 v5, 0x0

    move-object v12, v6

    const/4 v6, 0x0

    move-object v13, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v18, 0x36000180

    move-object/from16 v17, v0

    invoke-static/range {v1 .. v20}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreenKt;->e(Landroidx/compose/ui/Modifier;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen;Ljava/lang/String;Ljava/time/LocalDateTime;ZLjava/time/LocalDateTime;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;III)V

    goto :goto_9

    :cond_32
    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/Composer;->D()V

    :goto_9
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_c
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/ComposableSingletons$OsaContactFormBottomSheetScreenKt;->a:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/ComposableSingletons$OsaContactFormBottomSheetScreenKt;

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v12, :cond_33

    move v11, v13

    :cond_33
    and-int/2addr v1, v13

    invoke-interface {v0, v1, v11}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_3c

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Lcom/vuitton/android/presentation/screen/options/dispatch/models/InAppDispatchMockKt;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v3, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen$LoadingBottomSheet;->a:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen$LoadingBottomSheet;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v9, :cond_34

    new-instance v1, Lbo;

    const/16 v4, 0x12

    invoke-direct {v1, v4}, Lbo;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_34
    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v9, :cond_35

    new-instance v4, Lbo;

    const/16 v5, 0x13

    invoke-direct {v4, v5}, Lbo;-><init>(I)V

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_35
    move-object v10, v4

    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v9, :cond_36

    new-instance v4, Lbo;

    const/16 v5, 0x14

    invoke-direct {v4, v5}, Lbo;-><init>(I)V

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_36
    move-object v11, v4

    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v9, :cond_37

    new-instance v4, Lbo;

    const/16 v5, 0x15

    invoke-direct {v4, v5}, Lbo;-><init>(I)V

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_37
    move-object v12, v4

    check-cast v12, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v9, :cond_38

    new-instance v4, Lbo;

    invoke-direct {v4, v7}, Lbo;-><init>(I)V

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_38
    move-object v13, v4

    check-cast v13, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v9, :cond_39

    new-instance v4, Lbo;

    const/16 v5, 0x17

    invoke-direct {v4, v5}, Lbo;-><init>(I)V

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_39
    move-object v14, v4

    check-cast v14, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v9, :cond_3a

    new-instance v4, Lbo;

    const/16 v5, 0x18

    invoke-direct {v4, v5}, Lbo;-><init>(I)V

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3a
    move-object v15, v4

    check-cast v15, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v9, :cond_3b

    new-instance v4, Lbo;

    const/16 v5, 0x19

    invoke-direct {v4, v5}, Lbo;-><init>(I)V

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3b
    move-object/from16 v16, v4

    check-cast v16, Lkotlin/jvm/functions/Function0;

    const v19, 0x36db6

    const/16 v20, 0xf9

    move-object v9, v1

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v18, 0x36000180

    move-object/from16 v17, v0

    invoke-static/range {v1 .. v20}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreenKt;->e(Landroidx/compose/ui/Modifier;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen;Ljava/lang/String;Ljava/time/LocalDateTime;ZLjava/time/LocalDateTime;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;III)V

    goto :goto_a

    :cond_3c
    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/Composer;->D()V

    :goto_a
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_d
    move-object/from16 v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/orders/components/exchange/ComposableSingletons$OrderReturnOrExchangeSelectionScreenKt;->a:Lcom/vuitton/android/presentation/screen/orders/components/exchange/ComposableSingletons$OrderReturnOrExchangeSelectionScreenKt;

    and-int/lit8 v1, v0, 0x3

    if-eq v1, v12, :cond_3d

    move v11, v13

    :cond_3d
    and-int/2addr v0, v13

    invoke-interface {v8, v0, v11}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_44

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Lcom/vuitton/android/presentation/screen/orders/models/MocksKt;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_3e

    new-instance v0, Landroidx/compose/material3/SnackbarHostState;

    invoke-direct {v0}, Landroidx/compose/material3/SnackbarHostState;-><init>()V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3e
    move-object v2, v0

    check-cast v2, Landroidx/compose/material3/SnackbarHostState;

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_3f

    new-instance v0, Lyn;

    invoke-direct {v0, v7}, Lyn;-><init>(I)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3f
    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_40

    new-instance v0, Lyn;

    const/16 v5, 0x17

    invoke-direct {v0, v5}, Lyn;-><init>(I)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_40
    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_41

    new-instance v0, Lyn;

    const/16 v5, 0x18

    invoke-direct {v0, v5}, Lyn;-><init>(I)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_41
    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_42

    new-instance v0, Lyn;

    const/16 v6, 0x19

    invoke-direct {v0, v6}, Lyn;-><init>(I)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_42
    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_43

    new-instance v0, Lyn;

    const/16 v7, 0x1a

    invoke-direct {v0, v7}, Lyn;-><init>(I)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_43
    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function0;

    const v9, 0x1b6db0

    invoke-static/range {v1 .. v9}, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeSelectionScreenKt;->b(Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_b

    :cond_44
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->D()V

    :goto_b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_e
    move-object/from16 v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/orders/components/list/ComposableSingletons$OrderListScreenKt;->a:Lcom/vuitton/android/presentation/screen/orders/components/list/ComposableSingletons$OrderListScreenKt;

    and-int/lit8 v1, v0, 0x3

    if-eq v1, v12, :cond_45

    move v11, v13

    :cond_45
    and-int/2addr v0, v13

    invoke-interface {v6, v0, v11}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_47

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Lcom/vuitton/android/presentation/screen/orders/models/MocksKt;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->a:Lcom/vuitton/android/presentation/screen/orders/models/OrderPageUiModel;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_46

    new-instance v0, Lao;

    invoke-direct {v0, v3}, Lao;-><init>(I)V

    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_46
    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function3;

    const/16 v7, 0x6d80

    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static/range {v1 .. v8}, Lcom/vuitton/android/presentation/screen/orders/components/list/OrderListScreenKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/orders/models/OrderPageUiModel;ZZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    goto :goto_c

    :cond_47
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->D()V

    :goto_c
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_f
    move-object/from16 v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/orders/components/exchange/ComposableSingletons$OrderExchangeVariantSelectionScreenKt;->a:Lcom/vuitton/android/presentation/screen/orders/components/exchange/ComposableSingletons$OrderExchangeVariantSelectionScreenKt;

    and-int/lit8 v1, v0, 0x3

    if-eq v1, v12, :cond_48

    move v11, v13

    :cond_48
    and-int/2addr v0, v13

    invoke-interface {v8, v0, v11}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_4f

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Lcom/vuitton/android/presentation/screen/orders/models/MocksKt;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_49

    new-instance v0, Landroidx/compose/material3/SnackbarHostState;

    invoke-direct {v0}, Landroidx/compose/material3/SnackbarHostState;-><init>()V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_49
    move-object v2, v0

    check-cast v2, Landroidx/compose/material3/SnackbarHostState;

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_4a

    new-instance v0, Lwn;

    const/16 v6, 0x1c

    invoke-direct {v0, v6}, Lwn;-><init>(I)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4a
    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_4b

    new-instance v0, Lao;

    invoke-direct {v0, v12}, Lao;-><init>(I)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4b
    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function3;

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_4c

    new-instance v0, Lyn;

    const/16 v5, 0x14

    invoke-direct {v0, v5}, Lyn;-><init>(I)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4c
    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_4d

    new-instance v0, Lwn;

    const/16 v7, 0x1d

    invoke-direct {v0, v7}, Lwn;-><init>(I)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4d
    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_4e

    new-instance v0, Lyn;

    const/16 v7, 0x15

    invoke-direct {v0, v7}, Lyn;-><init>(I)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4e
    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function0;

    const v9, 0x1b6db0

    invoke-static/range {v1 .. v9}, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderExchangeVariantSelectionScreenKt;->b(Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_d

    :cond_4f
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->D()V

    :goto_d
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_10
    move-object/from16 v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/onboarding/components/ComposableSingletons$OnboardingIconComposableKt;->a:Lcom/vuitton/android/presentation/screen/onboarding/components/ComposableSingletons$OnboardingIconComposableKt;

    and-int/lit8 v1, v0, 0x3

    if-eq v1, v12, :cond_50

    move v11, v13

    :cond_50
    and-int/2addr v0, v13

    invoke-interface {v8, v0, v11}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_57

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Lcom/vuitton/android/presentation/screen/onboarding/models/MocksKt;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_51

    new-instance v0, Lyn;

    const/16 v2, 0x11

    invoke-direct {v0, v2}, Lyn;-><init>(I)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_51
    move-object v2, v0

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_52

    new-instance v0, Lyn;

    const/16 v3, 0x12

    invoke-direct {v0, v3}, Lyn;-><init>(I)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_52
    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_53

    new-instance v0, Lwn;

    const/16 v5, 0x19

    invoke-direct {v0, v5}, Lwn;-><init>(I)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_53
    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_54

    new-instance v0, Lwn;

    const/16 v7, 0x1a

    invoke-direct {v0, v7}, Lwn;-><init>(I)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_54
    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_55

    new-instance v0, Lwn;

    invoke-direct {v0, v14}, Lwn;-><init>(I)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_55
    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_56

    new-instance v0, Lyn;

    const/16 v7, 0x13

    invoke-direct {v0, v7}, Lyn;-><init>(I)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_56
    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function0;

    const v9, 0x1b6db0

    invoke-static/range {v1 .. v9}, Lcom/vuitton/android/presentation/screen/onboarding/components/OnboardingIconComposableKt;->a(Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_e

    :cond_57
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->D()V

    :goto_e
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_11
    move-object/from16 v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/options/notifications/components/ComposableSingletons$NotificationPreferencesKt;->a:Lcom/vuitton/android/presentation/screen/options/notifications/components/ComposableSingletons$NotificationPreferencesKt;

    and-int/lit8 v1, v0, 0x3

    if-eq v1, v12, :cond_58

    move v1, v13

    goto :goto_f

    :cond_58
    move v1, v11

    :goto_f
    and-int/2addr v0, v13

    invoke-interface {v5, v0, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_5b

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;->NOTIFY_ME:Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

    new-instance v1, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;

    const v2, 0x7f140ea5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f140ea6

    invoke-direct {v1, v3, v2, v11, v11}, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;-><init>(ILjava/lang/Integer;ZZ)V

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Lkotlin/collections/MapsKt;->h(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v11

    new-instance v2, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;

    const/16 v16, 0x18

    const/16 v17, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v2

    invoke-direct/range {v10 .. v17}, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;-><init>(Ljava/util/Map;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_59

    new-instance v0, Lzn;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lzn;-><init>(I)V

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_59
    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_5a

    new-instance v0, Lyn;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lyn;-><init>(I)V

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5a
    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/16 v6, 0xd80

    const/4 v7, 0x1

    const/4 v1, 0x0

    invoke-static/range {v1 .. v7}, Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationPreferencesKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    goto :goto_10

    :cond_5b
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->D()V

    :goto_10
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_12
    move-object/from16 v0, p1

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    sget-object v1, Lcom/vuitton/android/presentation/screen/options/notifications/components/ComposableSingletons$NotificationPreferencesKt;->a:Lcom/vuitton/android/presentation/screen/options/notifications/components/ComposableSingletons$NotificationPreferencesKt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_13
    move-object/from16 v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/register/components/ComposableSingletons$NativeRegisterBirthInfoComposableKt;->a:Lcom/vuitton/android/presentation/screen/authentication/register/components/ComposableSingletons$NativeRegisterBirthInfoComposableKt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_14
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v3, Lcom/vuitton/android/presentation/screen/authentication/register/components/ComposableSingletons$NativeRegisterBirthInfoComposableKt;->a:Lcom/vuitton/android/presentation/screen/authentication/register/components/ComposableSingletons$NativeRegisterBirthInfoComposableKt;

    and-int/lit8 v3, v1, 0x3

    if-eq v3, v12, :cond_5c

    move v3, v13

    goto :goto_11

    :cond_5c
    move v3, v11

    :goto_11
    and-int/2addr v1, v13

    invoke-interface {v0, v1, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_67

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v3, "lambda__965753785$lambda$0"

    invoke-direct {v1, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v4, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v3, v4, v0, v11}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v3

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v5

    invoke-static {v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v8

    if-eqz v8, :cond_66

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v8

    if-eqz v8, :cond_5d

    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_12

    :cond_5d
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->o()V

    :goto_12
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v3, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v5, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v3, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v3}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v22, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;

    const v39, 0xffff

    const/16 v40, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    invoke-direct/range {v22 .. v40}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;-><init>(Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterPersonalInfoUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterActivationUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;ZLcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterFeatureFlags;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v9, :cond_5e

    new-instance v1, Lwn;

    invoke-direct {v1, v7}, Lwn;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5e
    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v9, :cond_5f

    new-instance v1, Lyn;

    const/16 v4, 0xc

    invoke-direct {v1, v4}, Lyn;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5f
    move-object v4, v1

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v9, :cond_60

    new-instance v1, Lyn;

    const/16 v5, 0xd

    invoke-direct {v1, v5}, Lyn;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_60
    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v9, :cond_61

    new-instance v1, Lzn;

    invoke-direct {v1, v2}, Lzn;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_61
    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v9, :cond_62

    new-instance v1, Lwn;

    const/16 v2, 0x17

    invoke-direct {v1, v2}, Lwn;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_62
    move-object v7, v1

    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v9, :cond_63

    new-instance v1, Lyn;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Lyn;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_63
    move-object v8, v1

    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v9, :cond_64

    new-instance v1, Lyn;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lyn;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_64
    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v9, :cond_65

    new-instance v2, Lwn;

    const/16 v9, 0x18

    invoke-direct {v2, v9}, Lwn;-><init>(I)V

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_65
    move-object v10, v2

    check-cast v10, Lkotlin/jvm/functions/Function1;

    const v13, 0x36db6d86

    const/16 v14, 0x200

    move-object v9, v1

    sget-object v1, Landroidx/compose/foundation/layout/ColumnScopeInstance;->a:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    const/4 v11, 0x0

    move-object v12, v0

    move-object/from16 v2, v22

    invoke-static/range {v1 .. v14}, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterBirthInfoComposableKt;->a(Landroidx/compose/foundation/layout/ColumnScope;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/runtime/Composer;II)V

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->r()V

    goto :goto_13

    :cond_66
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v0, 0x0

    throw v0

    :cond_67
    move-object v12, v0

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->D()V

    :goto_13
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_15
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/cart/components/ComposableSingletons$NativeCartLoadingScreenKt;->a:Lcom/vuitton/android/presentation/screen/cart/components/ComposableSingletons$NativeCartLoadingScreenKt;

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v12, :cond_68

    move v11, v13

    :cond_68
    and-int/2addr v1, v13

    invoke-interface {v0, v1, v11}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_6a

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v9, :cond_69

    new-instance v1, Landroidx/compose/material3/SnackbarHostState;

    invoke-direct {v1}, Landroidx/compose/material3/SnackbarHostState;-><init>()V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_69
    check-cast v1, Landroidx/compose/material3/SnackbarHostState;

    sget-object v2, Lcom/vuitton/android/presentation/screen/cart/components/ComposableSingletons$NativeCartLoadingScreenKt;->c:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static {v1, v2, v0, v8}, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartLoadingScreenKt;->a(Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_14

    :cond_6a
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->D()V

    :goto_14
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_16
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/cart/components/ComposableSingletons$NativeCartLoadingScreenKt;->a:Lcom/vuitton/android/presentation/screen/cart/components/ComposableSingletons$NativeCartLoadingScreenKt;

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v12, :cond_6b

    move v11, v13

    :cond_6b
    and-int/2addr v1, v13

    invoke-interface {v0, v1, v11}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_6c

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_15

    :cond_6c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->D()V

    :goto_15
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_17
    move-object/from16 v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    sget-object v1, Lcom/vuitton/android/presentation/screen/cart/components/ComposableSingletons$NativeCartFilledScreenKt;->a:Lcom/vuitton/android/presentation/screen/cart/components/ComposableSingletons$NativeCartFilledScreenKt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_18
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/cart/components/bottomsheets/ComposableSingletons$NativeCartBottomSheetsKt;->a:Lcom/vuitton/android/presentation/screen/cart/components/bottomsheets/ComposableSingletons$NativeCartBottomSheetsKt;

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v12, :cond_6d

    move v11, v13

    :cond_6d
    and-int/2addr v1, v13

    invoke-interface {v0, v1, v11}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_6f

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v9, :cond_6e

    new-instance v1, Lwn;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lwn;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6e
    check-cast v1, Lkotlin/jvm/functions/Function1;

    const/4 v2, 0x0

    invoke-static {v2, v1, v0, v8}, Lcom/vuitton/android/presentation/screen/cart/components/bottomsheets/NativeCartBottomSheetsKt;->a(Lcom/vuitton/android/presentation/screen/cart/CommercialNotification;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_16

    :cond_6f
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->D()V

    :goto_16
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_19
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/cart/components/bottomsheets/ComposableSingletons$NativeCartBottomSheetsKt;->a:Lcom/vuitton/android/presentation/screen/cart/components/bottomsheets/ComposableSingletons$NativeCartBottomSheetsKt;

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v12, :cond_70

    move v2, v13

    goto :goto_17

    :cond_70
    move v2, v11

    :goto_17
    and-int/2addr v1, v13

    invoke-interface {v0, v1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_71

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lcom/vuitton/android/presentation/screen/cart/mocks/NativeCartMockKt;->a:Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    invoke-static {v1, v0, v11}, Lcom/vuitton/android/presentation/screen/cart/components/bottomsheets/NativeCartBottomSheetsKt;->b(Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;Landroidx/compose/runtime/Composer;I)V

    goto :goto_18

    :cond_71
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->D()V

    :goto_18
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1a
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/cart/components/bottomsheets/ComposableSingletons$NativeCartBottomSheetsKt;->a:Lcom/vuitton/android/presentation/screen/cart/components/bottomsheets/ComposableSingletons$NativeCartBottomSheetsKt;

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v12, :cond_72

    move v11, v13

    :cond_72
    and-int/2addr v1, v13

    invoke-interface {v0, v1, v11}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_75

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v9, :cond_73

    new-instance v1, Lyn;

    invoke-direct {v1, v6}, Lyn;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_73
    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v9, :cond_74

    new-instance v2, Lyn;

    invoke-direct {v2, v15}, Lyn;-><init>(I)V

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_74
    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2, v0, v8}, Lcom/vuitton/android/presentation/screen/cart/components/bottomsheets/NativeCartBottomSheetsKt;->d(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_19

    :cond_75
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->D()V

    :goto_19
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1b
    move-object/from16 v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/mylv/components/ComposableSingletons$MyLvComposableKt;->a:Lcom/vuitton/android/presentation/screen/mylv/components/ComposableSingletons$MyLvComposableKt;

    and-int/lit8 v1, v0, 0x3

    if-eq v1, v12, :cond_76

    move v1, v13

    goto :goto_1a

    :cond_76
    move v1, v11

    :goto_1a
    and-int/2addr v0, v13

    invoke-interface {v6, v0, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_77

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->q:I

    invoke-static {v0, v6, v11}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v1

    const v0, 0x7f140319

    invoke-static {v6, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v4, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    const/16 v7, 0x8

    const/4 v8, 0x4

    const/4 v3, 0x0

    invoke-static/range {v1 .. v8}, Landroidx/compose/material3/IconKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    goto :goto_1b

    :cond_77
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1c
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/mylv/components/ComposableSingletons$MyLvComposableKt;->a:Lcom/vuitton/android/presentation/screen/mylv/components/ComposableSingletons$MyLvComposableKt;

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v12, :cond_78

    move v2, v13

    goto :goto_1c

    :cond_78
    move v2, v11

    :goto_1c
    and-int/2addr v1, v13

    invoke-interface {v0, v1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_7b

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const v1, 0x7f14068b

    invoke-static {v0, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v3, "lambda__2093144840$lambda$0"

    invoke-direct {v2, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_79

    if-ne v4, v9, :cond_7a

    :cond_79
    new-instance v4, La4;

    const/16 v5, 0x15

    invoke-direct {v4, v1, v5}, La4;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_7a
    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v11, v4}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const v1, 0x7f140e74

    invoke-static {v0, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->j:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v4

    iget-object v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    const/16 v22, 0x0

    const v23, 0x1fff8

    move-object/from16 v19, v3

    move-wide v3, v4

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

    move-object/from16 v20, v0

    invoke-static/range {v1 .. v23}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    goto :goto_1d

    :cond_7b
    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1d
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
