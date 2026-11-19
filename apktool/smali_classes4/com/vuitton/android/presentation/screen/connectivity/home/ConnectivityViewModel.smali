.class public final Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;
.super Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel<",
        "Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityView;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001BI\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;",
        "Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;",
        "Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityView;",
        "Lcom/vuitton/android/domain/usecase/connectivity/lightup/GetLightUpObjectsUseCase;",
        "getLightUpObjectsUseCase",
        "Lcom/vuitton/android/domain/usecase/connectivity/lightup/DeleteLightUpProductUseCase;",
        "deleteLightUpProductUseCase",
        "Lcom/vuitton/android/domain/service/authentication/UserSessionService;",
        "userSessionService",
        "Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase;",
        "getConnectedObjectListUseCase",
        "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;",
        "getProfileUseCase",
        "Lcom/vuitton/android/domain/usecase/account/GetCachedUserIdUseCase;",
        "getCachedUserIdUseCase",
        "Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase;",
        "pairWatchV2UseCase",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/connectivity/lightup/GetLightUpObjectsUseCase;Lcom/vuitton/android/domain/usecase/connectivity/lightup/DeleteLightUpProductUseCase;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/account/GetCachedUserIdUseCase;Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V",
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


# static fields
.field public static final synthetic o:I


# instance fields
.field public final c:Lcom/vuitton/android/domain/usecase/connectivity/lightup/GetLightUpObjectsUseCase;

.field public final d:Lcom/vuitton/android/domain/usecase/connectivity/lightup/DeleteLightUpProductUseCase;

.field public final e:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

.field public final f:Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase;

.field public final g:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

.field public final h:Lcom/vuitton/android/domain/usecase/account/GetCachedUserIdUseCase;

.field public final i:Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase;

.field public final j:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final k:Landroidx/lifecycle/MutableLiveData;

.field public final l:Landroidx/lifecycle/MutableLiveData;

.field public final m:Landroidx/lifecycle/MutableLiveData;

.field public final n:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/connectivity/lightup/GetLightUpObjectsUseCase;Lcom/vuitton/android/domain/usecase/connectivity/lightup/DeleteLightUpProductUseCase;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/account/GetCachedUserIdUseCase;Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;->c:Lcom/vuitton/android/domain/usecase/connectivity/lightup/GetLightUpObjectsUseCase;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;->d:Lcom/vuitton/android/domain/usecase/connectivity/lightup/DeleteLightUpProductUseCase;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;->e:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;->f:Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;->g:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;->h:Lcom/vuitton/android/domain/usecase/account/GetCachedUserIdUseCase;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;->i:Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;->j:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static final Cc(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;Ljava/util/ArrayList;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$manageConnectedObject$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$manageConnectedObject$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;Lkotlin/coroutines/Continuation;)V

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$manageConnectedObject$2;

    invoke-direct {v2, p1, p0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$manageConnectedObject$2;-><init>(Ljava/util/ArrayList;Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x2

    invoke-static {p0, v0, v2, p1}, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;->Bc(Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;I)V

    return-void
.end method
