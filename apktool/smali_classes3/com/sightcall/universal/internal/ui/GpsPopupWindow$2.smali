.class Lcom/sightcall/universal/internal/ui/GpsPopupWindow$2;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/internal/ui/GpsPopupWindow;->formatCoordinates(Landroid/location/Location;)Ljava/lang/CharSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/internal/ui/GpsPopupWindow;

.field final synthetic val$location:Landroid/location/Location;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/ui/GpsPopupWindow;Landroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/GpsPopupWindow$2;->this$0:Lcom/sightcall/universal/internal/ui/GpsPopupWindow;

    iput-object p2, p0, Lcom/sightcall/universal/internal/ui/GpsPopupWindow$2;->val$location:Landroid/location/Location;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/GpsPopupWindow$2;->this$0:Lcom/sightcall/universal/internal/ui/GpsPopupWindow;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/GpsPopupWindow$2;->val$location:Landroid/location/Location;

    invoke-static {v0, v1, p0}, Lcom/sightcall/universal/internal/ui/GpsPopupWindow;->b(Lcom/sightcall/universal/internal/ui/GpsPopupWindow;Landroid/content/Context;Landroid/location/Location;)V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
