.class final Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$addCertificate$1;
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
    c = "com.vuitton.android.presentation.screen.certificates.diamonds.add.AddCertificateViewModelImpl$addCertificate$1"
    f = "AddCertificateViewModelImpl.kt"
    l = {
        0x94
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$addCertificate$1;->c:Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$addCertificate$1;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$addCertificate$1;->e:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$addCertificate$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$addCertificate$1;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$addCertificate$1;->e:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$addCertificate$1;->c:Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$addCertificate$1;-><init>(Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$addCertificate$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$addCertificate$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$addCertificate$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$addCertificate$1;->c:Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$addCertificate$1;->b:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    if-ne v3, v5, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->e:Lcom/vuitton/android/domain/usecase/certificate/AddCertificateUseCase;

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "yyyy-MM-dd"

    invoke-static {v6, v3}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->j(Ljava/lang/String;Ljava/time/LocalDateTime;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/vuitton/android/domain/usecase/certificate/AddCertificateUseCase$Param;

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$addCertificate$1;->d:Ljava/lang/String;

    iget-object v8, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$addCertificate$1;->e:Ljava/lang/String;

    invoke-direct {v6, v7, v3, v8}, Lcom/vuitton/android/domain/usecase/certificate/AddCertificateUseCase$Param;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput v5, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$addCertificate$1;->b:I

    invoke-virtual {p1, v6, p0}, Lcom/vuitton/android/domain/usecase/certificate/AddCertificateUseCase;->a(Lcom/vuitton/android/domain/usecase/certificate/AddCertificateUseCase$Param;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    move-result-object p0

    if-ne p0, v2, :cond_2

    return-object v2

    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-nez p1, :cond_4

    move-object p1, p0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ActivateCertificateSuccessManualEvent;->a:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ActivateCertificateSuccessManualEvent;

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModelKt;->b(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->l:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->p:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    :cond_3
    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->p:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    :cond_4
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_7

    sget-object p1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ActivateCertificateErrorManualEvent;->a:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ActivateCertificateErrorManualEvent;

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModelKt;->b(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    sget-object v1, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->s:Ljava/lang/String;

    const-string v2, "Failed to create certificate"

    invoke-interface {p1, v1, v2, p0}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->k:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->p:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz p1, :cond_5

    new-instance v1, Lcom/vuitton/android/domain/monitoring/certificates/CertificateMonitoring$Error$ActivateCertificateError;

    invoke-direct {v1, p0}, Lcom/vuitton/android/domain/monitoring/certificates/CertificateMonitoring$Error$ActivateCertificateError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p1, v1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    :cond_5
    iget-object p0, v0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->p:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz p0, :cond_6

    invoke-interface {p0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    :cond_6
    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->p:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->zc(Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;)V

    :cond_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
