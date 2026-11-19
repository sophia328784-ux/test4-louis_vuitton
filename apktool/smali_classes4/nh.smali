.class public final synthetic Lnh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .line 19
    iput p1, p0, Lnh;->b:I

    iput-object p2, p0, Lnh;->d:Ljava/lang/Object;

    iput-boolean p7, p0, Lnh;->c:Z

    iput-object p3, p0, Lnh;->e:Ljava/lang/Object;

    iput-object p4, p0, Lnh;->f:Ljava/lang/Object;

    iput-object p5, p0, Lnh;->g:Ljava/lang/Object;

    iput-object p6, p0, Lnh;->h:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lnh;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lnh;->c:Z

    iput-object p2, p0, Lnh;->d:Ljava/lang/Object;

    iput-object p3, p0, Lnh;->e:Ljava/lang/Object;

    iput-object p4, p0, Lnh;->f:Ljava/lang/Object;

    iput-object p5, p0, Lnh;->g:Ljava/lang/Object;

    iput-object p6, p0, Lnh;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Lnh;->b:I

    iget-boolean v2, v0, Lnh;->c:Z

    const/4 v3, 0x0

    const/4 v4, 0x3

    iget-object v5, v0, Lnh;->h:Ljava/lang/Object;

    iget-object v6, v0, Lnh;->g:Ljava/lang/Object;

    iget-object v7, v0, Lnh;->f:Ljava/lang/Object;

    iget-object v8, v0, Lnh;->e:Ljava/lang/Object;

    iget-object v9, v0, Lnh;->d:Ljava/lang/Object;

    const/4 v10, 0x1

    packed-switch v1, :pswitch_data_0

    move-object v14, v9

    check-cast v14, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;

    move-object v15, v8

    check-cast v15, Lkotlin/jvm/functions/Function2;

    move-object/from16 v16, v7

    check-cast v16, Lkotlin/jvm/functions/Function1;

    move-object/from16 v17, v6

    check-cast v17, Lkotlin/jvm/functions/Function1;

    move-object/from16 v18, v5

    check-cast v18, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lxe0;

    const/16 v5, 0x16

    invoke-direct {v2, v14, v5}, Lxe0;-><init>(Ljava/lang/Object;I)V

    new-instance v5, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v6, -0x36ecc822

    invoke-direct {v5, v6, v10, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {v1, v3, v5, v4}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    iget-object v2, v14, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->d:Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistUiModel;

    if-eqz v2, :cond_0

    iget-object v12, v2, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistUiModel;->a:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    if-eqz v12, :cond_0

    new-instance v2, Lo51;

    const/16 v5, 0x12

    invoke-direct {v2, v5}, Lo51;-><init>(I)V

    sget-object v5, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistScreenKt$WishlistScreen$lambda$2$0$0$0$0$1$$inlined$items$default$1;->b:Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistScreenKt$WishlistScreen$lambda$2$0$0$0$0$1$$inlined$items$default$1;

    invoke-virtual {v12}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    move-result v6

    new-instance v7, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistScreenKt$WishlistScreen$lambda$2$0$0$0$0$1$$inlined$items$default$2;

    invoke-direct {v7, v2, v12}, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistScreenKt$WishlistScreen$lambda$2$0$0$0$0$1$$inlined$items$default$2;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    new-instance v2, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistScreenKt$WishlistScreen$lambda$2$0$0$0$0$1$$inlined$items$default$3;

    invoke-direct {v2, v5, v12}, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistScreenKt$WishlistScreen$lambda$2$0$0$0$0$1$$inlined$items$default$3;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    new-instance v11, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistScreenKt$WishlistScreen$lambda$2$0$0$0$0$1$$inlined$items$default$4;

    iget-boolean v13, v0, Lnh;->c:Z

    invoke-direct/range {v11 .. v18}, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistScreenKt$WishlistScreen$lambda$2$0$0$0$0$1$$inlined$items$default$4;-><init>(Ljava/util/List;ZLcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v5, 0x2fd4df92

    invoke-direct {v0, v5, v10, v11}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-interface {v1, v6, v7, v2, v0}, Landroidx/compose/foundation/lazy/LazyListScope;->h(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    :cond_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/wishlist/components/ComposableSingletons$WishlistScreenKt;->a:Lcom/vuitton/android/presentation/screen/wishlist/components/ComposableSingletons$WishlistScreenKt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/wishlist/components/ComposableSingletons$WishlistScreenKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static {v1, v3, v0, v4}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    check-cast v9, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;

    check-cast v8, Landroidx/compose/ui/Modifier;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListScope;

    sget v1, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/CatalogStoreModeKt;->a:F

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/ComposableSingletons$CatalogStoreModeKt;->a:Lcom/vuitton/android/presentation/screen/storemode/components/catalog/ComposableSingletons$CatalogStoreModeKt;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/ComposableSingletons$CatalogStoreModeKt;->c:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-interface {v0, v1}, Landroidx/compose/foundation/lazy/LazyListScope;->a(Lkotlin/jvm/functions/Function4;)V

    new-instance v1, Lf1;

    const/16 v11, 0x10

    invoke-direct {v1, v8, v7, v11}, Lf1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v7, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v11, -0x654c7ffd

    invoke-direct {v7, v11, v10, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {v0, v3, v7, v4}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    if-eqz v2, :cond_1

    new-instance v1, Lg1;

    const/16 v7, 0x8

    invoke-direct {v1, v7, v8, v9, v6}, Lg1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    new-instance v6, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v7, 0x18abe55e

    invoke-direct {v6, v7, v10, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {v0, v3, v6, v4}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    :cond_1
    iget-object v1, v9, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->a:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeUiModel;->e:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeSectionUiModel;

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeSectionUiModel;->c:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeDataUiModel;

    if-eqz v6, :cond_2

    new-instance v7, Lg1;

    const/16 v9, 0x9

    invoke-direct {v7, v6, v8, v5, v9}, Lg1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v6, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v9, 0x2bd21736

    invoke-direct {v6, v9, v10, v7}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {v0, v3, v6, v4}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    sget-object v1, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/ComposableSingletons$CatalogStoreModeKt;->a:Lcom/vuitton/android/presentation/screen/storemode/components/catalog/ComposableSingletons$CatalogStoreModeKt;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/ComposableSingletons$CatalogStoreModeKt;->d:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static {v0, v3, v1, v4}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    :cond_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    check-cast v9, Landroidx/compose/material3/SheetState;

    check-cast v8, Ljava/lang/String;

    check-cast v7, Ljava/lang/String;

    check-cast v6, Ljava/lang/String;

    check-cast v5, Lkotlinx/coroutines/CoroutineScope;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    iget-object v1, v9, Landroidx/compose/material3/SheetState;->e:Landroidx/compose/material3/internal/AnchoredDraggableState;

    invoke-virtual {v1}, Landroidx/compose/material3/internal/AnchoredDraggableState;->e()Landroidx/compose/material3/internal/DraggableAnchors;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/material3/internal/DraggableAnchors;->getSize()I

    move-result v1

    if-le v1, v10, :cond_7

    if-eqz v2, :cond_7

    invoke-virtual {v9}, Landroidx/compose/material3/SheetState;->c()Landroidx/compose/material3/SheetValue;

    move-result-object v1

    sget-object v2, Landroidx/compose/material3/SheetValue;->PartiallyExpanded:Landroidx/compose/material3/SheetValue;

    iget-object v3, v9, Landroidx/compose/material3/SheetState;->e:Landroidx/compose/material3/internal/AnchoredDraggableState;

    if-ne v1, v2, :cond_5

    iget-object v1, v3, Landroidx/compose/material3/internal/AnchoredDraggableState;->d:Lkotlin/jvm/functions/Function1;

    sget-object v2, Landroidx/compose/material3/SheetValue;->Expanded:Landroidx/compose/material3/SheetValue;

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Landroidx/compose/material3/b;

    invoke-direct {v1, v5, v9, v10}, Landroidx/compose/material3/b;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/SheetState;I)V

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a:[Lkotlin/reflect/KProperty;

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->t:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    new-instance v3, Landroidx/compose/ui/semantics/AccessibilityAction;

    invoke-direct {v3, v8, v1}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    invoke-interface {v0, v2, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->a(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    iget-object v1, v3, Landroidx/compose/material3/internal/AnchoredDraggableState;->d:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Landroidx/compose/material3/b;

    const/4 v2, 0x2

    invoke-direct {v1, v5, v9, v2}, Landroidx/compose/material3/b;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/SheetState;I)V

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a:[Lkotlin/reflect/KProperty;

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->u:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    new-instance v3, Landroidx/compose/ui/semantics/AccessibilityAction;

    invoke-direct {v3, v7, v1}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    invoke-interface {v0, v2, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->a(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    :cond_6
    :goto_1
    iget-boolean v1, v9, Landroidx/compose/material3/SheetState;->c:Z

    if-nez v1, :cond_7

    new-instance v1, Landroidx/compose/material3/b;

    invoke-direct {v1, v5, v9, v4}, Landroidx/compose/material3/b;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/SheetState;I)V

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a:[Lkotlin/reflect/KProperty;

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->v:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    new-instance v3, Landroidx/compose/ui/semantics/AccessibilityAction;

    invoke-direct {v3, v6, v1}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    invoke-interface {v0, v2, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->a(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    :cond_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
