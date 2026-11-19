.class public final Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter$AirportHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AirportHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0011\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter$AirportHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/vuitton/android/presentation/databinding/ItemHotspotBinding;",
        "binding",
        "<init>",
        "(Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter;Lcom/vuitton/android/presentation/databinding/ItemHotspotBinding;)V",
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
.field public static final synthetic d:I


# instance fields
.field public final b:Lcom/vuitton/android/presentation/databinding/ItemHotspotBinding;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter;Lcom/vuitton/android/presentation/databinding/ItemHotspotBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/presentation/databinding/ItemHotspotBinding;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter$AirportHolder;->c:Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter;

    iget-object p1, p2, Lcom/vuitton/android/presentation/databinding/ItemHotspotBinding;->b:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter$AirportHolder;->b:Lcom/vuitton/android/presentation/databinding/ItemHotspotBinding;

    return-void
.end method
