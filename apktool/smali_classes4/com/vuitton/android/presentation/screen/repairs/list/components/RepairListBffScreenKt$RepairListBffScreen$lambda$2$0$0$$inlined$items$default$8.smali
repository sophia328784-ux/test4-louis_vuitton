.class public final Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListBffScreenKt$RepairListBffScreen$lambda$2$0$0$$inlined$items$default$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function4<",
        "Landroidx/compose/foundation/lazy/LazyItemScope;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;

.field public final synthetic g:Lkotlin/jvm/functions/Function1;

.field public final synthetic h:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListBffScreenKt$RepairListBffScreen$lambda$2$0$0$$inlined$items$default$8;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListBffScreenKt$RepairListBffScreen$lambda$2$0$0$$inlined$items$default$8;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListBffScreenKt$RepairListBffScreen$lambda$2$0$0$$inlined$items$default$8;->d:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListBffScreenKt$RepairListBffScreen$lambda$2$0$0$$inlined$items$default$8;->e:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListBffScreenKt$RepairListBffScreen$lambda$2$0$0$$inlined$items$default$8;->f:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListBffScreenKt$RepairListBffScreen$lambda$2$0$0$$inlined$items$default$8;->g:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListBffScreenKt$RepairListBffScreen$lambda$2$0$0$$inlined$items$default$8;->h:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScope;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    move-object/from16 v10, p3

    check-cast v10, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p4

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    and-int/lit8 v4, v3, 0x6

    if-nez v4, :cond_1

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v3

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    and-int/lit8 v3, v3, 0x30

    if-nez v3, :cond_3

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x20

    goto :goto_2

    :cond_2
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v1, v3

    :cond_3
    and-int/lit16 v3, v1, 0x93

    const/16 v4, 0x92

    const/4 v5, 0x1

    if-eq v3, v4, :cond_4

    move v3, v5

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    and-int/2addr v1, v5

    invoke-interface {v10, v1, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListBffScreenKt$RepairListBffScreen$lambda$2$0$0$$inlined$items$default$8;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;

    const v1, -0xc6f500a

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListBffScreenKt$RepairListBffScreen$lambda$2$0$0$$inlined$items$default$8;->d:Lkotlin/jvm/functions/Function1;

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v2, :cond_5

    if-ne v3, v5, :cond_6

    :cond_5
    new-instance v3, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListBffScreenKt$RepairListBffScreen$3$1$1$5$1$1;

    invoke-direct {v3, v4, v1}, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListBffScreenKt$RepairListBffScreen$3$1$1$5$1$1;-><init>(Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v3, Lkotlin/jvm/functions/Function0;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListBffScreenKt$RepairListBffScreen$lambda$2$0$0$$inlined$items$default$8;->h:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_7

    if-ne v2, v5, :cond_8

    :cond_7
    new-instance v11, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListBffScreenKt$RepairListBffScreen$3$1$1$5$2$1;

    const-string v16, "show()V"

    const/16 v17, 0x0

    const/4 v12, 0x0

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListBffScreenKt$RepairListBffScreen$lambda$2$0$0$$inlined$items$default$8;->h:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    const-class v14, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    const-string v15, "show"

    invoke-direct/range {v11 .. v17}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v10, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v2, v11

    :cond_8
    check-cast v2, Lkotlin/reflect/KFunction;

    move-object v9, v2

    check-cast v9, Lkotlin/jvm/functions/Function0;

    move-object v5, v3

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListBffScreenKt$RepairListBffScreen$lambda$2$0$0$$inlined$items$default$8;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListBffScreenKt$RepairListBffScreen$lambda$2$0$0$$inlined$items$default$8;->e:Lkotlin/jvm/functions/Function1;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListBffScreenKt$RepairListBffScreen$lambda$2$0$0$$inlined$items$default$8;->f:Lkotlin/jvm/functions/Function1;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListBffScreenKt$RepairListBffScreen$lambda$2$0$0$$inlined$items$default$8;->g:Lkotlin/jvm/functions/Function1;

    const/4 v11, 0x0

    invoke-static/range {v3 .. v11}, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListBffItemKt;->c(Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_4

    :cond_9
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->D()V

    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
