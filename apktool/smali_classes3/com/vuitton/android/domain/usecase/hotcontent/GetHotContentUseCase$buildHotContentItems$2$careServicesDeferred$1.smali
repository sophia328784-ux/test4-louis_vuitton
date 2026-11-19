.class final Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2$careServicesDeferred$1;
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
        "Ljava/util/List<",
        "+",
        "Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContentItem$CareService;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContentItem$CareService;",
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
    c = "com.vuitton.android.domain.usecase.hotcontent.GetHotContentUseCase$buildHotContentItems$2$careServicesDeferred$1"
    f = "GetHotContentUseCase.kt"
    l = {
        0x38,
        0x39,
        0x3b
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2$careServicesDeferred$1;->c:Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2$careServicesDeferred$1;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2$careServicesDeferred$1;->c:Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2$careServicesDeferred$1;-><init>(Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2$careServicesDeferred$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2$careServicesDeferred$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2$careServicesDeferred$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2$careServicesDeferred$1;->c:Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;

    iget-object v1, v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;->d:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2$careServicesDeferred$1;->b:I

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v7, :cond_2

    if-eq v3, v6, :cond_1

    if-ne v3, v5, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->MY_CARE_SERVICES:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {p1}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object p1

    iput v7, p0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2$careServicesDeferred$1;->b:I

    invoke-virtual {v1, p1, v4, p0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_4

    goto :goto_2

    :cond_4
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->CARE_SERVICES_MIGRATION:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {p1}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object p1

    iput v6, p0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2$careServicesDeferred$1;->b:I

    invoke-virtual {v1, p1, v4, p0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    iput v5, p0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2$careServicesDeferred$1;->b:I

    invoke-static {v0, p0}, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;->a(Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    move-result-object p1

    if-ne p1, v2, :cond_6

    :goto_2
    return-object v2

    :cond_6
    :goto_3
    check-cast p1, Ljava/util/List;

    return-object p1

    :cond_7
    sget-object p0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    return-object p0
.end method
