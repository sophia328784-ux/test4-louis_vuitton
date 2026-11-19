.class public final Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl$registerObserver$contentObserver$1;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl$registerObserver$contentObserver$1",
        "Landroid/database/ContentObserver;",
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
.field public final synthetic a:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic b:Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl$registerObserver$contentObserver$1;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl$registerObserver$contentObserver$1;->b:Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl$registerObserver$contentObserver$1;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p2, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl$registerObserver$contentObserver$1;->b:Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    new-instance p2, Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl$registerObserver$contentObserver$1$onChange$1;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl$registerObserver$contentObserver$1$onChange$1;-><init>(Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    invoke-static {p1, v0, v0, p2, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl;->c:Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method
