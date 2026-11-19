.class public final Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;
.super Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/Hilt_WatchDetailsFragment;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment$Companion;,
        Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment$ItemDecoration;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001:\u0002\u000c\rB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u0003\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;",
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
        "onResume",
        "Companion",
        "ItemDecoration",
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
.field public static final O:Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment$Companion;

.field public static final synthetic P:[Lkotlin/reflect/KProperty;

.field public static final Q:Ljava/lang/String;


# instance fields
.field public final F:Landroidx/lifecycle/ViewModelLazy;

.field public final G:Lkotlin/Lazy;

.field public H:Z

.field public I:Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchUiModel;

.field public final J:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

.field public K:Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;

.field public L:Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfaceListAdapter;

.field public M:Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchActivityRouter;

.field public N:Lcom/vuitton/android/core/events/LVEventSender;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v1, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentWatchDetailsBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->h(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    aput-object v0, v1, v4

    sput-object v1, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;->P:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;->O:Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment$Companion;

    const-string v0, "WatchDetailsFragment"

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;->Q:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const v0, 0x7f0d008a

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/Hilt_WatchDetailsFragment;-><init>(I)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v2, v0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModelImpl;

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v2, v0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    new-instance v3, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment$special$$inlined$viewModels$default$4;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    new-instance v4, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v4, p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    new-instance v0, Landroidx/lifecycle/ViewModelLazy;

    invoke-direct {v0, v1, v2, v4, v3}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;->F:Landroidx/lifecycle/ViewModelLazy;

    new-instance v0, Lhv0;

    const/16 v1, 0x1a

    invoke-direct {v0, p0, v1}, Lhv0;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;->G:Lkotlin/Lazy;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment$binding$2;->b:Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment$binding$2;

    invoke-static {p0, v0}, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;->d(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;->J:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    return-void
.end method


# virtual methods
.method public final O()Lcom/vuitton/android/presentation/databinding/FragmentWatchDetailsBinding;
    .locals 2

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;->P:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;->J:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    invoke-virtual {v1, p0, v0}, Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;->c(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KProperty;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/databinding/FragmentWatchDetailsBinding;

    return-object p0
.end method

.method public final P()Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModel;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;->F:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModel;

    return-object p0
.end method

.method public final Q()Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchActivityRouter;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;->M:Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchActivityRouter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "watchActivityRouter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x155d

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->a(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object p1

    new-instance p2, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment$onActivityResult$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment$onActivityResult$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, p3, p3, p2, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const p0, 0x7f0f0003

    invoke-virtual {p2, p0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a004f

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;->I:Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchUiModel;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;->Q()Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchActivityRouter;

    invoke-static {p0}, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;->c(Landroidx/fragment/app/Fragment;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->J:Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;

    invoke-direct {v2}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "WATCH"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const/16 v0, 0x155d

    invoke-virtual {v2, p0, v0}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->d()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f010035

    const v3, 0x7f01003a

    const v4, 0x7f010037

    const v5, 0x7f010020

    invoke-virtual {v0, v4, v5, v1, v3}, Landroidx/fragment/app/FragmentTransaction;->n(IIII)V

    sget-object v1, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->L:Ljava/lang/String;

    const v3, 0x7f0a0204

    invoke-virtual {v0, v3, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->d(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->e()I

    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackMenuItem(Ljava/lang/Object;Landroid/view/MenuItem;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackMenuItem(Ljava/lang/Object;Landroid/view/MenuItem;)V

    return v2

    :cond_1
    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackMenuItem(Ljava/lang/Object;Landroid/view/MenuItem;)V

    return v2
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/Hilt_WatchDetailsFragment;->onResume()V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;->G:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;->P()Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModel;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModel;->Xb(Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super/range {p0 .. p2}, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/Hilt_WatchDetailsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance v0, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling;

    new-instance v3, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$SystemBarsConfig;

    const/16 v8, 0xf

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$SystemBarsConfig;-><init>(ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v0, p0, v3}, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling;-><init>(Landroidx/fragment/app/Fragment;Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$SystemBarsConfig;)V

    new-instance v0, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling;

    sget-object v1, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->h:Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->j:Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;

    invoke-direct {v0, p0, v1}, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling;-><init>(Landroidx/fragment/app/Fragment;Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentWatchDetailsBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/vuitton/android/presentation/databinding/FragmentWatchDetailsBinding;->d:Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;->c:Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;

    iget-object v3, v1, Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;->b:Landroidx/appcompat/widget/Toolbar;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static {p0, v3, v5, v4}, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;->a(Landroidx/fragment/app/Fragment;Landroidx/appcompat/widget/Toolbar;Ll61;I)V

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;->c:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/View;->setAccessibilityHeading(Z)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/databinding/FragmentWatchDetailsBinding;->p:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAccessibilityHeading(Z)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/databinding/FragmentWatchDetailsBinding;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAccessibilityHeading(Z)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/databinding/FragmentWatchDetailsBinding;->j:Landroid/widget/LinearLayout;

    new-instance v4, Lb61;

    invoke-direct {v4, p0, v6}, Lb61;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;I)V

    invoke-static {v1, v4}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/databinding/FragmentWatchDetailsBinding;->l:Landroid/widget/Button;

    new-instance v4, Lb61;

    invoke-direct {v4, p0, v3}, Lb61;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;I)V

    invoke-static {v1, v4}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;

    new-instance v4, Lb61;

    const/4 v7, 0x2

    invoke-direct {v4, p0, v7}, Lb61;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;I)V

    invoke-direct {v1, v6, v4, v3, v5}, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;-><init>(ZLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;->K:Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;

    iget-object v3, v0, Lcom/vuitton/android/presentation/databinding/FragmentWatchDetailsBinding;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfaceListAdapter;

    new-instance v3, Lb61;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Lb61;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;I)V

    invoke-direct {v1, v3}, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfaceListAdapter;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;->L:Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfaceListAdapter;

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentWatchDetailsBinding;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment$ItemDecoration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget-object v5, Landroidx/core/content/res/ResourcesCompat;->a:Ljava/lang/ThreadLocal;

    const v5, 0x7f0600a5

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v5, v4

    float-to-int v4, v5

    invoke-direct {v1, v3, v4}, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment$ItemDecoration;-><init>(II)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;->P()Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModel;->Ha()Landroidx/lifecycle/MutableLiveData;

    move-result-object v7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v8

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment$onViewCreated$1;

    const-string v5, "handleWatchResult(Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchUiModel;)V"

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;

    const-string v4, "handleWatchResult"

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v7, v8, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;->P()Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModel;->Ub()Landroidx/lifecycle/MutableLiveData;

    move-result-object v7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v8

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment$onViewCreated$2;

    const-string v5, "handleWatchFacesResult(Ljava/util/List;)V"

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;

    const-string v4, "handleWatchFacesResult"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v7, v8, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;->P()Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModel;->w()Landroidx/lifecycle/MutableLiveData;

    move-result-object v7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v8

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment$onViewCreated$3;

    const-string v5, "handleTraversResult(Ljava/util/List;)V"

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;

    const-string v4, "handleTraversResult"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v7, v8, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;->P()Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModel;->T()Landroidx/lifecycle/MutableLiveData;

    move-result-object v7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v8

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment$onViewCreated$4;

    const-string v5, "handleProfileResult(Lcom/vuitton/foundation/model/domain/model/profile/Profile;)V"

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;

    const-string v4, "handleProfileResult"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v7, v8, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method
