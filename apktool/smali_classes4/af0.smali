.class public final synthetic Laf0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:F

.field public final synthetic f:Lkotlin/jvm/functions/Function3;

.field public final synthetic g:Lkotlin/jvm/functions/Function1;

.field public final synthetic h:Lkotlin/jvm/functions/Function1;

.field public final synthetic i:Lkotlin/jvm/functions/Function1;

.field public final synthetic j:Lkotlin/jvm/functions/Function1;

.field public final synthetic k:Lkotlin/jvm/functions/Function2;

.field public final synthetic l:Lkotlin/jvm/functions/Function1;

.field public final synthetic m:Lkotlin/jvm/functions/Function0;

.field public final synthetic n:Lkotlin/jvm/functions/Function1;

.field public final synthetic o:Lkotlin/jvm/functions/Function0;

.field public final synthetic p:Lkotlin/jvm/functions/Function0;

.field public final synthetic q:Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;

.field public final synthetic r:Lkotlin/jvm/functions/Function1;

.field public final synthetic s:Lkotlin/jvm/functions/Function0;

.field public final synthetic t:Lkotlin/jvm/functions/Function0;

.field public final synthetic u:Lkotlin/jvm/functions/Function1;

.field public final synthetic v:Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$ReinsuranceState;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;Ljava/util/List;Landroid/content/Context;FLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$ReinsuranceState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laf0;->b:Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;

    iput-object p2, p0, Laf0;->c:Ljava/util/List;

    iput-object p3, p0, Laf0;->d:Landroid/content/Context;

    iput p4, p0, Laf0;->e:F

    iput-object p5, p0, Laf0;->f:Lkotlin/jvm/functions/Function3;

    iput-object p6, p0, Laf0;->g:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Laf0;->h:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Laf0;->i:Lkotlin/jvm/functions/Function1;

    iput-object p9, p0, Laf0;->j:Lkotlin/jvm/functions/Function1;

    iput-object p10, p0, Laf0;->k:Lkotlin/jvm/functions/Function2;

    iput-object p11, p0, Laf0;->l:Lkotlin/jvm/functions/Function1;

    iput-object p12, p0, Laf0;->m:Lkotlin/jvm/functions/Function0;

    iput-object p13, p0, Laf0;->n:Lkotlin/jvm/functions/Function1;

    iput-object p14, p0, Laf0;->o:Lkotlin/jvm/functions/Function0;

    iput-object p15, p0, Laf0;->p:Lkotlin/jvm/functions/Function0;

    move-object/from16 p1, p16

    iput-object p1, p0, Laf0;->q:Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;

    move-object/from16 p1, p17

    iput-object p1, p0, Laf0;->r:Lkotlin/jvm/functions/Function1;

    move-object/from16 p1, p18

    iput-object p1, p0, Laf0;->s:Lkotlin/jvm/functions/Function0;

    move-object/from16 p1, p19

    iput-object p1, p0, Laf0;->t:Lkotlin/jvm/functions/Function0;

    move-object/from16 p1, p20

    iput-object p1, p0, Laf0;->u:Lkotlin/jvm/functions/Function1;

    move-object/from16 p1, p21

    iput-object p1, p0, Laf0;->v:Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$ReinsuranceState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/vuitton/android/presentation/screen/cart/components/ComposableSingletons$NativeCartFilledScreenKt;->a:Lcom/vuitton/android/presentation/screen/cart/components/ComposableSingletons$NativeCartFilledScreenKt;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/vuitton/android/presentation/screen/cart/components/ComposableSingletons$NativeCartFilledScreenKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v1, v3, v2, v4}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    iget-object v8, v0, Laf0;->b:Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;

    iget-object v2, v8, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/vuitton/android/presentation/screen/cart/NativeCartNotificationKt$sortByPriority$$inlined$sortedBy$1;

    invoke-direct {v5}, Lcom/vuitton/android/presentation/screen/cart/NativeCartNotificationKt$sortByPriority$$inlined$sortedBy$1;-><init>()V

    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt;->o0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/vuitton/android/presentation/screen/cart/GenericNotification;

    iget v6, v0, Laf0;->e:F

    iget-object v15, v0, Laf0;->f:Lkotlin/jvm/functions/Function3;

    const/4 v2, 0x1

    if-eqz v10, :cond_0

    new-instance v9, Ltk;

    const/4 v14, 0x2

    iget-object v11, v0, Laf0;->d:Landroid/content/Context;

    move v12, v6

    move-object v13, v15

    invoke-direct/range {v9 .. v14}, Ltk;-><init>(Ljava/lang/Object;Landroid/content/Context;FLjava/lang/Object;I)V

    new-instance v5, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v7, -0x3643a61e

    invoke-direct {v5, v7, v2, v9}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {v1, v3, v5, v4}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    :cond_0
    new-instance v5, Ln50;

    const/16 v7, 0x12

    invoke-direct {v5, v7}, Ln50;-><init>(I)V

    move v7, v6

    iget-object v6, v0, Laf0;->c:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    new-instance v10, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartFilledScreenKt$NativeCartMainView$lambda$2$0$$inlined$itemsIndexed$default$1;

    invoke-direct {v10, v5, v6}, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartFilledScreenKt$NativeCartMainView$lambda$2$0$$inlined$itemsIndexed$default$1;-><init>(Lkotlin/jvm/functions/Function2;Ljava/util/List;)V

    new-instance v5, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartFilledScreenKt$NativeCartMainView$lambda$2$0$$inlined$itemsIndexed$default$2;

    invoke-direct {v5, v6}, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartFilledScreenKt$NativeCartMainView$lambda$2$0$$inlined$itemsIndexed$default$2;-><init>(Ljava/util/List;)V

    move-object v11, v5

    new-instance v5, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartFilledScreenKt$NativeCartMainView$lambda$2$0$$inlined$itemsIndexed$default$3;

    move v12, v9

    iget-object v9, v0, Laf0;->g:Lkotlin/jvm/functions/Function1;

    move-object v13, v10

    iget-object v10, v0, Laf0;->h:Lkotlin/jvm/functions/Function1;

    move-object v14, v11

    iget-object v11, v0, Laf0;->i:Lkotlin/jvm/functions/Function1;

    move/from16 v16, v12

    iget-object v12, v0, Laf0;->j:Lkotlin/jvm/functions/Function1;

    move-object/from16 v17, v13

    iget-object v13, v0, Laf0;->k:Lkotlin/jvm/functions/Function2;

    move-object/from16 v18, v14

    iget-object v14, v0, Laf0;->l:Lkotlin/jvm/functions/Function1;

    move/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v19, v18

    invoke-direct/range {v5 .. v15}, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartFilledScreenKt$NativeCartMainView$lambda$2$0$$inlined$itemsIndexed$default$3;-><init>(Ljava/util/List;FLcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)V

    move v6, v7

    new-instance v7, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v9, 0x799532c4

    invoke-direct {v7, v9, v2, v5}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    move-object/from16 v14, v19

    invoke-interface {v1, v3, v4, v14, v7}, Landroidx/compose/foundation/lazy/LazyListScope;->h(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    iget-object v3, v8, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->k:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/lit8 v7, v3, 0x1

    if-nez v3, :cond_1

    new-instance v3, Ltd;

    const/4 v4, 0x4

    invoke-direct {v3, v6, v4}, Ltd;-><init>(FI)V

    new-instance v4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v5, 0x7c4b600

    invoke-direct {v4, v5, v2, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v11, 0x3

    invoke-static {v1, v3, v4, v11}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    new-instance v5, Lbf0;

    iget-object v9, v0, Laf0;->m:Lkotlin/jvm/functions/Function0;

    iget-object v10, v0, Laf0;->n:Lkotlin/jvm/functions/Function1;

    invoke-direct/range {v5 .. v10}, Lbf0;-><init>(FZLcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    new-instance v4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v7, 0x79644177

    invoke-direct {v4, v7, v2, v5}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {v1, v3, v4, v11}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v11, 0x3

    :goto_0
    new-instance v4, Ltd;

    invoke-direct {v4, v6, v11}, Ltd;-><init>(FI)V

    new-instance v5, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v7, -0xbb75024

    invoke-direct {v5, v7, v2, v4}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {v1, v3, v5, v11}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    new-instance v5, Lwe0;

    move-object v7, v8

    iget-object v8, v0, Laf0;->o:Lkotlin/jvm/functions/Function0;

    iget-object v9, v0, Laf0;->p:Lkotlin/jvm/functions/Function0;

    iget-object v10, v0, Laf0;->q:Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;

    iget-object v11, v0, Laf0;->r:Lkotlin/jvm/functions/Function1;

    iget-object v12, v0, Laf0;->s:Lkotlin/jvm/functions/Function0;

    iget-object v13, v0, Laf0;->t:Lkotlin/jvm/functions/Function0;

    invoke-direct/range {v5 .. v13}, Lwe0;-><init>(FLcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    move-object v8, v7

    new-instance v3, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v4, 0x34f9eedd

    invoke-direct {v3, v4, v2, v5}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    const/4 v4, 0x0

    const/4 v11, 0x3

    invoke-static {v1, v4, v3, v11}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    new-instance v3, Lxe0;

    const/4 v5, 0x0

    invoke-direct {v3, v8, v5}, Lxe0;-><init>(Ljava/lang/Object;I)V

    new-instance v5, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v6, 0x75ab2dde

    invoke-direct {v5, v6, v2, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {v1, v4, v5, v11}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    new-instance v3, Lg1;

    const/16 v5, 0x19

    iget-object v6, v0, Laf0;->u:Lkotlin/jvm/functions/Function1;

    iget-object v0, v0, Laf0;->v:Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$ReinsuranceState;

    invoke-direct {v3, v6, v15, v0, v5}, Lg1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v5, -0x49a39321

    invoke-direct {v0, v5, v2, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {v1, v4, v0, v11}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
