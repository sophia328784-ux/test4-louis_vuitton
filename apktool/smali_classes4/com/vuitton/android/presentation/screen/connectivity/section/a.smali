.class public final synthetic Lcom/vuitton/android/presentation/screen/connectivity/section/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;I)V
    .locals 0

    iput p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/section/a;->b:I

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/section/a;->c:Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/section/a;->b:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;->I:Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment$Companion;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/connectivity/section/a;->c:Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;

    invoke-virtual {v5}, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;->S()Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;

    move-result-object p0

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$DiscoverVideoClickEvent;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;->X408PAIR:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;

    invoke-direct {v0, v3}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$DiscoverVideoClickEvent;-><init>(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;->k:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    invoke-virtual {v5}, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;->S()Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;

    move-result-object p0

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl$getLightUpVideo$1;

    invoke-direct {v3, p0, v2}, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl$getLightUpVideo$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v2, v2, v3, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-virtual {v5}, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;->S()Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;->s:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    new-instance v3, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment$getSneakersVideoView$1$1$1;

    const-string v8, "observeLightUpVideoResult(Ljava/lang/Object;)V"

    const/4 v9, 0x0

    const/4 v4, 0x1

    const-class v6, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;

    const-string v7, "observeLightUpVideoResult"

    invoke-direct/range {v3 .. v9}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v1, v3}, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;->I:Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment$Companion;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/connectivity/section/a;->c:Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;

    invoke-virtual {v5}, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;->S()Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;

    move-result-object p0

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel$ClickOnDiscoverEvent;

    const-string v3, "Discover our video"

    const-string v4, "Earphones"

    invoke-direct {v0, v3, v4}, Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel$ClickOnDiscoverEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;->k:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    invoke-virtual {v5}, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;->S()Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;

    move-result-object p0

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl$getEarphoneVideo$1;

    invoke-direct {v3, p0, v2}, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl$getEarphoneVideo$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v2, v2, v3, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-virtual {v5}, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;->S()Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;->o:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    new-instance v3, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment$getEarphoneVideoView$1$1$1;

    const-string v8, "observeEarphoneVideoResult(Ljava/lang/Object;)V"

    const/4 v9, 0x0

    const/4 v4, 0x1

    const-class v6, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;

    const-string v7, "observeEarphoneVideoResult"

    invoke-direct/range {v3 .. v9}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v1, v3}, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;->I:Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment$Companion;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/connectivity/section/a;->c:Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;

    invoke-virtual {v5}, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;->S()Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;

    move-result-object p0

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl$getWatchVideo$1;

    invoke-direct {v3, p0, v2}, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl$getWatchVideo$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v2, v2, v3, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-virtual {v5}, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;->S()Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;->m:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    new-instance v3, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment$getDiscoverWatchVideoView$1$1$1;

    const-string v8, "observeWatchVideoResult(Ljava/lang/Object;)V"

    const/4 v9, 0x0

    const/4 v4, 0x1

    const-class v6, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;

    const-string v7, "observeWatchVideoResult"

    invoke-direct/range {v3 .. v9}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v1, v3}, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;->I:Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment$Companion;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/connectivity/section/a;->c:Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;

    invoke-virtual {v5}, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;->S()Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;

    move-result-object p0

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$DiscoverVideoClickEvent;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;->KEEPALL:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;

    invoke-direct {v0, v3}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$DiscoverVideoClickEvent;-><init>(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;->k:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    invoke-virtual {v5}, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;->S()Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;

    move-result-object p0

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl$getLightUpVideo$1;

    invoke-direct {v3, p0, v2}, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl$getLightUpVideo$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v2, v2, v3, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-virtual {v5}, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;->S()Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;->s:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    new-instance v3, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment$getKeepAllVideoView$1$1$1;

    const-string v8, "observeLightUpVideoResult(Ljava/lang/Object;)V"

    const/4 v9, 0x0

    const/4 v4, 0x1

    const-class v6, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;

    const-string v7, "observeLightUpVideoResult"

    invoke-direct/range {v3 .. v9}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v1, v3}, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
