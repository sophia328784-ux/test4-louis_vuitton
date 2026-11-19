.class public final synthetic Lq11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCatalogUiModel;

.field public final synthetic d:Z

.field public final synthetic e:Lkotlin/jvm/functions/Function0;

.field public final synthetic f:Lkotlin/jvm/functions/Function0;

.field public final synthetic g:Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistSummaryUiModel;

.field public final synthetic h:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(ZLcom/vuitton/android/presentation/screen/storemode/models/StoreModeCatalogUiModel;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistSummaryUiModel;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lq11;->b:Z

    iput-object p2, p0, Lq11;->c:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCatalogUiModel;

    iput-boolean p3, p0, Lq11;->d:Z

    iput-object p4, p0, Lq11;->e:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lq11;->f:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Lq11;->g:Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistSummaryUiModel;

    iput-object p7, p0, Lq11;->h:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p1, Landroidx/compose/foundation/lazy/LazyListScope;

    sget v0, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/StoreModeLevel1ScreenKt;->a:F

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lf6;

    const/4 v1, 0x2

    iget-boolean v2, p0, Lq11;->d:Z

    iget-object v3, p0, Lq11;->e:Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v2, v3, v1}, Lf6;-><init>(ZLkotlin/jvm/functions/Function0;I)V

    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v2, 0x55d08d31

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v2, 0x3

    invoke-static {p1, v0, v1, v2}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    iget-boolean v1, p0, Lq11;->b:Z

    if-eqz v1, :cond_0

    new-instance v4, Lni0;

    const/16 v5, 0x1b

    iget-object v6, p0, Lq11;->f:Lkotlin/jvm/functions/Function0;

    iget-object v7, p0, Lq11;->g:Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistSummaryUiModel;

    invoke-direct {v4, v6, v7, v5}, Lni0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v5, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v6, 0x7ae0ac4c

    invoke-direct {v5, v6, v3, v4}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {p1, v0, v5, v2}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    :cond_0
    iget-object v4, p0, Lq11;->c:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCatalogUiModel;

    iget-object v5, v4, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCatalogUiModel;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-instance v7, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/StoreModeLevel1ScreenKt$StoreModeLevel1Content$lambda$0$0$$inlined$itemsIndexed$default$2;

    invoke-direct {v7, v5}, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/StoreModeLevel1ScreenKt$StoreModeLevel1Content$lambda$0$0$$inlined$itemsIndexed$default$2;-><init>(Ljava/util/List;)V

    new-instance v8, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/StoreModeLevel1ScreenKt$StoreModeLevel1Content$lambda$0$0$$inlined$itemsIndexed$default$3;

    iget-object p0, p0, Lq11;->h:Lkotlin/jvm/functions/Function1;

    invoke-direct {v8, v5, p0, v4, v1}, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/StoreModeLevel1ScreenKt$StoreModeLevel1Content$lambda$0$0$$inlined$itemsIndexed$default$3;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCatalogUiModel;Z)V

    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v4, 0x799532c4

    invoke-direct {p0, v4, v3, v8}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-interface {p1, v6, v0, v7, p0}, Landroidx/compose/foundation/lazy/LazyListScope;->h(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    if-nez v1, :cond_1

    sget-object p0, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/ComposableSingletons$StoreModeLevel1ScreenKt;->a:Lcom/vuitton/android/presentation/screen/storemode/components/catalog/ComposableSingletons$StoreModeLevel1ScreenKt;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/ComposableSingletons$StoreModeLevel1ScreenKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static {p1, v0, p0, v2}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
