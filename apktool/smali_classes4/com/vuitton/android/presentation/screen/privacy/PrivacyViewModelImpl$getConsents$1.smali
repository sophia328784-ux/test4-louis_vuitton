.class final Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$getConsents$1;
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
    c = "com.vuitton.android.presentation.screen.privacy.PrivacyViewModelImpl$getConsents$1"
    f = "PrivacyViewModelImpl.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$getConsents$1;->c:Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$getConsents$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$getConsents$1;->c:Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$getConsents$1;-><init>(Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$getConsents$1;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$getConsents$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$getConsents$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$getConsents$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$getConsents$1;->b:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$getConsents$1;->c:Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->p:Lkotlinx/coroutines/flow/MutableStateFlow;

    :try_start_0
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->c:Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentListUseCase;

    iget-object v0, v0, Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentListUseCase;->a:Lcom/vuitton/android/domain/repository/ConsentRepository;

    invoke-interface {v0}, Lcom/vuitton/android/domain/repository/ConsentRepository;->f()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_0
    instance-of v1, v0, Lkotlin/Result$Failure;

    if-nez v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;

    invoke-static {v3}, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/privacy/Consent;)Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-interface {p1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/privacy/models/PrivacyTrackingUiModel$PrivacyParamsScreen;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {v1, p1}, Lcom/vuitton/android/presentation/screen/privacy/models/PrivacyTrackingUiModel$PrivacyParamsScreen;-><init>(Ljava/util/List;)V

    invoke-static {p0, v1}, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;Lcom/vuitton/android/presentation/screen/privacy/models/PrivacyTrackingUiModel;)V

    :cond_1
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->n:Lcom/vuitton/foundation/logger/Logger;

    const-string v1, "PrivacyViewModelImpl"

    const-string v2, "Can\'t retrieve consents"

    invoke-interface {v0, v1, v2, p1}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->q:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
