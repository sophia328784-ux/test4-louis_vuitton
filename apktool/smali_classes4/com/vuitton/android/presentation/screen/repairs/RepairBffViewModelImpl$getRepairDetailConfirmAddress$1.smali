.class final Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairDetailConfirmAddress$1;
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
    c = "com.vuitton.android.presentation.screen.repairs.RepairBffViewModelImpl$getRepairDetailConfirmAddress$1"
    f = "RepairBffViewModelImpl.kt"
    l = {
        0x135
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairDetailConfirmAddress$1;->c:Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairDetailConfirmAddress$1;->d:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairDetailConfirmAddress$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairDetailConfirmAddress$1;->c:Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairDetailConfirmAddress$1;->d:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairDetailConfirmAddress$1;-><init>(Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairDetailConfirmAddress$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairDetailConfirmAddress$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairDetailConfirmAddress$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairDetailConfirmAddress$1;->c:Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->r:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairDetailConfirmAddress$1;->b:I

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    if-ne v3, v4, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :cond_2
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, p1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->m:Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceDetailBffUseCase;

    sget-object v3, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairDetailConfirmAddress$1;->d:Ljava/lang/String;

    invoke-static {v3}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;->a(Ljava/lang/String;)V

    iput v4, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$getRepairDetailConfirmAddress$1;->b:I

    invoke-virtual {p1, v3, p0}, Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceDetailBffUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_3

    return-object v2

    :cond_3
    :goto_0
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-nez p1, :cond_4

    move-object p1, p0

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;

    invoke-static {v0, p1}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;)V

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;->n:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;->d:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAddress;

    if-eqz p1, :cond_4

    iget-object v2, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAddress;->a:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->q:Lkotlinx/coroutines/channels/BufferedChannel;

    new-instance v4, Lkotlin/Pair;

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/account/address/AddressId;

    invoke-direct {v5, v2}, Lcom/vuitton/foundation/model/domain/model/account/address/AddressId;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAddress;->c:Ljava/lang/String;

    invoke-direct {v4, v5, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_5

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    const-string v0, "RepairBffViewModelImpl"

    const-string v2, "Unable to get care detail"

    invoke-interface {p1, v0, v2, p0}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
