.class public final Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity$initPager$pagerAdapter$1;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity$initPager$pagerAdapter$1",
        "Landroidx/fragment/app/FragmentStatePagerAdapter;",
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
.field public final synthetic i:Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity$initPager$pagerAdapter$1;->i:Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;I)V

    return-void
.end method


# virtual methods
.method public final c(I)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity$initPager$pagerAdapter$1;->i:Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity;

    if-nez p1, :cond_0

    const p1, 0x7f1406bb

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_0
    const p1, 0x7f1405c9

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final j(I)Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListFragment;
    .locals 2

    sget-object p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListFragment;->K:Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListFragment$Companion;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListFragment;

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "IS_COUNTRY_LIST"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method
