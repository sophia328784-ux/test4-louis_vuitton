.class public final synthetic Lqu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lkotlin/jvm/functions/Function0;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;

.field public final synthetic g:Lkotlin/jvm/functions/Function1;

.field public final synthetic h:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic i:Landroidx/compose/foundation/lazy/LazyListState;

.field public final synthetic j:Lkotlin/jvm/functions/Function3;

.field public final synthetic k:Lkotlin/jvm/functions/Function0;

.field public final synthetic l:Lkotlin/jvm/functions/Function1;

.field public final synthetic m:Lkotlin/jvm/functions/Function2;

.field public final synthetic n:Lkotlin/jvm/functions/Function1;

.field public final synthetic o:Lkotlin/jvm/functions/Function1;

.field public final synthetic p:Lkotlin/jvm/functions/Function1;

.field public final synthetic q:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/lazy/LazyListState;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqu;->b:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lqu;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;

    iput-object p3, p0, Lqu;->d:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lqu;->e:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lqu;->f:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lqu;->g:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Lqu;->h:Lkotlinx/coroutines/CoroutineScope;

    iput-object p8, p0, Lqu;->i:Landroidx/compose/foundation/lazy/LazyListState;

    iput-object p9, p0, Lqu;->j:Lkotlin/jvm/functions/Function3;

    iput-object p10, p0, Lqu;->k:Lkotlin/jvm/functions/Function0;

    iput-object p11, p0, Lqu;->l:Lkotlin/jvm/functions/Function1;

    iput-object p12, p0, Lqu;->m:Lkotlin/jvm/functions/Function2;

    iput-object p13, p0, Lqu;->n:Lkotlin/jvm/functions/Function1;

    iput-object p14, p0, Lqu;->o:Lkotlin/jvm/functions/Function1;

    iput-object p15, p0, Lqu;->p:Lkotlin/jvm/functions/Function1;

    move-object/from16 p1, p16

    iput-object p1, p0, Lqu;->q:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/ComposableSingletons$DistantRepairFormComponentKt;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/ComposableSingletons$DistantRepairFormComponentKt;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/ComposableSingletons$DistantRepairFormComponentKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v1, v3, v2, v4}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    new-instance v2, La3;

    const/16 v5, 0xa

    iget-object v6, v0, Lqu;->b:Lkotlin/jvm/functions/Function0;

    invoke-direct {v2, v6, v5}, La3;-><init>(Lkotlin/jvm/functions/Function0;I)V

    new-instance v5, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v6, 0x669e39d6

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {v1, v3, v5, v4}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    new-instance v8, Lw0;

    iget-object v10, v0, Lqu;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;

    move-object v9, v10

    iget-object v10, v0, Lqu;->d:Lkotlin/jvm/functions/Function0;

    iget-object v11, v0, Lqu;->e:Lkotlin/jvm/functions/Function1;

    iget-object v12, v0, Lqu;->f:Lkotlin/jvm/functions/Function1;

    iget-object v13, v0, Lqu;->g:Lkotlin/jvm/functions/Function1;

    iget-object v14, v0, Lqu;->h:Lkotlinx/coroutines/CoroutineScope;

    iget-object v15, v0, Lqu;->i:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-direct/range {v8 .. v15}, Lw0;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/lazy/LazyListState;)V

    new-instance v2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v5, -0x14786529

    invoke-direct {v2, v5, v7, v8}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {v1, v3, v2, v4}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    move-object v10, v9

    new-instance v9, Lsp;

    move-object v12, v11

    iget-object v11, v0, Lqu;->j:Lkotlin/jvm/functions/Function3;

    iget-object v2, v0, Lqu;->k:Lkotlin/jvm/functions/Function0;

    iget-object v5, v0, Lqu;->l:Lkotlin/jvm/functions/Function1;

    iget-object v6, v0, Lqu;->m:Lkotlin/jvm/functions/Function2;

    move-object/from16 v16, v2

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    invoke-direct/range {v9 .. v18}, Lsp;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/lazy/LazyListState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    move-object v11, v12

    new-instance v2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v5, 0x7070fbd8

    invoke-direct {v2, v5, v7, v9}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {v1, v3, v2, v4}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    new-instance v9, Lw0;

    iget-object v12, v0, Lqu;->n:Lkotlin/jvm/functions/Function1;

    move-object v15, v13

    iget-object v13, v0, Lqu;->o:Lkotlin/jvm/functions/Function1;

    iget-object v14, v0, Lqu;->p:Lkotlin/jvm/functions/Function1;

    iget-object v0, v0, Lqu;->q:Lkotlin/jvm/functions/Function0;

    move-object/from16 v16, v0

    invoke-direct/range {v9 .. v16}, Lw0;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v2, -0xaa5a327

    invoke-direct {v0, v2, v7, v9}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {v1, v3, v0, v4}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
