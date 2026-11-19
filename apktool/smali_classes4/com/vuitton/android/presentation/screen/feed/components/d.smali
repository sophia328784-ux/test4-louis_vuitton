.class public final synthetic Lcom/vuitton/android/presentation/screen/feed/components/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:I

.field public final synthetic d:Z

.field public final synthetic e:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

.field public final synthetic f:Z

.field public final synthetic g:Lcom/vuitton/android/presentation/model/common/A11ySettings;

.field public final synthetic h:Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;

.field public final synthetic i:Lkotlin/jvm/functions/Function1;

.field public final synthetic j:Lkotlin/jvm/functions/Function1;

.field public final synthetic k:Lkotlin/jvm/functions/Function1;

.field public final synthetic l:Lkotlin/jvm/functions/Function1;

.field public final synthetic m:Lkotlin/jvm/functions/Function1;

.field public final synthetic n:Lkotlin/jvm/functions/Function2;

.field public final synthetic o:Lkotlin/jvm/functions/Function2;

.field public final synthetic p:Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;IZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLcom/vuitton/android/presentation/model/common/A11ySettings;Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/feed/components/d;->b:Landroid/content/Context;

    iput p2, p0, Lcom/vuitton/android/presentation/screen/feed/components/d;->c:I

    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/feed/components/d;->d:Z

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/feed/components/d;->e:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iput-boolean p5, p0, Lcom/vuitton/android/presentation/screen/feed/components/d;->f:Z

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/feed/components/d;->g:Lcom/vuitton/android/presentation/model/common/A11ySettings;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/feed/components/d;->h:Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/feed/components/d;->i:Lkotlin/jvm/functions/Function1;

    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/feed/components/d;->j:Lkotlin/jvm/functions/Function1;

    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/feed/components/d;->k:Lkotlin/jvm/functions/Function1;

    iput-object p11, p0, Lcom/vuitton/android/presentation/screen/feed/components/d;->l:Lkotlin/jvm/functions/Function1;

    iput-object p12, p0, Lcom/vuitton/android/presentation/screen/feed/components/d;->m:Lkotlin/jvm/functions/Function1;

    iput-object p13, p0, Lcom/vuitton/android/presentation/screen/feed/components/d;->n:Lkotlin/jvm/functions/Function2;

    iput-object p14, p0, Lcom/vuitton/android/presentation/screen/feed/components/d;->o:Lkotlin/jvm/functions/Function2;

    iput-object p15, p0, Lcom/vuitton/android/presentation/screen/feed/components/d;->p:Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScope;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v1, v3, 0x11

    const/16 v4, 0x10

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v1, v4, :cond_0

    move v1, v6

    goto :goto_0

    :cond_0
    move v1, v5

    :goto_0
    and-int/2addr v3, v6

    invoke-interface {v2, v3, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v4, Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;->DISCOVER:Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/feed/components/d;->i:Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/feed/components/d;->h:Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;

    invoke-interface {v2, v10}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v3, v6

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v3, :cond_1

    if-ne v6, v7, :cond_2

    :cond_1
    new-instance v6, Lqx;

    invoke-direct {v6, v1, v10, v5}, Lqx;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;I)V

    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    move-object v12, v6

    check-cast v12, Lkotlin/jvm/functions/Function0;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/feed/components/d;->n:Lkotlin/jvm/functions/Function2;

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v2, v10}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v3, v5

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_3

    if-ne v5, v7, :cond_4

    :cond_3
    new-instance v5, Lcom/vuitton/android/presentation/screen/feed/components/FeedDiscoverSuccessScreenKt$FeedDiscoverSuccessScreen$4$1$2$2$2$1;

    invoke-direct {v5, v1, v10}, Lcom/vuitton/android/presentation/screen/feed/components/FeedDiscoverSuccessScreenKt$FeedDiscoverSuccessScreen$4$1$2$2$2$1;-><init>(Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;)V

    invoke-interface {v2, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    move-object/from16 v19, v5

    check-cast v19, Lkotlin/jvm/functions/Function1;

    const/16 v23, 0x180

    const/16 v24, 0x4a80

    move-object/from16 v22, v2

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/feed/components/d;->b:Landroid/content/Context;

    iget v3, v0, Lcom/vuitton/android/presentation/screen/feed/components/d;->c:I

    iget-boolean v5, v0, Lcom/vuitton/android/presentation/screen/feed/components/d;->d:Z

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/feed/components/d;->e:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iget-boolean v7, v0, Lcom/vuitton/android/presentation/screen/feed/components/d;->f:Z

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/feed/components/d;->g:Lcom/vuitton/android/presentation/model/common/A11ySettings;

    const/4 v13, 0x0

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/feed/components/d;->j:Lkotlin/jvm/functions/Function1;

    iget-object v15, v0, Lcom/vuitton/android/presentation/screen/feed/components/d;->k:Lkotlin/jvm/functions/Function1;

    const/16 v16, 0x0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/feed/components/d;->l:Lkotlin/jvm/functions/Function1;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/feed/components/d;->m:Lkotlin/jvm/functions/Function1;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/feed/components/d;->o:Lkotlin/jvm/functions/Function2;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/feed/components/d;->p:Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;

    move-object/from16 v21, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v9

    move-object/from16 v20, v11

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-static/range {v2 .. v24}, Lcom/vuitton/android/presentation/screen/feed/components/subcomponents/FeedGenericSectionKt;->a(Landroid/content/Context;ILcom/vuitton/android/presentation/screen/feed/models/FeedTab;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLcom/vuitton/android/presentation/model/common/A11ySettings;ZLcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;Landroidx/compose/runtime/Composer;II)V

    goto :goto_1

    :cond_5
    move-object/from16 v22, v2

    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
