.class public final Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\u0008\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationAdapter$ViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/vuitton/android/presentation/databinding/ItemWatchfacePresentationTabBinding;",
        "binding",
        "<init>",
        "(Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationAdapter;Lcom/vuitton/android/presentation/databinding/ItemWatchfacePresentationTabBinding;)V",
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
.field public final b:Lcom/vuitton/android/presentation/databinding/ItemWatchfacePresentationTabBinding;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationAdapter;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationAdapter;Lcom/vuitton/android/presentation/databinding/ItemWatchfacePresentationTabBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/presentation/databinding/ItemWatchfacePresentationTabBinding;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationAdapter$ViewHolder;->c:Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationAdapter;

    iget-object p1, p2, Lcom/vuitton/android/presentation/databinding/ItemWatchfacePresentationTabBinding;->b:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationAdapter$ViewHolder;->b:Lcom/vuitton/android/presentation/databinding/ItemWatchfacePresentationTabBinding;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationAdapter$ViewHolder;->c:Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationAdapter;

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v1

    iput v1, v0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationAdapter;->d:I

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p0

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchFacePresentationUiModel;

    if-eqz p0, :cond_0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationAdapter;->b:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    throw p0
.end method
