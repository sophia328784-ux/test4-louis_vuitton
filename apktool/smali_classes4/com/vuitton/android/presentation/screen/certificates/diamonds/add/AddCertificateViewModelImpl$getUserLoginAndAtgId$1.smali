.class final Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$getUserLoginAndAtgId$1;
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
    c = "com.vuitton.android.presentation.screen.certificates.diamonds.add.AddCertificateViewModelImpl$getUserLoginAndAtgId$1"
    f = "AddCertificateViewModelImpl.kt"
    l = {
        0x69,
        0x69
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;)V
    .locals 0

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$getUserLoginAndAtgId$1;->c:Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$getUserLoginAndAtgId$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$getUserLoginAndAtgId$1;->c:Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;

    invoke-direct {p1, p2, p0}, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$getUserLoginAndAtgId$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$getUserLoginAndAtgId$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$getUserLoginAndAtgId$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$getUserLoginAndAtgId$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$getUserLoginAndAtgId$1;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$getUserLoginAndAtgId$1;->c:Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v5, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->g:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    iput v4, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$getUserLoginAndAtgId$1;->b:I

    invoke-virtual {p1, p0}, Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    iput v3, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$getUserLoginAndAtgId$1;->b:I

    invoke-interface {p1, p0}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    :goto_1
    return-object v0

    :cond_4
    :goto_2
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-nez p1, :cond_8

    move-object p1, p0

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    iget-object v0, p1, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->a:Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id;

    instance-of v0, v0, Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id$AtgId;

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    move-object p1, v2

    :goto_3
    if-eqz p1, :cond_8

    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->o:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_6
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->a:Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id;

    invoke-interface {v3}, Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v5, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->n:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_7
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_8
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_9

    iget-object p1, v5, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    sget-object v0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->s:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0, v2}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
