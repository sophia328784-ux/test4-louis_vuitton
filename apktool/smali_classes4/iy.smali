.class public final synthetic Liy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;

.field public final synthetic c:Z

.field public final synthetic d:Landroidx/compose/material3/SnackbarHostState;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;

.field public final synthetic g:Lqb0;

.field public final synthetic h:Lkotlin/jvm/functions/Function1;

.field public final synthetic i:Lkotlin/jvm/functions/Function1;

.field public final synthetic j:Ld1;

.field public final synthetic k:Lkotlin/jvm/functions/Function2;

.field public final synthetic l:Lkotlin/jvm/functions/Function1;

.field public final synthetic m:Lkotlin/jvm/functions/Function2;

.field public final synthetic n:Lkotlin/jvm/functions/Function1;

.field public final synthetic o:Lkotlin/jvm/functions/Function0;

.field public final synthetic p:Lkotlin/jvm/functions/Function0;

.field public final synthetic q:Lkotlin/jvm/functions/Function0;

.field public final synthetic r:Lkotlin/jvm/functions/Function2;

.field public final synthetic s:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;ZLandroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lqb0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ld1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liy;->b:Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;

    iput-boolean p2, p0, Liy;->c:Z

    iput-object p3, p0, Liy;->d:Landroidx/compose/material3/SnackbarHostState;

    iput-object p4, p0, Liy;->e:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Liy;->f:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Liy;->g:Lqb0;

    iput-object p7, p0, Liy;->h:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Liy;->i:Lkotlin/jvm/functions/Function1;

    iput-object p9, p0, Liy;->j:Ld1;

    iput-object p10, p0, Liy;->k:Lkotlin/jvm/functions/Function2;

    iput-object p11, p0, Liy;->l:Lkotlin/jvm/functions/Function1;

    iput-object p12, p0, Liy;->m:Lkotlin/jvm/functions/Function2;

    iput-object p13, p0, Liy;->n:Lkotlin/jvm/functions/Function1;

    iput-object p14, p0, Liy;->o:Lkotlin/jvm/functions/Function0;

    iput-object p15, p0, Liy;->p:Lkotlin/jvm/functions/Function0;

    move-object/from16 p1, p16

    iput-object p1, p0, Liy;->q:Lkotlin/jvm/functions/Function0;

    move-object/from16 p1, p17

    iput-object p1, p0, Liy;->r:Lkotlin/jvm/functions/Function2;

    move-object/from16 p1, p18

    iput-object p1, p0, Liy;->s:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/pager/PagerScope;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v3, p3

    check-cast v3, Landroidx/compose/runtime/Composer;

    move-object/from16 v4, p4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/vuitton/android/presentation/screen/feed/components/FeedScreenKt;->a:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lcom/vuitton/android/presentation/screen/feed/components/FeedScreenKt;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    sget-object v2, Lcom/vuitton/android/presentation/screen/feed/components/FeedScreenKt$WhenMappings;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    iget-object v4, v0, Liy;->b:Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;

    move-object v5, v4

    iget-boolean v4, v0, Liy;->c:Z

    move-object v6, v5

    iget-object v5, v0, Liy;->d:Landroidx/compose/material3/SnackbarHostState;

    iget-object v7, v0, Liy;->f:Lkotlin/jvm/functions/Function1;

    iget-object v8, v0, Liy;->g:Lqb0;

    iget-object v11, v0, Liy;->h:Lkotlin/jvm/functions/Function1;

    iget-object v12, v0, Liy;->i:Lkotlin/jvm/functions/Function1;

    iget-object v13, v0, Liy;->j:Ld1;

    iget-object v14, v0, Liy;->k:Lkotlin/jvm/functions/Function2;

    iget-object v15, v0, Liy;->l:Lkotlin/jvm/functions/Function1;

    iget-object v9, v0, Liy;->m:Lkotlin/jvm/functions/Function2;

    iget-object v10, v0, Liy;->n:Lkotlin/jvm/functions/Function1;

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const v1, -0x50ac8e7c

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    const/16 v21, 0x0

    move-object/from16 v16, v3

    move-object v3, v6

    iget-object v6, v0, Liy;->o:Lkotlin/jvm/functions/Function0;

    move-object/from16 v20, v16

    move-object/from16 v16, v9

    iget-object v9, v0, Liy;->p:Lkotlin/jvm/functions/Function0;

    move-object/from16 v19, v10

    iget-object v10, v0, Liy;->q:Lkotlin/jvm/functions/Function0;

    iget-object v1, v0, Liy;->r:Lkotlin/jvm/functions/Function2;

    iget-object v0, v0, Liy;->s:Lkotlin/jvm/functions/Function1;

    move-object/from16 v18, v0

    move-object/from16 v17, v1

    invoke-static/range {v3 .. v21}, Lcom/vuitton/android/presentation/screen/feed/components/FeedForYouScreenKt;->a(Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;ZLandroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lqb0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ld1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v1, v20

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_0

    :cond_0
    move-object v1, v3

    const v0, -0x3c692cb6

    invoke-static {v1, v0}, Lo60;->v(Landroidx/compose/runtime/Composer;I)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_1
    move-object v1, v3

    move-object v3, v6

    move-object/from16 v16, v9

    move-object/from16 v19, v10

    const v2, -0x50bc1316

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    const/16 v17, 0x0

    iget-object v6, v0, Liy;->e:Lkotlin/jvm/functions/Function0;

    move-object v9, v11

    move-object v10, v12

    move-object v11, v13

    move-object v12, v14

    move-object v13, v15

    move-object/from16 v14, v16

    move-object/from16 v15, v19

    move-object/from16 v16, v1

    invoke-static/range {v3 .. v17}, Lcom/vuitton/android/presentation/screen/feed/components/FeedDiscoverScreenKt;->a(Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;ZLandroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lqb0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ld1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/Composer;->F()V

    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
