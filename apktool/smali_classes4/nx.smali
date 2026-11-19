.class public final synthetic Lnx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;

.field public final synthetic c:J

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Z

.field public final synthetic f:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

.field public final synthetic g:Z

.field public final synthetic h:Lcom/vuitton/android/presentation/model/common/A11ySettings;

.field public final synthetic i:Lkotlin/jvm/functions/Function1;

.field public final synthetic j:Lkotlin/jvm/functions/Function1;

.field public final synthetic k:Lkotlin/jvm/functions/Function1;

.field public final synthetic l:Lkotlin/jvm/functions/Function1;

.field public final synthetic m:Lkotlin/jvm/functions/Function1;

.field public final synthetic n:Lkotlin/jvm/functions/Function2;

.field public final synthetic o:Lkotlin/jvm/functions/Function2;

.field public final synthetic p:Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;JLandroid/content/Context;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLcom/vuitton/android/presentation/model/common/A11ySettings;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnx;->b:Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;

    iput-wide p2, p0, Lnx;->c:J

    iput-object p4, p0, Lnx;->d:Landroid/content/Context;

    iput-boolean p5, p0, Lnx;->e:Z

    iput-object p6, p0, Lnx;->f:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iput-boolean p7, p0, Lnx;->g:Z

    iput-object p8, p0, Lnx;->h:Lcom/vuitton/android/presentation/model/common/A11ySettings;

    iput-object p9, p0, Lnx;->i:Lkotlin/jvm/functions/Function1;

    iput-object p10, p0, Lnx;->j:Lkotlin/jvm/functions/Function1;

    iput-object p11, p0, Lnx;->k:Lkotlin/jvm/functions/Function1;

    iput-object p12, p0, Lnx;->l:Lkotlin/jvm/functions/Function1;

    iput-object p13, p0, Lnx;->m:Lkotlin/jvm/functions/Function1;

    iput-object p14, p0, Lnx;->n:Lkotlin/jvm/functions/Function2;

    iput-object p15, p0, Lnx;->o:Lkotlin/jvm/functions/Function2;

    move-object/from16 p1, p16

    iput-object p1, p0, Lnx;->p:Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/vuitton/android/presentation/screen/feed/components/ComposableSingletons$FeedDiscoverSuccessScreenKt;->a:Lcom/vuitton/android/presentation/screen/feed/components/ComposableSingletons$FeedDiscoverSuccessScreenKt;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/vuitton/android/presentation/screen/feed/components/ComposableSingletons$FeedDiscoverSuccessScreenKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v1, v3, v2, v4}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    new-instance v2, Lfa;

    iget-wide v5, v0, Lnx;->c:J

    const/4 v7, 0x1

    invoke-direct {v2, v5, v6, v7}, Lfa;-><init>(JI)V

    new-instance v5, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v6, -0x39881dd6

    invoke-direct {v5, v6, v7, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {v1, v3, v5, v4}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    sget-object v2, Lcom/vuitton/android/presentation/screen/feed/components/ComposableSingletons$FeedDiscoverSuccessScreenKt;->c:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static {v1, v3, v2, v4}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    iget-object v2, v0, Lnx;->b:Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;->a:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    move v10, v5

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v24, v10, 0x1

    if-ltz v10, :cond_0

    move-object v15, v6

    check-cast v15, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;

    new-instance v6, Lpx;

    invoke-direct {v6, v10, v5}, Lpx;-><init>(II)V

    new-instance v8, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v9, -0x45c71758

    invoke-direct {v8, v9, v7, v6}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {v1, v3, v8, v4}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    invoke-virtual {v15}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;->a()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Lcom/vuitton/android/presentation/screen/feed/components/d;

    iget-object v9, v0, Lnx;->d:Landroid/content/Context;

    iget-boolean v11, v0, Lnx;->e:Z

    iget-object v12, v0, Lnx;->f:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iget-boolean v13, v0, Lnx;->g:Z

    iget-object v14, v0, Lnx;->h:Lcom/vuitton/android/presentation/model/common/A11ySettings;

    iget-object v5, v0, Lnx;->i:Lkotlin/jvm/functions/Function1;

    move-object/from16 v25, v3

    iget-object v3, v0, Lnx;->j:Lkotlin/jvm/functions/Function1;

    iget-object v4, v0, Lnx;->k:Lkotlin/jvm/functions/Function1;

    iget-object v7, v0, Lnx;->l:Lkotlin/jvm/functions/Function1;

    move-object/from16 v26, v2

    iget-object v2, v0, Lnx;->m:Lkotlin/jvm/functions/Function1;

    move-object/from16 v20, v2

    iget-object v2, v0, Lnx;->n:Lkotlin/jvm/functions/Function2;

    move-object/from16 v21, v2

    iget-object v2, v0, Lnx;->o:Lkotlin/jvm/functions/Function2;

    move-object/from16 v22, v2

    iget-object v2, v0, Lnx;->p:Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;

    move-object/from16 v23, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v16, v5

    move-object/from16 v19, v7

    invoke-direct/range {v8 .. v23}, Lcom/vuitton/android/presentation/screen/feed/components/d;-><init>(Landroid/content/Context;IZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLcom/vuitton/android/presentation/model/common/A11ySettings;Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;)V

    new-instance v2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v3, -0x40a0dba1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v8}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    const/4 v3, 0x2

    invoke-static {v1, v6, v2, v3}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    move v7, v4

    move/from16 v10, v24

    move-object/from16 v3, v25

    move-object/from16 v2, v26

    const/4 v4, 0x3

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v25, v3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->t0()V

    throw v25

    :cond_1
    move-object/from16 v25, v3

    sget-object v0, Lcom/vuitton/android/presentation/screen/feed/components/ComposableSingletons$FeedDiscoverSuccessScreenKt;->a:Lcom/vuitton/android/presentation/screen/feed/components/ComposableSingletons$FeedDiscoverSuccessScreenKt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/feed/components/ComposableSingletons$FeedDiscoverSuccessScreenKt;->d:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-object/from16 v2, v25

    const/4 v3, 0x3

    invoke-static {v1, v2, v0, v3}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
