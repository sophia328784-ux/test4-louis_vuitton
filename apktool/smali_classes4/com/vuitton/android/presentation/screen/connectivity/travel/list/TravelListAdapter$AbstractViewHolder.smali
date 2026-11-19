.class public abstract Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$AbstractViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "AbstractViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00a6\u0004\u0018\u00002\u00020\u0001B\u0011\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$AbstractViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Landroid/view/View;",
        "itemView",
        "<init>",
        "(Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;Landroid/view/View;)V",
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
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$AbstractViewHolder;->b:Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Travel;)V
.end method

.method public final b(Lcom/vuitton/android/presentation/databinding/ItemTravelBinding;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/ItemTravelBinding;->j:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$AbstractViewHolder;->b:Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;

    iget-boolean v1, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;->b:Z

    const v2, 0x7f08008d

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    const p0, 0x7f0800db

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_0
    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;->b:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f08008c

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const p0, 0x7f0800da

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v0

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    const p0, 0x7f0800d9

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_2
    const v0, 0x7f08008e

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const p0, 0x7f0800d8

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
