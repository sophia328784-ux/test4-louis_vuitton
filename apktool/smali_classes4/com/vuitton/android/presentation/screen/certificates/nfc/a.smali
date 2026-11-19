.class public final synthetic Lcom/vuitton/android/presentation/screen/certificates/nfc/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/certificates/nfc/a;->b:Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Llv/nfc/reader/data/models/LVResult;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/nfc/a;->b:Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;->k:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;->c:Lcom/vuitton/foundation/logger/Logger;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;->l:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_0
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Llv/nfc/reader/data/models/LVResult;->isSuccess()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Llv/nfc/reader/data/models/LVResult;->getData()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Llv/nfc/reader/data/models/LVResult;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Llv/nfc/reader/data/models/LVTagResult;

    sget-object v2, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImplKt;->a:Ljava/lang/String;

    invoke-virtual {p1}, Llv/nfc/reader/data/models/LVTagResult;->getCxid()Ljava/lang/String;

    invoke-virtual {p1}, Llv/nfc/reader/data/models/LVTagResult;->getSku()Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState;

    sget-object v1, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState$Success;->a:Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState$Success;

    invoke-interface {v0, p1, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;->m:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    :cond_2
    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;->m:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    new-instance v0, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl$unlockCertificateNfcTag$1;

    invoke-direct {v0, p0, v3}, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl$unlockCertificateNfcTag$1;-><init>(Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v3, v3, v0, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    goto/16 :goto_4

    :cond_3
    invoke-virtual {p1}, Llv/nfc/reader/data/models/LVResult;->getException()Ljava/lang/Exception;

    move-result-object v4

    sget-object p1, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImplKt;->a:Ljava/lang/String;

    const-string v2, "ERROR"

    invoke-interface {v1, p1, v2, v4}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    instance-of p1, v4, Llv/nfc/reader/data/exceptions/LVTagException;

    if-eqz p1, :cond_6

    move-object p1, v4

    check-cast p1, Llv/nfc/reader/data/exceptions/LVTagException;

    invoke-virtual {p1}, Llv/nfc/reader/data/exceptions/LVTagException;->getLVReadTagError()Llv/nfc/reader/data/exceptions/LVReadTagError;

    move-result-object p1

    if-nez p1, :cond_4

    const/4 p1, -0x1

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    :goto_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_5

    sget-object p1, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcErrorType;->LOST_TAG:Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcErrorType;

    :goto_1
    move-object v5, p1

    goto :goto_2

    :cond_5
    sget-object p1, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcErrorType;->TECHNICAL_ERROR:Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcErrorType;

    goto :goto_1

    :cond_6
    instance-of p1, v4, Llv/nfc/reader/data/exceptions/LVNetworkException;

    if-eqz p1, :cond_7

    sget-object p1, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcErrorType;->NETWORK_ERROR:Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcErrorType;

    goto :goto_1

    :cond_7
    sget-object p1, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcErrorType;->TECHNICAL_ERROR:Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcErrorType;

    goto :goto_1

    :cond_8
    :goto_2
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState;

    new-instance v1, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState$Error;

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_9
    move-object v2, v3

    :goto_3
    invoke-direct {v1, v5, v2}, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState$Error;-><init>(Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcErrorType;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;->m:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz p1, :cond_b

    new-instance v0, Lcom/vuitton/android/domain/monitoring/certificates/CertificateMonitoring$Error$NfcScanError;

    if-nez v4, :cond_a

    new-instance v4, Ljava/lang/Exception;

    const-string v1, "Unknown error"

    invoke-direct {v4, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    :cond_a
    invoke-direct {v0, v4}, Lcom/vuitton/android/domain/monitoring/certificates/CertificateMonitoring$Error$NfcScanError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    :cond_b
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;->m:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz p1, :cond_c

    invoke-interface {p1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    :cond_c
    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;->m:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
