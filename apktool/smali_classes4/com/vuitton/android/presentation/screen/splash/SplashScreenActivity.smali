.class public final Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;
.super Lcom/vuitton/android/presentation/screen/splash/Hilt_SplashScreenActivity;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screenshaker/ShakeListener;


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$OverrideActivityTransition;,
        Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0005B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u000c\u00b2\u0006\u000c\u0010\u0007\u001a\u00020\u00068\nX\u008a\u0084\u0002\u00b2\u0006\u000e\u0010\t\u001a\u0004\u0018\u00010\u00088\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u000b\u001a\u00020\n8\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Lcom/vuitton/android/presentation/screenshaker/ShakeListener;",
        "<init>",
        "()V",
        "OverrideActivityTransition",
        "",
        "isAnimationFinished",
        "Lcom/airbnb/lottie/LottieComposition;",
        "loaderComposition",
        "",
        "progress",
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
.field public l:Lcom/vuitton/foundation/logger/Logger;

.field public m:Lcom/vuitton/android/presentation/screen/splash/AutomatedTestConfigParserProdImpl;

.field public final n:Landroidx/lifecycle/ViewModelLazy;

.field public o:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

.field public p:Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/splash/Hilt_SplashScreenActivity;-><init>()V

    new-instance v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    const-class v2, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;

    sget-object v3, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v3, v2}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$special$$inlined$viewModels$default$2;

    invoke-direct {v3, p0}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v4, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$special$$inlined$viewModels$default$3;

    const/4 v5, 0x0

    invoke-direct {v4, v5, p0}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;->n:Landroidx/lifecycle/ViewModelLazy;

    return-void
.end method


# virtual methods
.method public final B()Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModel;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;->n:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModel;

    return-object p0
.end method

.method public final D(Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;->B()Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModel;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/vuitton/android/presentation/extensions/ActivityExtKt;->c(Landroid/content/Intent;)Lcom/batch/android/BatchPushPayload;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/batch/android/BatchPushPayload;->getDeeplink()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v3

    :goto_1
    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;->m:Lcom/vuitton/android/presentation/screen/splash/AutomatedTestConfigParserProdImpl;

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v1, v3}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModel;->eb(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/splash/AutomatedTestConfig;)V

    invoke-static {p1}, Lcom/vuitton/android/presentation/extensions/ActivityExtKt;->c(Landroid/content/Intent;)Lcom/batch/android/BatchPushPayload;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;->p:Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;

    if-eqz p0, :cond_4

    sget-object p1, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$OpenFromPushNotification;->c:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$OpenFromPushNotification;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;->a(Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;)V

    return-void

    :cond_4
    const-string p0, "appsFlyerUiTracker"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v3

    :cond_5
    return-void

    :cond_6
    const-string p0, "automatedTestConfigParser"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v3
.end method

.method public final E(Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$OverrideActivityTransition;)V
    .locals 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    const v2, 0x7f010020

    const v3, 0x7f01001f

    const/4 v4, 0x2

    const v5, 0x7f010035

    const/4 v6, 0x1

    if-ge v0, v1, :cond_2

    sget-object v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v6, :cond_1

    if-ne p1, v4, :cond_0

    invoke-virtual {p0, v3, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_1
    invoke-virtual {p0, v5, v5}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void

    :cond_2
    sget-object v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    if-eq p1, v6, :cond_4

    if-ne p1, v4, :cond_3

    invoke-virtual {p0, v6, v3, v2, v0}, Landroid/app/Activity;->overrideActivityTransition(IIII)V

    return-void

    :cond_3
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_4
    invoke-virtual {p0, v6, v5, v5, v0}, Landroid/app/Activity;->overrideActivityTransition(IIII)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/vuitton/android/presentation/screen/splash/Hilt_SplashScreenActivity;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/vuitton/android/core/type/SystemIcons;->b:Lcom/vuitton/android/core/type/SystemIcons$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/vuitton/android/core/type/SystemIcons;->c:Z

    invoke-static {p0, p1, p1}, Lcom/vuitton/android/presentation/compose/components/EdgeToEdgeKt;->a(Landroidx/activity/ComponentActivity;ZZ)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;->o:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object p1

    sget-object v1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivityKt;->a:Ljava/time/LocalDate;

    invoke-virtual {p1, v1}, Ljava/time/LocalDate;->isBefore(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivityKt;->b:Ljava/time/LocalDate;

    invoke-virtual {p1, v1}, Ljava/time/LocalDate;->isAfter(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f130038

    goto :goto_0

    :cond_0
    const p1, 0x7f130039

    :goto_0
    new-instance v1, Ln01;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Ln01;-><init>(ILcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;I)V

    new-instance p1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v2, -0x6a4e5b44

    const/4 v3, 0x1

    invoke-direct {p1, v2, v3, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {p0, p1}, Landroidx/activity/compose/ComponentActivityKt;->a(Landroidx/activity/ComponentActivity;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    invoke-static {p0}, Lcom/vuitton/android/presentation/extensions/ActivityViewTreeExtKt;->a(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;->B()Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModel;->wa()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;->B()Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModel;->x3()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$onCreate$2;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v0}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v3, p1, v1, v2}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    new-instance p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$onCreate$$inlined$filter$1;

    invoke-direct {p1, v3}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$onCreate$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$onCreate$4;

    invoke-direct {v1, p0, v0}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$onCreate$4;-><init>(Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;Lkotlin/coroutines/Continuation;)V

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {v0, p1, v1}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->a(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlinx/coroutines/flow/FlowKt;->u(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;->D(Landroid/content/Intent;)V

    return-void

    :cond_1
    const-string p0, "shakeSensorManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v0
.end method

.method public final onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/vuitton/android/presentation/screen/splash/Hilt_SplashScreenActivity;->onDestroy()V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;->o:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "shakeSensorManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;->D(Landroid/content/Intent;)V

    return-void
.end method
