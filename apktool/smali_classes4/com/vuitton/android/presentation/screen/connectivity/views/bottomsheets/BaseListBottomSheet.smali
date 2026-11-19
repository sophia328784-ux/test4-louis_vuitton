.class public final Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseListBottomSheet;
.super Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/Hilt_BaseListBottomSheet;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseListBottomSheet$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u0001:\u0001\u000bB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseListBottomSheet;",
        "Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseBottomSheet;",
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
.field public static final S:Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseListBottomSheet$Companion;

.field public static final synthetic T:[Lkotlin/reflect/KProperty;

.field public static final V:Ljava/lang/String;


# instance fields
.field public final O:Lkotlin/Lazy;

.field public final P:Lkotlin/Lazy;

.field public final Q:Lkotlin/Lazy;

.field public final R:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v1, Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseListBottomSheet;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentFixedHeightBottomSheetBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->h(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    aput-object v0, v1, v4

    sput-object v1, Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseListBottomSheet;->T:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseListBottomSheet$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseListBottomSheet$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseListBottomSheet;->S:Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseListBottomSheet$Companion;

    const-string v0, "BaseListBottomSheet"

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseListBottomSheet;->V:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const v0, 0x7f0d0069

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/Hilt_BaseListBottomSheet;-><init>(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    new-instance v1, Lqc;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lqc;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseListBottomSheet;I)V

    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseListBottomSheet;->O:Lkotlin/Lazy;

    new-instance v1, Lqc;

    invoke-direct {v1, p0, v0}, Lqc;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseListBottomSheet;I)V

    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseListBottomSheet;->P:Lkotlin/Lazy;

    new-instance v0, Lqc;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lqc;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseListBottomSheet;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseListBottomSheet;->Q:Lkotlin/Lazy;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseListBottomSheet$binding$2;->b:Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseListBottomSheet$binding$2;

    invoke-static {p0, v0}, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;->d(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseListBottomSheet;->R:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    return-void
.end method

.method public static V(Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseListBottomSheet;)Ljava/util/ArrayList;
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    const-string v3, "STRING_LIST"

    if-lt v1, v2, :cond_0

    const-class v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    instance-of v1, p0, Ljava/util/ArrayList;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    move-object p0, v0

    check-cast p0, Ljava/util/ArrayList;

    :goto_1
    check-cast p0, Ljava/util/ArrayList;

    return-object p0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseBottomSheet;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseListBottomSheet;->T:[Lkotlin/reflect/KProperty;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseListBottomSheet;->R:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    invoke-virtual {p2, p0, p1}, Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;->c(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KProperty;)Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/databinding/FragmentFixedHeightBottomSheetBinding;

    iget-object p2, p1, Lcom/vuitton/android/presentation/databinding/FragmentFixedHeightBottomSheetBinding;->b:Lcom/vuitton/android/presentation/databinding/ReusableBottomSheetTitleLayoutBinding;

    iget-object v0, p2, Lcom/vuitton/android/presentation/databinding/ReusableBottomSheetTitleLayoutBinding;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseListBottomSheet;->P:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseListBottomSheet;->Q:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p2, p2, Lcom/vuitton/android/presentation/databinding/ReusableBottomSheetTitleLayoutBinding;->c:Landroid/widget/ImageView;

    new-instance v0, Lc1;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lc1;-><init>(Ljava/lang/Object;I)V

    invoke-static {p2, v0}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/FragmentFixedHeightBottomSheetBinding;->c:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f0800d7

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/views/divider/MiddleDividersItemDecoration;

    sget-object v1, Lcom/vuitton/android/presentation/screen/connectivity/views/divider/MiddleDividersItemDecoration$ListType;->VERTICAL:Lcom/vuitton/android/presentation/screen/connectivity/views/divider/MiddleDividersItemDecoration$ListType;

    invoke-direct {v0, p2, v1}, Lcom/vuitton/android/presentation/screen/connectivity/views/divider/MiddleDividersItemDecoration;-><init>(Landroid/graphics/drawable/Drawable;Lcom/vuitton/android/presentation/screen/connectivity/views/divider/MiddleDividersItemDecoration$ListType;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseListBottomSheet;->O:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-eqz p0, :cond_3

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseListAdapter;

    invoke-direct {p0, p2}, Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseListAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_3
    return-void
.end method
