.class public final Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment;
.super Lcom/vuitton/android/presentation/screen/connectivity/tutorial/Hilt_TutorialFragment;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment$Companion;,
        Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u000bB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment;",
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
.field public static final I:Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment$Companion;

.field public static final synthetic J:[Lkotlin/reflect/KProperty;

.field public static final K:Ljava/lang/String;


# instance fields
.field public final F:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

.field public final G:Landroidx/lifecycle/ViewModelLazy;

.field public final H:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v1, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentConnectivityTutorialBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->h(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    aput-object v0, v1, v4

    sput-object v1, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment;->J:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment;->I:Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment$Companion;

    const-string v0, "TutorialFragment"

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment;->K:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const v0, 0x7f0d0067

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/Hilt_TutorialFragment;-><init>(I)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment$binding$2;->b:Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment$binding$2;

    invoke-static {p0, v0}, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;->d(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment;->F:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v2, v0}, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModelImpl;

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v2, v0}, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    new-instance v3, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment$special$$inlined$viewModels$default$4;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    new-instance v4, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v4, p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    new-instance v0, Landroidx/lifecycle/ViewModelLazy;

    invoke-direct {v0, v1, v2, v4, v3}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment;->G:Landroidx/lifecycle/ViewModelLazy;

    new-instance v0, Lhv0;

    const/16 v1, 0x17

    invoke-direct {v0, p0, v1}, Lhv0;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment;->H:Lkotlin/Lazy;

    return-void
.end method

.method public static O(Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment;)Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialType;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "TUTORIAL_TYPE"

    if-lt v0, v1, :cond_0

    const-class v0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialType;

    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialType;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    :cond_1
    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialType;

    :goto_0
    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialType;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    return-object p0

    :cond_3
    :goto_1
    sget-object p0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialType;->EARPHONE:Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialType;

    return-object p0
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/Hilt_TutorialFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

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

    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment;->J:[Lkotlin/reflect/KProperty;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment;->F:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    invoke-virtual {p2, p0, p1}, Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;->c(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KProperty;)Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/databinding/FragmentConnectivityTutorialBinding;

    iget-object p2, p1, Lcom/vuitton/android/presentation/databinding/FragmentConnectivityTutorialBinding;->b:Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;

    iget-object p2, p2, Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;->c:Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;

    iget-object p2, p2, Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;->b:Landroidx/appcompat/widget/Toolbar;

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p0, p2, v0, v1}, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;->a(Landroidx/fragment/app/Fragment;Landroidx/appcompat/widget/Toolbar;Ll61;I)V

    iget-object p2, p1, Lcom/vuitton/android/presentation/databinding/FragmentConnectivityTutorialBinding;->b:Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;

    iget-object p2, p2, Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;->c:Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;

    iget-object p2, p2, Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;->c:Landroidx/appcompat/widget/AppCompatTextView;

    const v0, 0x7f140b8b

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setAccessibilityHeading(Z)V

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/FragmentConnectivityTutorialBinding;->c:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialAdapter;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment;->H:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialType;

    new-instance v3, Les0;

    const/16 v4, 0x15

    invoke-direct {v3, p0, p1, v4}, Les0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v4, Lp11;

    const/16 v5, 0xb

    invoke-direct {v4, p0, v5}, Lp11;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p2, v2, v3, v4}, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialAdapter;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialType;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p2, Lcom/vuitton/android/presentation/screen/connectivity/views/divider/SimpleHorizontalDivider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060476

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {p2, v2}, Lcom/vuitton/android/presentation/screen/connectivity/views/divider/SimpleHorizontalDivider;-><init>(I)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment;->G:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p1}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModel;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialType;

    invoke-interface {p2, v2}, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModel;->U2(Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialType;)V

    invoke-virtual {p1}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModel;

    invoke-interface {p2}, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModel;->nc()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    new-instance v3, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment$onViewCreated$2;

    const-string v8, "observeTutorialList(Ljava/lang/Object;)V"

    const/4 v9, 0x0

    const/4 v4, 0x1

    const-class v6, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment;

    const-string v7, "observeTutorialList"

    move-object v5, p0

    invoke-direct/range {v3 .. v9}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance p0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {p0, v3}, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p2, v2, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialType;

    sget-object p2, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p2, p0

    if-eq p0, v0, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModel;

    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModel$TutorialScreen;->a:Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModel$TutorialScreen;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModel;->Pb(Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModel;)V

    return-void
.end method
