.class final synthetic Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment$onViewCreated$2;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchFacePresentationUiModel;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Ljava/util/List;

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;->O:Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentWatchDetailsBinding;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    iget-object v2, v0, Lcom/vuitton/android/presentation/databinding/FragmentWatchDetailsBinding;->k:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentWatchDetailsBinding;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;->L:Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfaceListAdapter;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfaceListAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    const-string p0, "watchfaceAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    iget-object p1, v0, Lcom/vuitton/android/presentation/databinding/FragmentWatchDetailsBinding;->o:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v0, Lf31;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lf31;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
