.class public final Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/disposition/DispositionListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/disposition/DispositionListAdapter$DispositionViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u000fB@\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u0012!\u0010\u000c\u001a\u001d\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\n\u0012\u0004\u0012\u00020\u000b0\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/disposition/DispositionListAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/linkplay/core/status/LPPlayChannel;",
        "selectedChannel",
        "",
        "modeList",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "channel",
        "",
        "onPowerModeClick",
        "<init>",
        "(Lcom/linkplay/core/status/LPPlayChannel;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V",
        "DispositionViewHolder",
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
.field public final b:Lcom/linkplay/core/status/LPPlayChannel;

.field public final c:Ljava/util/List;

.field public final d:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lcom/linkplay/core/status/LPPlayChannel;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linkplay/core/status/LPPlayChannel;",
            "Ljava/util/List<",
            "+",
            "Lcom/linkplay/core/status/LPPlayChannel;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/linkplay/core/status/LPPlayChannel;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/disposition/DispositionListAdapter;->b:Lcom/linkplay/core/status/LPPlayChannel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/disposition/DispositionListAdapter;->c:Ljava/util/List;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/disposition/DispositionListAdapter;->d:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/disposition/DispositionListAdapter;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/disposition/DispositionListAdapter$DispositionViewHolder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/disposition/DispositionListAdapter;->c:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/linkplay/core/status/LPPlayChannel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/disposition/DispositionListAdapter$DispositionViewHolder;->c:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/disposition/DispositionListAdapter;

    iget-object v0, p2, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/disposition/DispositionListAdapter;->b:Lcom/linkplay/core/status/LPPlayChannel;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/disposition/DispositionListAdapter$DispositionViewHolder;->b:Lcom/vuitton/android/presentation/databinding/ItemListSelectableBinding;

    if-eqz v0, :cond_1

    const v2, 0x7f080167

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/ItemListSelectableBinding;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v1, v1, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkConfigHelper;->a(Landroid/content/Context;Lcom/linkplay/core/status/LPPlayChannel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lag;

    const/4 v2, 0x2

    invoke-direct {v1, v0, p2, p0, v2}, Lag;-><init>(ZLjava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {p1, v1}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/vuitton/android/presentation/databinding/ItemListSelectableBinding;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/vuitton/android/presentation/databinding/ItemListSelectableBinding;

    move-result-object p1

    new-instance p2, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/disposition/DispositionListAdapter$DispositionViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/disposition/DispositionListAdapter$DispositionViewHolder;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/disposition/DispositionListAdapter;Lcom/vuitton/android/presentation/databinding/ItemListSelectableBinding;)V

    return-object p2
.end method
