.class public final Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter$AirportFilter;,
        Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter$AirportHolder;,
        Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter$Companion;,
        Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter$OnAirportSelectedListener;,
        Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter$TitleHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0005\u0008\t\n\u000b\u000cB\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Landroid/widget/Filterable;",
        "Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter$OnAirportSelectedListener;",
        "onAirportSelectedListener",
        "<init>",
        "(Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter$OnAirportSelectedListener;)V",
        "Companion",
        "AirportHolder",
        "TitleHolder",
        "AirportFilter",
        "OnAirportSelectedListener",
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
.field public final b:Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter$OnAirportSelectedListener;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/ArrayList;

.field public final e:Landroid/widget/Filter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter$OnAirportSelectedListener;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter;->b:Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter$OnAirportSelectedListener;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter;->c:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter;->d:Ljava/util/ArrayList;

    new-instance p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter$AirportFilter;

    invoke-direct {p1, p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter$AirportFilter;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter;)V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter;->e:Landroid/widget/Filter;

    return-void
.end method


# virtual methods
.method public final getFilter()Landroid/widget/Filter;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter;->e:Landroid/widget/Filter;

    return-object p0
.end method

.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final getItemViewType(I)I
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter;->d:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Airport;

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p2}, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter;->getItemViewType(I)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter;->d:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter$AirportHolder;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Airport;

    iget-object p2, p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter$AirportHolder;->b:Lcom/vuitton/android/presentation/databinding/ItemHotspotBinding;

    iget-object v0, p2, Lcom/vuitton/android/presentation/databinding/ItemHotspotBinding;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Airport;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Airport;->b:Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s - %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/vuitton/android/presentation/databinding/ItemHotspotBinding;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Airport;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/vuitton/android/presentation/databinding/ItemHotspotBinding;->c:Landroid/widget/ImageView;

    const v1, 0x7f080242

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p2, p2, Lcom/vuitton/android/presentation/databinding/ItemHotspotBinding;->b:Landroid/widget/LinearLayout;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter$AirportHolder;->c:Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter;

    new-instance v0, Lk;

    const/4 v1, 0x3

    invoke-direct {v0, p1, p0, v1}, Lk;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {p2, v0}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void

    :cond_0
    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter$TitleHolder;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter$TitleHolder;->b:Lcom/vuitton/android/presentation/databinding/ItemHotspotListTitleBinding;

    iget-object p2, p1, Lcom/vuitton/android/presentation/databinding/ItemHotspotListTitleBinding;->b:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/vuitton/android/presentation/databinding/ItemHotspotListTitleBinding;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setAccessibilityHeading(Z)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ne p2, v0, :cond_1

    new-instance p2, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter$AirportHolder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0d009c

    invoke-virtual {v0, v3, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0255

    invoke-static {v0, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    const v0, 0x7f0a0476

    invoke-static {v0, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    const v0, 0x7f0a0477

    invoke-static {v0, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    new-instance v0, Lcom/vuitton/android/presentation/databinding/ItemHotspotBinding;

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1, v2, v3, v4}, Lcom/vuitton/android/presentation/databinding/ItemHotspotBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-direct {p2, p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter$AirportHolder;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter;Lcom/vuitton/android/presentation/databinding/ItemHotspotBinding;)V

    return-object p2

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Missing required view with ID: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    return-object v1

    :cond_1
    new-instance p2, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter$TitleHolder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0d009d

    invoke-virtual {v0, v3, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v0, Lcom/vuitton/android/presentation/databinding/ItemHotspotListTitleBinding;

    check-cast p1, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/databinding/ItemHotspotListTitleBinding;-><init>(Landroid/widget/TextView;)V

    invoke-direct {p2, p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter$TitleHolder;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter;Lcom/vuitton/android/presentation/databinding/ItemHotspotListTitleBinding;)V

    return-object p2

    :cond_2
    const-string p0, "rootView"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    return-object v1
.end method
