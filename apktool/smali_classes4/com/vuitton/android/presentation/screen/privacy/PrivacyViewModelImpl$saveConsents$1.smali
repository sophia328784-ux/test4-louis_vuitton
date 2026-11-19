.class final Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$saveConsents$1;
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
    c = "com.vuitton.android.presentation.screen.privacy.PrivacyViewModelImpl$saveConsents$1"
    f = "PrivacyViewModelImpl.kt"
    l = {
        0xb2,
        0xc7,
        0xd0
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;

.field public d:I

.field public e:I

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$saveConsents$1;->g:Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$saveConsents$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$saveConsents$1;->g:Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$saveConsents$1;-><init>(Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$saveConsents$1;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$saveConsents$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$saveConsents$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$saveConsents$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$saveConsents$1;->g:Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->p:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$saveConsents$1;->f:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$saveConsents$1;->e:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v3, :cond_3

    if-eq v3, v7, :cond_2

    if-eq v3, v5, :cond_1

    if-ne v3, v4, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$saveConsents$1;->c:Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$saveConsents$1;->b:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_c

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v8

    :cond_1
    iget v6, p0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$saveConsents$1;->d:I

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$saveConsents$1;->c:Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$saveConsents$1;->b:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object p1, v1

    goto/16 :goto_a

    :cond_2
    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$saveConsents$1;->b:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->h:Lcom/vuitton/android/domain/usecase/privacy/consent/SetConsentsUseCase;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v3, v10}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;

    invoke-static {v10}, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentMapperKt;->a(Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;)Lcom/vuitton/foundation/model/domain/model/privacy/Consent;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iput-object v8, p0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$saveConsents$1;->f:Ljava/lang/Object;

    iput-object v8, p0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$saveConsents$1;->b:Ljava/lang/Object;

    iput v6, p0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$saveConsents$1;->d:I

    iput v7, p0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$saveConsents$1;->e:I

    invoke-virtual {p1, v9, p0}, Lcom/vuitton/android/domain/usecase/privacy/consent/SetConsentsUseCase;->a(Ljava/util/ArrayList;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_5

    goto/16 :goto_b

    :cond_5
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    sget-object v3, Lkotlin/Result;->c:Lkotlin/Result$Companion;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v3, Lkotlin/Result$Failure;

    invoke-direct {v3, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v3

    :goto_3
    instance-of v3, p1, Lkotlin/Result$Failure;

    if-nez v3, :cond_10

    move-object v3, p1

    check-cast v3, Lkotlin/Unit;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v3

    new-instance v9, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$saveConsents$1$2$1;

    invoke-direct {v9, v0, v8}, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$saveConsents$1$2$1;-><init>(Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v3, v8, v8, v9, v4}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->w:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;

    instance-of v11, v11, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$CustomisationConsentUiModel;

    if-eqz v11, :cond_6

    goto :goto_4

    :cond_7
    move-object v10, v8

    :goto_4
    check-cast v10, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;

    if-eqz v10, :cond_8

    iget-object v9, v10, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;->a:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    goto :goto_5

    :cond_8
    move-object v9, v8

    :goto_5
    sget-object v10, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;->REFUSED:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    if-eq v9, v10, :cond_9

    move v9, v7

    goto :goto_6

    :cond_9
    move v9, v6

    :goto_6
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v3, v9}, Lkotlinx/coroutines/flow/SharedFlowImpl;->a(Ljava/lang/Object;)Z

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->m:Lcom/vuitton/android/core/events/LVEventSender;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;

    instance-of v10, v10, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$ChatConsentUiModel;

    if-eqz v10, :cond_a

    goto :goto_7

    :cond_b
    move-object v9, v8

    :goto_7
    check-cast v9, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;

    if-eqz v9, :cond_c

    iget-object v1, v9, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;->a:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    goto :goto_8

    :cond_c
    move-object v1, v8

    :goto_8
    sget-object v9, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;->REFUSED:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    if-eq v1, v9, :cond_d

    goto :goto_9

    :cond_d
    move v7, v6

    :goto_9
    new-instance v1, Lcom/vuitton/android/core/events/AppEvent$ChatConsentUpdatedEvent;

    invoke-direct {v1, v7}, Lcom/vuitton/android/core/events/AppEvent$ChatConsentUpdatedEvent;-><init>(Z)V

    iput-object v8, p0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$saveConsents$1;->f:Ljava/lang/Object;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$saveConsents$1;->b:Ljava/lang/Object;

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$saveConsents$1;->c:Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;

    iput v6, p0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$saveConsents$1;->d:I

    iput v5, p0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$saveConsents$1;->e:I

    invoke-virtual {v3, v1, p0}, Lcom/vuitton/android/core/events/LVEventSender;->a(Lcom/vuitton/android/core/events/AppEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_e

    goto :goto_b

    :cond_e
    :goto_a
    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->m:Lcom/vuitton/android/core/events/LVEventSender;

    iput-object v8, p0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$saveConsents$1;->f:Ljava/lang/Object;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$saveConsents$1;->b:Ljava/lang/Object;

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$saveConsents$1;->c:Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;

    iput v6, p0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$saveConsents$1;->d:I

    iput v4, p0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl$saveConsents$1;->e:I

    sget-object v3, Lcom/vuitton/android/core/events/AppEvent$ConsentsUpdatedEvent;->a:Lcom/vuitton/android/core/events/AppEvent$ConsentsUpdatedEvent;

    invoke-virtual {v1, v3, p0}, Lcom/vuitton/android/core/events/LVEventSender;->a(Lcom/vuitton/android/core/events/AppEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_f

    :goto_b
    return-object v2

    :cond_f
    move-object p0, p1

    :goto_c
    new-instance p1, Lcom/vuitton/android/presentation/screen/privacy/models/PrivacyTrackingUiModel$PrivacyParamsSelectedEvent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->p:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {p1, v1}, Lcom/vuitton/android/presentation/screen/privacy/models/PrivacyTrackingUiModel$PrivacyParamsSelectedEvent;-><init>(Ljava/util/List;)V

    invoke-static {v0, p1}, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;Lcom/vuitton/android/presentation/screen/privacy/models/PrivacyTrackingUiModel;)V

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->u:Lkotlinx/coroutines/flow/SharedFlowImpl;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->a(Ljava/lang/Object;)Z

    move-object p1, p0

    :cond_10
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_11

    const-string p1, "PrivacyViewModelImpl"

    const-string v0, "Can\'t save consents"

    sget-object v1, Lcom/vuitton/foundation/logger/LegacyLogger;->a:Lcom/vuitton/foundation/logger/LegacyLogger;

    invoke-virtual {v1, p1, v0, p0}, Lcom/vuitton/foundation/logger/LegacyLogger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
