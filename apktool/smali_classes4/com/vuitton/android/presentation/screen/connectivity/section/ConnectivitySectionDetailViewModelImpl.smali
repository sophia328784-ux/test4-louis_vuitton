.class public final Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModel;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002Ba\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModel;",
        "Lcom/vuitton/android/domain/usecase/connectivity/watch/GetWatchVideoUseCase;",
        "getWatchVideoUseCase",
        "Lcom/vuitton/android/domain/usecase/connectivity/earphone/GetEarphoneVideoUseCase;",
        "getEarphoneVideoUseCase",
        "Lcom/vuitton/android/domain/usecase/connectivity/earphone/GetEarphoneSkuListUseCase;",
        "getEarphoneSkuListUseCase",
        "Lcom/vuitton/android/domain/usecase/connectivity/lightup/GetLightUpVideoUseCase;",
        "getLightUpVideoUseCase",
        "Lcom/vuitton/android/domain/usecase/connectivity/trunkspeaker/GetTrunkSpeakerVideoUseCase;",
        "getTrunkSpeakerVideoUseCase",
        "Lcom/vuitton/android/domain/usecase/connectivity/trunkspeaker/GetTrunkSpeakerSkuListUseCase;",
        "getTrunkSpeakerSkuListUseCase",
        "Lcom/vuitton/android/domain/usecase/connectivity/horizon/GetHorizonSpeakerSkuListUseCase;",
        "getHorizonSpeakerSkuListUseCase",
        "Lcom/vuitton/android/domain/usecase/connectivity/horizon/GetHorizonSpeakerVideoUseCase;",
        "getHorizonSpeakerVideoUseCase",
        "Lcom/vuitton/android/domain/usecase/connectivity/watchv3/GetWatchV3VideoUseCase;",
        "getWatchV3VideoUseCase",
        "Lcom/vuitton/android/domain/usecase/connectivity/watchv3/GetWatchV3SkuListUseCase;",
        "getWatchV3SkuListUseCase",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/connectivity/watch/GetWatchVideoUseCase;Lcom/vuitton/android/domain/usecase/connectivity/earphone/GetEarphoneVideoUseCase;Lcom/vuitton/android/domain/usecase/connectivity/earphone/GetEarphoneSkuListUseCase;Lcom/vuitton/android/domain/usecase/connectivity/lightup/GetLightUpVideoUseCase;Lcom/vuitton/android/domain/usecase/connectivity/trunkspeaker/GetTrunkSpeakerVideoUseCase;Lcom/vuitton/android/domain/usecase/connectivity/trunkspeaker/GetTrunkSpeakerSkuListUseCase;Lcom/vuitton/android/domain/usecase/connectivity/horizon/GetHorizonSpeakerSkuListUseCase;Lcom/vuitton/android/domain/usecase/connectivity/horizon/GetHorizonSpeakerVideoUseCase;Lcom/vuitton/android/domain/usecase/connectivity/watchv3/GetWatchV3VideoUseCase;Lcom/vuitton/android/domain/usecase/connectivity/watchv3/GetWatchV3SkuListUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V",
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
.field public final a:Lcom/vuitton/android/domain/usecase/connectivity/watch/GetWatchVideoUseCase;

.field public final b:Lcom/vuitton/android/domain/usecase/connectivity/earphone/GetEarphoneVideoUseCase;

.field public final c:Lcom/vuitton/android/domain/usecase/connectivity/earphone/GetEarphoneSkuListUseCase;

.field public final d:Lcom/vuitton/android/domain/usecase/connectivity/lightup/GetLightUpVideoUseCase;

.field public final e:Lcom/vuitton/android/domain/usecase/connectivity/trunkspeaker/GetTrunkSpeakerVideoUseCase;

.field public final f:Lcom/vuitton/android/domain/usecase/connectivity/trunkspeaker/GetTrunkSpeakerSkuListUseCase;

.field public final g:Lcom/vuitton/android/domain/usecase/connectivity/horizon/GetHorizonSpeakerSkuListUseCase;

.field public final h:Lcom/vuitton/android/domain/usecase/connectivity/horizon/GetHorizonSpeakerVideoUseCase;

