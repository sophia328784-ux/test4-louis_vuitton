.class final Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl$onNfcTagDetected$1;
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
    c = "com.vuitton.android.presentation.screen.certificates.nfc.CertificateNfcScanViewModelImpl$onNfcTagDetected$1"
    f = "CertificateNfcScanViewModelImpl.kt"
    l = {
        0x97,
        0x98
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field public c:I

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;

.field public final synthetic e:Landroid/app/Activity;

.field public final synthetic f:Landroid/nfc/tech/NfcV;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;Landroid/app/Activity;Landroid/nfc/tech/NfcV;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl$onNfcTagDetected$1;->d:Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl$onNfcTagDetected$1;->e:Landroid/app/Activity;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl$onNfcTagDetected$1;->f:Landroid/nfc/tech/NfcV;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl$onNfcTagDetected$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl$onNfcTagDetected$1;->e:Landroid/app/Activity;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl$onNfcTagDetected$1;->f:Landroid/nfc/tech/NfcV;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl$onNfcTagDetected$1;->d:Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl$onNfcTagDetected$1;-><init>(Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;Landroid/app/Activity;Landroid/nfc/tech/NfcV;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl$onNfcTagDetected$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl$onNfcTagDetected$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl$onNfcTagDetected$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl$onNfcTagDetected$1;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, ""

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl$onNfcTagDetected$1;->d:Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl$onNfcTagDetected$1;->b:Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    move-object p0, v0

    move-object v1, p0

    goto/16 :goto_7

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_1
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v6, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;->k:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v1, v6, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;->l:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v7, v6, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;->c:Lcom/vuitton/foundation/logger/Logger;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState$Scanning;

    if-nez p1, :cond_3

    sget-object p0, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImplKt;->a:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_3
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p0, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImplKt;->a:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_4
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, p1, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, v6, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;->k:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_5
    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState;

    sget-object v7, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState$Processing;->a:Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState$Processing;

    invoke-interface {p1, v1, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :try_start_2
    iget-object p1, v6, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;->e:Lcom/vuitton/android/domain/usecase/authentication/oauth/GetSfidTokenOrNullUseCase;

    iput v4, p0, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl$onNfcTagDetected$1;->c:I

    invoke-virtual {p1, p0}, Lcom/vuitton/android/domain/usecase/authentication/oauth/GetSfidTokenOrNullUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    goto :goto_1

    :cond_6
    :goto_0
    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_7

    move-object p1, v5

    :cond_7
    iget-object v1, v6, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;->f:Lcom/vuitton/android/domain/usecase/authentication/oauth/GetSlasTokenOrNullUseCase;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl$onNfcTagDetected$1;->b:Ljava/lang/String;

    iput v3, p0, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl$onNfcTagDetected$1;->c:I

    invoke-virtual {v1, p0}, Lcom/vuitton/android/domain/usecase/authentication/oauth/GetSlasTokenOrNullUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_8

    :goto_1
    return-object v0

    :cond_8
    move-object v7, p1

    move-object p1, v1

    :goto_2
    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_9

    move-object v8, v5

    goto :goto_3

    :cond_9
    move-object v8, p1

    :goto_3
    iget-object p1, v6, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/certificates/nfc/NfcManager;

    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;->i:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    iget-object v1, v6, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/certificates/nfc/NfcManager;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/certificates/nfc/NfcManager;->b:Lcom/vuitton/foundation/secrets/SecretsProvider;

    sget-object v3, Lcom/vuitton/foundation/secrets/SecretKey;->NFC_SDK_CLIENT_ID:Lcom/vuitton/foundation/secrets/SecretKey;

    invoke-interface {p1, v3}, Lcom/vuitton/foundation/secrets/SecretsProvider;->a(Lcom/vuitton/foundation/secrets/SecretKey;)Ljava/lang/String;

    move-result-object v9

    iget-object p1, v1, Lcom/vuitton/android/presentation/screen/certificates/nfc/NfcManager;->b:Lcom/vuitton/foundation/secrets/SecretsProvider;

    sget-object v3, Lcom/vuitton/foundation/secrets/SecretKey;->NFC_SDK_CLIENT_SECRET:Lcom/vuitton/foundation/secrets/SecretKey;

    invoke-interface {p1, v3}, Lcom/vuitton/foundation/secrets/SecretsProvider;->a(Lcom/vuitton/foundation/secrets/SecretKey;)Ljava/lang/String;

    move-result-object v10

    sget-object p1, Lcom/vuitton/android/data/net/interceptor/UserAgentInterceptor;->c:Lcom/vuitton/android/data/net/interceptor/UserAgentInterceptor$Companion;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl$onNfcTagDetected$1;->e:Landroid/app/Activity;

    iget-object v4, v6, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;->h:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-static {v3, p1}, Lcom/vuitton/android/data/net/interceptor/UserAgentInterceptor$Companion;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v11

    iget-object p1, v6, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;->n:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;

    if-eqz p1, :cond_a

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;->i:Ljava/lang/String;

    goto :goto_4

    :cond_a
    move-object p1, v2

    :goto_4
    if-nez p1, :cond_b

    move-object v12, v5

    goto :goto_5

    :cond_b
    move-object v12, p1

    :goto_5
    invoke-static/range {v7 .. v12}, Llv/nfc/reader/utils/LVConstants;->createHeaders(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    iget-object v3, v6, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;->c:Lcom/vuitton/foundation/logger/Logger;

    const-string v4, "NFC TAG"

    iget-object v5, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->G:Lcom/vuitton/foundation/model/domain/model/config/CertificateConfig;

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/config/CertificateConfig;->b:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v2}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl$onNfcTagDetected$1;->f:Landroid/nfc/tech/NfcV;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->G:Lcom/vuitton/foundation/model/domain/model/config/CertificateConfig;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/config/CertificateConfig;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v6, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;->n:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;

    if-eqz v3, :cond_c

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;->h:Ljava/lang/String;

    if-eqz v3, :cond_c

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_6

    :cond_c
    sget-object v3, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :goto_6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Llv/nfc/reader/data/models/LVTagInput;

    invoke-direct {v4, v0, p0, p1, v3}, Llv/nfc/reader/data/models/LVTagInput;-><init>(Ljava/lang/String;Landroid/nfc/tech/NfcV;Ljava/util/Map;Ljava/util/List;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v1, Lcom/vuitton/android/presentation/screen/certificates/nfc/NfcManager;->c:Llv/nfc/reader/TagNfcManager;

    invoke-virtual {p0, v4}, Llv/nfc/reader/TagNfcManager;->scan(Llv/nfc/reader/data/models/LVTagInput;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/vuitton/android/presentation/screen/certificates/nfc/a;

    invoke-direct {p1, v6}, Lcom/vuitton/android/presentation/screen/certificates/nfc/a;-><init>(Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImplKt$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImplKt$sam$androidx_lifecycle_Observer$0;-><init>(Lcom/vuitton/android/presentation/screen/certificates/nfc/a;)V

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_8

    :goto_7
    iget-object p0, v6, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;->c:Lcom/vuitton/foundation/logger/Logger;

    sget-object p1, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImplKt;->a:Ljava/lang/String;

    const-string v0, "Error during scan"

    invoke-interface {p0, p1, v0, v1}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v7, v6, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;->l:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_d
    invoke-interface {v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v7, p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    iget-object p0, v6, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;->k:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_e
    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState;

    new-instance v0, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState$Error;

    sget-object v3, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcErrorType;->TECHNICAL_ERROR:Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcErrorType;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState$Error;-><init>(Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcErrorType;Ljava/lang/String;)V

    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p0, v6, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;->m:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz p0, :cond_f

    new-instance p1, Lcom/vuitton/android/domain/monitoring/certificates/CertificateMonitoring$Error$NfcScanError;

    invoke-direct {p1, v1}, Lcom/vuitton/android/domain/monitoring/certificates/CertificateMonitoring$Error$NfcScanError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, p1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    :cond_f
    iget-object p0, v6, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;->m:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz p0, :cond_10

    invoke-interface {p0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    :cond_10
    iput-object v2, v6, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;->m:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    :goto_8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
