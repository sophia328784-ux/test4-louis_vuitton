.class public final Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity;
.super Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/Hilt_AirportListActivity;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListFragment$AirportFilterManager;
.implements Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter$OnAirportSelectedListener;


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0001\u0006B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity;",
        "Lcom/vuitton/android/presentation/screen/base/BaseActivity;",
        "Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListFragment$AirportFilterManager;",
        "Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter$OnAirportSelectedListener;",
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
.field public static final r:Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity$Companion;


# instance fields
.field public p:Lcom/vuitton/android/presentation/databinding/ActivityAirportListBinding;

.field public final q:Landroidx/lifecycle/ViewModelLazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity;->r:Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const v0, 0x7f0d001e

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/Hilt_AirportListActivity;-><init>(I)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    const-class v2, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListViewModelImpl;

    sget-object v3, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v3, v2}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity$special$$inlined$viewModels$default$2;

    invoke-direct {v3, p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v4, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity$special$$inlined$viewModels$default$3;

    const/4 v5, 0x0

    invoke-direct {v4, v5, p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity;->q:Landroidx/lifecycle/ViewModelLazy;

    return-void
.end method

.method public static final H(Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->M()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListFragment;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentHotspotListBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/FragmentHotspotListBinding;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentHotspotListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentHotspotListBinding;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->y0(I)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final I(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->M()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListFragment;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListFragment;->H:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter;->e:Landroid/widget/Filter;

    invoke-virtual {v1, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentHotspotListBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/FragmentHotspotListBinding;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentHotspotListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentHotspotListBinding;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->y0(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity;->p:Lcom/vuitton/android/presentation/databinding/ActivityAirportListBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/ActivityAirportListBinding;->d:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final e(Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportUiModel;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "SELECTED_AIRPORT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 11

    invoke-super {p0, p1}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d001e

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a005b

    invoke-static {v0, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroidx/viewpager/widget/ViewPager;

    if-eqz v6, :cond_6

    const v0, 0x7f0a005c

    invoke-static {v0, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Landroid/widget/ImageButton;

    if-eqz v7, :cond_6

    const v0, 0x7f0a005d

    invoke-static {v0, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Landroid/widget/EditText;

    if-eqz v8, :cond_6

    const v0, 0x7f0a005e

    invoke-static {v0, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-static {v3}, Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;->a(Landroid/view/View;)Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;

    move-result-object v9

    const v0, 0x7f0a0071

    invoke-static {v0, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v3, :cond_6

    const v0, 0x7f0a0441

    invoke-static {v0, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/google/android/material/tabs/TabLayout;

    if-eqz v10, :cond_6

    new-instance v4, Lcom/vuitton/android/presentation/databinding/ActivityAirportListBinding;

    move-object v5, p1

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-direct/range {v4 .. v10}, Lcom/vuitton/android/presentation/databinding/ActivityAirportListBinding;-><init>(Landroid/widget/LinearLayout;Landroidx/viewpager/widget/ViewPager;Landroid/widget/ImageButton;Landroid/widget/EditText;Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;Lcom/google/android/material/tabs/TabLayout;)V

    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    iput-object v4, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity;->p:Lcom/vuitton/android/presentation/databinding/ActivityAirportListBinding;

    invoke-static {p0}, Lcom/vuitton/android/presentation/extensions/ActivityExtKt;->d(Lcom/vuitton/android/presentation/screen/base/BaseActivity;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity;->p:Lcom/vuitton/android/presentation/databinding/ActivityAirportListBinding;

    const-string v0, "binding"

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/ActivityAirportListBinding;->e:Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;->c:Landroidx/appcompat/widget/AppCompatTextView;

    const v3, 0x7f141334

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(I)V

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/view/View;->setAccessibilityHeading(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    new-instance v4, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity$initPager$pagerAdapter$1;

    invoke-direct {v4, p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity$initPager$pagerAdapter$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity;Landroidx/fragment/app/FragmentManager;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity;->p:Lcom/vuitton/android/presentation/databinding/ActivityAirportListBinding;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/ActivityAirportListBinding;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v4}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity;->p:Lcom/vuitton/android/presentation/databinding/ActivityAirportListBinding;

    if-eqz p1, :cond_3

    iget-object v5, p1, Lcom/vuitton/android/presentation/databinding/ActivityAirportListBinding;->f:Lcom/google/android/material/tabs/TabLayout;

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/ActivityAirportListBinding;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v5, p1}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    new-instance p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity$initPager$1$1;

    invoke-direct {p1, p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity$initPager$1$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity;)V

    invoke-virtual {v5, p1}, Lcom/google/android/material/tabs/TabLayout;->a(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    new-instance p1, Lb5;

    invoke-direct {p1, v5, p0, v4, v2}, Lb5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v5, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity;->p:Lcom/vuitton/android/presentation/databinding/ActivityAirportListBinding;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/ActivityAirportListBinding;->c:Landroid/widget/ImageButton;

    new-instance v2, Lc1;

    const/16 v4, 0x8

    invoke-direct {v2, p0, v4}, Lc1;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, v2}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity;->p:Lcom/vuitton/android/presentation/databinding/ActivityAirportListBinding;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/ActivityAirportListBinding;->d:Landroid/widget/EditText;

    new-instance v2, La5;

    invoke-direct {v2, p0}, La5;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity;->p:Lcom/vuitton/android/presentation/databinding/ActivityAirportListBinding;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/ActivityAirportListBinding;->d:Landroid/widget/EditText;

    new-instance v0, Le1;

    invoke-direct {v0, p0, v3}, Le1;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lcom/vuitton/android/presentation/extensions/EditTextExtKt$addOnTextChangedListener$1;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/extensions/EditTextExtKt$addOnTextChangedListener$1;-><init>(Le1;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity;->q:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListViewModelImpl;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListViewModelImpl;->pc()V

    return-void

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Missing required view with ID: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

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
