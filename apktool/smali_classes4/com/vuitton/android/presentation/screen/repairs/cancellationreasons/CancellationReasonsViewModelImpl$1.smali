.class final Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewModelImpl$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewModelImpl;-><init>(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/careservices/GetRepairCancellationReasonUseCase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
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
    c = "com.vuitton.android.presentation.screen.repairs.cancellationreasons.CancellationReasonsViewModelImpl$1"
    f = "CancellationReasonsViewModelImpl.kt"
    l = {
        0x29
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:I

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewModelImpl$1;->d:Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewModelImpl$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewModelImpl$1;->d:Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewModelImpl;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewModelImpl$1;-><init>(Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewModelImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewModelImpl$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewModelImpl$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewModelImpl$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewModelImpl$1;->d:Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewModelImpl;->f:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewModelImpl;->d:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, p0, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewModelImpl$1;->c:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    if-ne v4, v6, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewModelImpl$1;->b:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewModelImpl;->b:Lcom/vuitton/android/domain/usecase/careservices/GetRepairCancellationReasonUseCase;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewModelImpl;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->a()Ljava/lang/String;

    move-result-object v5

    :cond_2
    if-nez v5, :cond_3

    const-string v5, ""

    :cond_3
    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewModelImpl$1;->b:Ljava/lang/Object;

    iput v6, p0, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewModelImpl$1;->c:I

    iget-object v4, p1, Lcom/vuitton/android/domain/usecase/careservices/GetRepairCancellationReasonUseCase;->b:Lcom/vuitton/android/domain/repository/RepairRepository;

    iget-object p1, p1, Lcom/vuitton/android/domain/usecase/careservices/GetRepairCancellationReasonUseCase;->a:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    invoke-virtual {p1}, Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;->a()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    invoke-interface {v4, v5, p0}, Lcom/vuitton/android/domain/repository/RepairRepository;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v3, :cond_4

    return-object v3

    :cond_4
    move-object p0, v1

    :goto_0
    check-cast p1, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {p1, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/careservices/CancellationReason;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/vuitton/android/presentation/screen/repairs/models/CancellationReasonUiModel;

    iget-object v6, v4, Lcom/vuitton/foundation/model/domain/model/careservices/CancellationReason;->a:Ljava/lang/String;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/careservices/CancellationReason;->b:Ljava/lang/String;

    invoke-direct {v5, v6, v4}, Lcom/vuitton/android/presentation/screen/repairs/models/CancellationReasonUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-interface {p0, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6

    iget-object p0, v0, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewModelImpl;->e:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_6
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