.field public final i:Lcom/vuitton/android/domain/usecase/connectivity/watchv3/GetWatchV3VideoUseCase;

.field public final j:Lcom/vuitton/android/domain/usecase/connectivity/watchv3/GetWatchV3SkuListUseCase;

.field public final k:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final l:Landroidx/lifecycle/MutableLiveData;

.field public final m:Landroidx/lifecycle/MutableLiveData;

.field public final n:Landroidx/lifecycle/MutableLiveData;

.field public final o:Landroidx/lifecycle/MutableLiveData;

.field public final p:Landroidx/lifecycle/MutableLiveData;

.field public final q:Landroidx/lifecycle/MutableLiveData;

.field public final r:Landroidx/lifecycle/MutableLiveData;

.field public final s:Landroidx/lifecycle/MutableLiveData;

.field public final t:Landroidx/lifecycle/MutableLiveData;

.field public final u:Landroidx/lifecycle/MutableLiveData;

.field public final v:Landroidx/lifecycle/MutableLiveData;

.field public final w:Landroidx/lifecycle/MutableLiveData;

.field public final x:Landroidx/lifecycle/MutableLiveData;

.field public final y:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/connectivity/watch/GetWatchVideoUseCase;Lcom/vuitton/android/domain/usecase/connectivity/earphone/GetEarphoneVideoUseCase;Lcom/vuitton/android/domain/usecase/connectivity/earphone/GetEarphoneSkuListUseCase;Lcom/vuitton/android/domain/usecase/connectivity/lightup/GetLightUpVideoUseCase;Lcom/vuitton/android/domain/usecase/connectivity/trunkspeaker/GetTrunkSpeakerVideoUseCase;Lcom/vuitton/android/domain/usecase/connectivity/trunkspeaker/GetTrunkSpeakerSkuListUseCase;Lcom/vuitton/android/domain/usecase/connectivity/horizon/GetHorizonSpeakerSkuListUseCase;Lcom/vuitton/android/domain/usecase/connectivity/horizon/GetHorizonSpeakerVideoUseCase;Lcom/vuitton/android/domain/usecase/connectivity/watchv3/GetWatchV3VideoUseCase;Lcom/vuitton/android/domain/usecase/connectivity/watchv3/GetWatchV3SkuListUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V
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

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;->a:Lcom/vuitton/android/domain/usecase/connectivity/watch/GetWatchVideoUseCase;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;->b:Lcom/vuitton/android/domain/usecase/connectivity/earphone/GetEarphoneVideoUseCase;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;->c:Lcom/vuitton/android/domain/usecase/connectivity/earphone/GetEarphoneSkuListUseCase;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;->d:Lcom/vuitton/android/domain/usecase/connectivity/lightup/GetLightUpVideoUseCase;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;->e:Lcom/vuitton/android/domain/usecase/connectivity/trunkspeaker/GetTrunkSpeakerVideoUseCase;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;->f:Lcom/vuitton/android/domain/usecase/connectivity/trunkspeaker/GetTrunkSpeakerSkuListUseCase;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;->g:Lcom/vuitton/android/domain/usecase/connectivity/horizon/GetHorizonSpeakerSkuListUseCase;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;->h:Lcom/vuitton/android/domain/usecase/connectivity/horizon/GetHorizonSpeakerVideoUseCase;

    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;->i:Lcom/vuitton/android/domain/usecase/connectivity/watchv3/GetWatchV3VideoUseCase;

    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;->j:Lcom/vuitton/android/domain/usecase/connectivity/watchv3/GetWatchV3SkuListUseCase;

    iput-object p11, p0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;->k:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;->l:Landroidx/lifecycle/MutableLiveData;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;->m:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;->n:Landroidx/lifecycle/MutableLiveData;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;->o:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;->p:Landroidx/lifecycle/MutableLiveData;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;->q:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;->r:Landroidx/lifecycle/MutableLiveData;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;->s:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;->t:Landroidx/lifecycle/MutableLiveData;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;->u:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;->v:Landroidx/lifecycle/MutableLiveData;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;->w:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;->x:Landroidx/lifecycle/MutableLiveData;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;->y:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method
