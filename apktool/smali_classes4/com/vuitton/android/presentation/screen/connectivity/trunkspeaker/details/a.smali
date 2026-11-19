.class public final synthetic Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/a;->b:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment;->L:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment$Companion;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/a;->b:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment;

    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->a(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment$setRoomName$1$1$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment$setRoomName$1$1$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x3

    invoke-static {v0, v2, v2, v1, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment;->H:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailDeviceListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lpt0;

    invoke-direct {v1, p0, v3}, Lpt0;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
