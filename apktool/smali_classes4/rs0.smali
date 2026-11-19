.class public final synthetic Lrs0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;

.field public final synthetic c:Lkotlin/jvm/functions/Function0;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;

.field public final synthetic g:Lkotlin/jvm/functions/Function1;

.field public final synthetic h:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

.field public final synthetic i:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lrs0;->b:Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;

    iput-object p3, p0, Lrs0;->c:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lrs0;->d:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lrs0;->e:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Lrs0;->f:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Lrs0;->g:Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Lrs0;->h:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    iput-object p4, p0, Lrs0;->i:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    check-cast p1, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lrs0;->b:Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;

    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;->d:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v0, :cond_0

    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;->l:Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, La3;

    const/16 v1, 0x1c

    iget-object v3, p0, Lrs0;->c:Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v3, v1}, La3;-><init>(Lkotlin/jvm/functions/Function0;I)V

    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v3, 0x66d86226

    invoke-direct {v1, v3, v10, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {p1, v9, v1, v8}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    :cond_0
    new-instance v0, Lss0;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lss0;-><init>(Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;I)V

    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v3, -0x578614df

    invoke-direct {v1, v3, v10, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {p1, v9, v1, v8}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;->d:Ljava/util/List;

    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListBffScreenKt$RepairListBffScreen$lambda$2$0$0$$inlined$items$default$1;->b:Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListBffScreenKt$RepairListBffScreen$lambda$2$0$0$$inlined$items$default$1;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    new-instance v12, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListBffScreenKt$RepairListBffScreen$lambda$2$0$0$$inlined$items$default$3;

    invoke-direct {v12, v0, v1}, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListBffScreenKt$RepairListBffScreen$lambda$2$0$0$$inlined$items$default$3;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListBffScreenKt$RepairListBffScreen$lambda$2$0$0$$inlined$items$default$4;

    iget-object v3, p0, Lrs0;->d:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Lrs0;->e:Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Lrs0;->f:Lkotlin/jvm/functions/Function1;

    iget-object v6, p0, Lrs0;->g:Lkotlin/jvm/functions/Function1;

    iget-object v7, p0, Lrs0;->h:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    invoke-direct/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListBffScreenKt$RepairListBffScreen$lambda$2$0$0$$inlined$items$default$4;-><init>(Ljava/util/List;Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;)V

    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v13, 0x2fd4df92

    invoke-direct {v1, v13, v10, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-interface {p1, v11, v9, v12, v1}, Landroidx/compose/foundation/lazy/LazyListScope;->h(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    new-instance v0, Lss0;

    invoke-direct {v0, v2, v10}, Lss0;-><init>(Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;I)V

    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v11, -0x7cfc2436

    invoke-direct {v1, v11, v10, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {p1, v9, v1, v8}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;->e:Ljava/util/List;

    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListBffScreenKt$RepairListBffScreen$lambda$2$0$0$$inlined$items$default$5;->b:Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListBffScreenKt$RepairListBffScreen$lambda$2$0$0$$inlined$items$default$5;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    new-instance v12, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListBffScreenKt$RepairListBffScreen$lambda$2$0$0$$inlined$items$default$7;

    invoke-direct {v12, v0, v1}, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListBffScreenKt$RepairListBffScreen$lambda$2$0$0$$inlined$items$default$7;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListBffScreenKt$RepairListBffScreen$lambda$2$0$0$$inlined$items$default$8;

    invoke-direct/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListBffScreenKt$RepairListBffScreen$lambda$2$0$0$$inlined$items$default$8;-><init>(Ljava/util/List;Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;)V

    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-direct {v1, v13, v10, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-interface {p1, v11, v9, v12, v1}, Landroidx/compose/foundation/lazy/LazyListScope;->h(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;->k:Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;->a:Z

    if-eqz v0, :cond_1

    new-instance v0, Lni0;

    const/16 v1, 0x12

    iget-object p0, p0, Lrs0;->i:Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v2, p0, v1}, Lni0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v1, 0x23a0a58f

    invoke-direct {p0, v1, v10, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {p1, v9, p0, v8}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListBffScreenKt;->a:Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListBffScreenKt;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/vuitton/android/presentation/screen/repairs/list/components/ComposableSingletons$RepairListBffScreenKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static {p1, v9, p0, v8}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
