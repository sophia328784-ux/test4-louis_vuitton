.class public final synthetic Lf61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;I)V
    .locals 0

    iput p2, p0, Lf61;->b:I

    iput-object p1, p0, Lf61;->c:Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lf61;->b:I

    const/4 v1, -0x1

    const v2, 0x7f140967

    const v3, 0x1020002

    iget-object p0, p0, Lf61;->c:Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->J:Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, v2, v1}, Lcom/google/android/material/snackbar/Snackbar;->f(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->h()V

    return-void

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->J:Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, v2, v1}, Lcom/google/android/material/snackbar/Snackbar;->f(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->h()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
