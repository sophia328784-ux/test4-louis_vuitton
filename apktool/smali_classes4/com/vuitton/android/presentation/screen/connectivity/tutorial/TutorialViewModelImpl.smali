.class public final Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModelImpl;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModel;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B)\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModelImpl;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModel;",
        "Lcom/vuitton/android/domain/usecase/connectivity/watchv3/GetWatchV3TutorialUseCase;",
        "getWatchV3TutorialUseCase",
        "Lcom/vuitton/android/domain/usecase/connectivity/earphone/GetEarphoneTutorialUseCase;",
        "getEarphoneTutorialUseCase",
        "Lcom/vuitton/android/domain/usecase/connectivity/horizon/GetHorizonSpeakerTutorialUseCase;",
        "getHorizonSpeakerTutorialUseCase",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/connectivity/watchv3/GetWatchV3TutorialUseCase;Lcom/vuitton/android/domain/usecase/connectivity/earphone/GetEarphoneTutorialUseCase;Lcom/vuitton/android/domain/usecase/connectivity/horizon/GetHorizonSpeakerTutorialUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V",
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
.field public final a:Lcom/vuitton/android/domain/usecase/connectivity/watchv3/GetWatchV3TutorialUseCase;

.field public final b:Lcom/vuitton/android/domain/usecase/connectivity/earphone/GetEarphoneTutorialUseCase;

.field public final c:Lcom/vuitton/android/domain/usecase/connectivity/horizon/GetHorizonSpeakerTutorialUseCase;

.field public final d:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final e:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/connectivity/watchv3/GetWatchV3TutorialUseCase;Lcom/vuitton/android/domain/usecase/connectivity/earphone/GetEarphoneTutorialUseCase;Lcom/vuitton/android/domain/usecase/connectivity/horizon/GetHorizonSpeakerTutorialUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModelImpl;->a:Lcom/vuitton/android/domain/usecase/connectivity/watchv3/GetWatchV3TutorialUseCase;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModelImpl;->b:Lcom/vuitton/android/domain/usecase/connectivity/earphone/GetEarphoneTutorialUseCase;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModelImpl;->c:Lcom/vuitton/android/domain/usecase/connectivity/horizon/GetHorizonSpeakerTutorialUseCase;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModelImpl;->d:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModelImpl;->e:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public final Pb(Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModel;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModelImpl;->d:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void
.end method

.method public final U2(Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialType;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModelImpl$getTutorialList$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModelImpl$getTutorialList$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialType;Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final nc()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModelImpl;->e:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method
