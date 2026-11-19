.class public final Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelFormViewModelImpl;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelFormViewModel;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B)\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelFormViewModelImpl;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelFormViewModel;",
        "Lcom/vuitton/android/domain/usecase/travel/CreateTravelUseCase;",
        "createTravelUseCase",
        "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;",
        "getProfileUseCase",
        "Lcom/vuitton/android/domain/usecase/account/GetCachedUserIdUseCase;",
        "getCachedUserIdUseCase",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/travel/CreateTravelUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/account/GetCachedUserIdUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V",
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
.field public final a:Lcom/vuitton/android/domain/usecase/travel/CreateTravelUseCase;

.field public final b:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

.field public final c:Lcom/vuitton/android/domain/usecase/account/GetCachedUserIdUseCase;

.field public final d:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final e:Landroidx/lifecycle/MutableLiveData;

.field public final f:Landroidx/lifecycle/MutableLiveData;

.field public final g:Landroidx/lifecycle/MutableLiveData;

.field public final h:Landroidx/lifecycle/MutableLiveData;

.field public final i:Landroidx/lifecycle/MutableLiveData;

.field public final j:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/travel/CreateTravelUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/account/GetCachedUserIdUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelFormViewModelImpl;->a:Lcom/vuitton/android/domain/usecase/travel/CreateTravelUseCase;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelFormViewModelImpl;->b:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelFormViewModelImpl;->c:Lcom/vuitton/android/domain/usecase/account/GetCachedUserIdUseCase;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelFormViewModelImpl;->d:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelFormViewModelImpl;->e:Landroidx/lifecycle/MutableLiveData;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelFormViewModelImpl;->f:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelFormViewModelImpl;->g:Landroidx/lifecycle/MutableLiveData;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelFormViewModelImpl;->h:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelFormViewModelImpl;->i:Landroidx/lifecycle/MutableLiveData;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelFormViewModelImpl;->j:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    sget-object p2, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p2, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->b:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance p3, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelFormViewModelImpl$1;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelFormViewModelImpl$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelFormViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x2

    invoke-static {p1, p2, p4, p3, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final T()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelFormViewModelImpl;->h:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final W6(Lcom/vuitton/android/presentation/screen/connectivity/travel/TravelUiModel;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelFormViewModelImpl$createTravel$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelFormViewModelImpl$createTravel$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelFormViewModelImpl;Lcom/vuitton/android/presentation/screen/connectivity/travel/TravelUiModel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final getUserId()Landroidx/lifecycle/LiveData;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelFormViewModelImpl;->j:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final t0(Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelFormViewModelImpl;->d:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void
.end method

.method public final w()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelFormViewModelImpl;->f:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method
