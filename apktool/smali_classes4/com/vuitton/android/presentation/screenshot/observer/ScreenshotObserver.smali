.class public final Lcom/vuitton/android/presentation/screenshot/observer/ScreenshotObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screenshot/observer/ScreenshotObserver;",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "Landroidx/activity/ComponentActivity;",
        "activity",
        "Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModel;",
        "viewModel",
        "Lkotlin/Function0;",
        "",
        "onScreenshotTaken",
        "<init>",
        "(Landroidx/activity/ComponentActivity;Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModel;Lkotlin/jvm/functions/Function0;)V",
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
.field public final b:Landroidx/activity/ComponentActivity;

.field public final c:Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModel;

.field public final d:Lkotlin/jvm/functions/Function0;

.field public final e:Ljava/lang/String;

.field public final f:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroidx/activity/ComponentActivity;Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModel;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/ComponentActivity;",
            "Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModel;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screenshot/observer/ScreenshotObserver;->b:Landroidx/activity/ComponentActivity;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screenshot/observer/ScreenshotObserver;->c:Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModel;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screenshot/observer/ScreenshotObserver;->d:Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screenshot/observer/ScreenshotObserver;->e:Ljava/lang/String;

    new-instance p1, Lxn0;

    const/16 p2, 0x18

    invoke-direct {p1, p0, p2}, Lxn0;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screenshot/observer/ScreenshotObserver;->f:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x22

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/vuitton/android/presentation/screenshot/observer/ScreenshotObserver;->f:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lct0;->a(Ljava/lang/Object;)Landroid/app/Activity$ScreenCaptureCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screenshot/observer/ScreenshotObserver;->b:Landroidx/activity/ComponentActivity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->unregisterScreenCaptureCallback(Landroid/app/Activity$ScreenCaptureCallback;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/vuitton/android/presentation/screenshot/observer/ScreenshotObserver;->c:Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screenshot/observer/ScreenshotObserver;->e:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModel;->R7(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public final onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_1

    iget-object p1, p0, Lcom/vuitton/android/presentation/screenshot/observer/ScreenshotObserver;->f:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lct0;->a(Ljava/lang/Object;)Landroid/app/Activity$ScreenCaptureCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screenshot/observer/ScreenshotObserver;->b:Landroidx/activity/ComponentActivity;

    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->registerScreenCaptureCallback(Ljava/util/concurrent/Executor;Landroid/app/Activity$ScreenCaptureCallback;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->a(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object p1

    new-instance v0, Lcom/vuitton/android/presentation/screenshot/observer/ScreenshotObserver$onResume$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vuitton/android/presentation/screenshot/observer/ScreenshotObserver$onResume$2;-><init>(Lcom/vuitton/android/presentation/screenshot/observer/ScreenshotObserver;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v1, v1, v0, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
