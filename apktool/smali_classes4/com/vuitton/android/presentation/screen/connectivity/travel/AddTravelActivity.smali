.class public final Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;
.super Lcom/vuitton/android/presentation/screen/connectivity/travel/Hilt_AddTravelActivity;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;",
        "Lcom/vuitton/android/presentation/screen/base/BaseActivity;",
        "<init>",
        "()V",
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
.field public static final u:Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity$Companion;

.field public static final synthetic v:[Lkotlin/reflect/KProperty;


# instance fields
.field public final p:Lkotlin/Lazy;

.field public final q:Lkotlin/Lazy;

.field public final r:Lkotlin/Lazy;

.field public final s:Landroidx/lifecycle/ViewModelLazy;

.field public final t:Lcom/vuitton/android/presentation/extensions/ActivityViewBindingDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/vuitton/android/presentation/databinding/ActivityAddTravelBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->h(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    aput-object v0, v1, v4

    sput-object v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;->v:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;->u:Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const v0, 0x7f0d001d

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/Hilt_AddTravelActivity;-><init>(I)V

    new-instance v0, Le4;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le4;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;->p:Lkotlin/Lazy;

    new-instance v0, Le4;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Le4;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;->q:Lkotlin/Lazy;

    new-instance v0, Le4;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Le4;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;->r:Lkotlin/Lazy;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    const-class v2, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelFormViewModelImpl;

    sget-object v3, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v3, v2}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity$special$$inlined$viewModels$default$2;

    invoke-direct {v3, p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v4, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity$special$$inlined$viewModels$default$3;

    const/4 v5, 0x0

    invoke-direct {v4, v5, p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;->s:Landroidx/lifecycle/ViewModelLazy;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity$binding$2;->b:Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity$binding$2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/presentation/extensions/ActivityViewBindingDelegate;

    invoke-direct {v1, p0, v0, v5}, Lcom/vuitton/android/presentation/extensions/ActivityViewBindingDelegate;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lkotlin/jvm/functions/Function1;Ljava/lang/Integer;)V

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;->t:Lcom/vuitton/android/presentation/extensions/ActivityViewBindingDelegate;

    return-void
.end method


# virtual methods
.method public final H(ILjava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;->I()Lcom/vuitton/android/presentation/databinding/ActivityAddTravelBinding;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/databinding/ActivityAddTravelBinding;->h:Lcom/google/android/material/tabs/TabLayout;

    const v2, 0x7f0d0136

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const v1, 0x7f0a04c7

    invoke-static {v1, p0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v2, :cond_0

    const v1, 0x7f0a04c9

    invoke-static {v1, p0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    check-cast p0, Landroid/widget/LinearLayout;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    iget-object p1, v0, Lcom/vuitton/android/presentation/databinding/ActivityAddTravelBinding;->h:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->i()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p0

    iget-object p2, p1, Lcom/google/android/material/tabs/TabLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    invoke-virtual {p1, p0, p2}, Lcom/google/android/material/tabs/TabLayout;->b(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Missing required view with ID: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final I()Lcom/vuitton/android/presentation/databinding/ActivityAddTravelBinding;
    .locals 2

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;->v:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;->t:Lcom/vuitton/android/presentation/extensions/ActivityViewBindingDelegate;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lcom/vuitton/android/presentation/extensions/ActivityViewBindingDelegate;->c:Landroidx/viewbinding/ViewBinding;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/vuitton/android/presentation/extensions/ActivityViewBindingDelegate;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    iget-object p0, v1, Lcom/vuitton/android/presentation/extensions/ActivityViewBindingDelegate;->a:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroidx/viewbinding/ViewBinding;

    iput-object v0, v1, Lcom/vuitton/android/presentation/extensions/ActivityViewBindingDelegate;->c:Landroidx/viewbinding/ViewBinding;

    :goto_0
    check-cast v0, Lcom/vuitton/android/presentation/databinding/ActivityAddTravelBinding;

    return-object v0

    :cond_3
    const-string p0, "Views are not accessible in the current Activity state."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final J()Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelFormViewModel;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;->s:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelFormViewModel;

    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;->J()Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelFormViewModel;

    move-result-object p1

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel$AddTravelPageScreen;->a:Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel$AddTravelPageScreen;

    invoke-interface {p1, v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelFormViewModel;->t0(Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;->I()Lcom/vuitton/android/presentation/databinding/ActivityAddTravelBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/ActivityAddTravelBinding;->f:Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;->c:Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;

    invoke-static {p0}, Lcom/vuitton/android/presentation/extensions/ActivityExtKt;->d(Lcom/vuitton/android/presentation/screen/base/BaseActivity;)V

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;->c:Landroidx/appcompat/widget/AppCompatTextView;

    const v0, 0x7f1402e3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityHeading(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->d()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;->q:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentTransaction;->j(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->g()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->d()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;->r:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentTransaction;->j(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->g()V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;->J()Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelFormViewModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelFormViewModel;->T()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v1, Lf4;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lf4;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;I)V

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v2, v1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;->I()Lcom/vuitton/android/presentation/databinding/ActivityAddTravelBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/ActivityAddTravelBinding;->c:Landroid/widget/Button;

    new-instance v1, Lf4;

    invoke-direct {v1, p0, v0}, Lf4;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;I)V

    invoke-static {p1, v1}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    const p1, 0x7f141013

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f080177

    invoke-virtual {p0, v0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;->H(ILjava/lang/String;)V

    const p1, 0x7f141331

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f080260

    invoke-virtual {p0, v0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;->H(ILjava/lang/String;)V

    const p1, 0x7f140aa5

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f08017d

    invoke-virtual {p0, v0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;->H(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;->I()Lcom/vuitton/android/presentation/databinding/ActivityAddTravelBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/ActivityAddTravelBinding;->h:Lcom/google/android/material/tabs/TabLayout;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity$onCreate$4;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity$onCreate$4;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->a(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;->J()Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelFormViewModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelFormViewModel;->w()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity$onCreate$5;

    const-string v5, "handleCreateTravelResult(Ljava/lang/Object;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;

    const-string v4, "handleCreateTravelResult"

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity$sam$androidx_lifecycle_Observer$0;

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v2, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final onSupportNavigateUp()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->J()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->V()V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method
