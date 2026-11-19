.class final Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/LightUpScanViewModel$getPairedObjects$1;
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
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
    c = "com.vuitton.android.presentation.screen.connectivity.lightup.common.scan.LightUpScanViewModel$getPairedObjects$1"
    f = "LightUpScanViewModel.kt"
    l = {
        0x13,
        0x14
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/LightUpScanViewModel;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/LightUpScanViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/LightUpScanViewModel$getPairedObjects$1;->c:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/LightUpScanViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/LightUpScanViewModel$getPairedObjects$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/LightUpScanViewModel$getPairedObjects$1;->c:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/LightUpScanViewModel;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/LightUpScanViewModel$getPairedObjects$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/LightUpScanViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/LightUpScanViewModel$getPairedObjects$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/LightUpScanViewModel$getPairedObjects$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/LightUpScanViewModel$getPairedObjects$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/LightUpScanViewModel$getPairedObjects$1;->b:I

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/LightUpScanViewModel$getPairedObjects$1;->c:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/LightUpScanViewModel;

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v2, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/LightUpScanViewModel;->c:Lcom/vuitton/android/domain/usecase/connectivity/lightup/GetLightUpObjectsUseCase;

    iput v4, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/LightUpScanViewModel$getPairedObjects$1;->b:I

    iget-object v1, p1, Lcom/vuitton/android/domain/usecase/connectivity/lightup/GetLightUpObjectsUseCase;->a:Lcom/vuitton/android/domain/repository/LightUpRepository;

    iget-object p1, p1, Lcom/vuitton/android/domain/usecase/connectivity/lightup/GetLightUpObjectsUseCase;->b:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->KEEP_ALL:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v4}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result v4

    sget-object v5, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->SNEAKERS:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v5}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result p1

    invoke-interface {v1, v4, p1, p0}, Lcom/vuitton/android/domain/repository/LightUpRepository;->i(ZZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    check-cast p1, Ljava/util/List;

    new-instance v1, Lud;

    const/16 v4, 0xb

    invoke-direct {v1, p1, v4}, Lud;-><init>(Ljava/util/List;I)V

    iput v3, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/LightUpScanViewModel$getPairedObjects$1;->b:I

    sget p1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/LightUpScanViewModel;->e:I

    invoke-virtual {v2, p0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;->zc(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    :goto_1
    return-object v0

    :cond_4
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
