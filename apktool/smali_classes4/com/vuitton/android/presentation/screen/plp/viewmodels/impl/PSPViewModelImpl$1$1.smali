.class final Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;",
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "viewState",
        "Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;"
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
    c = "com.vuitton.android.presentation.screen.plp.viewmodels.impl.PSPViewModelImpl$1$1"
    f = "PSPViewModelImpl.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl$1$1;->c:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl$1$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl$1$1;->c:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl$1$1;-><init>(Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl$1$1;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl$1$1;->c:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl$1$1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;->a:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/vuitton/android/presentation/screen/plp/models/PSPTrackingUiModel$ResultScreen;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v2, p1, v1}, Lcom/vuitton/android/presentation/screen/plp/models/PSPTrackingUiModel$ResultScreen;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    invoke-static {v2, p1}, Lcom/vuitton/android/presentation/screen/plp/models/PSPTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/plp/models/PSPTrackingUiModel;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/plp/models/PSPTrackingUiModel$SearchDone;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;->a:Ljava/lang/String;

    invoke-direct {v1, p0}, Lcom/vuitton/android/presentation/screen/plp/models/PSPTrackingUiModel$SearchDone;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/vuitton/android/presentation/screen/plp/models/PSPTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/plp/models/PSPTrackingUiModel;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
