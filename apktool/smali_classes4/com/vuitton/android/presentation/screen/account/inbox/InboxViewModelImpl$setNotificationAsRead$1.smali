.class final Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$setNotificationAsRead$1;
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
    c = "com.vuitton.android.presentation.screen.account.inbox.InboxViewModelImpl$setNotificationAsRead$1"
    f = "InboxViewModelImpl.kt"
    l = {
        0xb3
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$setNotificationAsRead$1;->c:Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$setNotificationAsRead$1;->d:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$setNotificationAsRead$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$setNotificationAsRead$1;->c:Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$setNotificationAsRead$1;->d:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$setNotificationAsRead$1;-><init>(Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$setNotificationAsRead$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$setNotificationAsRead$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$setNotificationAsRead$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$setNotificationAsRead$1;->b:I

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$setNotificationAsRead$1;->d:Ljava/lang/String;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$setNotificationAsRead$1;->c:Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v4, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;->d:Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput v3, p0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$setNotificationAsRead$1;->b:I

    invoke-interface {p1, v2, p0}, Lcom/vuitton/android/presentation/push/NotificationsManager;->i(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-nez p1, :cond_5

    move-object p1, p0

    check-cast p1, Lkotlin/Unit;

    iget-object p1, v4, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;->n:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;

    iget-object v5, v3, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;->a:Ljava/lang/String;

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v7, v3, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;->a:Ljava/lang/String;

    iget-object v8, v3, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;->b:Ljava/lang/String;

    iget-object v9, v3, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;->c:Ljava/lang/String;

    iget-object v10, v3, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;->d:Ljava/lang/String;

    iget-object v11, v3, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;->e:Ljava/lang/String;

    iget-object v13, v3, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;->g:Ljava/util/Date;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;

    const/4 v12, 0x0

    invoke-direct/range {v6 .. v13}, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Date;)V

    move-object v3, v6

    :cond_3
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-interface {p1, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_5
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_6

    iget-object p1, v4, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;->c:Lcom/vuitton/foundation/logger/Logger;

    const-string v0, "InboxViewModelImpl"

    const-string v1, "Set notification as read failure"

    invoke-interface {p1, v0, v1, p0}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
