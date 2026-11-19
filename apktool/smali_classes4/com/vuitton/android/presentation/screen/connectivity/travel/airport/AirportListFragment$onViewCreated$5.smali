.class final synthetic Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListFragment$onViewCreated$5;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Airport;",
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
    .locals 8

    check-cast p1, Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListFragment;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListFragment;->K:Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListFragment$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    new-instance v2, Lc1;

    const/16 v3, 0x9

    invoke-direct {v2, p0, v3}, Lc1;-><init>(Ljava/lang/Object;I)V

    new-instance v3, Lp;

    const/16 v4, 0x16

    invoke-direct {v3, v4}, Lp;-><init>(I)V

    const/4 v4, 0x2

    new-array v4, v4, [Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v3, v4, v2

    new-instance v2, Lxm;

    invoke-direct {v2, v4, v5}, Lxm;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->o0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Airport;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListFragment;->J:Lkotlin/Lazy;

    invoke-interface {v6}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v4, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Airport;->d:Ljava/lang/String;

    goto :goto_1

    :cond_0
    iget-object v6, v4, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Airport;->c:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    const-string v6, ""

    :goto_1
    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object v3, v6

    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentHotspotListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/FragmentHotspotListBinding;->d:Lcom/vuitton/android/presentation/databinding/ProgressOverlayBinding;

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/ProgressOverlayBinding;->b:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListFragment;->H:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v3, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListFragment$AirportFilterManager;

    invoke-interface {v3}, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListFragment$AirportFilterManager;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter;->e:Landroid/widget/Filter;

    invoke-virtual {p1, v3}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListFragment;->I:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/LetterListAdapter;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->y0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->n0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/LetterListAdapter;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iput-object v2, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/LetterListAdapter;->e:Ljava/lang/Character;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
