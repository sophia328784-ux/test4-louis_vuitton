.class public final Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModelImpl;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModelImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u000fB1\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModelImpl;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModel;",
        "Lcom/vuitton/android/domain/usecase/travel/GetTravelListUseCase;",
        "getTravelListUseCase",
        "Lcom/vuitton/android/domain/usecase/connectivity/watch/GetWatchUseCase;",
        "getWatchUseCase",
        "Lcom/vuitton/android/domain/usecase/connectivity/watch/watchface/GetWatchfacePresentationWithVersionUseCase;",
        "getWatchfacePresentationWithVersionUseCase",
        "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;",
        "getProfileUseCase",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/travel/GetTravelListUseCase;Lcom/vuitton/android/domain/usecase/connectivity/watch/GetWatchUseCase;Lcom/vuitton/android/domain/usecase/connectivity/watch/watchface/GetWatchfacePresentationWithVersionUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V",
        "Companion",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcom/vuitton/android/domain/usecase/travel/GetTravelListUseCase;

.field public final b:Lcom/vuitton/android/domain/usecase/connectivity/watch/GetWatchUseCase;

.field public final c:Lcom/vuitton/android/domain/usecase/connectivity/watch/watchface/GetWatchfacePresentationWithVersionUseCase;

.field public final d:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

.field public final e:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final f:Landroidx/lifecycle/MutableLiveData;

.field public final g:Landroidx/lifecycle/MutableLiveData;

.field public final h:Landroidx/lifecycle/MutableLiveData;

.field public final i:Landroidx/lifecycle/MutableLiveData;

.field public final j:Landroidx/lifecycle/MutableLiveData;

.field public final k:Landroidx/lifecycle/MutableLiveData;

.field public final l:Landroidx/lifecycle/MutableLiveData;

.field public final m:Landroidx/lifecycle/MutableLiveData;

.field public n:Lkotlinx/coroutines/Job;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModelImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModelImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/domain/usecase/travel/GetTravelListUseCase;Lcom/vuitton/android/domain/usecase/connectivity/watch/GetWatchUseCase;Lcom/vuitton/android/domain/usecase/connectivity/watch/watchface/GetWatchfacePresentationWithVersionUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModelImpl;->a:Lcom/vuitton/android/domain/usecase/travel/GetTravelListUseCase;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModelImpl;->b:Lcom/vuitton/android/domain/usecase/connectivity/watch/GetWatchUseCase;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModelImpl;->c:Lcom/vuitton/android/domain/usecase/connectivity/watch/watchface/GetWatchfacePresentationWithVersionUseCase;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModelImpl;->d:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModelImpl;->e:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModelImpl;->f:Landroidx/lifecycle/MutableLiveData;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModelImpl;->g:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModelImpl;->h:Landroidx/lifecycle/MutableLiveData;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModelImpl;->i:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModelImpl;->j:Landroidx/lifecycle/MutableLiveData;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModelImpl;->k:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModelImpl;->l:Landroidx/lifecycle/MutableLiveData;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModelImpl;->m:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public final D(Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModelImpl;->e:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void
.end method

.method public final Ha()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModelImpl;->g:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final T()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModelImpl;->i:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final T9()V
    .locals 4

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->b:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModelImpl$getProfile$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModelImpl$getProfile$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x2

    invoke-static {v0, v1, v3, v2, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final U9(Ljava/lang/Integer;)V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModelImpl$getWatchFaces$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModelImpl$getWatchFaces$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModelImpl;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final Ub()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModelImpl;->m:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final Xb(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModelImpl;->n:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModelImpl$getWatch$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModelImpl$getWatch$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    invoke-static {v0, v2, v2, v1, p1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModelImpl;->n:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final p0()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModelImpl$getTravels$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModelImpl$getTravels$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final w()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModelImpl;->k:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method
