.class public final Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity;
.super Lcom/vuitton/android/presentation/screen/deeplink/Hilt_DeepLinkDispatcherActivity;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "Companion",
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


# static fields
.field public static final synthetic q:I


# instance fields
.field public l:Lcom/vuitton/android/presentation/link/parsing/LinkParser;

.field public m:Lcom/vuitton/android/presentation/link/navigation/LinkNavigator;

.field public n:Lcom/vuitton/android/presentation/link/parsing/WarmStartLinkExclusionPolicy;

.field public o:Lcom/vuitton/foundation/logger/Logger;

.field public final p:Landroidx/lifecycle/ViewModelLazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/deeplink/Hilt_DeepLinkDispatcherActivity;-><init>()V

    new-instance v0, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    const-class v2, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel;

    sget-object v3, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v3, v2}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity$special$$inlined$viewModels$default$2;

    invoke-direct {v3, p0}, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v4, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity$special$$inlined$viewModels$default$3;

    const/4 v5, 0x0

    invoke-direct {v4, v5, p0}, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity;->p:Landroidx/lifecycle/ViewModelLazy;

    return-void
.end method


# virtual methods
.method public final B(Ljava/lang/Class;)Landroid/content/Intent;
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    const/high16 p0, 0x10000000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public final D()Lcom/vuitton/foundation/logger/Logger;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity;->o:Lcom/vuitton/foundation/logger/Logger;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "logger"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final E()V
    .locals 7

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity;->D()Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AppsFlyerLib;->sendPushNotificationData(Landroid/app/Activity;)V

    new-instance v0, Lw1;

    const/16 v1, 0x1d

    invoke-direct {v0, p0, v1}, Lw1;-><init>(Ljava/lang/Object;I)V

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_3

    :cond_0
    :try_start_0
    sget-object v3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Ljava/lang/Iterable;

    instance-of v3, v1, Ljava/util/Collection;

    if-eqz v3, :cond_2

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$AppTask;

    invoke-virtual {v3}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, v3, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-class v4, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v3, Lkotlin/Result$Failure;

    invoke-direct {v3, v1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v1, v3

    :goto_2
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v4, v1, Lkotlin/Result$Failure;

    if-eqz v4, :cond_4

    move-object v1, v3

    :cond_4
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_3
    if-eqz v1, :cond_a

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v3, v1, Lcom/vuitton/android/domain/repository/AppInitializationStateHolder;

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    check-cast v1, Lcom/vuitton/android/domain/repository/AppInitializationStateHolder;

    goto :goto_4

    :cond_5
    move-object v1, v4

    :goto_4
    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity;->D()Lcom/vuitton/foundation/logger/Logger;

    move-result-object v3

    const-string v5, "DeepLinkDispatcherActivity"

    const-string v6, "Application does not implement AppInitializationStateHolder, defaulting to cold start."

    invoke-interface {v3, v5, v6, v4}, Lcom/vuitton/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    if-eqz v1, :cond_7

    invoke-interface {v1}, Lcom/vuitton/android/domain/repository/AppInitializationStateHolder;->d()Z

    move-result v2

    :cond_7
    if-eqz v2, :cond_a

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity;->D()Lcom/vuitton/foundation/logger/Logger;

    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->a(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v2

    new-instance v3, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity$handleWarmStart$1;

    invoke-direct {v3, p0, v1, v0, v4}, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity$handleWarmStart$1;-><init>(Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity;Ljava/lang/String;Lw1;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v2, v4, v4, v3, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    goto :goto_6

    :cond_9
    :goto_5
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity;->D()Lcom/vuitton/foundation/logger/Logger;

    const-class v1, Lcom/vuitton/android/presentation/screen/main/MainActivity;

    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity;->B(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v0}, Lw1;->invoke()Ljava/lang/Object;

    goto :goto_6

    :cond_a
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity;->D()Lcom/vuitton/foundation/logger/Logger;

    const-class v1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;

    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity;->B(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v0}, Lw1;->invoke()Ljava/lang/Object;

    :goto_6
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/vuitton/android/presentation/screen/deeplink/Hilt_DeepLinkDispatcherActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity;->E()V

    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity;->E()V

    return-void
.end method
