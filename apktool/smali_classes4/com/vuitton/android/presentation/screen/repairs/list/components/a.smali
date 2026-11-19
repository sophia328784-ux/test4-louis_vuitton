.class public final synthetic Lcom/vuitton/android/presentation/screen/repairs/list/components/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/vuitton/android/presentation/screen/repairs/list/components/a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 39

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vuitton/android/presentation/screen/repairs/list/components/a;->b:I

    const/16 v7, 0x9

    const/16 v8, 0x8

    const/16 v9, 0x14

    const/16 v10, 0x1d

    const/16 v11, 0x1c

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x6

    const p0, 0x36db6c00

    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v1, 0x0

    const/4 v2, 0x7

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v7, p2

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-object v8, Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListScreenKt;->a:Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListScreenKt;

    and-int/lit8 v8, v7, 0x3

    if-eq v8, v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v6

    :goto_0
    and-int/2addr v7, v5

    invoke-interface {v0, v7, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_a

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v16, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;

    sget-object v17, Lcom/vuitton/android/presentation/screen/options/dispatch/models/InAppDispatchMockKt;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v20, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    sget-object v3, Lcom/vuitton/android/presentation/screen/repairs/mocks/RepairsMockKt;->a:Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->e:Ljava/util/List;

    const/16 v31, 0x3fe6

    const/16 v32, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v21, v3

    invoke-direct/range {v16 .. v32}, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;-><init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;ZLjava/util/List;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v17, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    const/16 v30, 0xfff

    const/16 v31, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    invoke-direct/range {v17 .. v31}, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;-><init>(ZLjava/lang/String;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel;ZZZLcom/vuitton/android/presentation/contact/ContactUsMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v6, v2, v0, v1}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v23

    sget-object v25, Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListScreenKt;->f:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_1

    new-instance v1, Lgo;

    invoke-direct {v1, v11}, Lgo;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    move-object/from16 v26, v1

    check-cast v26, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_2

    new-instance v1, Lio;

    invoke-direct {v1, v4}, Lio;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    move-object/from16 v27, v1

    check-cast v27, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_3

    new-instance v1, Lio;

    invoke-direct {v1, v13}, Lio;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    move-object/from16 v28, v1

    check-cast v28, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_4

    sget-object v1, Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListScreenKt$lambda$883170485$1$4$1;->b:Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListScreenKt$lambda$883170485$1$4$1;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    move-object/from16 v29, v1

    check-cast v29, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_5

    sget-object v1, Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListScreenKt$lambda$883170485$1$5$1;->b:Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListScreenKt$lambda$883170485$1$5$1;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5
    move-object/from16 v30, v1

    check-cast v30, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_6

    new-instance v1, Lgo;

    invoke-direct {v1, v10}, Lgo;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    move-object/from16 v31, v1

    check-cast v31, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_7

    new-instance v1, Ljo;

    invoke-direct {v1, v6}, Ljo;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_7
    move-object/from16 v32, v1

    check-cast v32, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_8

    new-instance v1, Lio;

    invoke-direct {v1, v12}, Lio;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    move-object/from16 v33, v1

    check-cast v33, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_9

    new-instance v1, Ljo;

    invoke-direct {v1, v5}, Ljo;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_9
    move-object/from16 v34, v1

    check-cast v34, Lkotlin/jvm/functions/Function0;

    sget v1, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/2addr v1, v4

    or-int v36, v1, p0

    const/16 v37, 0x1b6

    move-object/from16 v35, v0

    move-object/from16 v22, v16

    move-object/from16 v24, v17

    invoke-static/range {v22 .. v37}, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListScreenKt;->c(Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    goto :goto_1

    :cond_a
    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v7, p2

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-object v8, Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListScreenKt;->a:Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListScreenKt;

    and-int/lit8 v8, v7, 0x3

    if-eq v8, v3, :cond_b

    move v8, v5

    goto :goto_2

    :cond_b
    move v8, v6

    :goto_2
    and-int/2addr v5, v7

    invoke-interface {v0, v5, v8}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v5

    if-eqz v5, :cond_15

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v16, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;

    sget-object v17, Lcom/vuitton/android/presentation/screen/options/dispatch/models/InAppDispatchMockKt;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v5, Lcom/vuitton/android/presentation/screen/repairs/mocks/RepairsMockKt;->a:Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->d:Ljava/util/List;

    sget-object v21, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    const/16 v31, 0x3fe6

    const/16 v32, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v20, v5

    invoke-direct/range {v16 .. v32}, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;-><init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;ZLjava/util/List;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v17, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    const/16 v30, 0xfff

    const/16 v31, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    invoke-direct/range {v17 .. v31}, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;-><init>(ZLjava/lang/String;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel;ZZZLcom/vuitton/android/presentation/contact/ContactUsMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v6, v2, v0, v1}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v1

    sget-object v5, Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListScreenKt;->e:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v15, :cond_c

    new-instance v6, Lgo;

    invoke-direct {v6, v9}, Lgo;-><init>(I)V

    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_c
    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v15, :cond_d

    new-instance v7, Lio;

    invoke-direct {v7, v3}, Lio;-><init>(I)V

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_d
    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v15, :cond_e

    new-instance v8, Lio;

    invoke-direct {v8, v14}, Lio;-><init>(I)V

    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_e
    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v15, :cond_f

    sget-object v9, Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListScreenKt$lambda$382604092$1$4$1;->b:Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListScreenKt$lambda$382604092$1$4$1;

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_f
    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v15, :cond_10

    sget-object v10, Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListScreenKt$lambda$382604092$1$5$1;->b:Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListScreenKt$lambda$382604092$1$5$1;

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_10
    check-cast v10, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v15, :cond_11

    new-instance v11, Ljo;

    invoke-direct {v11, v3}, Ljo;-><init>(I)V

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_11
    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v15, :cond_12

    new-instance v3, Ljo;

    invoke-direct {v3, v4}, Ljo;-><init>(I)V

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_12
    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v15, :cond_13

    new-instance v12, Lio;

    invoke-direct {v12, v2}, Lio;-><init>(I)V

    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_13
    check-cast v12, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v15, :cond_14

    new-instance v2, Ljo;

    invoke-direct {v2, v13}, Ljo;-><init>(I)V

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_14
    move-object v13, v2

    check-cast v13, Lkotlin/jvm/functions/Function0;

    sget v2, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/2addr v2, v4

    or-int v15, v2, p0

    move-object v2, v1

    move-object/from16 v1, v16

    const/16 v16, 0x1b6

    move-object v14, v0

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v3

    move-object/from16 v3, v17

    invoke-static/range {v1 .. v16}, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListScreenKt;->c(Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    goto :goto_3

    :cond_15
    move-object v14, v0

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->D()V

    :goto_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    move-object/from16 v14, p1

    check-cast v14, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v9, Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListScreenKt;->a:Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListScreenKt;

    and-int/lit8 v9, v0, 0x3

    if-eq v9, v3, :cond_16

    move v3, v5

    goto :goto_4

    :cond_16
    move v3, v6

    :goto_4
    and-int/2addr v0, v5

    invoke-interface {v14, v0, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v22, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;

    sget-object v23, Lcom/vuitton/android/presentation/screen/options/dispatch/models/InAppDispatchMockKt;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/mocks/RepairsMockKt;->a:Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->d:Ljava/util/List;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->e:Ljava/util/List;

    new-instance v35, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;

    const/16 v30, 0x1d

    const/16 v31, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v24, v35

    invoke-direct/range {v24 .. v31}, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;-><init>(ZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v37, 0x2fe6

    const/16 v38, 0x0

    const/16 v24, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v36, 0x0

    move-object/from16 v27, v0

    move-object/from16 v26, v3

    invoke-direct/range {v22 .. v38}, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;-><init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;ZLjava/util/List;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v3, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    const/16 v36, 0xfff

    const/16 v37, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v23, v3

    invoke-direct/range {v23 .. v37}, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;-><init>(ZLjava/lang/String;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel;ZZZLcom/vuitton/android/presentation/contact/ContactUsMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v6, v2, v14, v1}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v2

    move v0, v4

    sget-object v4, Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListScreenKt;->d:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_17

    new-instance v1, Ljo;

    invoke-direct {v1, v12}, Ljo;-><init>(I)V

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_17
    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_18

    new-instance v1, Lio;

    invoke-direct {v1, v8}, Lio;-><init>(I)V

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_18
    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_19

    new-instance v1, Lio;

    invoke-direct {v1, v7}, Lio;-><init>(I)V

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_19
    move-object v7, v1

    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_1a

    sget-object v1, Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListScreenKt$lambda$92358367$1$4$1;->b:Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListScreenKt$lambda$92358367$1$4$1;

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1a
    move-object v8, v1

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_1b

    sget-object v1, Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListScreenKt$lambda$92358367$1$5$1;->b:Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListScreenKt$lambda$92358367$1$5$1;

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1b
    move-object v9, v1

    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_1c

    new-instance v1, Lgo;

    const/16 v10, 0x15

    invoke-direct {v1, v10}, Lgo;-><init>(I)V

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1c
    move-object v10, v1

    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_1d

    new-instance v1, Lgo;

    const/16 v12, 0x16

    invoke-direct {v1, v12}, Lgo;-><init>(I)V

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1d
    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v15, :cond_1e

    new-instance v12, Leo;

    invoke-direct {v12, v11}, Leo;-><init>(I)V

    invoke-interface {v14, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1e
    check-cast v12, Lkotlin/jvm/functions/Function1;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v15, :cond_1f

    new-instance v11, Lgo;

    const/16 v13, 0x17

    invoke-direct {v11, v13}, Lgo;-><init>(I)V

    invoke-interface {v14, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1f
    move-object v13, v11

    check-cast v13, Lkotlin/jvm/functions/Function0;

    sget v11, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/lit8 v0, v11, 0x3

    or-int v15, v0, p0

    const/16 v16, 0x1b6

    move-object v11, v1

    move-object/from16 v1, v22

    invoke-static/range {v1 .. v16}, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListScreenKt;->c(Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    goto :goto_5

    :cond_20
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->D()V

    :goto_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_2
    move v0, v4

    move-object/from16 v14, p1

    check-cast v14, Landroidx/compose/runtime/Composer;

    move-object/from16 v4, p2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v7, Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListScreenKt;->a:Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListScreenKt;

    and-int/lit8 v7, v4, 0x3

    if-eq v7, v3, :cond_21

    move v3, v5

    goto :goto_6

    :cond_21
    move v3, v6

    :goto_6
    and-int/2addr v4, v5

    invoke-interface {v14, v4, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_2b

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v19, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;

    sget-object v20, Lcom/vuitton/android/presentation/screen/options/dispatch/models/InAppDispatchMockKt;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v23, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    new-instance v32, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;

    const/16 v30, 0x1c

    const/16 v31, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v24, v32

    invoke-direct/range {v24 .. v31}, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;-><init>(ZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v34, 0x2fe6

    const/16 v35, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v33, 0x0

    move-object/from16 v24, v23

    invoke-direct/range {v19 .. v35}, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;-><init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;ZLjava/util/List;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v3, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    const/16 v33, 0xfff

    const/16 v34, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v20, v3

    invoke-direct/range {v20 .. v34}, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;-><init>(ZLjava/lang/String;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel;ZZZLcom/vuitton/android/presentation/contact/ContactUsMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v6, v2, v14, v1}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v2

    sget-object v4, Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListScreenKt;->c:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_22

    new-instance v1, Lgo;

    const/16 v7, 0x18

    invoke-direct {v1, v7}, Lgo;-><init>(I)V

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_22
    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v15, :cond_23

    new-instance v7, Leo;

    invoke-direct {v7, v10}, Leo;-><init>(I)V

    invoke-interface {v14, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_23
    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v15, :cond_24

    new-instance v8, Lio;

    invoke-direct {v8, v6}, Lio;-><init>(I)V

    invoke-interface {v14, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_24
    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v15, :cond_25

    sget-object v6, Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListScreenKt$lambda$-121696786$1$4$1;->b:Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListScreenKt$lambda$-121696786$1$4$1;

    invoke-interface {v14, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_25
    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v15, :cond_26

    sget-object v9, Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListScreenKt$lambda$-121696786$1$5$1;->b:Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListScreenKt$lambda$-121696786$1$5$1;

    invoke-interface {v14, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_26
    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v15, :cond_27

    new-instance v10, Lgo;

    const/16 v11, 0x19

    invoke-direct {v10, v11}, Lgo;-><init>(I)V

    invoke-interface {v14, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_27
    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v15, :cond_28

    new-instance v11, Lgo;

    const/16 v12, 0x1a

    invoke-direct {v11, v12}, Lgo;-><init>(I)V

    invoke-interface {v14, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_28
    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v15, :cond_29

    new-instance v12, Lio;

    invoke-direct {v12, v5}, Lio;-><init>(I)V

    invoke-interface {v14, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_29
    check-cast v12, Lkotlin/jvm/functions/Function1;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v15, :cond_2a

    new-instance v5, Lgo;

    const/16 v13, 0x1b

    invoke-direct {v5, v13}, Lgo;-><init>(I)V

    invoke-interface {v14, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2a
    move-object v13, v5

    check-cast v13, Lkotlin/jvm/functions/Function0;

    sget v5, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/lit8 v0, v5, 0x3

    or-int v15, v0, p0

    const/16 v16, 0x1b6

    move-object v5, v8

    move-object v8, v6

    move-object v6, v7

    move-object v7, v5

    move-object v5, v1

    move-object/from16 v1, v19

    invoke-static/range {v1 .. v16}, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListScreenKt;->c(Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    goto :goto_7

    :cond_2b
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->D()V

    :goto_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_3
    move v0, v14

    move-object/from16 v14, p1

    check-cast v14, Landroidx/compose/runtime/Composer;

    move-object/from16 v4, p2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v7, Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListBffScreenKt;->a:Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListBffScreenKt;

    and-int/lit8 v7, v4, 0x3

    if-eq v7, v3, :cond_2c

    move v3, v5

    goto :goto_8

    :cond_2c
    move v3, v6

    :goto_8
    and-int/2addr v4, v5

    invoke-interface {v14, v4, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_36

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v19, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;

    sget-object v20, Lcom/vuitton/android/presentation/screen/options/dispatch/models/InAppDispatchMockKt;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v23, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    sget-object v3, Lcom/vuitton/android/presentation/screen/repairs/mocks/RepairsBffMockKt;->a:Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;->e:Ljava/util/List;

    const/16 v32, 0xfe6

    const/16 v33, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v24, v3

    invoke-direct/range {v19 .. v33}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;-><init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v20, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    const/16 v33, 0xfff

    const/16 v34, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-direct/range {v20 .. v34}, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;-><init>(ZLjava/lang/String;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel;ZZZLcom/vuitton/android/presentation/contact/ContactUsMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v6, v2, v14, v1}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v3

    sget-object v4, Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListBffScreenKt;->f:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_2d

    new-instance v1, Lgo;

    invoke-direct {v1, v13}, Lgo;-><init>(I)V

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2d
    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_2e

    new-instance v1, Leo;

    invoke-direct {v1, v9}, Leo;-><init>(I)V

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2e
    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_2f

    new-instance v1, Leo;

    const/16 v7, 0x18

    invoke-direct {v1, v7}, Leo;-><init>(I)V

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2f
    move-object v7, v1

    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_30

    sget-object v1, Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListBffScreenKt$lambda$-1562100513$1$4$1;->b:Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListBffScreenKt$lambda$-1562100513$1$4$1;

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_30
    move-object v8, v1

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_31

    sget-object v1, Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListBffScreenKt$lambda$-1562100513$1$5$1;->b:Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListBffScreenKt$lambda$-1562100513$1$5$1;

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_31
    move-object v9, v1

    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_32

    new-instance v1, Lgo;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lgo;-><init>(I)V

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_32
    move-object v10, v1

    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_33

    new-instance v1, Lgo;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Lgo;-><init>(I)V

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_33
    move-object v11, v1

    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_34

    new-instance v1, Leo;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Leo;-><init>(I)V

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_34
    move-object v12, v1

    check-cast v12, Lkotlin/jvm/functions/Function1;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_35

    new-instance v1, Lgo;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Lgo;-><init>(I)V

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_35
    move-object v13, v1

    check-cast v13, Lkotlin/jvm/functions/Function0;

    sget v1, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/lit8 v0, v1, 0x6

    or-int v15, v0, p0

    const/16 v16, 0x1b6

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static/range {v1 .. v16}, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListBffScreenKt;->b(Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    goto :goto_9

    :cond_36
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->D()V

    :goto_9
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_4
    move v0, v14

    move-object/from16 v14, p1

    check-cast v14, Landroidx/compose/runtime/Composer;

    move-object/from16 v4, p2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v9, Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListBffScreenKt;->a:Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListBffScreenKt;

    and-int/lit8 v9, v4, 0x3

    if-eq v9, v3, :cond_37

    move v3, v5

    goto :goto_a

    :cond_37
    move v3, v6

    :goto_a
    and-int/2addr v4, v5

    invoke-interface {v14, v4, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_41

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v16, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;

    sget-object v17, Lcom/vuitton/android/presentation/screen/options/dispatch/models/InAppDispatchMockKt;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v3, Lcom/vuitton/android/presentation/screen/repairs/mocks/RepairsBffMockKt;->a:Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;->d:Ljava/util/List;

    sget-object v21, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    const/16 v29, 0xfe6

    const/16 v30, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v20, v3

    invoke-direct/range {v16 .. v30}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;-><init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v17, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    const/16 v30, 0xfff

    const/16 v31, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-direct/range {v17 .. v31}, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;-><init>(ZLjava/lang/String;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel;ZZZLcom/vuitton/android/presentation/contact/ContactUsMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v6, v2, v14, v1}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v3

    sget-object v4, Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListBffScreenKt;->e:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_38

    new-instance v1, Lgo;

    invoke-direct {v1, v8}, Lgo;-><init>(I)V

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_38
    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_39

    new-instance v1, Leo;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Leo;-><init>(I)V

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_39
    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_3a

    new-instance v1, Leo;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Leo;-><init>(I)V

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3a
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v15, :cond_3b

    sget-object v2, Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListBffScreenKt$lambda$-1809062664$1$4$1;->b:Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListBffScreenKt$lambda$-1809062664$1$4$1;

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3b
    move-object v8, v2

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v15, :cond_3c

    sget-object v2, Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListBffScreenKt$lambda$-1809062664$1$5$1;->b:Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListBffScreenKt$lambda$-1809062664$1$5$1;

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3c
    move-object v9, v2

    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v15, :cond_3d

    new-instance v2, Lgo;

    invoke-direct {v2, v7}, Lgo;-><init>(I)V

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3d
    move-object v10, v2

    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v15, :cond_3e

    new-instance v2, Lgo;

    const/16 v7, 0xa

    invoke-direct {v2, v7}, Lgo;-><init>(I)V

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3e
    move-object v11, v2

    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v15, :cond_3f

    new-instance v2, Leo;

    const/16 v7, 0x13

    invoke-direct {v2, v7}, Leo;-><init>(I)V

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3f
    move-object v12, v2

    check-cast v12, Lkotlin/jvm/functions/Function1;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v15, :cond_40

    new-instance v2, Lgo;

    const/16 v7, 0xb

    invoke-direct {v2, v7}, Lgo;-><init>(I)V

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_40
    move-object v13, v2

    check-cast v13, Lkotlin/jvm/functions/Function0;

    sget v2, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/lit8 v0, v2, 0x6

    or-int v15, v0, p0

    move-object v7, v1

    move-object/from16 v1, v16

    const/16 v16, 0x1b6

    move-object/from16 v2, v17

    invoke-static/range {v1 .. v16}, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListBffScreenKt;->b(Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    goto :goto_b

    :cond_41
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->D()V

    :goto_b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_5
    move v0, v14

    move-object/from16 v14, p1

    check-cast v14, Landroidx/compose/runtime/Composer;

    move-object/from16 v4, p2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v7, Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListBffScreenKt;->a:Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListBffScreenKt;

    and-int/lit8 v7, v4, 0x3

    if-eq v7, v3, :cond_42

    move v3, v5

    goto :goto_c

    :cond_42
    move v3, v6

    :goto_c
    and-int/2addr v4, v5

    invoke-interface {v14, v4, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_4c

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v17, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;

    sget-object v18, Lcom/vuitton/android/presentation/screen/options/dispatch/models/InAppDispatchMockKt;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v3, Lcom/vuitton/android/presentation/screen/repairs/mocks/RepairsBffMockKt;->a:Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;

    iget-object v4, v3, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;->d:Ljava/util/List;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;->e:Ljava/util/List;

    new-instance v19, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;

    const/16 v25, 0x1d

    const/16 v26, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v19 .. v26}, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;-><init>(ZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v30, 0xbe6

    const/16 v31, 0x0

    move-object/from16 v28, v19

    const/16 v19, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    move-object/from16 v22, v3

    move-object/from16 v21, v4

    invoke-direct/range {v17 .. v31}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;-><init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v18, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    const/16 v31, 0xfff

    const/16 v32, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-direct/range {v18 .. v32}, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;-><init>(ZLjava/lang/String;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel;ZZZLcom/vuitton/android/presentation/contact/ContactUsMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v6, v2, v14, v1}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v3

    sget-object v4, Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListBffScreenKt;->d:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_43

    new-instance v1, Lgo;

    const/16 v5, 0x13

    invoke-direct {v1, v5}, Lgo;-><init>(I)V

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_43
    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_44

    new-instance v1, Leo;

    const/16 v6, 0x1a

    invoke-direct {v1, v6}, Leo;-><init>(I)V

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_44
    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_45

    new-instance v1, Leo;

    const/16 v7, 0x1b

    invoke-direct {v1, v7}, Leo;-><init>(I)V

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_45
    move-object v7, v1

    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_46

    sget-object v1, Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListBffScreenKt$lambda$1544678005$1$4$1;->b:Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListBffScreenKt$lambda$1544678005$1$4$1;

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_46
    move-object v8, v1

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_47

    sget-object v1, Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListBffScreenKt$lambda$1544678005$1$5$1;->b:Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListBffScreenKt$lambda$1544678005$1$5$1;

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_47
    move-object v9, v1

    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_48

    new-instance v1, Lgo;

    invoke-direct {v1, v12}, Lgo;-><init>(I)V

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_48
    move-object v10, v1

    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_49

    new-instance v1, Lgo;

    invoke-direct {v1, v0}, Lgo;-><init>(I)V

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_49
    move-object v11, v1

    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_4a

    new-instance v1, Leo;

    const/16 v12, 0x10

    invoke-direct {v1, v12}, Leo;-><init>(I)V

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4a
    move-object v12, v1

    check-cast v12, Lkotlin/jvm/functions/Function1;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_4b

    new-instance v1, Lgo;

    invoke-direct {v1, v2}, Lgo;-><init>(I)V

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4b
    move-object v13, v1

    check-cast v13, Lkotlin/jvm/functions/Function0;

    sget v1, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/lit8 v0, v1, 0x6

    or-int v15, v0, p0

    const/16 v16, 0x1b6

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static/range {v1 .. v16}, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListBffScreenKt;->b(Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    goto :goto_d

    :cond_4c
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->D()V

    :goto_d
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_6
    move v0, v14

    move-object/from16 v14, p1

    check-cast v14, Landroidx/compose/runtime/Composer;

    move-object/from16 v4, p2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v7, Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListBffScreenKt;->a:Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListBffScreenKt;

    and-int/lit8 v7, v4, 0x3

    if-eq v7, v3, :cond_4d

    move v3, v5

    goto :goto_e

    :cond_4d
    move v3, v6

    :goto_e
    and-int/2addr v4, v5

    invoke-interface {v14, v4, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_57

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v22, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;

    sget-object v23, Lcom/vuitton/android/presentation/screen/options/dispatch/models/InAppDispatchMockKt;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v26, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    new-instance v33, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;

    move-object/from16 v27, v33

    const/16 v33, 0x1c

    const/16 v34, 0x0

    const/16 v28, 0x1

    const/16 v29, 0x1

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-direct/range {v27 .. v34}, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;-><init>(ZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v35, 0xbe6

    const/16 v36, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v32, 0x0

    move-object/from16 v33, v27

    move-object/from16 v27, v26

    invoke-direct/range {v22 .. v36}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;-><init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v23, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    const/16 v36, 0xfff

    const/16 v37, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-direct/range {v23 .. v37}, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;-><init>(ZLjava/lang/String;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel;ZZZLcom/vuitton/android/presentation/contact/ContactUsMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v6, v2, v14, v1}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v3

    sget-object v4, Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListBffScreenKt;->c:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_4e

    new-instance v1, Lgo;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Lgo;-><init>(I)V

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4e
    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_4f

    new-instance v1, Leo;

    const/16 v10, 0x15

    invoke-direct {v1, v10}, Leo;-><init>(I)V

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4f
    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_50

    new-instance v1, Leo;

    const/16 v12, 0x16

    invoke-direct {v1, v12}, Leo;-><init>(I)V

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_50
    move-object v7, v1

    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_51

    sget-object v1, Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListBffScreenKt$lambda$-1640917754$1$4$1;->b:Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListBffScreenKt$lambda$-1640917754$1$4$1;

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_51
    move-object v8, v1

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_52

    sget-object v1, Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListBffScreenKt$lambda$-1640917754$1$5$1;->b:Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListBffScreenKt$lambda$-1640917754$1$5$1;

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_52
    move-object v9, v1

    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_53

    new-instance v1, Lgo;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Lgo;-><init>(I)V

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_53
    move-object v10, v1

    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_54

    new-instance v1, Lgo;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Lgo;-><init>(I)V

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_54
    move-object v11, v1

    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_55

    new-instance v1, Leo;

    const/16 v13, 0x17

    invoke-direct {v1, v13}, Leo;-><init>(I)V

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_55
    move-object v12, v1

    check-cast v12, Lkotlin/jvm/functions/Function1;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_56

    new-instance v1, Lgo;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lgo;-><init>(I)V

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_56
    move-object v13, v1

    check-cast v13, Lkotlin/jvm/functions/Function0;

    sget v1, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/lit8 v0, v1, 0x6

    or-int v15, v0, p0

    const/16 v16, 0x1b6

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static/range {v1 .. v16}, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListBffScreenKt;->b(Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    goto :goto_f

    :cond_57
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->D()V

    :goto_f
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
