.class public final synthetic Lnk0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lkotlin/jvm/functions/Function1;

.field public final synthetic c:Landroidx/paging/compose/LazyPagingItems;

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;

.field public final synthetic g:Lkotlin/jvm/functions/Function1;

.field public final synthetic h:Lkotlin/jvm/functions/Function1;

.field public final synthetic i:Lkotlin/jvm/functions/Function2;

.field public final synthetic j:Lkotlin/jvm/functions/Function1;

.field public final synthetic k:Lkotlin/jvm/functions/Function2;

.field public final synthetic l:Lkotlin/jvm/functions/Function1;

.field public final synthetic m:Z

.field public final synthetic n:Lkotlin/jvm/functions/Function1;

.field public final synthetic o:Landroidx/compose/runtime/MutableState;

.field public final synthetic p:Landroidx/compose/runtime/MutableState;

.field public final synthetic q:F


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Landroidx/paging/compose/LazyPagingItems;ZZLcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnk0;->b:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lnk0;->c:Landroidx/paging/compose/LazyPagingItems;

    iput-boolean p3, p0, Lnk0;->d:Z

    iput-boolean p4, p0, Lnk0;->e:Z

    iput-object p5, p0, Lnk0;->f:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;

    iput-object p6, p0, Lnk0;->g:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Lnk0;->h:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Lnk0;->i:Lkotlin/jvm/functions/Function2;

    iput-object p9, p0, Lnk0;->j:Lkotlin/jvm/functions/Function1;

    iput-object p10, p0, Lnk0;->k:Lkotlin/jvm/functions/Function2;

    iput-object p11, p0, Lnk0;->l:Lkotlin/jvm/functions/Function1;

    iput-boolean p12, p0, Lnk0;->m:Z

    iput-object p13, p0, Lnk0;->n:Lkotlin/jvm/functions/Function1;

    iput-object p14, p0, Lnk0;->o:Landroidx/compose/runtime/MutableState;

    iput-object p15, p0, Lnk0;->p:Landroidx/compose/runtime/MutableState;

    move/from16 p1, p16

    iput p1, p0, Lnk0;->q:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lnk0;->b:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v2, p0, Lnk0;->c:Landroidx/paging/compose/LazyPagingItems;

    invoke-virtual {v2}, Landroidx/paging/compose/LazyPagingItems;->d()Landroidx/paging/CombinedLoadStates;

    move-result-object p1

    iget-object p1, p1, Landroidx/paging/CombinedLoadStates;->a:Landroidx/paging/LoadState;

    instance-of p1, p1, Landroidx/paging/LoadState$Error;

    const/4 v8, 0x1

    const/4 v9, 0x3

    const/4 v10, 0x0

    iget-boolean v1, p0, Lnk0;->d:Z

    if-nez p1, :cond_1

    invoke-virtual {v2}, Landroidx/paging/compose/LazyPagingItems;->d()Landroidx/paging/CombinedLoadStates;

    move-result-object p1

    iget-object p1, p1, Landroidx/paging/CombinedLoadStates;->c:Landroidx/paging/LoadState;

    instance-of p1, p1, Landroidx/paging/LoadState$Error;

    if-eqz p1, :cond_2

    invoke-virtual {v2}, Landroidx/paging/compose/LazyPagingItems;->b()I

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    invoke-virtual {v2}, Landroidx/paging/compose/LazyPagingItems;->b()I

    move-result p1

    if-eqz p1, :cond_a

    if-eqz v1, :cond_2

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v2}, Landroidx/paging/compose/LazyPagingItems;->d()Landroidx/paging/CombinedLoadStates;

    move-result-object p1

    iget-object p1, p1, Landroidx/paging/CombinedLoadStates;->a:Landroidx/paging/LoadState;

    instance-of p1, p1, Landroidx/paging/LoadState$Loading;

    move v3, v1

    iget-object v1, p0, Lnk0;->f:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;

    if-nez p1, :cond_3

    invoke-virtual {v2}, Landroidx/paging/compose/LazyPagingItems;->d()Landroidx/paging/CombinedLoadStates;

    move-result-object p1

    iget-object p1, p1, Landroidx/paging/CombinedLoadStates;->c:Landroidx/paging/LoadState;

    instance-of p1, p1, Landroidx/paging/LoadState$Loading;

    if-eqz p1, :cond_5

    invoke-virtual {v2}, Landroidx/paging/compose/LazyPagingItems;->b()I

    move-result p1

    if-nez p1, :cond_5

    :cond_3
    iget-boolean p1, p0, Lnk0;->e:Z

    if-eqz p1, :cond_5

    invoke-virtual {v2}, Landroidx/paging/compose/LazyPagingItems;->b()I

    move-result p1

    if-eqz p1, :cond_4

    if-eqz v3, :cond_5

    :cond_4
    invoke-static {v0, v1}, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/PLPSkeletonKt;->d(Landroidx/compose/foundation/lazy/LazyListScope;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;)V

    goto/16 :goto_1

    :cond_5
    iget-object p1, p0, Lnk0;->g:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_6

    invoke-virtual {v2}, Landroidx/paging/compose/LazyPagingItems;->b()I

    move-result v3

    if-nez v3, :cond_6

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_6
    iget-object v3, p0, Lnk0;->h:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Lnk0;->i:Lkotlin/jvm/functions/Function2;

    iget-object v5, p0, Lnk0;->j:Lkotlin/jvm/functions/Function1;

    iget-object v6, p0, Lnk0;->k:Lkotlin/jvm/functions/Function2;

    iget-object v7, p0, Lnk0;->l:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/PLPItemsKt;->d(Landroidx/compose/foundation/lazy/LazyListScope;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;Landroidx/paging/compose/LazyPagingItems;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v2}, Landroidx/paging/compose/LazyPagingItems;->d()Landroidx/paging/CombinedLoadStates;

    move-result-object p1

    iget-object p1, p1, Landroidx/paging/CombinedLoadStates;->c:Landroidx/paging/LoadState;

    instance-of p1, p1, Landroidx/paging/LoadState$Loading;

    if-eqz p1, :cond_7

    sget-object p1, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/ComposableSingletons$PLPItemsKt;->a:Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/ComposableSingletons$PLPItemsKt;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/ComposableSingletons$PLPItemsKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static {v0, v10, p1, v9}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    :cond_7
    iget-boolean p1, p0, Lnk0;->m:Z

    if-eqz p1, :cond_8

    invoke-virtual {v2}, Landroidx/paging/compose/LazyPagingItems;->d()Landroidx/paging/CombinedLoadStates;

    move-result-object p1

    iget-object p1, p1, Landroidx/paging/CombinedLoadStates;->c:Landroidx/paging/LoadState;

    instance-of p1, p1, Landroidx/paging/LoadState$NotLoading;

    if-eqz p1, :cond_8

    new-instance p1, Ltd;

    const/4 v1, 0x6

    iget v2, p0, Lnk0;->q:F

    invoke-direct {p1, v2, v1}, Ltd;-><init>(FI)V

    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v2, 0x5f435a0f

    invoke-direct {v1, v2, v8, p1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {v0, v10, v1, v9}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    :cond_8
    iget-object p0, p0, Lnk0;->n:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_9

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_9
    sget-object p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/ComposableSingletons$PLPKt;->a:Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/ComposableSingletons$PLPKt;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/ComposableSingletons$PLPKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static {v0, v10, p0, v9}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    goto :goto_1

    :cond_a
    :goto_0
    iget-object p1, p0, Lnk0;->o:Landroidx/compose/runtime/MutableState;

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/unit/Dp;

    iget p1, p1, Landroidx/compose/ui/unit/Dp;->b:F

    iget-object p0, p0, Lnk0;->p:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/unit/Dp;

    iget p0, p0, Landroidx/compose/ui/unit/Dp;->b:F

    sub-float/2addr p1, p0

    new-instance p0, Ltd;

    const/4 v1, 0x5

    invoke-direct {p0, p1, v1}, Ltd;-><init>(FI)V

    new-instance p1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v1, -0x64b6df87

    invoke-direct {p1, v1, v8, p0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {v0, v10, p1, v9}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
