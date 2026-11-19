.class public final Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$AbstractViewHolder;,
        Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$Companion;,
        Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$FlightViewHolder;,
        Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$HeaderViewHolder;,
        Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$HotelViewHolder;,
        Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$TrainViewHolder;,
        Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$AbstractViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u00002\u000c\u0012\u0008\u0012\u00060\u0002R\u00020\u00000\u0001:\u0006\u000b\u000c\r\u000e\u000f\u0010B%\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$AbstractViewHolder;",
        "",
        "hasHeader",
        "Lkotlin/Function1;",
        "Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Travel;",
        "",
        "onTravelClick",
        "<init>",
        "(ZLkotlin/jvm/functions/Function1;)V",
        "Companion",
        "AbstractViewHolder",
        "HeaderViewHolder",
        "FlightViewHolder",
        "TrainViewHolder",
        "HotelViewHolder",
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
.field public final b:Z

.field public final c:Lkotlin/jvm/functions/Function1;

.field public final d:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZLkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Travel;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;->b:Z

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;->c:Lkotlin/jvm/functions/Function1;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 18
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;-><init>(ZLkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;->b:Z

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;->d:Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    if-eqz v0, :cond_0

    add-int/lit8 p0, p0, 0x1

    :cond_0
    return p0
.end method

.method public final getItemViewType(I)I
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;->b:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz v1, :cond_1

    add-int/lit8 p1, p1, -0x1

    :cond_1
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;->d:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Travel;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Travel;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/TravelType;

    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    const/4 p1, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, p1, :cond_3

    if-ne p0, v0, :cond_2

    const/4 p0, 0x4

    return p0

    :cond_2
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return p0

    :cond_3
    return v0

    :cond_4
    return p1
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$AbstractViewHolder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;->b:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    add-int/lit8 p2, p2, -0x1

    :cond_1
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;->d:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Travel;

    :goto_0
    invoke-virtual {p1, p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$AbstractViewHolder;->a(Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Travel;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    new-instance p2, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$HeaderViewHolder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00a5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/widget/TextView;

    new-instance v0, Lcom/vuitton/android/presentation/databinding/ItemTravelHeaderBinding;

    invoke-direct {v0, p1, p1}, Lcom/vuitton/android/presentation/databinding/ItemTravelHeaderBinding;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-direct {p2, p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$HeaderViewHolder;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;Lcom/vuitton/android/presentation/databinding/ItemTravelHeaderBinding;)V

    return-object p2

    :cond_0
    const-string p0, "rootView"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance p2, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$HotelViewHolder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/vuitton/android/presentation/databinding/ItemTravelBinding;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/vuitton/android/presentation/databinding/ItemTravelBinding;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$HotelViewHolder;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;Lcom/vuitton/android/presentation/databinding/ItemTravelBinding;)V

    return-object p2

    :cond_2
    new-instance p2, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$TrainViewHolder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/vuitton/android/presentation/databinding/ItemTravelBinding;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/vuitton/android/presentation/databinding/ItemTravelBinding;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$TrainViewHolder;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;Lcom/vuitton/android/presentation/databinding/ItemTravelBinding;)V

    return-object p2

    :cond_3
    new-instance p2, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$FlightViewHolder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/vuitton/android/presentation/databinding/ItemTravelBinding;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/vuitton/android/presentation/databinding/ItemTravelBinding;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$FlightViewHolder;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;Lcom/vuitton/android/presentation/databinding/ItemTravelBinding;)V

    return-object p2
.end method
