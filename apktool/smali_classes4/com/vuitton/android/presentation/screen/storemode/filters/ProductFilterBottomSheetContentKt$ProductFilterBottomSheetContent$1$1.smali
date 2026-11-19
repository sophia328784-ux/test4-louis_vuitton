.class final Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterBottomSheetContentKt$ProductFilterBottomSheetContent$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.presentation.screen.storemode.filters.ProductFilterBottomSheetContentKt$ProductFilterBottomSheetContent$1$1"
    f = "ProductFilterBottomSheetContent.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterViewState;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterViewState;Ljava/util/List;Ljava/util/List;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterBottomSheetContentKt$ProductFilterBottomSheetContent$1$1;->b:Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterViewState;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterBottomSheetContentKt$ProductFilterBottomSheetContent$1$1;->c:Ljava/util/List;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterBottomSheetContentKt$ProductFilterBottomSheetContent$1$1;->d:Ljava/util/List;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterBottomSheetContentKt$ProductFilterBottomSheetContent$1$1;->e:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterBottomSheetContentKt$ProductFilterBottomSheetContent$1$1;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterBottomSheetContentKt$ProductFilterBottomSheetContent$1$1;->d:Ljava/util/List;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterBottomSheetContentKt$ProductFilterBottomSheetContent$1$1;->e:Landroidx/compose/runtime/MutableState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterBottomSheetContentKt$ProductFilterBottomSheetContent$1$1;->b:Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterViewState;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterBottomSheetContentKt$ProductFilterBottomSheetContent$1$1;->c:Ljava/util/List;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterBottomSheetContentKt$ProductFilterBottomSheetContent$1$1;-><init>(Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterViewState;Ljava/util/List;Ljava/util/List;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterBottomSheetContentKt$ProductFilterBottomSheetContent$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterBottomSheetContentKt$ProductFilterBottomSheetContent$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterBottomSheetContentKt$ProductFilterBottomSheetContent$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterBottomSheetContentKt$ProductFilterBottomSheetContent$1$1;->b:Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterViewState;

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterViewState;->a:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterBottomSheetContentKt$ProductFilterBottomSheetContent$1$1;->e:Landroidx/compose/runtime/MutableState;

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterBottomSheetContentKt$ProductFilterBottomSheetContent$1$1;->c:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "sort-by"

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterBottomSheetContentKt$ProductFilterBottomSheetContent$1$1;->d:Ljava/util/List;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryUiModel;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryUiModel;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-interface {p1, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
