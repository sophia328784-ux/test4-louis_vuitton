.class final Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$extractAndProcessKisaPayload$1;
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
    c = "com.vuitton.android.presentation.screen.authentication.AuthenticationViewModelImpl$extractAndProcessKisaPayload$1"
    f = "AuthenticationViewModelImpl.kt"
    l = {
        0x1f1,
        0x1f3
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public c:Ljava/lang/Object;

.field public d:I

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$extractAndProcessKisaPayload$1;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$extractAndProcessKisaPayload$1;->f:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$extractAndProcessKisaPayload$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$extractAndProcessKisaPayload$1;->e:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$extractAndProcessKisaPayload$1;->f:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;

    invoke-direct {p1, p0, v0, p2}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$extractAndProcessKisaPayload$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$extractAndProcessKisaPayload$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$extractAndProcessKisaPayload$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$extractAndProcessKisaPayload$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$extractAndProcessKisaPayload$1;->d:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$extractAndProcessKisaPayload$1;->f:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$extractAndProcessKisaPayload$1;->c:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_1
    iget v1, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$extractAndProcessKisaPayload$1;->b:I

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    const-string p1, "{"

    const/4 v1, 0x6

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$extractAndProcessKisaPayload$1;->e:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v6, p1, v7, v7, v1}, Lkotlin/text/StringsKt;->v(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v1

    const/4 p1, -0x1

    if-eq v1, p1, :cond_6

    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object v6, v5, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->g:Lcom/vuitton/android/domain/provider/consent/KisaConsentsParser;

    iput v1, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$extractAndProcessKisaPayload$1;->b:I

    iput v4, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$extractAndProcessKisaPayload$1;->d:I

    invoke-interface {v6, p1, p0}, Lcom/vuitton/android/domain/provider/consent/KisaConsentsParser;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    sget-object v4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v4, p1, Lkotlin/Result$Failure;

    if-nez v4, :cond_5

    move-object v4, p1

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;

    iget-object v6, v5, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->T:Lkotlinx/coroutines/channels/BufferedChannel;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$extractAndProcessKisaPayload$1;->c:Ljava/lang/Object;

    iput v1, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$extractAndProcessKisaPayload$1;->b:I

    iput v3, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$extractAndProcessKisaPayload$1;->d:I

    invoke-interface {v6, v4, p0}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    :goto_1
    return-object v0

    :cond_4
    move-object p0, p1

    :goto_2
    move-object p1, p0

    :cond_5
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_6

    iget-object p0, v5, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    const-string p1, "AuthenticationViewModelImpl"

    const-string v0, "Not able to retrieve KISA consents"

    invoke-interface {p0, p1, v0, v2}, Lcom/vuitton/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
