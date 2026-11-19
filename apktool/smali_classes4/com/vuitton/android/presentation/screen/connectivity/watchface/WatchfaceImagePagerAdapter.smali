.class public final Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfaceImagePagerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfaceImagePagerAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfaceImagePagerAdapter$ViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u000c\u0012\u0008\u0012\u00060\u0002R\u00020\u00000\u0001:\u0001\u0005B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfaceImagePagerAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfaceImagePagerAdapter$ViewHolder;",
        "<init>",
        "()V",
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
.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfaceImagePagerAdapter;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfaceImagePagerAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfaceImagePagerAdapter$ViewHolder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfaceImagePagerAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfaceImagePagerAdapter$ViewHolder;->b:Lcom/vuitton/android/presentation/databinding/ItemWatchfaceImageBinding;

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/ItemWatchfaceImageBinding;->b:Landroid/widget/ImageView;

    const/4 p2, 0x0

    const/16 v0, 0x7e

    invoke-static {p1, p0, p2, p2, v0}, Lcom/vuitton/android/presentation/imageloading/xmlui/XmlUiKt;->a(Landroid/widget/ImageView;Ljava/lang/Object;III)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfaceImagePagerAdapter$ViewHolder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00ac

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/vuitton/android/presentation/databinding/ItemWatchfaceImageBinding;

    check-cast p1, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/databinding/ItemWatchfaceImageBinding;-><init>(Landroid/widget/ImageView;)V

    invoke-direct {p2, p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfaceImagePagerAdapter$ViewHolder;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfaceImagePagerAdapter;Lcom/vuitton/android/presentation/databinding/ItemWatchfaceImageBinding;)V

    return-object p2

    :cond_0
    const-string p0, "rootView"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
