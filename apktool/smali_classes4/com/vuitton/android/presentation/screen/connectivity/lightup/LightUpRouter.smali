.class public final Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpRouter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpRouter$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\t\u0008\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpRouter;",
        "",
        "<init>",
        "()V",
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


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;)V
    .locals 4

    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;->c:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;

    sget-object v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpRouter$WhenMappings;->b:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const-string v2, "LIGHT_UP_PRODUCT"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerDetailFragment;->Z:Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerDetailFragment$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerDetailFragment;->t0:Ljava/lang/String;

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerDetailFragment;

    invoke-direct {v1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerDetailFragment;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllDetailFragment;->Y:Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllDetailFragment$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllDetailFragment;->h0:Ljava/lang/String;

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllDetailFragment;

    invoke-direct {v1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllDetailFragment;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->d()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const p1, 0x7f0a0204

    invoke-virtual {p0, p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->e()I

    :cond_2
    return-void
.end method
