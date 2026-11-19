.class final Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$openStoreMap$1;
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
    c = "com.vuitton.android.presentation.screen.pdp.FindInStoreViewModelImpl$openStoreMap$1"
    f = "FindInStoreViewModelImpl.kt"
    l = {
        0xa7,
        0xb6
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Number;

.field public c:Ljava/lang/Number;

.field public d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;

.field public final synthetic g:Landroid/location/Geocoder;

.field public final synthetic h:Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;

.field public final synthetic i:Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;Landroid/location/Geocoder;Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$openStoreMap$1;->f:Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$openStoreMap$1;->g:Landroid/location/Geocoder;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$openStoreMap$1;->h:Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$openStoreMap$1;->i:Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$openStoreMap$1;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$openStoreMap$1;->h:Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$openStoreMap$1;->i:Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$openStoreMap$1;->f:Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$openStoreMap$1;->g:Landroid/location/Geocoder;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$openStoreMap$1;-><init>(Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;Landroid/location/Geocoder;Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$openStoreMap$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$openStoreMap$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$openStoreMap$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$openStoreMap$1;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_1
    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$openStoreMap$1;->c:Ljava/lang/Number;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$openStoreMap$1;->b:Ljava/lang/Number;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_4

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$openStoreMap$1;->f:Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-wide v5, p1, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->c:D

    new-instance v7, Ljava/lang/Double;

    invoke-direct {v7, v5, v6}, Ljava/lang/Double;-><init>(D)V

    move-object v5, v7

    goto :goto_0

    :cond_3
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    :goto_0
    if-eqz p1, :cond_4

    iget-wide v6, p1, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->d:D

    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, v6, v7}, Ljava/lang/Double;-><init>(D)V

    move-object v6, v0

    goto :goto_1

    :cond_4
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    :goto_1
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$openStoreMap$1;->g:Landroid/location/Geocoder;

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$openStoreMap$1;->h:Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;

    :try_start_1
    sget-object v8, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    sget-object v8, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v8, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->b:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v9, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$openStoreMap$1$1$1;

    invoke-direct {v9, p1, v0, v7, v4}, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$openStoreMap$1$1$1;-><init>(Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;Landroid/location/Geocoder;Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;Lkotlin/coroutines/Continuation;)V

    iput-object v5, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$openStoreMap$1;->b:Ljava/lang/Number;

    iput-object v6, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$openStoreMap$1;->c:Ljava/lang/Number;

    iput v3, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$openStoreMap$1;->e:I

    invoke-static {v8, v9, p0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v1, :cond_5

    goto :goto_7

    :cond_5
    move-object v3, v6

    :goto_2
    :try_start_2
    check-cast p1, Landroid/location/Address;

    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    move-object v8, v3

    move-object v7, v5

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object p1, v0

    move-object v3, v6

    :goto_4
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_5
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_6

    :cond_6
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_8

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v0, p1

    :goto_6
    check-cast v0, Lkotlin/Result;

    iget-object p1, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of v0, p1, Lkotlin/Result$Failure;

    if-nez v0, :cond_7

    move-object v6, p1

    check-cast v6, Landroid/location/Address;

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->a:Lkotlinx/coroutines/MainCoroutineDispatcher;

    new-instance v5, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$openStoreMap$1$2$1;

    const/4 v11, 0x0

    iget-object v9, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$openStoreMap$1;->h:Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;

    iget-object v10, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$openStoreMap$1;->i:Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;

    invoke-direct/range {v5 .. v11}, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$openStoreMap$1$2$1;-><init>(Landroid/location/Address;Ljava/lang/Object;Ljava/lang/Object;Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;Lkotlin/coroutines/Continuation;)V

    iput-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$openStoreMap$1;->b:Ljava/lang/Number;

    iput-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$openStoreMap$1;->c:Ljava/lang/Number;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$openStoreMap$1;->d:Ljava/lang/Object;

    iput v2, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$openStoreMap$1;->e:I

    invoke-static {v0, v5, p0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_7

    :goto_7
    return-object v1

    :cond_7
    :goto_8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_8
    throw p1
.end method
