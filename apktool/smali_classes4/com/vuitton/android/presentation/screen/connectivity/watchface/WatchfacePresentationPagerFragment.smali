.class public final Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment;
.super Lcom/vuitton/android/presentation/screen/connectivity/watchface/Hilt_WatchfacePresentationPagerFragment;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u000bB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
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
.field public static final K:Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment$Companion;

.field public static final synthetic L:[Lkotlin/reflect/KProperty;

.field public static final M:Ljava/lang/String;


# instance fields
.field public final F:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

.field public G:Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationAdapter;

.field public final H:Lkotlin/Lazy;

.field public final I:Landroidx/lifecycle/ViewModelLazy;

.field public final J:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v1, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationPagerBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->h(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    aput-object v0, v1, v4

    sput-object v1, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment;->L:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment;->K:Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment$Companion;

    const-string v0, "WatchfacePresentationPagerFragment"

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment;->M:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const v0, 0x7f0d008f

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/watchface/Hilt_WatchfacePresentationPagerFragment;-><init>(I)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment$binding$2;->b:Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment$binding$2;

    invoke-static {p0, v0}, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;->d(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment;->F:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    new-instance v0, Lh61;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lh61;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment;->H:Lkotlin/Lazy;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v2, v0}, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationViewModelImpl;

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v2, v0}, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    new-instance v3, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment$special$$inlined$viewModels$default$4;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    new-instance v4, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v4, p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    new-instance v0, Landroidx/lifecycle/ViewModelLazy;

    invoke-direct {v0, v1, v2, v4, v3}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment;->I:Landroidx/lifecycle/ViewModelLazy;

    new-instance v0, Lh61;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lh61;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment;->J:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final O()Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationPagerBinding;
    .locals 2

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment;->L:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment;->F:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    invoke-virtual {v1, p0, v0}, Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;->c(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KProperty;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationPagerBinding;

    return-object p0
.end method

.method public final P(Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchFacePresentationUiModel;)V
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment;->I:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationViewModel;

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$WatchfaceSelectedEvent;

    iget-object v2, p1, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchFacePresentationUiModel;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$WatchfaceSelectedEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationViewModel;->D(Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment;->H:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment;->J:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x1

    :goto_2
    invoke-virtual {v0, p1, p0}, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;->R(Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchFacePresentationUiModel;Z)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment;->I:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationViewModel;

    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$WatchfacePagerPageScreen;->a:Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$WatchfacePagerPageScreen;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationViewModel;->D(Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel;)V

    return-void
.end method

.method public final onDestroyView()V
    .locals 2

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationPagerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationPagerBinding;->d:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/connectivity/watchface/Hilt_WatchfacePresentationPagerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance p1, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling;

    new-instance v0, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$SystemBarsConfig;

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$SystemBarsConfig;-><init>(ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p1, p0, v0}, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling;-><init>(Landroidx/fragment/app/Fragment;Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$SystemBarsConfig;)V

    new-instance p1, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling;

    sget-object p2, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->h:Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->j:Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling;-><init>(Landroidx/fragment/app/Fragment;Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationPagerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationPagerBinding;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x2

    invoke-static {p2, p1}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->b(ILandroid/view/View;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationPagerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationPagerBinding;->c:Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;->b:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 p2, 0x1

    invoke-static {p2, p1}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->b(ILandroid/view/View;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationPagerBinding;

    move-result-object p1

    iget-object v0, p1, Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationPagerBinding;->c:Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;->c:Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;

    iget-object v1, v0, Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;->b:Landroidx/appcompat/widget/Toolbar;

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {p0, v1, v2, v3}, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;->a(Landroidx/fragment/app/Fragment;Landroidx/appcompat/widget/Toolbar;Ll61;I)V

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;->c:Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f140fb8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setAccessibilityHeading(Z)V

    new-instance p2, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationAdapter;

    new-instance v0, Lp11;

    const/16 v1, 0x12

    invoke-direct {v0, p0, v1}, Lp11;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p2, v0}, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationAdapter;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment;->G:Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationAdapter;

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationPagerBinding;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p2, Lcom/vuitton/android/presentation/screen/connectivity/views/divider/SimpleVerticalDivider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060476

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p2, v0}, Lcom/vuitton/android/presentation/screen/connectivity/views/divider/SimpleVerticalDivider;-><init>(I)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment;->I:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p1}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationViewModel;

    invoke-interface {p2}, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationViewModel;->U3()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment$onViewCreated$2;

    const-string v6, "handleWatchfacePresentationResult(Ljava/lang/Object;)V"

    const/4 v7, 0x0

    const/4 v2, 0x1

    const-class v4, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment;

    const-string v5, "handleWatchfacePresentationResult"

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance p0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {p0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p2, v0, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p0, v3, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment;->J:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {p1}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationViewModel;

    invoke-interface {p1, p0}, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationViewModel;->t2(I)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationViewModel;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationViewModel;->Qb()V

    return-void
.end method
