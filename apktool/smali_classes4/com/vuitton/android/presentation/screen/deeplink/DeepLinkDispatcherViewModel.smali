.class public final Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/domain/usecase/config/CachedAppConfigOrNullUseCase;",
        "cachedAppConfigOrNullUseCase",
        "Lcom/vuitton/android/domain/repository/AppLinkRepository;",
        "appLinkRepository",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/config/CachedAppConfigOrNullUseCase;Lcom/vuitton/android/domain/repository/AppLinkRepository;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V",
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
.field public final a:Lcom/vuitton/android/domain/usecase/config/CachedAppConfigOrNullUseCase;

.field public final b:Lcom/vuitton/android/domain/repository/AppLinkRepository;

.field public final c:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

.field public final d:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final e:Lkotlinx/coroutines/flow/StateFlow;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/config/CachedAppConfigOrNullUseCase;Lcom/vuitton/android/domain/repository/AppLinkRepository;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel;->a:Lcom/vuitton/android/domain/usecase/config/CachedAppConfigOrNullUseCase;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel;->b:Lcom/vuitton/android/domain/repository/AppLinkRepository;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel;->c:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    sget-object p1, Lcom/vuitton/android/presentation/screen/deeplink/RoutingDataState$Loading;->a:Lcom/vuitton/android/presentation/screen/deeplink/RoutingDataState$Loading;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel;->d:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->b(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel;->e:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    new-instance p2, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel$onInitialLoad$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel$onInitialLoad$1;-><init>(Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, p3, p3, p2, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
