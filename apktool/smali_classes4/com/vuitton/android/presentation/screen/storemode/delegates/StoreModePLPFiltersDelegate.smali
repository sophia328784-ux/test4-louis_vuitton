.class public final Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModePLPFiltersDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001Bi\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u000e\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u000e\u0010\u000c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006\u0012\u000e\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0006\u0012\u000e\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModePLPFiltersDelegate;",
        "",
        "Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;",
        "qafSource",
        "Lkotlinx/coroutines/CoroutineScope;",
        "scope",
        "Lkotlinx/coroutines/flow/Flow;",
        "",
        "sortId",
        "initialFilterKey",
        "Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;",
        "filterCommand",
        "currentFilterKey",
        "Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;",
        "pagination",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "currentL3Category",
        "<init>",
        "(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/MutableStateFlow;)V",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lkotlinx/coroutines/flow/StateFlow;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/MutableStateFlow;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;",
            ">;",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlinx/coroutines/flow/Flow;

    const/4 v1, 0x0

    aput-object p7, v0, v1

    const/4 v1, 0x1

    aput-object p6, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 p3, 0x3

    aput-object p8, v0, p3

    new-instance p3, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModePLPFiltersDelegate$special$$inlined$combine$1;

    invoke-direct {p3, v0, p4}, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModePLPFiltersDelegate$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModePLPFiltersDelegate$viewState$2;

    const/4 v6, 0x0

    move-object v3, p1

    move-object v5, p4

    move-object v2, p5

    move-object/from16 v4, p8

    invoke-direct/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModePLPFiltersDelegate$viewState$2;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;Lkotlinx/coroutines/flow/MutableStateFlow;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    new-instance p1, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {p1, p3, v1}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted$Companion;->c:Lkotlinx/coroutines/flow/SharingStarted;

    new-instance v0, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;

    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p1, p2, p3, v0}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModePLPFiltersDelegate;->a:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method
