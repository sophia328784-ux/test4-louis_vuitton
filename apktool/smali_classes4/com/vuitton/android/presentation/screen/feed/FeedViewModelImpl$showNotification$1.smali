.class final Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$showNotification$1;
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
    c = "com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$showNotification$1"
    f = "FeedViewModelImpl.kt"
    l = {
        0x3eb
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/feed/FeedNotification;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/feed/FeedNotification;Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$showNotification$1;->c:Lcom/vuitton/android/presentation/screen/feed/FeedNotification;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$showNotification$1;->d:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$showNotification$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$showNotification$1;->c:Lcom/vuitton/android/presentation/screen/feed/FeedNotification;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$showNotification$1;->d:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$showNotification$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedNotification;Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$showNotification$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$showNotification$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$showNotification$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$showNotification$1;->b:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$showNotification$1;->c:Lcom/vuitton/android/presentation/screen/feed/FeedNotification;

    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/feed/FeedNotification$CalendarAddingSuccess;

    const/4 v4, 0x2

    if-eqz v1, :cond_2

    new-instance v5, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v6, 0x7f1409fa

    invoke-direct {v5, v6, v3, v4, v3}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_0
    move-object v8, v5

    goto :goto_1

    :cond_2
    instance-of v5, p1, Lcom/vuitton/android/presentation/screen/feed/FeedNotification$CalendarAddingError;

    if-eqz v5, :cond_3

    new-instance v5, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v6, 0x7f1409f9

    invoke-direct {v5, v6, v3, v4, v3}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_3
    instance-of v5, p1, Lcom/vuitton/android/presentation/screen/feed/FeedNotification$CalendarRemoveSuccess;

    if-eqz v5, :cond_4

    new-instance v5, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v6, 0x7f1409fe

    invoke-direct {v5, v6, v3, v4, v3}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_4
    instance-of v5, p1, Lcom/vuitton/android/presentation/screen/feed/FeedNotification$CalendarRemoveError;

    if-eqz v5, :cond_5

    new-instance v5, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v6, 0x7f1409fd

    invoke-direct {v5, v6, v3, v4, v3}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_5
    instance-of v5, p1, Lcom/vuitton/android/presentation/screen/feed/FeedNotification$NotificationAlreadyEnabled;

    if-eqz v5, :cond_6

    new-instance v5, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v6, 0x7f141328

    invoke-direct {v5, v6, v3, v4, v3}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_6
    instance-of v5, p1, Lcom/vuitton/android/presentation/screen/feed/FeedNotification$ErrorGeneric;

    if-eqz v5, :cond_a

    new-instance v5, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v6, 0x7f140967

    invoke-direct {v5, v6, v3, v4, v3}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :goto_1
    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$showNotification$1;->d:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    iget-object v4, v3, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->U:Lkotlinx/coroutines/channels/BufferedChannel;

    iget-object v7, v3, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->h:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    if-nez v1, :cond_8

    instance-of p1, p1, Lcom/vuitton/android/presentation/screen/feed/FeedNotification$CalendarRemoveSuccess;

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    move v9, p1

    goto :goto_3

    :cond_8
    :goto_2
    move v9, v2

    :goto_3
    const/4 v11, 0x0

    const/16 v12, 0x3c

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object p1

    iput v2, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$showNotification$1;->b:I

    invoke-interface {v4, p1, p0}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_9

    return-object v0

    :cond_9
    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_a
    invoke-static {}, Lv40;->g()V

    return-object v3
.end method
