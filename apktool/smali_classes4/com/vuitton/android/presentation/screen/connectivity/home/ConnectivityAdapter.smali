.class public final Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$AbstractViewHolder;,
        Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$Companion;,
        Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$LightUpViewHolder;,
        Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$Listener;,
        Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$TrunkSpeakerViewHolder;,
        Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$WatchViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$AbstractViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0006\u000f\u0010\u0011\u0012\u0013\u0014B7\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0014\u0008\u0002\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$AbstractViewHolder;",
        "Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$Listener;",
        "listener",
        "Lcom/vuitton/foundation/model/domain/model/profile/Profile;",
        "profile",
        "",
        "userId",
        "Lkotlin/Function1;",
        "Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel;",
        "",
        "onLightUpTrackingHit",
        "<init>",
        "(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$Listener;Lcom/vuitton/foundation/model/domain/model/profile/Profile;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V",
        "Companion",
        "AbstractViewHolder",
        "WatchViewHolder",
        "LightUpViewHolder",
        "TrunkSpeakerViewHolder",
        "Listener",
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
.field public static final synthetic g:I


# instance fields
.field public final b:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$Listener;

.field public final c:Lcom/vuitton/foundation/model/domain/model/profile/Profile;

.field public final d:Ljava/lang/String;

.field public final e:Lkotlin/jvm/functions/Function1;

.field public final f:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$Listener;Lcom/vuitton/foundation/model/domain/model/profile/Profile;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$Listener;",
            "Lcom/vuitton/foundation/model/domain/model/profile/Profile;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;->b:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$Listener;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;->c:Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;->e:Lkotlin/jvm/functions/Function1;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;->f:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$Listener;Lcom/vuitton/foundation/model/domain/model/profile/Profile;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 28
    new-instance p4, Lbp;

    const/4 p5, 0x0

    invoke-direct {p4, p5}, Lbp;-><init>(I)V

    .line 29
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$Listener;Lcom/vuitton/foundation/model/domain/model/profile/Profile;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/vuitton/android/presentation/screen/connectivity/TrunkSpeakerConnectivityItem;
    .locals 2

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;->f:Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/presentation/screen/connectivity/ConnectedObjectUiModel;

    instance-of v1, v1, Lcom/vuitton/android/presentation/screen/connectivity/TrunkSpeakerConnectivityItem;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/TrunkSpeakerConnectivityItem;

    return-object v0
.end method

.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;->f:Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    return p0
.end method

.method public final getItemViewType(I)I
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;->f:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/ConnectedObjectUiModel;

    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/WatchUiModel;

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;

    if-eqz p1, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    instance-of p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/TrunkSpeakerConnectivityItem;

    if-eqz p0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$AbstractViewHolder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;->f:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/ConnectedObjectUiModel;

    invoke-virtual {p1, p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$AbstractViewHolder;->a(Lcom/vuitton/android/presentation/screen/connectivity/ConnectedObjectUiModel;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "Missing required view with ID: "

    const/4 v4, 0x0

    if-eq p2, v1, :cond_4

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    new-instance p2, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$TrunkSpeakerViewHolder;

    const v1, 0x7f0d0097

    invoke-virtual {v0, v1, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0269

    invoke-static {v0, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/vuitton/android/presentation/screen/connectivity/views/FixedAspectRatioImageView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a0487

    invoke-static {v0, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    const v0, 0x7f0a0488

    invoke-static {v0, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    const v0, 0x7f0a0537

    invoke-static {v0, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/vuitton/android/presentation/screen/connectivity/views/TrunkBatteryLevelView;

    if-eqz v9, :cond_0

    new-instance v4, Lcom/vuitton/android/presentation/databinding/ItemConnectivityTrunkSpeakerBinding;

    move-object v5, p1

    check-cast v5, Landroidx/cardview/widget/CardView;

    invoke-direct/range {v4 .. v9}, Lcom/vuitton/android/presentation/databinding/ItemConnectivityTrunkSpeakerBinding;-><init>(Landroidx/cardview/widget/CardView;Lcom/vuitton/android/presentation/screen/connectivity/views/FixedAspectRatioImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/vuitton/android/presentation/screen/connectivity/views/TrunkBatteryLevelView;)V

    invoke-direct {p2, p0, v4}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$TrunkSpeakerViewHolder;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;Lcom/vuitton/android/presentation/databinding/ItemConnectivityTrunkSpeakerBinding;)V

    return-object p2

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    return-object v2

    :cond_1
    const-string p0, "Unhandled view type"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_2
    new-instance p2, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$LightUpViewHolder;

    const v1, 0x7f0d0096

    invoke-virtual {v0, v1, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0258

    invoke-static {v0, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/vuitton/android/presentation/screen/connectivity/views/FixedAspectRatioImageView;

    if-eqz v9, :cond_3

    const v0, 0x7f0a0261

    invoke-static {v0, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_3

    const v0, 0x7f0a0474

    invoke-static {v0, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_3

    const v0, 0x7f0a0475

    invoke-static {v0, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_3

    new-instance v4, Lcom/vuitton/android/presentation/databinding/ItemConnectivityLightUpBinding;

    move-object v8, p1

    check-cast v8, Landroidx/cardview/widget/CardView;

    invoke-direct/range {v4 .. v9}, Lcom/vuitton/android/presentation/databinding/ItemConnectivityLightUpBinding;-><init>(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/cardview/widget/CardView;Lcom/vuitton/android/presentation/screen/connectivity/views/FixedAspectRatioImageView;)V

    invoke-direct {p2, p0, v4}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$LightUpViewHolder;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;Lcom/vuitton/android/presentation/databinding/ItemConnectivityLightUpBinding;)V

    return-object p2

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    return-object v2

    :cond_4
    new-instance p2, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$WatchViewHolder;

    const v1, 0x7f0d0098

    invoke-virtual {v0, v1, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0262

    invoke-static {v0, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_5

    const v0, 0x7f0a026c

    invoke-static {v0, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/vuitton/android/presentation/screen/connectivity/views/FixedAspectRatioImageView;

    if-eqz v9, :cond_5

    const v0, 0x7f0a048b

    invoke-static {v0, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_5

    const v0, 0x7f0a048c

    invoke-static {v0, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_5

    new-instance v4, Lcom/vuitton/android/presentation/databinding/ItemConnectivityWatchBinding;

    move-object v8, p1

    check-cast v8, Landroidx/cardview/widget/CardView;

    invoke-direct/range {v4 .. v9}, Lcom/vuitton/android/presentation/databinding/ItemConnectivityWatchBinding;-><init>(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/cardview/widget/CardView;Lcom/vuitton/android/presentation/screen/connectivity/views/FixedAspectRatioImageView;)V

    invoke-direct {p2, p0, v4}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$WatchViewHolder;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;Lcom/vuitton/android/presentation/databinding/ItemConnectivityWatchBinding;)V

    return-object p2

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    return-object v2
.end method
