.class public final Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesFragment;
.super Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/Hilt_WatchTutorialCategoriesFragment;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u000bB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesFragment;",
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
.field public static final I:Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesFragment$Companion;

.field public static final synthetic J:[Lkotlin/reflect/KProperty;

.field public static final K:Ljava/lang/String;


# instance fields
.field public final F:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

.field public final G:Landroidx/lifecycle/ViewModelLazy;

.field public H:Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/WatchTutorialRouter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v1, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentWatchTutorialCategoriesBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->h(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    aput-object v0, v1, v4

    sput-object v1, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesFragment;->J:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesFragment;->I:Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesFragment$Companion;

    const-string v0, "WatchTutorialCategoriesFragment"

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesFragment;->K:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const v0, 0x7f0d008c

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/Hilt_WatchTutorialCategoriesFragment;-><init>(I)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesFragment$binding$2;->b:Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesFragment$binding$2;

    invoke-static {p0, v0}, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;->d(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesFragment;->F:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v2, v0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesViewModelImpl;

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v2, v0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    new-instance v3, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesFragment$special$$inlined$viewModels$default$4;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    new-instance v4, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v4, p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    new-instance v0, Landroidx/lifecycle/ViewModelLazy;

    invoke-direct {v0, v1, v2, v4, v3}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesFragment;->G:Landroidx/lifecycle/ViewModelLazy;

    return-void
.end method


# virtual methods
.method public final O()Lcom/vuitton/android/presentation/databinding/FragmentWatchTutorialCategoriesBinding;
    .locals 2

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesFragment;->J:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesFragment;->F:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    invoke-virtual {v1, p0, v0}, Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;->c(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KProperty;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/databinding/FragmentWatchTutorialCategoriesBinding;

    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesFragment;->G:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesViewModel;

    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$WatchTutorialCategoriesPageScreen;->a:Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$WatchTutorialCategoriesPageScreen;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesViewModel;->D(Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/Hilt_WatchTutorialCategoriesFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

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

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentWatchTutorialCategoriesBinding;

    move-result-object p1

    iget-object p2, p1, Lcom/vuitton/android/presentation/databinding/FragmentWatchTutorialCategoriesBinding;->c:Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;

    iget-object p2, p2, Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;->c:Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;

    iget-object p2, p2, Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;->b:Landroidx/appcompat/widget/Toolbar;

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p0, p2, v0, v1}, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;->a(Landroidx/fragment/app/Fragment;Landroidx/appcompat/widget/Toolbar;Ll61;I)V

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/FragmentWatchTutorialCategoriesBinding;->c:Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;->c:Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;

    iget-object p2, p1, Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;->c:Landroidx/appcompat/widget/AppCompatTextView;

    const v0, 0x7f140fb1

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;->c:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setAccessibilityHeading(Z)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesFragment;->G:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p1}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesViewModel;

    invoke-interface {p2}, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesViewModel;->Ya()V

    invoke-virtual {p1}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesViewModel;

    invoke-interface {p1}, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesViewModel;->G7()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesFragment$onViewCreated$2;

    const-string v5, "handleWatchTutorialCategoriesResult(Ljava/lang/Object;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesFragment;

    const-string v4, "handleWatchTutorialCategoriesResult"

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method
