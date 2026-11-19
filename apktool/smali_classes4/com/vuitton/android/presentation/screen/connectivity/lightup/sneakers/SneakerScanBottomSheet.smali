.class public final Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanBottomSheet;
.super Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/Hilt_SneakerScanBottomSheet;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanBottomSheet$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u0001:\u0001\u000bB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanBottomSheet;",
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
.field public static final O:Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanBottomSheet$Companion;

.field public static final P:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanBottomSheet$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanBottomSheet$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanBottomSheet;->O:Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanBottomSheet$Companion;

    const-string v0, "SneakerScanBottomSheet"

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanBottomSheet;->P:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0d0064

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/Hilt_SneakerScanBottomSheet;-><init>(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseBottomSheet;->U(Z)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseBottomSheet;->T(Z)V

    return-void
.end method


# virtual methods
.method public final V(Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;Z)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->d()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;->L:Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;->N:Ljava/lang/String;

    const v1, 0x7f0a0204

    invoke-virtual {p0, v1, p1, v0}, Landroidx/fragment/app/FragmentTransaction;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentTransaction;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->e()I

    return-void
.end method

.method public final W(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->f()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    new-instance v1, Lgy0;

    const/4 v2, 0x1

    invoke-direct {v1, p1, p2, v2}, Lgy0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const-string p1, "TUTORIAL"

    invoke-virtual {v0, p1, p0, v1}, Landroidx/fragment/app/FragmentManager;->j0(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    return-void
.end method

.method public final X()V
    .locals 4

    new-instance v0, Lxz0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lxz0;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanBottomSheet;I)V

    new-instance v2, Lxz0;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Lxz0;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanBottomSheet;I)V

    invoke-virtual {p0, v0, v2}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanBottomSheet;->W(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;->L:Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment$Companion;

    const v2, 0x7f140b47

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0x7f140b45

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f080364

    invoke-static {v1, v0, v2, v3}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment$Companion;->a(IILjava/lang/String;Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanBottomSheet;->V(Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseBottomSheet;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance p1, Lxz0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lxz0;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanBottomSheet;I)V

    new-instance v0, Lxz0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lxz0;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanBottomSheet;I)V

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanBottomSheet;->W(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;->L:Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment$Companion;

    const v0, 0x7f140b46

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x7f140b44

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p1, 0x7f080363

    invoke-static {v1, p1, v0, v2}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment$Companion;->a(IILjava/lang/String;Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanBottomSheet;->V(Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanTutorialScreenFragment;Z)V

    return-void
.end method
