.class public final Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment$initRecyclerView$1$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment$initRecyclerView$1$1",
        "Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;",
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
.field public final synthetic c:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment$initRecyclerView$1$1;->c:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(I)I
    .locals 1

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;->L:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment$Companion;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment$initRecyclerView$1$1;->c:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;->G:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListAdapter;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListAdapter;->getItemViewType(I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    return p1
.end method
