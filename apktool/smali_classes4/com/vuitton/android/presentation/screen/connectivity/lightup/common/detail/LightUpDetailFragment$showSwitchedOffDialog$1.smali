.class public final Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$showSwitchedOffDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$OnPositiveClickListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$showSwitchedOffDialog$1",
        "Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$OnPositiveClickListener;",
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


# instance fields
.field public final synthetic a:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$showSwitchedOffDialog$1;->a:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$showSwitchedOffDialog$1;->a:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->b0()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;->H()V

    :cond_1
    return-void
.end method
