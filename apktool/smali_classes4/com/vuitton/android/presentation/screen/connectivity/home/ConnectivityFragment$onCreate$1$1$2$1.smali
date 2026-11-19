.class final Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$onCreate$1$1$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.presentation.screen.connectivity.home.ConnectivityFragment$onCreate$1$1$2$1"
    f = "ConnectivityFragment.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$onCreate$1$1$2$1;->b:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$onCreate$1$1$2$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$onCreate$1$1$2$1;->b:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$onCreate$1$1$2$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$onCreate$1$1$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$onCreate$1$1$2$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$onCreate$1$1$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->Q:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$Companion;

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/app/LPDeviceManager;->getDevices()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkRoomHelper;->b(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$onCreate$1$1$2$1;->b:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->O()Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;->a()Lcom/vuitton/android/presentation/screen/connectivity/TrunkSpeakerConnectivityItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p1, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->O()Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;->f:Ljava/util/ArrayList;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-ne p1, v1, :cond_5

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->B()V

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->O()Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;->a()Lcom/vuitton/android/presentation/screen/connectivity/TrunkSpeakerConnectivityItem;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentConnectivityBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentConnectivityBinding;->d:Lcom/vuitton/android/presentation/databinding/ConnectivityPairedLayoutBinding;

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/ConnectivityPairedLayoutBinding;->g:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->O()Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;

    move-result-object p0

    if-eqz p0, :cond_5

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/TrunkSpeakerConnectivityItem;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/TrunkSpeakerConnectivityItem;-><init>(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;->f:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;->a()Lcom/vuitton/android/presentation/screen/connectivity/TrunkSpeakerConnectivityItem;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->R()Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;

    move-result-object p0

    new-instance p1, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$getConnectedObjects$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0, v2}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$getConnectedObjects$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;ZLkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    invoke-static {p0, v2, p1, v0}, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;->Bc(Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->O()Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;->a()Lcom/vuitton/android/presentation/screen/connectivity/TrunkSpeakerConnectivityItem;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/connectivity/TrunkSpeakerConnectivityItem;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;->f:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;->a()Lcom/vuitton/android/presentation/screen/connectivity/TrunkSpeakerConnectivityItem;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_5
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
