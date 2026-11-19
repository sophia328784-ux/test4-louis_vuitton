.class public final Lcom/vuitton/android/presentation/screen/connectivity/home/WatchVersionChooserBottomSheet;
.super Lcom/vuitton/android/presentation/screen/connectivity/home/Hilt_WatchVersionChooserBottomSheet;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/connectivity/home/WatchVersionChooserBottomSheet$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u0001:\u0001\u000bB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/home/WatchVersionChooserBottomSheet;",
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
.field public static final Q:Lcom/vuitton/android/presentation/screen/connectivity/home/WatchVersionChooserBottomSheet$Companion;

.field public static final synthetic R:[Lkotlin/reflect/KProperty;

.field public static final S:Ljava/lang/String;


# instance fields
.field public O:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityRouter;

.field public final P:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v1, Lcom/vuitton/android/presentation/screen/connectivity/home/WatchVersionChooserBottomSheet;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentWatchVersionChooserBottomSheetBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->h(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    aput-object v0, v1, v4

    sput-object v1, Lcom/vuitton/android/presentation/screen/connectivity/home/WatchVersionChooserBottomSheet;->R:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/home/WatchVersionChooserBottomSheet$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/home/WatchVersionChooserBottomSheet$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/home/WatchVersionChooserBottomSheet;->Q:Lcom/vuitton/android/presentation/screen/connectivity/home/WatchVersionChooserBottomSheet$Companion;

    const-string v0, "WatchVersionChooserBottomSheet"

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/home/WatchVersionChooserBottomSheet;->S:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0d008d

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/home/Hilt_WatchVersionChooserBottomSheet;-><init>(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseBottomSheet;->T(Z)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseBottomSheet;->U(Z)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/home/WatchVersionChooserBottomSheet$binding$2;->b:Lcom/vuitton/android/presentation/screen/connectivity/home/WatchVersionChooserBottomSheet$binding$2;

    invoke-static {p0, v0}, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;->d(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/WatchVersionChooserBottomSheet;->P:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    return-void
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseBottomSheet;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/home/WatchVersionChooserBottomSheet;->R:[Lkotlin/reflect/KProperty;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/WatchVersionChooserBottomSheet;->P:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    invoke-virtual {v0, p0, p1}, Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;->c(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KProperty;)Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/databinding/FragmentWatchVersionChooserBottomSheetBinding;

    iget-object v0, p1, Lcom/vuitton/android/presentation/databinding/FragmentWatchVersionChooserBottomSheetBinding;->b:Lcom/vuitton/android/presentation/databinding/ReusableBottomSheetTitleLayoutBinding;

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/ReusableBottomSheetTitleLayoutBinding;->d:Landroid/widget/TextView;

    const v1, 0x7f141444

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/vuitton/android/presentation/databinding/FragmentWatchVersionChooserBottomSheetBinding;->c:Landroid/widget/LinearLayout;

    new-instance v1, Lg61;

    invoke-direct {v1, p0, p2}, Lg61;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/WatchVersionChooserBottomSheet;I)V

    invoke-static {v0, v1}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iget-object p2, p1, Lcom/vuitton/android/presentation/databinding/FragmentWatchVersionChooserBottomSheetBinding;->d:Landroid/widget/LinearLayout;

    new-instance v0, Lg61;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lg61;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/WatchVersionChooserBottomSheet;I)V

    invoke-static {p2, v0}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/FragmentWatchVersionChooserBottomSheetBinding;->b:Lcom/vuitton/android/presentation/databinding/ReusableBottomSheetTitleLayoutBinding;

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/ReusableBottomSheetTitleLayoutBinding;->c:Landroid/widget/ImageView;

    new-instance p2, Lg61;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Lg61;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/WatchVersionChooserBottomSheet;I)V

    invoke-static {p1, p2}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
