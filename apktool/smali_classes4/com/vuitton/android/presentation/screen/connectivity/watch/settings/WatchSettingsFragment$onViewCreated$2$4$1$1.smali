.class public final Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment$onViewCreated$2$4$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$OnPositiveClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment$onViewCreated$2$4$1$1",
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
.field public final synthetic a:Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;

.field public final synthetic b:Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment$onViewCreated$2$4$1$1;->a:Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment$onViewCreated$2$4$1$1;->b:Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment$onViewCreated$2$4$1$1;->a:Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;->e:Lcom/vuitton/android/presentation/databinding/ProgressOverlayBinding;

    iget-object v1, v0, Lcom/vuitton/android/presentation/databinding/ProgressOverlayBinding;->b:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/ProgressOverlayBinding;->b:Landroid/widget/FrameLayout;

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->J:Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment$Companion;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment$onViewCreated$2$4$1$1;->b:Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->R()Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchUiModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchUiModel;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->Q()Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel;

    move-result-object p0

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel$unpairWatch$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel$unpairWatch$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel;Lkotlin/coroutines/Continuation;)V

    new-instance v3, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel$unpairWatch$2;

    invoke-direct {v3, p0, v0, v2}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel$unpairWatch$2;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x2

    invoke-static {p0, v1, v3, v0}, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;->Bc(Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;I)V

    :cond_0
    return-void
.end method
