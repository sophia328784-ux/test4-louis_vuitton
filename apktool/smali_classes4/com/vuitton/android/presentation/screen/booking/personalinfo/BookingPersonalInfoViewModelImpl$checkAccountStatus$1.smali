.class final Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$checkAccountStatus$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$checkAccountStatus$1$WhenMappings;
    }
.end annotation

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
    c = "com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModelImpl$checkAccountStatus$1"
    f = "BookingPersonalInfoViewModelImpl.kt"
    l = {
        0xc8
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$checkAccountStatus$1;->c:Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$checkAccountStatus$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$checkAccountStatus$1;->c:Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$checkAccountStatus$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$checkAccountStatus$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$checkAccountStatus$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$checkAccountStatus$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$checkAccountStatus$1;->c:Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl;->n:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$checkAccountStatus$1;->b:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    if-ne v3, v5, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_2

    const-string v3, "^[_A-Za-z0-9-+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    xor-int/lit8 v6, v3, 0x1

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl;->p:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v7, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    if-nez v3, :cond_3

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_3
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl;->a:Lcom/vuitton/android/domain/usecase/account/GetAccountStatusUseCase;

    iput v5, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$checkAccountStatus$1;->b:I

    invoke-virtual {v3, p1, p0}, Lcom/vuitton/android/domain/usecase/account/GetAccountStatusUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_4

    return-object v2

    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p1, p0, Lkotlin/Result$Failure;

    const/4 v2, 0x2

    if-nez p1, :cond_8

    move-object p1, p0

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/account/AccountStatus;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/account/AccountStatus;->a:Lcom/vuitton/foundation/model/domain/model/account/AccountStatusValue;

    sget-object v3, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$checkAccountStatus$1$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v3, p1

    if-eq p1, v5, :cond_7

    if-eq p1, v2, :cond_6

    const/4 v3, 0x3

    if-ne p1, v3, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {}, Lv40;->g()V

    return-object v4

    :cond_6
    :goto_2
    sget-object p1, Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoNavigationEvent$NavigateToLogin;->a:Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoNavigationEvent$NavigateToLogin;

    goto :goto_3

    :cond_7
    sget-object p1, Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoNavigationEvent$NavigateToInfoForm;->a:Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoNavigationEvent$NavigateToInfoForm;

    :goto_3
    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl;->r:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-virtual {v3, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->a(Ljava/lang/Object;)Z

    :cond_8
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_9

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl;->h:Lcom/vuitton/foundation/logger/Logger;

    sget-object v3, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl;->w:Ljava/lang/String;

    new-instance v5, Lxe;

    const/16 v6, 0x1d

    invoke-direct {v5, v6}, Lxe;-><init>(I)V

    invoke-interface {p1, v3, v5, p0}, Lcom/vuitton/foundation/logger/Logger;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/Throwable;)V

    iget-object p0, v0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl;->t:Lkotlinx/coroutines/flow/SharedFlowImpl;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl;->i:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    new-instance v6, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const p1, 0x7f140967

    invoke-direct {v6, p1, v4, v2, v4}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v9, 0x0

    const/16 v10, 0x3c

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->a(Ljava/lang/Object;)Z

    :cond_9
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
