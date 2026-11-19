.class public final Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/PowerManagementBottomSheet;
.super Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/Hilt_PowerManagementBottomSheet;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/PowerManagementBottomSheet$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u0001:\u0001\u000bB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/PowerManagementBottomSheet;",
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
.field public static final S:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/PowerManagementBottomSheet$Companion;

.field public static final synthetic T:[Lkotlin/reflect/KProperty;

.field public static final V:Ljava/lang/String;


# instance fields
.field public final O:Lkotlin/Lazy;

.field public final P:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

.field public Q:Ljava/util/ArrayList;

.field public R:Lkotlin/jvm/functions/Function2;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/PowerManagementBottomSheet;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentListViewBottomSheetBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->h(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    aput-object v0, v1, v4

    sput-object v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/PowerManagementBottomSheet;->T:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/PowerManagementBottomSheet$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/PowerManagementBottomSheet$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/PowerManagementBottomSheet;->S:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/PowerManagementBottomSheet$Companion;

    const-string v0, "PowerManagementBottomSheet"

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/PowerManagementBottomSheet;->V:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const v0, 0x7f0d0073

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/Hilt_PowerManagementBottomSheet;-><init>(I)V

    new-instance v0, Lxn0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lxn0;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/PowerManagementBottomSheet;->O:Lkotlin/Lazy;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/PowerManagementBottomSheet$binding$2;->b:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/PowerManagementBottomSheet$binding$2;

    invoke-static {p0, v0}, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;->d(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/PowerManagementBottomSheet;->P:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    new-instance v0, Laj0;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Laj0;-><init>(I)V

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/PowerManagementBottomSheet;->R:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public static V(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/PowerManagementBottomSheet;)Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    const-string v3, "LIGHT_UP_SELECTED_MODE"

    if-lt v1, v2, :cond_0

    const-class v0, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    invoke-virtual {p0, v3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    instance-of v1, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    move-object p0, v0

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    :goto_1
    move-object v0, p0

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseBottomSheet;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "LIGHT_UP_MODE_LIST"

    if-lt v0, v1, :cond_0

    const-class v0, Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    instance-of v0, p1, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    move-object p1, p2

    :cond_1
    check-cast p1, Ljava/util/ArrayList;

    :goto_0
    check-cast p1, Ljava/util/ArrayList;

    goto :goto_1

    :cond_2
    move-object p1, p2

    :goto_1
    if-eqz p1, :cond_3

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/PowerManagementBottomSheet;->Q:Ljava/util/ArrayList;

    :cond_3
    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/PowerManagementBottomSheet;->T:[Lkotlin/reflect/KProperty;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/PowerManagementBottomSheet;->P:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    invoke-virtual {v0, p0, p1}, Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;->c(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KProperty;)Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/databinding/FragmentListViewBottomSheetBinding;

    iget-object v0, p1, Lcom/vuitton/android/presentation/databinding/FragmentListViewBottomSheetBinding;->b:Lcom/vuitton/android/presentation/databinding/ReusableBottomSheetTitleLayoutBinding;

    iget-object v1, v0, Lcom/vuitton/android/presentation/databinding/ReusableBottomSheetTitleLayoutBinding;->d:Landroid/widget/TextView;

    const v2, 0x7f140b41

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/ReusableBottomSheetTitleLayoutBinding;->c:Landroid/widget/ImageView;

    new-instance v1, Lhi;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lhi;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/FragmentListViewBottomSheetBinding;->c:Landroid/widget/ListView;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/PowerManagementAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/PowerManagementBottomSheet;->O:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/PowerManagementBottomSheet;->Q:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    new-instance p2, Lll0;

    invoke-direct {p2, p0, v2}, Lll0;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1, v3, v4, p2}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/PowerManagementAdapter;-><init>(Landroid/content/Context;Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;Ljava/util/ArrayList;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_4
    const-string p0, "modeList"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw p2
.end method
