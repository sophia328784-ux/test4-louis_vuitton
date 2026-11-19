.class final Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$addConsentAndAddCertificate$1;
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
    c = "com.vuitton.android.presentation.screen.certificates.diamonds.add.AddCertificateViewModelImpl$addConsentAndAddCertificate$1"
    f = "AddCertificateViewModelImpl.kt"
    l = {
        0xb5
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;

.field public c:Ljava/util/Map;

.field public d:I

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;

.field public final synthetic g:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;Ljava/util/Map;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$addConsentAndAddCertificate$1;->f:Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$addConsentAndAddCertificate$1;->g:Ljava/util/Map;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$addConsentAndAddCertificate$1;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$addConsentAndAddCertificate$1;->f:Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$addConsentAndAddCertificate$1;->g:Ljava/util/Map;

    invoke-direct {v0, v1, p0, p2}, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$addConsentAndAddCertificate$1;-><init>(Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;Ljava/util/Map;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$addConsentAndAddCertificate$1;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$addConsentAndAddCertificate$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$addConsentAndAddCertificate$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$addConsentAndAddCertificate$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$addConsentAndAddCertificate$1;->e:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$addConsentAndAddCertificate$1;->d:I

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$addConsentAndAddCertificate$1;->f:Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$addConsentAndAddCertificate$1;->c:Ljava/util/Map;

    check-cast v0, Ljava/util/Map;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$addConsentAndAddCertificate$1;->b:Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$addConsentAndAddCertificate$1;->g:Ljava/util/Map;

    :try_start_1
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iput-object v4, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$addConsentAndAddCertificate$1;->e:Ljava/lang/Object;

    iput-object v2, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$addConsentAndAddCertificate$1;->b:Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;

    move-object v1, p1

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$addConsentAndAddCertificate$1;->c:Ljava/util/Map;

    iput v3, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl$addConsentAndAddCertificate$1;->d:I

    invoke-static {v2, p0}, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, p0

    move-object p0, v2

    :goto_0
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v1, p1, Lkotlin/Result$Failure;

    if-nez v1, :cond_3

    sget-object p1, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->s:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->Ac(Ljava/util/Map;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->k:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->p:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz v0, :cond_5

    new-instance v1, Lcom/vuitton/android/domain/monitoring/certificates/CertificateMonitoring$Error$ActivateCertificateError;

    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4

    new-instance p1, Ljava/lang/Exception;

    const-string v3, "China consent request failed"

    invoke-direct {p1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    :cond_4
    invoke-direct {v1, p1}, Lcom/vuitton/android/domain/monitoring/certificates/CertificateMonitoring$Error$ActivateCertificateError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    :cond_5
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->p:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    :cond_6
    iput-object v4, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->p:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->zc(Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_3
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_7

    check-cast p0, Lkotlin/Unit;

    iget-object p0, v2, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->l:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_4

    :cond_7
    iget-object p0, v2, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    sget-object v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ActivateCertificateErrorManualEvent;->a:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ActivateCertificateErrorManualEvent;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModelKt;->b(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    iget-object p0, v2, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    sget-object v0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->s:Ljava/lang/String;

    const-string v1, "Failed to create certificate"

    invoke-interface {p0, v0, v1, p1}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, v2, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->k:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object p0, v2, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->p:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz p0, :cond_8

    new-instance v0, Lcom/vuitton/android/domain/monitoring/certificates/CertificateMonitoring$Error$ActivateCertificateError;

    invoke-direct {v0, p1}, Lcom/vuitton/android/domain/monitoring/certificates/CertificateMonitoring$Error$ActivateCertificateError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    :cond_8
    iget-object p0, v2, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->p:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz p0, :cond_9

    invoke-interface {p0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    :cond_9
    iput-object v4, v2, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->p:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;->zc(Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;)V

    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
