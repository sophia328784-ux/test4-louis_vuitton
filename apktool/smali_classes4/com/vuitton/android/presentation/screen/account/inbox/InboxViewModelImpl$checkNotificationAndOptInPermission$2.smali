.class final Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$checkNotificationAndOptInPermission$2;
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
    c = "com.vuitton.android.presentation.screen.account.inbox.InboxViewModelImpl$checkNotificationAndOptInPermission$2"
    f = "InboxViewModelImpl.kt"
    l = {
        0x69
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;)V
    .locals 0

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$checkNotificationAndOptInPermission$2;->c:Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$checkNotificationAndOptInPermission$2;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$checkNotificationAndOptInPermission$2;->c:Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;

    invoke-direct {p1, p2, p0}, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$checkNotificationAndOptInPermission$2;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$checkNotificationAndOptInPermission$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$checkNotificationAndOptInPermission$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$checkNotificationAndOptInPermission$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$checkNotificationAndOptInPermission$2;->c:Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;->d:Lcom/vuitton/android/presentation/push/NotificationsManager;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$checkNotificationAndOptInPermission$2;->b:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    if-ne v3, v5, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/vuitton/android/presentation/push/NotificationsManager;->a()Z

    move-result p1

    if-nez p1, :cond_2

    iput v5, p0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$checkNotificationAndOptInPermission$2;->b:I

    invoke-interface {v1, p0}, Lcom/vuitton/android/presentation/push/NotificationsManager;->j(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_2

    return-object v2

    :cond_2
    :goto_0
    iget-object p0, v0, Landroidx/lifecycle/AndroidViewModel;->a:Landroid/app/Application;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p1, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;->t:I

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    new-instance v1, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$retrieveNotificationList$1;

    invoke-direct {v1, v0, p0, v4}, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$retrieveNotificationList$1;-><init>(Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v4, v4, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
