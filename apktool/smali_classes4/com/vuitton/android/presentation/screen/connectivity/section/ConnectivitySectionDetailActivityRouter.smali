.class public final Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailActivityRouter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\t\u0008\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailActivityRouter;",
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

.method public static a(Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategoryType;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity;->s:Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "FAQ_CATEGORY_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static b(Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialType;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->d()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f010035

    const v2, 0x7f01003a

    const v3, 0x7f010037

    const v4, 0x7f010020

    invoke-virtual {v0, v3, v4, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->n(IIII)V

    sget-object v1, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment;->I:Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment;

    invoke-direct {v1}, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "TUTORIAL_TYPE"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment;->K:Ljava/lang/String;

    const/4 v2, 0x1

    const v3, 0x7f0a0204

    invoke-virtual {v0, v3, v1, p1, v2}, Landroidx/fragment/app/FragmentTransaction;->i(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->d(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/extensions/FragmentTransactionExtKt;->a(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->e()I

    :cond_0
    return-void
.end method

.method public static c(Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/screen/connectivity/VideoUiModel;Lcom/vuitton/android/presentation/utils/TrackingFrom;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_1

    sget-object v0, Lcom/vuitton/android/presentation/screen/video/VideoActivity;->m:Lcom/vuitton/android/presentation/screen/video/VideoActivity$Companion;

    if-nez p2, :cond_0

    new-instance p2, Lcom/vuitton/android/presentation/utils/TrackingFrom;

    const-string v1, "LVPass/IoT"

    const-string v2, "IoT"

    invoke-direct {p2, v1, v2}, Lcom/vuitton/android/presentation/utils/TrackingFrom;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/connectivity/VideoUiModel;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/connectivity/VideoUiModel;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p2, v1, p1, p3}, Lcom/vuitton/android/presentation/screen/video/VideoActivity$Companion;->b(Landroid/content/Context;Lcom/vuitton/android/presentation/utils/TrackingFrom;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
