.class public final synthetic Lr90;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;I)V
    .locals 0

    iput p2, p0, Lr90;->b:I

    iput-object p1, p0, Lr90;->c:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lr90;->b:I

    iget-object p0, p0, Lr90;->c:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;->t:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;->Q()Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lr90;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lr90;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;I)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->u()V

    :cond_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;->t:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;->Q()Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->b0()V

    :cond_1
    return-void

    :pswitch_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;->t:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity$Companion;

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const v0, 0x7f140982

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->f(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->h()V

    return-void

    :pswitch_2
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;->t:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;->Q()Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->D0()V

    :cond_2
    return-void

    :pswitch_3
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;->t:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;->Q()Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->o0()V

    :cond_3
    return-void

    :pswitch_4
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;->t:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;->Q()Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_4

    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerDetailFragment;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerDetailFragment;

    const v0, 0x7f141026

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->v0(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;Ljava/lang/String;)V

    :cond_4
    return-void

    :pswitch_5
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;->t:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;->Q()Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->y0()V

    :cond_5
    return-void

    :pswitch_6
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;->t:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;->Q()Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->l0()V

    :cond_6
    return-void

    :pswitch_7
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;->t:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->M()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/interfaces/LightUpScanFragmentInterface;

    if-eqz v1, :cond_7

    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/interfaces/LightUpScanFragmentInterface;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/interfaces/LightUpScanFragmentInterface;->A()V

    goto :goto_0

    :cond_8
    return-void

    :pswitch_8
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;->t:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;->Q()Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v1

    if-nez v1, :cond_9

    const v1, 0x7f140b36

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->A0(Ljava/lang/String;)V

    :cond_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
