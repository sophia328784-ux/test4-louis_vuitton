.class final Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl$transferCertificate$1$2;
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
    c = "com.vuitton.android.presentation.screen.certificates.diamonds.transfer.CertificateTransferViewModelImpl$transferCertificate$1$2"
    f = "CertificateTransferViewModelImpl.kt"
    l = {
        0x9c
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl;

.field public final synthetic d:Lcom/vuitton/android/domain/usecase/certificate/TransferCertificateUseCase$Param;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl;Lcom/vuitton/android/domain/usecase/certificate/TransferCertificateUseCase$Param;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl$transferCertificate$1$2;->c:Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl$transferCertificate$1$2;->d:Lcom/vuitton/android/domain/usecase/certificate/TransferCertificateUseCase$Param;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl$transferCertificate$1$2;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl$transferCertificate$1$2;->c:Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl$transferCertificate$1$2;->d:Lcom/vuitton/android/domain/usecase/certificate/TransferCertificateUseCase$Param;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl$transferCertificate$1$2;-><init>(Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl;Lcom/vuitton/android/domain/usecase/certificate/TransferCertificateUseCase$Param;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl$transferCertificate$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl$transferCertificate$1$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl$transferCertificate$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl$transferCertificate$1$2;->b:I

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl$transferCertificate$1$2;->d:Lcom/vuitton/android/domain/usecase/certificate/TransferCertificateUseCase$Param;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl$transferCertificate$1$2;->c:Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl;

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v4, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl;->f:Lcom/vuitton/android/domain/usecase/certificate/TransferCertificateUseCase;

    iput v3, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl$transferCertificate$1$2;->b:I

    invoke-virtual {p1, v2, p0}, Lcom/vuitton/android/domain/usecase/certificate/TransferCertificateUseCase;->a(Lcom/vuitton/android/domain/usecase/certificate/TransferCertificateUseCase$Param;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-nez p1, :cond_6

    move-object p1, p0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v4, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl;->k:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, v2, Lcom/vuitton/android/domain/usecase/certificate/TransferCertificateUseCase$Param;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v5

    :goto_1
    if-nez v1, :cond_4

    iget-object v1, v2, Lcom/vuitton/android/domain/usecase/certificate/TransferCertificateUseCase$Param;->b:Ljava/lang/String;

    :cond_4
    iget-object v2, v2, Lcom/vuitton/android/domain/usecase/certificate/TransferCertificateUseCase$Param;->d:Ljava/lang/String;

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, v0, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object p1, v4, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl;->l:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    :cond_5
    iput-object v5, v4, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl;->l:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    :cond_6
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_9

    iget-object p1, v4, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    sget-object v0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl;->o:Ljava/lang/String;

    const-string v1, "Unable to transfer certificate diamond"

    invoke-interface {p1, v0, v1, p0}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, v4, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl;->l:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz p1, :cond_7

    new-instance v0, Lcom/vuitton/android/domain/monitoring/certificates/CertificateMonitoring$Error$TransferCertificateError;

    invoke-direct {v0, p0}, Lcom/vuitton/android/domain/monitoring/certificates/CertificateMonitoring$Error$TransferCertificateError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    :cond_7
    iget-object p0, v4, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl;->l:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz p0, :cond_8

    invoke-interface {p0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    :cond_8
    iput-object v5, v4, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl;->l:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {v4}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p0

    new-instance p1, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl$notifyError$1;

    invoke-direct {p1, v5, v4}, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl$notifyError$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl;)V

    const/4 v0, 0x3

    invoke-static {p0, v5, v5, p1, v0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iget-object p0, v4, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
