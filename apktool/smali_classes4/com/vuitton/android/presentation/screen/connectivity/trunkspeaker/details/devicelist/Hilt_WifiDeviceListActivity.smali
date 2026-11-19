.class public abstract Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/Hilt_WifiDeviceListActivity;
.super Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/BaseTrunkActivity;
.source "SourceFile"


# instance fields
.field private r:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/BaseTrunkActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/Hilt_WifiDeviceListActivity;->r:Z

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/Hilt_WifiDeviceListActivity;->v()V

    return-void
.end method

.method private v()V
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/Hilt_WifiDeviceListActivity$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/Hilt_WifiDeviceListActivity$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/Hilt_WifiDeviceListActivity;)V

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->addOnContextAvailableListener(Landroidx/activity/contextaware/OnContextAvailableListener;)V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 1

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/Hilt_WifiDeviceListActivity;->r:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/Hilt_WifiDeviceListActivity;->r:Z

    invoke-interface {p0}, Ldagger/hilt/internal/GeneratedComponentManager;->C()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListActivity_GeneratedInjector;

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListActivity;

    invoke-interface {v0, p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListActivity_GeneratedInjector;->q(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListActivity;)V

    :cond_0
    return-void
.end method
