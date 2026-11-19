.class final Lcom/vuitton/android/presentation/screen/booking/pass/BookingPassViewModelImpl$getBookingPass$1;
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
    c = "com.vuitton.android.presentation.screen.booking.pass.BookingPassViewModelImpl$getBookingPass$1"
    f = "BookingPassViewModelImpl.kt"
    l = {
        0x26
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/booking/pass/BookingPassViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/booking/pass/BookingPassViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/pass/BookingPassViewModelImpl$getBookingPass$1;->c:Lcom/vuitton/android/presentation/screen/booking/pass/BookingPassViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/booking/pass/BookingPassViewModelImpl$getBookingPass$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/pass/BookingPassViewModelImpl$getBookingPass$1;->c:Lcom/vuitton/android/presentation/screen/booking/pass/BookingPassViewModelImpl;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/booking/pass/BookingPassViewModelImpl$getBookingPass$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/pass/BookingPassViewModelImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/booking/pass/BookingPassViewModelImpl$getBookingPass$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/booking/pass/BookingPassViewModelImpl$getBookingPass$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/booking/pass/BookingPassViewModelImpl$getBookingPass$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/pass/BookingPassViewModelImpl$getBookingPass$1;->c:Lcom/vuitton/android/presentation/screen/booking/pass/BookingPassViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/booking/pass/BookingPassViewModelImpl;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/vuitton/android/presentation/screen/booking/pass/BookingPassViewModelImpl$getBookingPass$1;->b:I

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

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/booking/pass/BookingPassViewModelImpl;->b:Lcom/vuitton/android/domain/usecase/booking/GetBookingPassUseCase;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/booking/pass/BookingPassViewModelImpl;->a:Ljava/lang/String;

    iput v4, p0, Lcom/vuitton/android/presentation/screen/booking/pass/BookingPassViewModelImpl$getBookingPass$1;->b:I

    invoke-virtual {p1, v0, p0}, Lcom/vuitton/android/domain/usecase/booking/GetBookingPassUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_2

    return-object v2

    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-nez p1, :cond_4

    move-object p1, p0

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/booking/BookingPass;

    new-instance v0, Lcom/vuitton/android/presentation/screen/booking/pass/models/BookingPassViewState$Success;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/booking/BookingPass;->a:Ljava/lang/String;

    iget-object v4, p1, Lcom/vuitton/foundation/model/domain/model/booking/BookingPass;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/vuitton/foundation/model/domain/model/booking/BookingPass;->c:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    iget-object v5, v2, Lcom/vuitton/foundation/model/domain/model/common/AssetImage;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/vuitton/foundation/model/domain/model/booking/BookingPass;->d:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v2, v7}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/foundation/model/domain/model/booking/BookingInfo;

    invoke-static {v7}, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModelMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/booking/BookingInfo;)Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoUiModel;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/booking/BookingPass;->e:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    iget-object v7, p1, Lcom/vuitton/foundation/model/domain/model/common/AssetImage;->a:Ljava/lang/String;

    new-instance v2, Lcom/vuitton/android/presentation/screen/booking/pass/models/BookingPassUiModel;

    invoke-direct/range {v2 .. v7}, Lcom/vuitton/android/presentation/screen/booking/pass/models/BookingPassUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/vuitton/android/presentation/screen/booking/pass/models/BookingPassViewState$Success;-><init>(Lcom/vuitton/android/presentation/screen/booking/pass/models/BookingPassUiModel;)V

    invoke-interface {v1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_4
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_5

    sget-object p0, Lcom/vuitton/android/presentation/screen/booking/pass/models/BookingPassViewState$Error;->a:Lcom/vuitton/android/presentation/screen/booking/pass/models/BookingPassViewState$Error;

    invoke-interface {v1, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
