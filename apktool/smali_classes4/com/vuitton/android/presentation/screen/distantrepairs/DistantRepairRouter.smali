.class public final Lcom/vuitton/android/presentation/screen/distantrepairs/DistantRepairRouter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\t\u0008\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/distantrepairs/DistantRepairRouter;",
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

.method public static a(Landroidx/fragment/app/FragmentActivity;)V
    .locals 5

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->d()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f010037

    const v2, 0x7f01003a

    invoke-virtual {v0, v1, v2, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->n(IIII)V

    sget-object v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentTermsFragment;->F:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentTermsFragment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentTermsFragment;

    invoke-direct {v1}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentTermsFragment;-><init>()V

    sget-object v2, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentTermsFragment;->G:Ljava/lang/String;

    const/4 v3, 0x1

    const v4, 0x7f0a0204

    invoke-virtual {v0, v4, v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->i(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentTransaction;->d(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/extensions/FragmentTransactionExtKt;->a(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->e()I

    :cond_0
    return-void
.end method

.method public static b(Landroidx/fragment/app/FragmentActivity;)V
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentManager;->Y(II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/RepairActivity;->t:Lcom/vuitton/android/presentation/screen/repairs/RepairActivity$Companion;

    const/4 v1, 0x6

    invoke-static {v0, p0, v1}, Lcom/vuitton/android/presentation/screen/repairs/RepairActivity$Companion;->b(Lcom/vuitton/android/presentation/screen/repairs/RepairActivity$Companion;Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
