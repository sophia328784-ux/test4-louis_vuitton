.class public final Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;
.super Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/Hilt_WatchSettingsFragment;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsView;


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u000cB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsView;",
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
.field public static final J:Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment$Companion;

.field public static final synthetic K:[Lkotlin/reflect/KProperty;

.field public static final L:Ljava/lang/String;


# instance fields
.field public final F:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

.field public final G:Landroidx/lifecycle/ViewModelLazy;

.field public final H:Lkotlin/Lazy;

.field public I:Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchActivityRouter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v1, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->h(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    aput-object v0, v1, v4

    sput-object v1, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->K:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->J:Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment$Companion;

    const-string v0, "WatchSettingsFragment"

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->L:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const v0, 0x7f0d008b

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/Hilt_WatchSettingsFragment;-><init>(I)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment$binding$2;->b:Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment$binding$2;

    invoke-static {p0, v0}, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;->d(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->F:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v2, v0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel;

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v2, v0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    new-instance v3, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment$special$$inlined$viewModels$default$4;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    new-instance v4, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v4, p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    new-instance v0, Landroidx/lifecycle/ViewModelLazy;

    invoke-direct {v0, v1, v2, v4, v3}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->G:Landroidx/lifecycle/ViewModelLazy;

    new-instance v0, Lhv0;

    const/16 v1, 0x1b

    invoke-direct {v0, p0, v1}, Lhv0;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->H:Lkotlin/Lazy;

    return-void
.end method

.method public static O(Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;)Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchUiModel;
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    const-string v3, "WATCH"

    if-lt v1, v2, :cond_0

    const-class v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchUiModel;

    invoke-virtual {p0, v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    instance-of v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchUiModel;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    move-object p0, v0

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchUiModel;

    :goto_1
    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchUiModel;

    return-object p0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public final E(Ljava/lang/Throwable;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;->e:Lcom/vuitton/android/presentation/databinding/ProgressOverlayBinding;

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/ProgressOverlayBinding;->b:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lf61;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lf61;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;I)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final G()V
    .locals 3

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;->e:Lcom/vuitton/android/presentation/databinding/ProgressOverlayBinding;

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/ProgressOverlayBinding;->b:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;->k:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->S()V

    return-void
.end method

.method public final P()Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;
    .locals 2

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->K:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->F:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    invoke-virtual {v1, p0, v0}, Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;->c(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KProperty;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;

    return-object p0
.end method

.method public final Q()Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->G:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel;

    return-object p0
.end method

.method public final R()Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchUiModel;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->H:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchUiModel;

    return-object p0
.end method

.method public final S()V
    .locals 3

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;->k:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;->l:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/Hilt_WatchSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method public final j(Ljava/lang/Throwable;)V
    .locals 2

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;

    move-result-object p1

    iget-object v0, p1, Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;->e:Lcom/vuitton/android/presentation/databinding/ProgressOverlayBinding;

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/ProgressOverlayBinding;->b:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;->l:Landroid/widget/EditText;

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;->k:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->S()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lf61;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lf61;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;I)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->Q()Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0, p0}, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;->yc(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->Q()Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel;->g:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$WatchSettingsPageScreen;->a:Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$WatchSettingsPageScreen;

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void
.end method

.method public final onDestroyView()V
    .locals 2

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->Q()Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;->Ac(Landroidx/lifecycle/LifecycleOwner;)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/Hilt_WatchSettingsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

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

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;->m:Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;->c:Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;

    iget-object p2, p1, Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;->b:Landroidx/appcompat/widget/Toolbar;

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {p0, p2, v1, v0}, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;->a(Landroidx/fragment/app/Fragment;Landroidx/appcompat/widget/Toolbar;Ll61;I)V

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;->c:Landroidx/appcompat/widget/AppCompatTextView;

    const p2, 0x7f140fac

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setAccessibilityHeading(Z)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;

    move-result-object p1

    iget-object v0, p1, Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/view/View;->setAccessibilityHeading(Z)V

    iget-object v0, p1, Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/view/View;->setAccessibilityHeading(Z)V

    iget-object v0, p1, Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/view/View;->setAccessibilityHeading(Z)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;

    move-result-object v0

    iget-object v2, v0, Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->R()Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchUiModel;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchUiModel;->f:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;->b:Landroid/widget/ImageView;

    new-instance v3, Le61;

    invoke-direct {v3, v0, p0}, Le61;-><init>(Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;)V

    invoke-static {v2, v3}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iget-object v2, v0, Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;->l:Landroid/widget/EditText;

    new-instance v3, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/a;

    invoke-direct {v3, v0, p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/a;-><init>(Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->R()Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchUiModel;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->Q()Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v4

    new-instance v5, Lc61;

    invoke-direct {v5, p0, v0, v2}, Lc61;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v0, v5}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lc61;)V

    invoke-virtual {v3, v4, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->Q()Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel;

    move-result-object v0

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v3

    sget-object v4, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v4, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->b:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v5, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel$getProfile$1;

    invoke-direct {v5, v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel$getProfile$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x2

    invoke-static {v3, v4, v1, v5, v0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_1
    iget-object v0, p1, Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->R()Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchUiModel;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchUiModel;->g:Ljava/lang/String;

    if-nez v3, :cond_3

    :cond_2
    move-object v3, v1

    :cond_3
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->R()Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchUiModel;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v1, v3, Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchUiModel;->d:Ljava/lang/String;

    :cond_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;->o:Landroid/widget/TextView;

    new-instance v1, Ld61;

    invoke-direct {v1, p0, v2}, Ld61;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;I)V

    invoke-static {v0, v1}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iget-object v0, p1, Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;->j:Landroid/widget/TextView;

    new-instance v1, Ld61;

    invoke-direct {v1, p0, p2}, Ld61;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;I)V

    invoke-static {v0, v1}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iget-object p2, p1, Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;->i:Landroid/widget/Button;

    new-instance v0, Le61;

    invoke-direct {v0, p0, p1}, Le61;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;)V

    invoke-static {p2, v0}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final x()V
    .locals 3

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->Q()Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel;->g:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    sget-object v1, Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$UnpairSuccessEvent;->a:Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$UnpairSuccessEvent;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;->e:Lcom/vuitton/android/presentation/databinding/ProgressOverlayBinding;

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/ProgressOverlayBinding;->b:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->V()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetRequestCode()I

    move-result p0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_1
    return-void
.end method
