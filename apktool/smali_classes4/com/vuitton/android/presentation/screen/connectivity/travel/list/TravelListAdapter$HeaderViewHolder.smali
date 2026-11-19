.class public final Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$HeaderViewHolder;
.super Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$AbstractViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HeaderViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u0011\u0008\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$HeaderViewHolder;",
        "Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$AbstractViewHolder;",
        "Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;",
        "Lcom/vuitton/android/presentation/databinding/ItemTravelHeaderBinding;",
        "binding",
        "<init>",
        "(Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;Lcom/vuitton/android/presentation/databinding/ItemTravelHeaderBinding;)V",
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
.field public final c:Lcom/vuitton/android/presentation/databinding/ItemTravelHeaderBinding;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;Lcom/vuitton/android/presentation/databinding/ItemTravelHeaderBinding;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/presentation/databinding/ItemTravelHeaderBinding;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p2, Lcom/vuitton/android/presentation/databinding/ItemTravelHeaderBinding;->b:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$AbstractViewHolder;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;Landroid/view/View;)V

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$HeaderViewHolder;->c:Lcom/vuitton/android/presentation/databinding/ItemTravelHeaderBinding;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Travel;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$HeaderViewHolder;->c:Lcom/vuitton/android/presentation/databinding/ItemTravelHeaderBinding;

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/ItemTravelHeaderBinding;->c:Landroid/widget/TextView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityHeading(Z)V

    return-void
.end method
