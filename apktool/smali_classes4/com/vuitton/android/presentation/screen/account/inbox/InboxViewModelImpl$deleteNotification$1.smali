.class final Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$deleteNotification$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
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
    c = "com.vuitton.android.presentation.screen.account.inbox.InboxViewModelImpl$deleteNotification$1"
    f = "InboxViewModelImpl.kt"
    l = {
        0x74
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;

.field public d:Ljava/lang/String;

.field public e:I

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$deleteNotification$1;->f:Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$deleteNotification$1;->g:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$deleteNotification$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$deleteNotification$1;->f:Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$deleteNotification$1;->g:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$deleteNotification$1;-><init>(Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$deleteNotification$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$deleteNotification$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$deleteNotification$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$deleteNotification$1;->e:I

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$deleteNotification$1;->f:Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$deleteNotification$1;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$deleteNotification$1;->c:Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$deleteNotification$1;->b:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v3, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;->d:Lcom/vuitton/android/presentation/push/NotificationsManager;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$deleteNotification$1;->g:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/vuitton/android/presentation/push/NotificationsManager;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    sget-object v4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v4, p1, Lkotlin/Result$Failure;

    if-nez v4, :cond_5

    move-object v4, p1

    check-cast v4, Lkotlin/Unit;

    iget-wide v4, v3, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;->i:J

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$deleteNotification$1;->b:Ljava/lang/Object;

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$deleteNotification$1;->c:Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$deleteNotification$1;->d:Ljava/lang/String;

    iput v2, p0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$deleteNotification$1;->e:I

    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/DelayKt;->b(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    move-object p0, p1

    move-object v0, v1

    move-object v1, v3

    :goto_0
    sget-object p1, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxTrackingUIModel$NotificationDeleted;->a:Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxTrackingUIModel$NotificationDeleted;

    invoke-virtual {v1, p1}, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;->gc(Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxTrackingUIModel;)V

    iget-object p1, v1, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;->n:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;->a:Ljava/lang/String;

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-interface {p1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    move-object p1, p0

    :cond_5
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_6

    iget-object p1, v3, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;->c:Lcom/vuitton/foundation/logger/Logger;

    const-string v0, "InboxViewModelImpl"

    const-string v1, "Notification deletion failure"

    invoke-interface {p1, v0, v1, p0}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
