.class public final Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModel;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModel;",
        "Landroid/app/Application;",
        "application",
        "<init>",
        "(Landroid/app/Application;)V",
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
.field public final b:Landroid/app/Application;

.field public c:Lkotlinx/coroutines/Job;

.field public final d:Ljava/util/LinkedHashMap;

.field public e:Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl$registerObserver$contentObserver$1;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl;->b:Landroid/app/Application;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl;->d:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static final yc(Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl$notifySubscribers$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl$notifySubscribers$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl$notifySubscribers$1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl$notifySubscribers$1;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl$notifySubscribers$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl$notifySubscribers$1;-><init>(Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl$notifySubscribers$1;->d:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl$notifySubscribers$1;->f:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p0, v0, Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl$notifySubscribers$1;->c:I

    iget-object v2, v0, Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl$notifySubscribers$1;->b:Ljava/util/Iterator;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    move-object v2, p0

    move p0, p1

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/flow/MutableSharedFlow;

    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    iput-object v2, v0, Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl$notifySubscribers$1;->b:Ljava/util/Iterator;

    iput p0, v0, Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl$notifySubscribers$1;->c:I

    iput v3, v0, Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl$notifySubscribers$1;->f:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/flow/MutableSharedFlow;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final R7(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl;->e:Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl$registerObserver$contentObserver$1;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl;->b:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl;->e:Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl$registerObserver$contentObserver$1;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl;->d:Ljava/util/LinkedHashMap;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl;->c:Lkotlinx/coroutines/Job;

    if-eqz p0, :cond_1

    invoke-interface {p0, v0}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_1
    return-void
.end method

.method public final d3(Ljava/lang/String;)Lkotlinx/coroutines/flow/SharedFlow;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl;->e:Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl$registerObserver$contentObserver$1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl;->b:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl$registerObserver$contentObserver$1;

    invoke-direct {v3, v1, p0, v2}, Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl$registerObserver$contentObserver$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl;Landroid/os/Handler;)V

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iput-object v3, p0, Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl;->e:Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl$registerObserver$contentObserver$1;

    :cond_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v1, v2, v0}, Lkotlinx/coroutines/flow/SharedFlowKt;->b(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    check-cast v0, Lkotlinx/coroutines/flow/SharedFlow;

    return-object v0
.end method
