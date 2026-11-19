.class public final Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel;
.super Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel<",
        "Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsView;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B1\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel;",
        "Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;",
        "Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsView;",
        "Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/UnpairWatchV2UseCase;",
        "unpairWatchV2UseCase",
        "Lcom/vuitton/android/domain/usecase/connectivity/watch/RenameWatchUseCase;",
        "renameWatchUseCase",
        "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;",
        "getProfileUseCase",
        "Lcom/vuitton/android/domain/usecase/account/GetCachedUserIdUseCase;",
        "getCachedUserIdUseCase",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/UnpairWatchV2UseCase;Lcom/vuitton/android/domain/usecase/connectivity/watch/RenameWatchUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/account/GetCachedUserIdUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V",
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
.field public static final synthetic l:I


# instance fields
.field public final c:Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/UnpairWatchV2UseCase;

.field public final d:Lcom/vuitton/android/domain/usecase/connectivity/watch/RenameWatchUseCase;

.field public final e:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

.field public final f:Lcom/vuitton/android/domain/usecase/account/GetCachedUserIdUseCase;

.field public final g:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final h:Landroidx/lifecycle/MutableLiveData;

.field public final i:Landroidx/lifecycle/MutableLiveData;

.field public final j:Landroidx/lifecycle/MutableLiveData;

.field public final k:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/UnpairWatchV2UseCase;Lcom/vuitton/android/domain/usecase/connectivity/watch/RenameWatchUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/account/GetCachedUserIdUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel;->c:Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/UnpairWatchV2UseCase;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel;->d:Lcom/vuitton/android/domain/usecase/connectivity/watch/RenameWatchUseCase;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel;->e:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel;->f:Lcom/vuitton/android/domain/usecase/account/GetCachedUserIdUseCase;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel;->g:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method
