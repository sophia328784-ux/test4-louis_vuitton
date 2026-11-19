.class final Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$loadForm$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$loadForm$1$WhenMappings;
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
    c = "com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModelImpl$loadForm$1"
    f = "BookingPersonalInfoViewModelImpl.kt"
    l = {
        0x88,
        0x8a,
        0xa2
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Z

.field public d:I

.field public e:I

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$loadForm$1;->g:Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$loadForm$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$loadForm$1;->g:Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$loadForm$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$loadForm$1;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$loadForm$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$loadForm$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$loadForm$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$loadForm$1;->g:Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl;->o:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl;->n:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$loadForm$1;->f:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v5, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$loadForm$1;->e:I

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_3

    if-eq v5, v8, :cond_2

    if-eq v5, v7, :cond_1

    if-ne v5, v6, :cond_0

    iget p0, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$loadForm$1;->d:I

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v9

    :cond_1
    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$loadForm$1;->c:Z

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$loadForm$1;->b:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/Deferred;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$loadForm$1;->c:Z

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$loadForm$1;->b:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/Deferred;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    new-instance p1, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$loadForm$1$bookingPolicyResult$1;

    invoke-direct {p1, v0, v9}, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$loadForm$1$bookingPolicyResult$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v3, v9, p1, v6}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Deferred;

    move-result-object v5

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl;->j:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    invoke-virtual {p1}, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->b()Z

    move-result v3

    new-instance p1, Lx4;

    invoke-direct {p1, v3, v8}, Lx4;-><init>(ZI)V

    if-eqz v3, :cond_5

    iput-object v9, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$loadForm$1;->f:Ljava/lang/Object;

    iput-object v5, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$loadForm$1;->b:Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$loadForm$1;->c:Z

    iput v8, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$loadForm$1;->e:I

    invoke-static {v0, p1, p0}, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl;->zc(Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl;Lx4;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v4, :cond_4

    goto :goto_3

    :cond_4
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_2

    :cond_5
    new-instance v10, Lc1;

    const/16 v11, 0x18

    invoke-direct {v10, v0, v11}, Lc1;-><init>(Ljava/lang/Object;I)V

    new-instance v11, Lc;

    const/16 v12, 0xa

    invoke-direct {v11, v0, v12}, Lc;-><init>(Ljava/lang/Object;I)V

    iput-object v9, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$loadForm$1;->f:Ljava/lang/Object;

    iput-object v5, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$loadForm$1;->b:Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$loadForm$1;->c:Z

    iput v7, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$loadForm$1;->e:I

    invoke-virtual {v0, v10, v11, p1, p0}, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl;->Ac(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v4, :cond_6

    goto :goto_3

    :cond_6
    :goto_1
    move p1, v8

    :goto_2
    iput-object v9, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$loadForm$1;->f:Ljava/lang/Object;

    iput-object v9, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$loadForm$1;->b:Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$loadForm$1;->c:Z

    iput p1, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$loadForm$1;->d:I

    iput v6, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$loadForm$1;->e:I

    invoke-interface {v5, p0}, Lkotlinx/coroutines/Deferred;->k(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v4, :cond_7

    :goto_3
    return-object v4

    :cond_7
    move v13, p1

    move-object p1, p0

    move p0, v13

    :goto_4
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/booking/BookingExternalContent;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    if-nez p0, :cond_8

    goto :goto_5

    :cond_8
    const/4 v8, 0x0

    :goto_5
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v1, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object p0, v0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl;->q:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
