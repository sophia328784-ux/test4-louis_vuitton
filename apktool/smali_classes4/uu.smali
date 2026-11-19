.class public final synthetic Luu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;

.field public final synthetic c:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;

.field public final synthetic g:Lkotlin/jvm/functions/Function1;

.field public final synthetic h:Lkotlin/jvm/functions/Function3;

.field public final synthetic i:Lkotlin/jvm/functions/Function1;

.field public final synthetic j:Lkotlin/jvm/functions/Function1;

.field public final synthetic k:Lkotlin/jvm/functions/Function1;

.field public final synthetic l:Lkotlin/jvm/functions/Function0;

.field public final synthetic m:Lkotlin/jvm/functions/Function0;

.field public final synthetic n:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

.field public final synthetic o:Lkotlin/jvm/functions/Function0;

.field public final synthetic p:Lkotlin/jvm/functions/Function1;

.field public final synthetic q:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luu;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;

    iput-object p2, p0, Luu;->c:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Luu;->d:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Luu;->e:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Luu;->f:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Luu;->g:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Luu;->h:Lkotlin/jvm/functions/Function3;

    iput-object p8, p0, Luu;->i:Lkotlin/jvm/functions/Function1;

    iput-object p9, p0, Luu;->j:Lkotlin/jvm/functions/Function1;

    iput-object p10, p0, Luu;->k:Lkotlin/jvm/functions/Function1;

    iput-object p11, p0, Luu;->l:Lkotlin/jvm/functions/Function0;

    iput-object p12, p0, Luu;->m:Lkotlin/jvm/functions/Function0;

    iput-object p13, p0, Luu;->n:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    iput-object p14, p0, Luu;->o:Lkotlin/jvm/functions/Function0;

    iput-object p15, p0, Luu;->p:Lkotlin/jvm/functions/Function1;

    move-object/from16 p1, p16

    iput-object p1, p0, Luu;->q:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v3, p3

    check-cast v3, Landroidx/compose/runtime/Composer;

    move-object/from16 v4, p4

    check-cast v4, Ljava/lang/Integer;

    invoke-static {v4, v1, v2}, La;->x(Ljava/lang/Integer;Landroidx/compose/animation/AnimatedContentScope;Landroidx/navigation/NavBackStackEntry;)V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v1, v0, Luu;->m:Lkotlin/jvm/functions/Function0;

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    iget-object v4, v0, Luu;->n:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v2, v5

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v2, :cond_0

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v5, v2, :cond_1

    :cond_0
    new-instance v5, Lt3;

    const/4 v2, 0x6

    invoke-direct {v5, v1, v4, v2}, Lt3;-><init>(Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;I)V

    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    move-object v14, v5

    check-cast v14, Lkotlin/jvm/functions/Function0;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v18, v3

    iget-object v3, v0, Luu;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;

    iget-object v4, v0, Luu;->c:Lkotlinx/coroutines/CoroutineScope;

    iget-object v5, v0, Luu;->d:Lkotlin/jvm/functions/Function0;

    iget-object v6, v0, Luu;->e:Lkotlin/jvm/functions/Function1;

    iget-object v7, v0, Luu;->f:Lkotlin/jvm/functions/Function1;

    iget-object v8, v0, Luu;->g:Lkotlin/jvm/functions/Function1;

    iget-object v9, v0, Luu;->h:Lkotlin/jvm/functions/Function3;

    iget-object v10, v0, Luu;->i:Lkotlin/jvm/functions/Function1;

    iget-object v11, v0, Luu;->j:Lkotlin/jvm/functions/Function1;

    iget-object v12, v0, Luu;->k:Lkotlin/jvm/functions/Function1;

    iget-object v13, v0, Luu;->l:Lkotlin/jvm/functions/Function0;

    iget-object v15, v0, Luu;->o:Lkotlin/jvm/functions/Function0;

    iget-object v1, v0, Luu;->p:Lkotlin/jvm/functions/Function1;

    iget-object v0, v0, Luu;->q:Lkotlin/jvm/functions/Function2;

    move-object/from16 v17, v0

    move-object/from16 v16, v1

    invoke-static/range {v3 .. v20}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormComponentKt;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
