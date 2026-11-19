.class public final Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "Companion",
        "line-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final D:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$Companion;


# instance fields
.field public A:Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;

.field public B:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

.field public final C:Ljava/util/LinkedHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->D:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->C:Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static final r(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;)V
    .locals 9

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->B:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->values()[Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_0

    aget-object v7, v2, v6

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v7}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->b()I

    move-result v7

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    new-array v1, v5, [Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/CharSequence;

    new-instance v2, Lmc0;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lmc0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->b([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->g()Landroidx/appcompat/app/AlertDialog;

    return-void

    :cond_1
    const-string p0, "viewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 12

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->a(Lkotlin/reflect/KClass;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    iput-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->B:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->A:Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->m(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;)V

    iget-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->B:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    const-string v0, "viewModel"

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Lmh0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lmh0;-><init>(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;I)V

    invoke-virtual {p1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->B:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Lmh0;

    const/4 v4, 0x1

    invoke-direct {v2, p0, v4}, Lmh0;-><init>(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;I)V

    invoke-virtual {p1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->B:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Lmh0;

    const/4 v5, 0x2

    invoke-direct {v2, p0, v5}, Lmh0;-><init>(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;I)V

    invoke-virtual {p1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v2, 0x7f0a04a4

    invoke-virtual {p1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    const v2, 0x7f140ee8

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/Menu;->clear()V

    const v2, 0x7f0f0002

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/Toolbar;->m(I)V

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const v2, 0x7f0a02f1

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    new-instance v2, Lcom/linecorp/linesdk/openchat/ui/a;

    invoke-direct {v2, p0}, Lcom/linecorp/linesdk/openchat/ui/a;-><init>(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;)V

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->B:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->l:Landroidx/lifecycle/MediatorLiveData;

    new-instance v5, Loh0;

    invoke-direct {v5, v3, p1}, Loh0;-><init>(ILandroid/view/MenuItem;)V

    invoke-virtual {v2, p0, v5}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    const p1, 0x7f0a0316

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->p(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$setupName$1;

    iget-object v2, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->B:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    if-eqz v2, :cond_1

    iget-object v7, v2, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    const-string v10, "setValue(Ljava/lang/Object;)V"

    const/4 v11, 0x0

    const/4 v6, 0x1

    const-class v8, Landroidx/lifecycle/MutableLiveData;

    const-string v9, "setValue"

    invoke-direct/range {v5 .. v11}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v2, Lcom/linecorp/linesdk/openchat/KotlinExtensionsKt$addAfterTextChangedAction$1;

    invoke-direct {v2, v5}, Lcom/linecorp/linesdk/openchat/KotlinExtensionsKt$addAfterTextChangedAction$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const p1, 0x7f0a015c

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->p(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$setupDescription$1;

    iget-object v2, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->B:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    if-eqz v2, :cond_0

    iget-object v7, v2, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    const-string v10, "setValue(Ljava/lang/Object;)V"

    const/4 v11, 0x0

    const/4 v6, 0x1

    const-class v8, Landroidx/lifecycle/MutableLiveData;

    const-string v9, "setValue"

    invoke-direct/range {v5 .. v11}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lcom/linecorp/linesdk/openchat/KotlinExtensionsKt$addAfterTextChangedAction$1;

    invoke-direct {v0, v5}, Lcom/linecorp/linesdk/openchat/KotlinExtensionsKt$addAfterTextChangedAction$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const p1, 0x7f0a00d3

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->p(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v0, Lnh0;

    invoke-direct {v0, p0, v4}, Lnh0;-><init>(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a03b2

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->p(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    new-instance v0, Ljm;

    invoke-direct {v0, p0, v4}, Ljm;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const p1, 0x7f0a03b3

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->p(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v0, Lnh0;

    invoke-direct {v0, p0, v3}, Lnh0;-><init>(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p3, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->y:I

    sget-object p3, Landroidx/databinding/DataBindingUtil;->a:Landroidx/databinding/DataBinderMapper;

    const p3, 0x7f0d00fe

    invoke-static {p1, p3, p2}, Landroidx/databinding/ViewDataBinding;->e(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->A:Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;

    invoke-virtual {p1, p0}, Landroidx/databinding/ViewDataBinding;->k(Landroidx/fragment/app/Fragment;)V

    iget-object p0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->A:Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/databinding/ViewDataBinding;->f:Landroid/view/View;

    return-object p0

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    iget-object p0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->C:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->trackOnHiddenChanged(Ljava/lang/Object;Z)V

    return-void
.end method

.method public final onPause()V
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
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->onFragmentViewCreated(Ljava/lang/Object;Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public final p(I)Landroid/view/View;
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->C:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public final q(ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x2f

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->trackFragmentSetUserVisibleHint(Ljava/lang/Object;Z)V

    return-void
.end method
