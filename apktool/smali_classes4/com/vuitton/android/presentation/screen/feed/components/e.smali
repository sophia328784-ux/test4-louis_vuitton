.class public final synthetic Lcom/vuitton/android/presentation/screen/feed/components/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:I

.field public final synthetic e:Z

.field public final synthetic f:Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;

.field public final synthetic g:Lkotlin/jvm/functions/Function0;

.field public final synthetic h:Lkotlin/jvm/functions/Function1;

.field public final synthetic i:Lkotlin/jvm/functions/Function0;

.field public final synthetic j:Lkotlin/jvm/functions/Function1;

.field public final synthetic k:Lkotlin/jvm/functions/Function1;

.field public final synthetic l:Lkotlin/jvm/functions/Function2;

.field public final synthetic m:Lkotlin/jvm/functions/Function1;

.field public final synthetic n:Lkotlin/jvm/functions/Function1;

.field public final synthetic o:Lkotlin/jvm/functions/Function2;

.field public final synthetic p:Lkotlin/jvm/functions/Function2;

.field public final synthetic q:Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;Landroid/content/Context;IZLcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/feed/components/e;->b:Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/feed/components/e;->c:Landroid/content/Context;

    iput p3, p0, Lcom/vuitton/android/presentation/screen/feed/components/e;->d:I

    iput-boolean p4, p0, Lcom/vuitton/android/presentation/screen/feed/components/e;->e:Z

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/feed/components/e;->f:Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/feed/components/e;->g:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/feed/components/e;->h:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/feed/components/e;->i:Lkotlin/jvm/functions/Function0;

    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/feed/components/e;->j:Lkotlin/jvm/functions/Function1;

    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/feed/components/e;->k:Lkotlin/jvm/functions/Function1;

    iput-object p11, p0, Lcom/vuitton/android/presentation/screen/feed/components/e;->l:Lkotlin/jvm/functions/Function2;

    iput-object p12, p0, Lcom/vuitton/android/presentation/screen/feed/components/e;->m:Lkotlin/jvm/functions/Function1;

    iput-object p13, p0, Lcom/vuitton/android/presentation/screen/feed/components/e;->n:Lkotlin/jvm/functions/Function1;

    iput-object p14, p0, Lcom/vuitton/android/presentation/screen/feed/components/e;->o:Lkotlin/jvm/functions/Function2;

    iput-object p15, p0, Lcom/vuitton/android/presentation/screen/feed/components/e;->p:Lkotlin/jvm/functions/Function2;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/feed/components/e;->q:Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;

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

    const/4 v5, 0x1

    if-eq v1, v4, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/2addr v3, v5

    invoke-interface {v2, v3, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v4, Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;->FOR_YOU:Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/feed/components/e;->b:Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;

    iget-boolean v3, v1, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->m:Z

    iget-object v6, v1, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->a:Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

    invoke-static {v6}, Lcom/vuitton/android/presentation/model/common/mapper/FeatureThemeMapperKt;->a(Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;)Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    move-result-object v6

    iget-object v8, v1, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->h:Lcom/vuitton/android/presentation/model/common/A11ySettings;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/feed/components/e;->h:Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v7

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/feed/components/e;->f:Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;

    invoke-interface {v2, v10}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v7, v9

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v7, :cond_1

    if-ne v9, v11, :cond_2

    :cond_1
    new-instance v9, Lqx;

    invoke-direct {v9, v1, v10, v5}, Lqx;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;I)V

    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    move-object v12, v9

    check-cast v12, Lkotlin/jvm/functions/Function0;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/feed/components/e;->l:Lkotlin/jvm/functions/Function2;

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v2, v10}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v5, v7

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v5, :cond_3

    if-ne v7, v11, :cond_4

    :cond_3
    new-instance v7, Lgv;

    const/16 v5, 0x9

    invoke-direct {v7, v1, v10, v5}, Lgv;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    move-object/from16 v16, v7

    check-cast v16, Lkotlin/jvm/functions/Function1;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/feed/components/e;->o:Lkotlin/jvm/functions/Function2;

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v2, v10}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v5, v7

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v5, :cond_5

    if-ne v7, v11, :cond_6

    :cond_5
    new-instance v7, Lcom/vuitton/android/presentation/screen/feed/components/FeedForYouSuccessScreenKt$FeedForYouSuccessScreen$6$1$4$1$3$1;

    invoke-direct {v7, v1, v10}, Lcom/vuitton/android/presentation/screen/feed/components/FeedForYouSuccessScreenKt$FeedForYouSuccessScreen$6$1$4$1$3$1;-><init>(Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;)V

    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    move-object/from16 v19, v7

    check-cast v19, Lkotlin/jvm/functions/Function1;

    const v23, 0xc00180

    const/16 v24, 0x0

    move-object/from16 v22, v2

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/feed/components/e;->c:Landroid/content/Context;

    move v5, v3

    iget v3, v0, Lcom/vuitton/android/presentation/screen/feed/components/e;->d:I

    iget-boolean v7, v0, Lcom/vuitton/android/presentation/screen/feed/components/e;->e:Z

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/feed/components/e;->g:Lkotlin/jvm/functions/Function0;

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/feed/components/e;->i:Lkotlin/jvm/functions/Function0;

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/feed/components/e;->j:Lkotlin/jvm/functions/Function1;

    iget-object v15, v0, Lcom/vuitton/android/presentation/screen/feed/components/e;->k:Lkotlin/jvm/functions/Function1;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/feed/components/e;->m:Lkotlin/jvm/functions/Function1;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/feed/components/e;->n:Lkotlin/jvm/functions/Function1;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/feed/components/e;->p:Lkotlin/jvm/functions/Function2;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/feed/components/e;->q:Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;

    move-object/from16 v21, v0

    move-object/from16 v20, v1

    move-object/from16 v18, v9

    const/4 v9, 0x1

    invoke-static/range {v2 .. v24}, Lcom/vuitton/android/presentation/screen/feed/components/subcomponents/FeedGenericSectionKt;->a(Landroid/content/Context;ILcom/vuitton/android/presentation/screen/feed/models/FeedTab;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLcom/vuitton/android/presentation/model/common/A11ySettings;ZLcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;Landroidx/compose/runtime/Composer;II)V

    goto :goto_1

    :cond_7
    move-object/from16 v22, v2

    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
