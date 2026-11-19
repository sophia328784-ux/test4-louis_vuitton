.class public final Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationAdapter$ViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u000c\u0012\u0008\u0012\u00060\u0002R\u00020\u00000\u0001:\u0001\tB\u001b\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationAdapter$ViewHolder;",
        "Lkotlin/Function1;",
        "Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchFacePresentationUiModel;",
        "",
        "onItemClicked",
        "<init>",
        "(Lkotlin/jvm/functions/Function1;)V",
        "ViewHolder",
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
.field public final b:Lkotlin/jvm/functions/Function1;

.field public final c:Ljava/util/ArrayList;

.field public d:I


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchFacePresentationUiModel;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationAdapter;->b:Lkotlin/jvm/functions/Function1;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationAdapter;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationAdapter$ViewHolder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchFacePresentationUiModel;

    iget-object p2, p1, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationAdapter$ViewHolder;->b:Lcom/vuitton/android/presentation/databinding/ItemWatchfacePresentationTabBinding;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchFacePresentationUiModel;->e:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p2, Lcom/vuitton/android/presentation/databinding/ItemWatchfacePresentationTabBinding;->c:Landroid/widget/ImageView;

    const/16 v3, 0x7e

    invoke-static {v2, v0, v1, v1, v3}, Lcom/vuitton/android/presentation/imageloading/xmlui/XmlUiKt;->a(Landroid/widget/ImageView;Ljava/lang/Object;III)V

    :cond_0
    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationAdapter$ViewHolder;->c:Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationAdapter;

    iget v0, v0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationAdapter;->d:I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v0, p2, Lcom/vuitton/android/presentation/databinding/ItemWatchfacePresentationTabBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p2, Lcom/vuitton/android/presentation/databinding/ItemWatchfacePresentationTabBinding;->d:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    :goto_0
    iget-object p1, p2, Lcom/vuitton/android/presentation/databinding/ItemWatchfacePresentationTabBinding;->e:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchFacePresentationUiModel;->c:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationAdapter$ViewHolder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00ad

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0550

    invoke-static {v0, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    const v0, 0x7f0a0551

    invoke-static {v0, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    const v0, 0x7f0a0555

    invoke-static {v0, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    new-instance v0, Lcom/vuitton/android/presentation/databinding/ItemWatchfacePresentationTabBinding;

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/vuitton/android/presentation/databinding/ItemWatchfacePresentationTabBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/TextView;)V

    invoke-direct {p2, p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationAdapter$ViewHolder;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationAdapter;Lcom/vuitton/android/presentation/databinding/ItemWatchfacePresentationTabBinding;)V

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

    const/4 p0, 0x0

    return-object p0
.end method
