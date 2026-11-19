.class public final synthetic Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/a;->b:Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/a;->c:Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    sget-object p3, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->J:Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment$Companion;

    const/4 p3, 0x6

    const/4 v0, 0x0

    if-ne p2, p3, :cond_1

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/a;->b:Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;

    iget-object p2, p2, Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;->e:Lcom/vuitton/android/presentation/databinding/ProgressOverlayBinding;

    iget-object p2, p2, Lcom/vuitton/android/presentation/databinding/ProgressOverlayBinding;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/a;->c:Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->R()Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchUiModel;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchUiModel;->b:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->Q()Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel;

    move-result-object p0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p3

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel$renameWatch$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel$renameWatch$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p3, v1, v1, v0, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method
