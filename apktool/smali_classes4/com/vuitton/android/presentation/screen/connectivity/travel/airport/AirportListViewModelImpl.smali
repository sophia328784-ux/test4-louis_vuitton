.class public final Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListViewModelImpl;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListViewModel;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListViewModelImpl;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListViewModel;",
        "Lcom/vuitton/android/domain/usecase/travel/GetAirportListUseCase;",
        "getAirportListUseCase",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/travel/GetAirportListUseCase;)V",
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
.field public final a:Lcom/vuitton/android/domain/usecase/travel/GetAirportListUseCase;

.field public final b:Landroidx/lifecycle/MutableLiveData;

.field public final c:Landroidx/lifecycle/MutableLiveData;

.field public final d:Landroidx/lifecycle/MutableLiveData;

.field public final e:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/travel/GetAirportListUseCase;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListViewModelImpl;->a:Lcom/vuitton/android/domain/usecase/travel/GetAirportListUseCase;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListViewModelImpl;->b:Landroidx/lifecycle/MutableLiveData;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListViewModelImpl;->c:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListViewModelImpl;->d:Landroidx/lifecycle/MutableLiveData;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListViewModelImpl;->e:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public final W2()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListViewModelImpl;->e:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final pc()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListViewModelImpl$getAirports$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListViewModelImpl$getAirports$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final z7()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListViewModelImpl;->c:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method
