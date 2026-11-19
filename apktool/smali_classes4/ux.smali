.class public final synthetic Lux;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;

.field public final synthetic f:Landroid/content/Context;

.field public final synthetic g:Z

.field public final synthetic h:Lkotlin/jvm/functions/Function0;

.field public final synthetic i:Lkotlin/jvm/functions/Function1;

.field public final synthetic j:Lkotlin/jvm/functions/Function0;

.field public final synthetic k:Lkotlin/jvm/functions/Function1;

.field public final synthetic l:Lkotlin/jvm/functions/Function1;

.field public final synthetic m:Lkotlin/jvm/functions/Function2;

.field public final synthetic n:Lkotlin/jvm/functions/Function1;

.field public final synthetic o:Lkotlin/jvm/functions/Function1;

.field public final synthetic p:Lkotlin/jvm/functions/Function2;

.field public final synthetic q:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;Landroid/content/Context;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lux;->b:Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;

    iput-object p2, p0, Lux;->c:Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;

    iput-object p3, p0, Lux;->d:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lux;->e:Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;

    iput-object p5, p0, Lux;->f:Landroid/content/Context;

    iput-boolean p6, p0, Lux;->g:Z

    iput-object p7, p0, Lux;->h:Lkotlin/jvm/functions/Function0;

    iput-object p8, p0, Lux;->i:Lkotlin/jvm/functions/Function1;

    iput-object p9, p0, Lux;->j:Lkotlin/jvm/functions/Function0;

    iput-object p10, p0, Lux;->k:Lkotlin/jvm/functions/Function1;

    iput-object p11, p0, Lux;->l:Lkotlin/jvm/functions/Function1;

    iput-object p12, p0, Lux;->m:Lkotlin/jvm/functions/Function2;

    iput-object p13, p0, Lux;->n:Lkotlin/jvm/functions/Function1;

    iput-object p14, p0, Lux;->o:Lkotlin/jvm/functions/Function1;

    iput-object p15, p0, Lux;->p:Lkotlin/jvm/functions/Function2;

    move-object/from16 p1, p16

    iput-object p1, p0, Lux;->q:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/vuitton/android/presentation/screen/feed/components/ComposableSingletons$FeedForYouSuccessScreenKt;->a:Lcom/vuitton/android/presentation/screen/feed/components/ComposableSingletons$FeedForYouSuccessScreenKt;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/vuitton/android/presentation/screen/feed/components/ComposableSingletons$FeedForYouSuccessScreenKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v1, v3, v2, v4}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    new-instance v2, Ld3;

    iget-object v6, v0, Lux;->b:Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;

    const/16 v5, 0x13

    invoke-direct {v2, v6, v5}, Ld3;-><init>(Ljava/lang/Object;I)V

    new-instance v7, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v8, 0x4e316c20    # 7.4416333E8f

    const/4 v9, 0x1

    invoke-direct {v7, v8, v9, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {v1, v3, v7, v4}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    iget-object v2, v6, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->e:Ljava/util/List;

    const/4 v7, 0x2

    iget-object v8, v0, Lux;->e:Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;

    if-eqz v2, :cond_1

    move-object v10, v2

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_1

    sget-object v2, Lcom/vuitton/android/presentation/screen/feed/components/ComposableSingletons$FeedForYouSuccessScreenKt;->c:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static {v1, v3, v2, v4}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    new-instance v2, Lg1;

    iget-object v10, v0, Lux;->d:Lkotlin/jvm/functions/Function1;

    invoke-direct {v2, v6, v10, v8, v5}, Lg1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v5, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v10, -0x5797de5f

    invoke-direct {v5, v10, v9, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    const-string v2, "hotcontent_widget"

    invoke-static {v1, v2, v5, v7}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    :cond_1
    iget-object v2, v0, Lux;->c:Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;->a:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v22, v5, 0x1

    if-ltz v5, :cond_2

    check-cast v10, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;

    invoke-virtual {v10}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;->a()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v21, v8

    move v8, v5

    new-instance v5, Lcom/vuitton/android/presentation/screen/feed/components/e;

    move v12, v7

    iget-object v7, v0, Lux;->f:Landroid/content/Context;

    move v13, v9

    iget-boolean v9, v0, Lux;->g:Z

    move-object v14, v11

    iget-object v11, v0, Lux;->h:Lkotlin/jvm/functions/Function0;

    move v15, v12

    iget-object v12, v0, Lux;->i:Lkotlin/jvm/functions/Function1;

    move/from16 v16, v13

    iget-object v13, v0, Lux;->j:Lkotlin/jvm/functions/Function0;

    move-object/from16 v17, v14

    iget-object v14, v0, Lux;->k:Lkotlin/jvm/functions/Function1;

    move/from16 v18, v15

    iget-object v15, v0, Lux;->l:Lkotlin/jvm/functions/Function1;

    move-object/from16 p1, v3

    iget-object v3, v0, Lux;->m:Lkotlin/jvm/functions/Function2;

    iget-object v4, v0, Lux;->n:Lkotlin/jvm/functions/Function1;

    move-object/from16 v23, v2

    iget-object v2, v0, Lux;->o:Lkotlin/jvm/functions/Function1;

    move-object/from16 v19, v2

    iget-object v2, v0, Lux;->p:Lkotlin/jvm/functions/Function2;

    move-object/from16 v20, v2

    iget-object v2, v0, Lux;->q:Lkotlin/jvm/functions/Function2;

    move-object/from16 v24, v20

    move-object/from16 v20, v2

    move-object/from16 v2, v17

    move-object/from16 v17, v4

    move/from16 v4, v16

    move-object/from16 v16, v3

    move/from16 v3, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v24

    invoke-direct/range {v5 .. v21}, Lcom/vuitton/android/presentation/screen/feed/components/e;-><init>(Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;Landroid/content/Context;IZLcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;)V

    new-instance v7, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v8, -0x4eb1261e

    invoke-direct {v7, v8, v4, v5}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {v1, v2, v7, v3}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    move v7, v3

    move v9, v4

    move-object/from16 v8, v21

    move/from16 v5, v22

    move-object/from16 v2, v23

    const/4 v4, 0x3

    move-object/from16 v3, p1

    goto :goto_1

    :cond_2
    move-object/from16 p1, v3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->t0()V

    throw p1

    :cond_3
    move-object/from16 p1, v3

    sget-object v0, Lcom/vuitton/android/presentation/screen/feed/components/ComposableSingletons$FeedForYouSuccessScreenKt;->a:Lcom/vuitton/android/presentation/screen/feed/components/ComposableSingletons$FeedForYouSuccessScreenKt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/feed/components/ComposableSingletons$FeedForYouSuccessScreenKt;->d:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-object/from16 v2, p1

    const/4 v3, 0x3

    invoke-static {v1, v2, v0, v3}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
