.class final synthetic Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListFragment$onViewCreated$3;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Travel;",
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

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListFragment;

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListFragment;->K:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListFragment;->K:Z

    :cond_0
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentTravelListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentTravelListBinding;->d:Lcom/vuitton/android/presentation/databinding/ProgressOverlayBinding;

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/ProgressOverlayBinding;->b:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListFragment;->J:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_1

    move-object v3, p1

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentTravelListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentTravelListBinding;->f:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, v1

    goto :goto_1

    :cond_3
    :goto_0
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentTravelListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentTravelListBinding;->e:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :cond_5
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_6
    iget-boolean p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListFragment;->F:Z

    if-eqz p1, :cond_9

    iput-boolean v2, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListFragment;->F:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of v0, p1, Landroidx/appcompat/app/AppCompatActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_3

    :cond_7
    move-object p1, v1

    :goto_3
    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListFragment;->I:Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchActivityRouter;

    if-eqz p0, :cond_8

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchActivityRouter;->a(Landroidx/appcompat/app/AppCompatActivity;)V

    goto :goto_4

    :cond_8
    const-string p0, "watchActivityRouter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1

    :cond_9
    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
