.class final Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver$listenToChatConsentEvents$1$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/vuitton/android/core/events/AppEvent;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "event",
        "Lcom/vuitton/android/core/events/AppEvent;"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.presentation.chat.ChatLifecycleObserver$listenToChatConsentEvents$1$1$2"
    f = "ChatLifecycleObserver.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

.field public final synthetic d:Landroidx/lifecycle/LifecycleOwner;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p2, p0, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver$listenToChatConsentEvents$1$1$2;->c:Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

    iput-object p1, p0, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver$listenToChatConsentEvents$1$1$2;->d:Landroidx/lifecycle/LifecycleOwner;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver$listenToChatConsentEvents$1$1$2;

    iget-object v1, p0, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver$listenToChatConsentEvents$1$1$2;->c:Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

    iget-object p0, p0, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver$listenToChatConsentEvents$1$1$2;->d:Landroidx/lifecycle/LifecycleOwner;

    invoke-direct {v0, p0, v1, p2}, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver$listenToChatConsentEvents$1$1$2;-><init>(Landroidx/lifecycle/LifecycleOwner;Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver$listenToChatConsentEvents$1$1$2;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/vuitton/android/core/events/AppEvent;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver$listenToChatConsentEvents$1$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver$listenToChatConsentEvents$1$1$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver$listenToChatConsentEvents$1$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver$listenToChatConsentEvents$1$1$2;->b:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/core/events/AppEvent;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    instance-of p1, v0, Lcom/vuitton/android/core/events/AppEvent$ChatConsentUpdatedEvent;

    if-eqz p1, :cond_1

    check-cast v0, Lcom/vuitton/android/core/events/AppEvent$ChatConsentUpdatedEvent;

    iget-boolean p1, v0, Lcom/vuitton/android/core/events/AppEvent$ChatConsentUpdatedEvent;->a:Z

    iget-object v0, p0, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver$listenToChatConsentEvents$1$1$2;->d:Landroidx/lifecycle/LifecycleOwner;

    iget-object p0, p0, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver$listenToChatConsentEvents$1$1$2;->c:Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;->c(Landroidx/lifecycle/LifecycleOwner;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;->a(Landroidx/lifecycle/LifecycleOwner;)V

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
