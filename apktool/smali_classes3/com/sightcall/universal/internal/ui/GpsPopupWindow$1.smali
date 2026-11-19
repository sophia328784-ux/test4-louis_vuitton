.class Lcom/sightcall/universal/internal/ui/GpsPopupWindow$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/internal/ui/GpsPopupWindow;->prepareUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/internal/ui/GpsPopupWindow;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/ui/GpsPopupWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/GpsPopupWindow$1;->this$0:Lcom/sightcall/universal/internal/ui/GpsPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/GpsPopupWindow$1;->this$0:Lcom/sightcall/universal/internal/ui/GpsPopupWindow;

    invoke-static {v0}, Lcom/sightcall/universal/internal/ui/GpsPopupWindow;->a(Lcom/sightcall/universal/internal/ui/GpsPopupWindow;)Lcom/sightcall/universal/internal/model/GpsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/internal/model/GpsRequest;->isRequesting()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sightcall/common/DataChannelAction;->STOP_LOCATION:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v0}, Lcom/sightcall/common/DataChannelAction;->send()Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v0, Lcom/sightcall/common/DataChannelAction;->REQUEST_GEOLOCATION:Lcom/sightcall/common/DataChannelAction;

    new-instance v1, Lcom/sightcall/gpslocation/rtcc/model/GeoLocationRequest;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/32 v3, 0xea60

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sightcall/gpslocation/rtcc/model/GeoLocationRequest;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lcom/sightcall/pratik/extensions/AnyExtensionsKt;->toJson(Ljava/lang/Object;ZZ)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sightcall/common/DataChannelAction;->send([Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/GpsPopupWindow$1;->this$0:Lcom/sightcall/universal/internal/ui/GpsPopupWindow;

    invoke-static {p0}, Lcom/sightcall/universal/internal/ui/GpsPopupWindow;->a(Lcom/sightcall/universal/internal/ui/GpsPopupWindow;)Lcom/sightcall/universal/internal/model/GpsRequest;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/model/GpsRequest;->onStart()V

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    throw p0
.end method
