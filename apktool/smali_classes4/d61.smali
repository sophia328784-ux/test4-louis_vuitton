.class public final synthetic Ld61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;I)V
    .locals 0

    iput p2, p0, Ld61;->b:I

    iput-object p1, p0, Ld61;->c:Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Ld61;->b:I

    const-string v1, "watchActivityRouter"

    iget-object p0, p0, Ld61;->c:Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;

    const/4 v2, 0x0

    check-cast p1, Landroid/view/View;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->J:Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of v0, p1, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->I:Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchActivityRouter;

    if-eqz p0, :cond_1

    sget-object p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity;->t:Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity$Companion;

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;->WATCH_FAQ:Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity$Companion;->a(Landroid/content/Context;Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->J:Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of v0, p1, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_3

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_2

    :cond_3
    move-object p1, v2

    :goto_2
    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->I:Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchActivityRouter;

    if-eqz p0, :cond_4

    sget-object p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/WatchTutorialsActivity;->q:Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/WatchTutorialsActivity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/content/Intent;

    const-class v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/WatchTutorialsActivity;

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :cond_5
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
