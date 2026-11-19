.class public final synthetic Lf31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lf31;->b:I

    iput-object p1, p0, Lf31;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lf31;->b:I

    const/4 v1, -0x1

    const v2, 0x7f140967

    const v3, 0x1020002

    iget-object p0, p0, Lf31;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/batch/android/r0/h;

    invoke-static {p0}, Lcom/batch/android/r0/h;->e(Lcom/batch/android/r0/h;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/g;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/g;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/g;->e:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "FPS: %.1f"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :pswitch_1
    check-cast p0, Lcom/batch/android/n0/e;

    invoke-static {p0}, Lcom/batch/android/n0/e;->e(Lcom/batch/android/n0/e;)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/batch/android/j1/d;

    invoke-static {p0}, Lcom/batch/android/j1/d;->a(Lcom/batch/android/j1/d;)V

    return-void

    :pswitch_3
    check-cast p0, Lcom/batch/android/e0/c;

    invoke-static {p0}, Lcom/batch/android/e0/c;->b(Lcom/batch/android/e0/c;)V

    return-void

    :pswitch_4
    check-cast p0, Lcom/batch/android/n0/c;

    invoke-static {p0}, Lcom/batch/android/n0/c;->n(Lcom/batch/android/n0/c;)V

    return-void

    :pswitch_5
    check-cast p0, Lcom/batch/android/m0/b;

    invoke-static {p0}, Lcom/batch/android/m0/b;->n(Lcom/batch/android/m0/b;)V

    return-void

    :pswitch_6
    check-cast p0, Lcom/batch/android/c0/b;

    invoke-virtual {p0}, Lcom/batch/android/c0/b;->m()V

    return-void

    :pswitch_7
    check-cast p0, Lcom/perfectcorp/common/network/DownloadTask;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/common/network/DownloadTask;->cancel(Z)Z

    return-void

    :pswitch_8
    check-cast p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;->d:Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;

    new-instance v1, Lln0;

    const/16 v2, 0x1c

    invoke-direct {v1, p0, v2}, Lln0;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;->c(Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;)Ljava/lang/Object;

    return-void

    :pswitch_9
    check-cast p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;

    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->n1:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, v2, v1}, Lcom/google/android/material/snackbar/Snackbar;->f(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->h()V

    return-void

    :pswitch_a
    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment;->K:Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationPagerFragment$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, v2, v1}, Lcom/google/android/material/snackbar/Snackbar;->f(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->h()V

    return-void

    :pswitch_b
    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesFragment;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesFragment;->I:Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesFragment$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, v2, v1}, Lcom/google/android/material/snackbar/Snackbar;->f(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->h()V

    return-void

    :pswitch_c
    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;->O:Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, v2, v1}, Lcom/google/android/material/snackbar/Snackbar;->f(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->h()V

    return-void

    :pswitch_d
    check-cast p0, Landroidx/camera/video/VideoCapture;

    sget-object v0, Landroidx/camera/video/VideoCapture;->F:Landroidx/camera/video/VideoCapture$Defaults;

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->q()V

    return-void

    :pswitch_e
    check-cast p0, Lcom/sightcall/universal/media/UploaderService;

    invoke-static {p0}, Lcom/sightcall/universal/media/UploaderService;->b(Lcom/sightcall/universal/media/UploaderService;)V

    return-void

    :pswitch_f
    check-cast p0, Lcom/sightcall/universal/scenario/steps/AcdCallStep;

    invoke-static {p0}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->x(Lcom/sightcall/universal/scenario/steps/AcdCallStep;)V

    return-void

    :pswitch_10
    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment;->I:Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialFragment$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, v2, v1}, Lcom/google/android/material/snackbar/Snackbar;->f(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->h()V

    return-void

    :pswitch_11
    check-cast p0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->n()V

    return-void

    :pswitch_12
    check-cast p0, Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
