.class public final Lcom/vuitton/android/presentation/LVApplication$registerLifecycleCallbacks$2;
.super Lcom/vuitton/android/platform/activity/DefaultActivityLifecycleCallbacksAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/LVApplication$registerLifecycleCallbacks$2",
        "Lcom/vuitton/android/platform/activity/DefaultActivityLifecycleCallbacksAdapter;",
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
.field public final synthetic b:Lcom/vuitton/android/presentation/LVApplication;

.field public final synthetic c:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/LVApplication;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/LVApplication$registerLifecycleCallbacks$2;->b:Lcom/vuitton/android/presentation/LVApplication;

    iput-object p2, p0, Lcom/vuitton/android/presentation/LVApplication$registerLifecycleCallbacks$2;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p0}, Lcom/vuitton/android/platform/activity/DefaultActivityLifecycleCallbacksAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/vuitton/android/presentation/LVApplication;->t:Lcom/vuitton/android/presentation/LVApplication$Companion;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "com.chuckerteam.chucker"

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p2

    if-nez p2, :cond_2

    instance-of p2, p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;

    if-nez p2, :cond_2

    instance-of p2, p1, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity;

    if-nez p2, :cond_2

    instance-of p2, p1, Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceActivity;

    if-nez p2, :cond_2

    instance-of p2, p1, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryActivity;

    if-nez p2, :cond_2

    instance-of p2, p1, Lcom/vuitton/android/presentation/screen/forceupdate/ForceUpdateActivity;

    if-nez p2, :cond_2

    instance-of p2, p1, Lcom/batch/android/BatchActionActivity;

    if-nez p2, :cond_2

    instance-of p2, p1, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerDebugActivity;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/LVApplication$registerLifecycleCallbacks$2;->b:Lcom/vuitton/android/presentation/LVApplication;

    iget-boolean p2, p0, Lcom/vuitton/android/presentation/LVApplication;->d:Z

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/vuitton/android/presentation/LVApplication;->g:Lcom/vuitton/foundation/logger/Logger;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    sget-object v1, Lcom/vuitton/android/presentation/LVApplication;->u:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Missing app initialization, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " can not be started. App will restart."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v1, p1, v0}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/LVApplication;->h()V

    return-void

    :cond_1
    const-string p0, "logger"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vuitton/android/presentation/LVApplication$registerLifecycleCallbacks$2;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object p0, p0, Lcom/vuitton/android/presentation/LVApplication$registerLifecycleCallbacks$2;->b:Lcom/vuitton/android/presentation/LVApplication;

    if-nez v0, :cond_2

    iget-boolean v0, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService;->i:Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$Companion;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-static {v3, v0}, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$Companion;->a(Landroid/content/Context;Z)V

    :cond_0
    sget-object v0, Lcom/vuitton/android/presentation/servicerecovery/RecoveryToolForService;->g:Lcom/vuitton/android/presentation/servicerecovery/RecoveryToolForService$Companion;

    iget-object v3, p0, Lcom/vuitton/android/presentation/LVApplication;->g:Lcom/vuitton/foundation/logger/Logger;

    if-eqz v3, :cond_1

    iget-boolean v4, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->b:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Lcom/vuitton/android/presentation/servicerecovery/RecoveryToolForService;

    :try_start_0
    sget-object v5, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v5}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "EXTRA_IS_APP_COMING_FROM_BACKGROUND"

    invoke-virtual {v5, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v4, Lkotlin/Result$Failure;

    invoke-direct {v4, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v4

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v4, "RecoveryToolForService"

    const-string v5, "Failed to start service"

    invoke-interface {v3, v4, v5, v0}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    const-string p0, "logger"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/vuitton/android/presentation/LVApplication;->i:Lcom/vuitton/android/platform/security/RootDetector;

    if-eqz p0, :cond_5

    invoke-static {p0}, Lcom/vuitton/android/presentation/utils/RootTool;->a(Lcom/vuitton/android/platform/security/RootDetector;)Z

    move-result p0

    if-nez p0, :cond_4

    instance-of p0, p1, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz p0, :cond_3

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_2

    :cond_3
    move-object p1, v1

    :goto_2
    if-eqz p1, :cond_4

    sget-object p0, Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;->R:Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$Companion;

    const v0, 0x7f1402f2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0x7f140ec5

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f1402f3

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1, v3, v4}, Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$Companion;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;

    move-result-object p0

    new-instance v0, Lcom/vuitton/android/presentation/utils/RootTool$displayUnSecureDialog$1$1;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/utils/RootTool$displayUnSecureDialog$1$1;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    iput-object v0, p0, Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;->O:Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$OnPositiveClickListener;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    sget-object v0, Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;->S:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_4
    const/4 p0, 0x0

    iput-boolean p0, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->b:Z

    return-void

    :cond_5
    const-string p0, "rootDetector"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1
.end method
