.class final Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$onSavePreferencesClick$1;
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
    c = "com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesViewModelImpl$onSavePreferencesClick$1"
    f = "NotificationsPreferencesViewModelImpl.kt"
    l = {
        0xac,
        0xaf,
        0xb8
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:I

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$onSavePreferencesClick$1;->d:Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$onSavePreferencesClick$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$onSavePreferencesClick$1;->d:Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$onSavePreferencesClick$1;-><init>(Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$onSavePreferencesClick$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$onSavePreferencesClick$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$onSavePreferencesClick$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$onSavePreferencesClick$1;->d:Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->n:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$onSavePreferencesClick$1;->c:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v6, :cond_2

    if-eq v3, v5, :cond_1

    if-ne v3, v4, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->f:Lcom/vuitton/android/domain/usecase/account/notifications/GetNotificationsPreferencesUseCase;

    iget-object p1, p1, Lcom/vuitton/android/domain/usecase/account/notifications/GetNotificationsPreferencesUseCase;->a:Lcom/vuitton/android/domain/repository/NotificationsPreferencesRepository;

    invoke-interface {p1}, Lcom/vuitton/android/domain/repository/NotificationsPreferencesRepository;->c()Ljava/util/Map;

    move-result-object p1

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;->NOTIFY_ME:Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->c:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->BACK_IN_STOCK:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v3}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v3

    iput v6, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$onSavePreferencesClick$1;->c:I

    const/4 v6, 0x0

    invoke-virtual {p1, v3, v6, p0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_4

    goto :goto_2

    :cond_4
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->g:Lcom/vuitton/android/domain/usecase/pdp/backinstock/UnsubscribeBackInStockUseCase;

    iput v5, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$onSavePreferencesClick$1;->c:I

    invoke-virtual {p1, p0}, Lcom/vuitton/android/domain/usecase/pdp/backinstock/UnsubscribeBackInStockUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    sget-object v3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v3, p1, Lkotlin/Result$Failure;

    if-nez v3, :cond_6

    move-object v3, p1

    check-cast v3, Lkotlin/Unit;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;)V

    :cond_6
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_7

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->M()V

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->q:Lkotlinx/coroutines/channels/BufferedChannel;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->i:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    new-instance v6, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;

    const-string v0, "Error during unsubscribing."

    invoke-direct {v6, v0}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    const/16 v10, 0x3c

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object v0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$onSavePreferencesClick$1;->b:Ljava/lang/Object;

    iput v4, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl$onSavePreferencesClick$1;->c:I

    invoke-interface {v1, v0, p0}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_7

    :goto_2
    return-object v2

    :cond_7
    :goto_3
    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    goto :goto_4

    :cond_8
    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;)V

    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
