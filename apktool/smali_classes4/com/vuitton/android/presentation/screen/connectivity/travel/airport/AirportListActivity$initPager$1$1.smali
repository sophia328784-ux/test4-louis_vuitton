.class public final Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity$initPager$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity$initPager$1$1",
        "Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;",
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
.field public final synthetic a:Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity$initPager$1$1;->a:Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity$initPager$1$1;->a:Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity;->H(Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity;)V

    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackTabLayoutSelected(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public final c(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity$initPager$1$1;->a:Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity;->H(Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity;)V

    return-void
.end method
