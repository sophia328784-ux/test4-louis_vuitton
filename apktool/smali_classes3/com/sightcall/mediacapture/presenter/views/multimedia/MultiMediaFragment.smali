.class public final Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment$Args;,
        Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Deprecated;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0001\u0018\u00002\u00020\u0001:\u0001\u0019B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J$\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u001a\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u000f2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0008\u001a\u00020\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "binding",
        "Lcom/sightcall/mediacapture/databinding/FragmentMultiMediaBinding;",
        "observer",
        "Lcom/sightcall/mediacapture/presenter/MediaCaptureLifecycleObserver;",
        "viewModel",
        "Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;",
        "getViewModel",
        "()Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onViewCreated",
        "",
        "view",
        "Args",
        "lib_release"
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
.field private binding:Lcom/sightcall/mediacapture/databinding/FragmentMultiMediaBinding;

.field private observer:Lcom/sightcall/mediacapture/presenter/MediaCaptureLifecycleObserver;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lx60;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lx60;-><init>(Ljava/lang/Object;I)V

    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v2, v0}, Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment$special$$inlined$viewModels$default$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const-class v1, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v2, v0}, Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/Lazy;)V

    new-instance v3, Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment$special$$inlined$viewModels$default$3;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    new-instance v4, Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment$special$$inlined$viewModels$default$4;

    invoke-direct {v4, p0, v0}, Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment$special$$inlined$viewModels$default$4;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    new-instance v0, Landroidx/lifecycle/ViewModelLazy;

    invoke-direct {v0, v1, v2, v4, v3}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment;->viewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getViewModel()Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    return-object p0
.end method

.method private static synthetic instrumented$0$onViewCreated$-Landroid-view-View-Landroid-os-Bundle--V(Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_0
    invoke-static {p0, p1}, Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment;->onViewCreated$lambda$1(Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment;Landroid/view/View;)V

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    throw p0
.end method

.method private static synthetic instrumented$1$onViewCreated$-Landroid-view-View-Landroid-os-Bundle--V(Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_0
    invoke-static {p0, p1}, Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment;->onViewCreated$lambda$2(Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment;Landroid/view/View;)V

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    throw p0
.end method

.method private static final onCreateView$lambda$0(Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment;Landroid/net/Uri;)Lkotlin/Unit;
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment;->getViewModel()Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->onMediaSelected(Landroid/net/Uri;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onViewCreated$lambda$1(Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment;->observer:Lcom/sightcall/mediacapture/presenter/MediaCaptureLifecycleObserver;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureLifecycleObserver;->selectPhoto()V

    return-void

    :cond_0
    const-string p0, "observer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final onViewCreated$lambda$2(Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment;->observer:Lcom/sightcall/mediacapture/presenter/MediaCaptureLifecycleObserver;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureLifecycleObserver;->selectVideo()V

    return-void

    :cond_0
    const-string p0, "observer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic p(Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment;Landroid/net/Uri;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment;->onCreateView$lambda$0(Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment;Landroid/net/Uri;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment;->instrumented$0$onViewCreated$-Landroid-view-View-Landroid-os-Bundle--V(Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment;->instrumented$1$onViewCreated$-Landroid-view-View-Landroid-os-Bundle--V(Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s(Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment;)Landroidx/lifecycle/ViewModelStoreOwner;
    .locals 0

    invoke-static {p0}, Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment;->viewModel_delegate$lambda$0(Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object p0

    return-object p0
.end method

.method private static final viewModel_delegate$lambda$0(Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment;)Landroidx/lifecycle/ViewModelStoreOwner;
    .locals 0

    invoke-static {p0}, Lcom/sightcall/mediacapture/presenter/extensions/FragmentExtensionsKt;->getViewModelOwner(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/sightcall/mediacapture/databinding/FragmentMultiMediaBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/sightcall/mediacapture/databinding/FragmentMultiMediaBinding;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment;->binding:Lcom/sightcall/mediacapture/databinding/FragmentMultiMediaBinding;

    new-instance p1, Lcom/sightcall/mediacapture/presenter/MediaCaptureLifecycleObserver;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/activity/ComponentActivity;->getActivityResultRegistry()Landroidx/activity/result/ActivityResultRegistry;

    move-result-object p2

    new-instance p3, Ltb0;

    const/4 v0, 0x6

    invoke-direct {p3, p0, v0}, Ltb0;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p1, p2, p3}, Lcom/sightcall/mediacapture/presenter/MediaCaptureLifecycleObserver;-><init>(Landroidx/activity/result/ActivityResultRegistry;Lkotlin/jvm/functions/Function1;)V

    iput-object p1, p0, Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment;->observer:Lcom/sightcall/mediacapture/presenter/MediaCaptureLifecycleObserver;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object p2, p0, Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment;->observer:Lcom/sightcall/mediacapture/presenter/MediaCaptureLifecycleObserver;

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/LifecycleObserver;)V

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment;->binding:Lcom/sightcall/mediacapture/databinding/FragmentMultiMediaBinding;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/mediacapture/databinding/FragmentMultiMediaBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw p3

    :cond_1
    const-string p0, "observer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw p3
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->trackOnHiddenChanged(Ljava/lang/Object;Z)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->trackFragmentPause(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->trackFragmentResume(Ljava/lang/Object;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget-object v0, Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment$Args;->Companion:Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment$Args$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment$Args$Companion;->deserialize(Landroid/os/Bundle;)Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment$Args;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment$Args;->getSources()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "binding"

    const/4 v5, 0x0

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sightcall/mediacapture/presenter/Source;

    sget-object v6, Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v6, v1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment;->binding:Lcom/sightcall/mediacapture/databinding/FragmentMultiMediaBinding;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/sightcall/mediacapture/databinding/FragmentMultiMediaBinding;->videoLibrary:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v5

    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->onFragmentViewCreated(Ljava/lang/Object;Landroid/view/View;Landroid/os/Bundle;)V

    throw v0

    :cond_2
    iget-object v1, p0, Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment;->binding:Lcom/sightcall/mediacapture/databinding/FragmentMultiMediaBinding;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/sightcall/mediacapture/databinding/FragmentMultiMediaBinding;->photoLibrary:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v5

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->d()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/sightcall/mediacapture/R$id;->main:I

    new-instance v3, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;

    invoke-direct {v3}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;-><init>()V

    invoke-virtual {v1, v2, v3, v5}, Landroidx/fragment/app/FragmentTransaction;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->e()I

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment;->binding:Lcom/sightcall/mediacapture/databinding/FragmentMultiMediaBinding;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/sightcall/mediacapture/databinding/FragmentMultiMediaBinding;->photoLibrary:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lld0;

    invoke-direct {v1, p0, v3}, Lld0;-><init>(Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment;->binding:Lcom/sightcall/mediacapture/databinding/FragmentMultiMediaBinding;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/sightcall/mediacapture/databinding/FragmentMultiMediaBinding;->videoLibrary:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lld0;

    invoke-direct {v1, p0, v2}, Lld0;-><init>(Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->onFragmentViewCreated(Ljava/lang/Object;Landroid/view/View;Landroid/os/Bundle;)V

    return-void

    :cond_6
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v5

    :cond_7
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v5
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->trackFragmentSetUserVisibleHint(Ljava/lang/Object;Z)V

    return-void
.end method
