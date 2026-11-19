.class final Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$onAppointmentsClicked$1;
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
    c = "com.vuitton.android.presentation.screen.services.ServicesViewModelImpl$onAppointmentsClicked$1"
    f = "ServicesViewModelImpl.kt"
    l = {
        0xea
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl;)V
    .locals 0

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$onAppointmentsClicked$1;->c:Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$onAppointmentsClicked$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$onAppointmentsClicked$1;->c:Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl;

    invoke-direct {p1, p2, p0}, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$onAppointmentsClicked$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$onAppointmentsClicked$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$onAppointmentsClicked$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$onAppointmentsClicked$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$onAppointmentsClicked$1;->c:Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl;->p:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$onAppointmentsClicked$1;->b:I

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

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl;->k:Lcom/vuitton/android/domain/usecase/booking/GetBookingsUseCase;

    iput v4, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$onAppointmentsClicked$1;->b:I

    invoke-virtual {p1, p0}, Lcom/vuitton/android/domain/usecase/booking/GetBookingsUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_2

    return-object v2

    :cond_2
    :goto_0
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    const-string v3, "ServicesViewModelImpl"

    const-string v5, "Unable to retrieve bookings"

    invoke-interface {v2, v3, v5, p1}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    instance-of p1, p0, Lkotlin/Result$Failure;

    if-nez p1, :cond_4

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingList;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingList;->a:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v4

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    :cond_4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v2, p0, Lkotlin/Result$Failure;

    if-eqz v2, :cond_5

    move-object p0, p1

    :cond_5
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-interface {v1, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl;->C:Lkotlinx/coroutines/flow/SharedFlowImpl;

    if-eqz p0, :cond_6

    sget-object p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesNavigationEvent$ToMyExperiences;->a:Lcom/vuitton/android/presentation/screen/services/models/ServicesNavigationEvent$ToMyExperiences;

    goto :goto_1

    :cond_6
    new-instance p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesNavigationEvent$ToOsa;

    sget-object v0, Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;->LOCATION_FORM:Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/vuitton/android/presentation/screen/services/models/ServicesNavigationEvent$ToOsa;-><init>(Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;Z)V

    :goto_1
    invoke-virtual {p1, p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->a(Ljava/lang/Object;)Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
