.class public final synthetic Lnt0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailDeviceListAdapter$Listener;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice$SimpleSpeaker;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailDeviceListAdapter$Listener;Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice$SimpleSpeaker;I)V
    .locals 0

    iput p3, p0, Lnt0;->b:I

    iput-object p1, p0, Lnt0;->c:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailDeviceListAdapter$Listener;

    iput-object p2, p0, Lnt0;->d:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice$SimpleSpeaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lnt0;->b:I

    iget-object v1, p0, Lnt0;->d:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice$SimpleSpeaker;

    iget-object p0, p0, Lnt0;->c:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailDeviceListAdapter$Listener;

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailDeviceListAdapter$ViewHolder;->c:I

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_0
    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice$SimpleSpeaker;->b:Lcom/linkplay/core/device/LPDevice;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailDeviceListAdapter$Listener;->i(Lcom/linkplay/core/device/LPDevice;)V

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    throw p0

    :pswitch_0
    sget v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailDeviceListAdapter$ViewHolder;->c:I

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_1
    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice$SimpleSpeaker;->b:Lcom/linkplay/core/device/LPDevice;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailDeviceListAdapter$Listener;->f(Lcom/linkplay/core/device/LPDevice;)V

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
