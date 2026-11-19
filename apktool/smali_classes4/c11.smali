.class public final synthetic Lc11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic d:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;

.field public final synthetic g:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;

.field public final synthetic h:Z

.field public final synthetic i:Lkotlin/jvm/functions/Function1;

.field public final synthetic j:Lkotlin/jvm/functions/Function0;

.field public final synthetic k:Lkotlin/jvm/functions/Function1;

.field public final synthetic l:Lkotlin/jvm/functions/Function0;

.field public final synthetic m:Lkotlin/jvm/functions/Function0;

.field public final synthetic n:Lkotlin/jvm/functions/Function0;

.field public final synthetic o:Lkotlin/jvm/functions/Function1;

.field public final synthetic p:Lkotlin/jvm/functions/Function1;

.field public final synthetic q:Lkotlin/jvm/functions/Function1;

.field public final synthetic r:Lkotlin/jvm/functions/Function1;

.field public final synthetic s:Lkotlin/jvm/functions/Function0;

.field public final synthetic t:Lkotlin/jvm/functions/Function1;

.field public final synthetic u:I

.field public final synthetic v:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/pager/PagerState;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc11;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lc11;->c:Landroidx/compose/foundation/pager/PagerState;

    iput-object p3, p0, Lc11;->d:Landroidx/compose/foundation/pager/PagerState;

    iput-object p4, p0, Lc11;->e:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;

    iput-object p5, p0, Lc11;->f:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;

    iput-object p6, p0, Lc11;->g:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;

    iput-boolean p7, p0, Lc11;->h:Z

    iput-object p8, p0, Lc11;->i:Lkotlin/jvm/functions/Function1;

    iput-object p9, p0, Lc11;->j:Lkotlin/jvm/functions/Function0;

    iput-object p10, p0, Lc11;->k:Lkotlin/jvm/functions/Function1;

    iput-object p11, p0, Lc11;->l:Lkotlin/jvm/functions/Function0;

    iput-object p12, p0, Lc11;->m:Lkotlin/jvm/functions/Function0;

    iput-object p13, p0, Lc11;->n:Lkotlin/jvm/functions/Function0;

    iput-object p14, p0, Lc11;->o:Lkotlin/jvm/functions/Function1;

    iput-object p15, p0, Lc11;->p:Lkotlin/jvm/functions/Function1;

    move-object/from16 p1, p16

    iput-object p1, p0, Lc11;->q:Lkotlin/jvm/functions/Function1;

    move-object/from16 p1, p17

    iput-object p1, p0, Lc11;->r:Lkotlin/jvm/functions/Function1;

    move-object/from16 p1, p18

    iput-object p1, p0, Lc11;->s:Lkotlin/jvm/functions/Function0;

    move-object/from16 p1, p19

    iput-object p1, p0, Lc11;->t:Lkotlin/jvm/functions/Function1;

    move/from16 p1, p20

    iput p1, p0, Lc11;->u:I

    move/from16 p1, p21

    iput p1, p0, Lc11;->v:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v19, p1

    check-cast v19, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lc11;->u:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v20

    iget v1, v0, Lc11;->v:I

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v21

    iget-object v1, v0, Lc11;->b:Landroidx/compose/ui/Modifier;

    move-object v2, v1

    iget-object v1, v0, Lc11;->c:Landroidx/compose/foundation/pager/PagerState;

    move-object v3, v2

    iget-object v2, v0, Lc11;->d:Landroidx/compose/foundation/pager/PagerState;

    move-object v4, v3

    iget-object v3, v0, Lc11;->e:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;

    move-object v5, v4

    iget-object v4, v0, Lc11;->f:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;

    move-object v6, v5

    iget-object v5, v0, Lc11;->g:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;

    move-object v7, v6

    iget-boolean v6, v0, Lc11;->h:Z

    move-object v8, v7

    iget-object v7, v0, Lc11;->i:Lkotlin/jvm/functions/Function1;

    move-object v9, v8

    iget-object v8, v0, Lc11;->j:Lkotlin/jvm/functions/Function0;

    move-object v10, v9

    iget-object v9, v0, Lc11;->k:Lkotlin/jvm/functions/Function1;

    move-object v11, v10

    iget-object v10, v0, Lc11;->l:Lkotlin/jvm/functions/Function0;

    move-object v12, v11

    iget-object v11, v0, Lc11;->m:Lkotlin/jvm/functions/Function0;

    move-object v13, v12

    iget-object v12, v0, Lc11;->n:Lkotlin/jvm/functions/Function0;

    move-object v14, v13

    iget-object v13, v0, Lc11;->o:Lkotlin/jvm/functions/Function1;

    move-object v15, v14

    iget-object v14, v0, Lc11;->p:Lkotlin/jvm/functions/Function1;

    move-object/from16 v16, v15

    iget-object v15, v0, Lc11;->q:Lkotlin/jvm/functions/Function1;

    move-object/from16 v17, v1

    iget-object v1, v0, Lc11;->r:Lkotlin/jvm/functions/Function1;

    move-object/from16 v18, v1

    iget-object v1, v0, Lc11;->s:Lkotlin/jvm/functions/Function0;

    iget-object v0, v0, Lc11;->t:Lkotlin/jvm/functions/Function1;

    move-object/from16 v22, v18

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v16, v22

    move-object/from16 v22, v17

    move-object/from16 v17, v1

    move-object/from16 v1, v22

    invoke-static/range {v0 .. v21}, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightScreenKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/pager/PagerState;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
