.class public final Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;
.super Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/Hilt_WifiDeviceListFragment;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListAdapter$Listener;
.implements Landroid/view/View$OnDragListener;
.implements Lcom/linkplay/lpmdpkit/observer/LPDeviceInfoObservable;


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001\u000fB\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J!\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u0006\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListAdapter$Listener;",
        "Landroid/view/View$OnDragListener;",
        "Lcom/linkplay/lpmdpkit/observer/LPDeviceInfoObservable;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onResume",
        "Companion",
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


# static fields
.field public static final L:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment$Companion;

.field public static final synthetic M:[Lkotlin/reflect/KProperty;

.field public static final N:Ljava/lang/String;


# instance fields
.field public final F:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

.field public final G:Lkotlin/Lazy;

.field public H:Lcom/vuitton/android/core/events/LVEventSender;

.field public I:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/TrunkSpeakerRouter;

.field public J:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice;

.field public K:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerWifiDeviceListBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->h(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    aput-object v0, v1, v4

    sput-object v1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;->M:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;->L:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment$Companion;

    const-string v0, "WifiDeviceListFragment"

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;->N:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const v0, 0x7f0d0089

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/Hilt_WifiDeviceListFragment;-><init>(I)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment$binding$2;->b:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment$binding$2;

    invoke-static {p0, v0}, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;->d(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;->F:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    new-instance v0, Ly61;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Ly61;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;->G:Lkotlin/Lazy;

    const/4 v0, -0x1

    iput v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;->K:I

    return-void
.end method


# virtual methods
.method public final O()Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerWifiDeviceListBinding;
    .locals 2

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;->M:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;->F:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    invoke-virtual {v1, p0, v0}, Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;->c(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KProperty;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerWifiDeviceListBinding;

    return-object p0
.end method

.method public final P(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/core/device/LPDevice;Ljava/util/ArrayList;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerWifiDeviceListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerWifiDeviceListBinding;->d:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ly61;

    invoke-direct {p1, p0, v1}, Ly61;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;I)V

    new-instance v0, Ly61;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ly61;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;I)V

    invoke-static {p2, p3, p1, v0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkRoomHelper;->a(Lcom/linkplay/core/device/LPDevice;Ljava/util/List;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final declared-synchronized Q()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lz61;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lz61;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final m(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice;)V
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice$SimpleSpeaker;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkGeneralHelper;->a:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkGeneralHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    move-object v2, p1

    check-cast v2, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice$SimpleSpeaker;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice$SimpleSpeaker;->b:Lcom/linkplay/core/device/LPDevice;

    new-instance v3, Lc61;

    const/16 v4, 0x9

    invoke-direct {v3, p0, p1, v4}, Lc61;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const/16 p0, 0x18

    invoke-static {v0, v2, v3, v1, p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkGeneralHelper;->d(Landroidx/fragment/app/FragmentActivity;Lcom/linkplay/core/device/LPDevice;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;I)V

    return-void

    :cond_0
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice$RoomSpeaker;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;->I:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/TrunkSpeakerRouter;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice$RoomSpeaker;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->d()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f010035

    const v2, 0x7f01003a

    const v3, 0x7f010037

    const v4, 0x7f010020

    invoke-virtual {v0, v3, v4, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->n(IIII)V

    sget-object v1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment;->L:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment;

    invoke-direct {v1}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "DEVICE"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment;->N:Ljava/lang/String;

    const/4 v2, 0x1

    const v3, 0x7f0a0204

    invoke-virtual {v0, v3, v1, p1, v2}, Landroidx/fragment/app/FragmentTransaction;->i(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;->N:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;->P:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->d(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/extensions/FragmentTransactionExtKt;->a(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->e()I

    :cond_1
    return-void

    :cond_2
    const-string p0, "trunkSpeakerRouter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {}, Lv40;->g()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->a(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object p1

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment$onCreate$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment$onCreate$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v1, v1, v0, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onDestroyView()V
    .locals 2

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerWifiDeviceListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerWifiDeviceListBinding;->e:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public final onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 6

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;->G:Lkotlin/Lazy;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    :try_start_0
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerWifiDeviceListBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerWifiDeviceListBinding;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eq v2, v1, :cond_0

    :try_start_1
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListAdapter;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListAdapter;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice;

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;->J:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v2

    move-object v5, v2

    move v2, v1

    move-object v1, v5

    :goto_0
    sget-object v3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v3, Lkotlin/Result$Failure;

    invoke-direct {v3, v1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerWifiDeviceListBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerWifiDeviceListBinding;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p2

    const/4 v3, 0x2

    if-eq p2, v3, :cond_6

    const/4 v3, 0x3

    if-eq p2, v3, :cond_2

    const/4 p0, 0x4

    if-eq p2, p0, :cond_1

    goto :goto_2

    :cond_1
    const p0, 0x7f0a0350

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    iget p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;->K:I

    if-ne p1, v2, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_7

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListAdapter;

    iget p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;->K:I

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListAdapter;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice;

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;->J:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice;

    if-eqz p2, :cond_7

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice$SimpleSpeaker;

    if-eqz v0, :cond_4

    check-cast p2, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice$SimpleSpeaker;

    iget-object p2, p2, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice$SimpleSpeaker;->b:Lcom/linkplay/core/device/LPDevice;

    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice$SimpleSpeaker;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice$SimpleSpeaker;->b:Lcom/linkplay/core/device/LPDevice;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p2, p1, v0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;->P(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/core/device/LPDevice;Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_4
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice$RoomSpeaker;

    if-eqz v0, :cond_5

    check-cast p2, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice$SimpleSpeaker;

    iget-object p2, p2, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice$SimpleSpeaker;->b:Lcom/linkplay/core/device/LPDevice;

    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice$RoomSpeaker;

    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice$RoomSpeaker;->b:Lcom/linkplay/core/device/LPDevice;

    new-instance v1, Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice$RoomSpeaker;->c:Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p2, v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;->P(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/core/device/LPDevice;Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_5
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return p0

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerWifiDeviceListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerWifiDeviceListBinding;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;->K:I

    :cond_7
    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/Hilt_WifiDeviceListFragment;->onResume()V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;->Q()V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerWifiDeviceListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerWifiDeviceListBinding;->b:Landroid/widget/Button;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/LVTrunkSpotifyHelper;->a(Landroidx/fragment/app/FragmentActivity;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/Hilt_WifiDeviceListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerWifiDeviceListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerWifiDeviceListBinding;->c:Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;->c:Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;->b:Landroidx/appcompat/widget/Toolbar;

    const/4 p2, 0x0

    const/4 v0, 0x6

    invoke-static {p0, p1, p2, v0}, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;->a(Landroidx/fragment/app/Fragment;Landroidx/appcompat/widget/Toolbar;Ll61;I)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerWifiDeviceListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerWifiDeviceListBinding;->c:Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;->c:Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;->c:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setAccessibilityHeading(Z)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerWifiDeviceListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerWifiDeviceListBinding;->c:Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;->c:Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;->c:Landroidx/appcompat/widget/AppCompatTextView;

    const p2, 0x7f141349

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerWifiDeviceListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerWifiDeviceListBinding;->e:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;->G:Lkotlin/Lazy;

    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment$initRecyclerView$1$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment$initRecyclerView$1$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;)V

    iput-object v0, p2, Landroidx/recyclerview/widget/GridLayoutManager;->K:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerWifiDeviceListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerWifiDeviceListBinding;->f:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance p2, Lln0;

    const/16 v0, 0x1a

    invoke-direct {p2, p0, v0}, Lln0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerWifiDeviceListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerWifiDeviceListBinding;->b:Landroid/widget/Button;

    new-instance p2, Lp11;

    const/16 v0, 0x16

    invoke-direct {p2, p0, v0}, Lp11;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, p2}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final updateDeviceInfo(Lcom/linkplay/lpmdpkit/observer/LPNotification;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
