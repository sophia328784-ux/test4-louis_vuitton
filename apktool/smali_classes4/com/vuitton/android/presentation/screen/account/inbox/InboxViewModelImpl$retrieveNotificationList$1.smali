.class final Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$retrieveNotificationList$1;
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
    c = "com.vuitton.android.presentation.screen.account.inbox.InboxViewModelImpl$retrieveNotificationList$1"
    f = "InboxViewModelImpl.kt"
    l = {
        0xa2
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;

.field public final synthetic d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$retrieveNotificationList$1;->c:Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$retrieveNotificationList$1;->d:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$retrieveNotificationList$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$retrieveNotificationList$1;->c:Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$retrieveNotificationList$1;->d:Landroid/content/Context;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$retrieveNotificationList$1;-><init>(Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$retrieveNotificationList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$retrieveNotificationList$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$retrieveNotificationList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$retrieveNotificationList$1;->c:Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;->k:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;->d:Lcom/vuitton/android/presentation/push/NotificationsManager;

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v6, v0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$retrieveNotificationList$1;->b:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_1

    if-ne v6, v8, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v5, p1

    check-cast v5, Lkotlin/Result;

    iget-object v5, v5, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iput v8, v0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$retrieveNotificationList$1;->b:I

    invoke-interface {v3, v0}, Lcom/vuitton/android/presentation/push/NotificationsManager;->d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v5, :cond_2

    return-object v5

    :cond_2
    move-object v5, v6

    :goto_0
    sget-object v6, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v6, v5, Lkotlin/Result$Failure;

    if-nez v6, :cond_7

    move-object v6, v5

    check-cast v6, Lkotlin/Unit;

    invoke-interface {v3}, Lcom/vuitton/android/presentation/push/NotificationsManager;->o()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v3, v8}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/batch/android/BatchInboxNotificationContent;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$retrieveNotificationList$1;->d:Landroid/content/Context;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;

    invoke-virtual {v8}, Lcom/batch/android/BatchInboxNotificationContent;->getNotificationIdentifier()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Lcom/batch/android/BatchInboxNotificationContent;->getTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8}, Lcom/batch/android/BatchInboxNotificationContent;->getBody()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_3

    const-string v13, ""

    :cond_3
    invoke-virtual {v8}, Lcom/batch/android/BatchInboxNotificationContent;->getPushPayload()Lcom/batch/android/BatchPushPayload;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Lcom/batch/android/BatchPushPayload;->hasBigPicture()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-virtual {v14, v9}, Lcom/batch/android/BatchPushPayload;->getBigPictureURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    move-object v14, v9

    goto :goto_2

    :cond_4
    move-object v14, v7

    :goto_2
    invoke-virtual {v8}, Lcom/batch/android/BatchInboxNotificationContent;->getPushPayload()Lcom/batch/android/BatchPushPayload;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Lcom/batch/android/BatchPushPayload;->hasDeeplink()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-virtual {v9}, Lcom/batch/android/BatchPushPayload;->getDeeplink()Ljava/lang/String;

    move-result-object v9

    move-object v15, v9

    goto :goto_3

    :cond_5
    move-object v15, v7

    :goto_3
    invoke-virtual {v8}, Lcom/batch/android/BatchInboxNotificationContent;->isUnread()Z

    move-result v16

    invoke-virtual {v8}, Lcom/batch/android/BatchInboxNotificationContent;->getDate()Ljava/util/Date;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct/range {v10 .. v17}, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Date;)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-interface {v4, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;->n:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;->f:Lcom/vuitton/android/domain/usecase/sharedPreferences/GetShowInboxLongPressTooltipUseCase;

    iget-object v0, v0, Lcom/vuitton/android/domain/usecase/sharedPreferences/GetShowInboxLongPressTooltipUseCase;->a:Lcom/vuitton/android/domain/repository/InboxRepository;

    invoke-interface {v0}, Lcom/vuitton/android/domain/repository/InboxRepository;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$tryShowLongPressTooltip$1;

    invoke-direct {v3, v7, v1}, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$tryShowLongPressTooltip$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;)V

    const/4 v1, 0x3

    invoke-static {v0, v7, v7, v3, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_7
    invoke-static {v5}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_8

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v4, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
