.class final Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$checkForSavedCalendarEvents$1;
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
    c = "com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$checkForSavedCalendarEvents$1"
    f = "FeedViewModelImpl.kt"
    l = {
        0x3f8
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/feed/models/CalendarEventData;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lcom/vuitton/android/presentation/screen/feed/models/CalendarEventData;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$checkForSavedCalendarEvents$1;->c:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$checkForSavedCalendarEvents$1;->d:Lcom/vuitton/android/presentation/screen/feed/models/CalendarEventData;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$checkForSavedCalendarEvents$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$checkForSavedCalendarEvents$1;->c:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$checkForSavedCalendarEvents$1;->d:Lcom/vuitton/android/presentation/screen/feed/models/CalendarEventData;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$checkForSavedCalendarEvents$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lcom/vuitton/android/presentation/screen/feed/models/CalendarEventData;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$checkForSavedCalendarEvents$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$checkForSavedCalendarEvents$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$checkForSavedCalendarEvents$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$checkForSavedCalendarEvents$1;->c:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->e:Lcom/vuitton/android/presentation/screen/feed/CalendarManager;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$checkForSavedCalendarEvents$1;->b:I

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$checkForSavedCalendarEvents$1;->d:Lcom/vuitton/android/presentation/screen/feed/models/CalendarEventData;

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    if-ne v4, v6, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    check-cast v0, Lkotlin/Result;

    iget-object v0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v6, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$checkForSavedCalendarEvents$1;->b:I

    invoke-virtual {v2, v5, v0}, Lcom/vuitton/android/presentation/screen/feed/CalendarManager;->b(Lcom/vuitton/android/presentation/screen/feed/models/CalendarEventData;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    move-result-object v0

    if-ne v0, v3, :cond_2

    return-object v3

    :cond_2
    :goto_0
    sget-object v3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v3, v0, Lkotlin/Result$Failure;

    if-nez v3, :cond_5

    move-object v9, v0

    check-cast v9, Ljava/lang/Long;

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->W:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_3
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v5, Lcom/vuitton/android/presentation/screen/feed/models/CalendarEventData;->c:Ljava/time/Instant;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual/range {v16 .. v16}, Ljava/time/LocalDateTime;->getYear()I

    move-result v11

    invoke-virtual/range {v16 .. v16}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v7

    add-int/lit8 v12, v7, -0x1

    invoke-virtual/range {v16 .. v16}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v13

    invoke-virtual/range {v16 .. v16}, Ljava/time/LocalDateTime;->getHour()I

    move-result v14

    invoke-virtual/range {v16 .. v16}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v15

    invoke-virtual/range {v10 .. v15}, Ljava/util/Calendar;->set(IIIII)V

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual/range {v16 .. v16}, Ljava/time/LocalDateTime;->getYear()I

    move-result v11

    invoke-virtual/range {v16 .. v16}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v12

    sub-int/2addr v12, v6

    invoke-virtual/range {v16 .. v16}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v13

    invoke-virtual/range {v16 .. v16}, Ljava/time/LocalDateTime;->getHour()I

    move-result v14

    add-int/2addr v14, v6

    invoke-virtual/range {v16 .. v16}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v15

    invoke-virtual/range {v10 .. v15}, Ljava/util/Calendar;->set(IIIII)V

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    iget-object v12, v2, Lcom/vuitton/android/presentation/screen/feed/CalendarManager;->b:Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;

    sget-object v13, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->EXPLORE:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v13}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v13

    move-wide v14, v7

    new-instance v7, Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;

    iget-object v8, v5, Lcom/vuitton/android/presentation/screen/feed/models/CalendarEventData;->a:Ljava/lang/String;

    move-wide/from16 v17, v10

    iget-object v11, v5, Lcom/vuitton/android/presentation/screen/feed/models/CalendarEventData;->b:Ljava/lang/String;

    const-string v10, "LOUIS VUITTON "

    invoke-static {v10, v11}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/16 v10, 0x5a0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v19, 0x3c

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    if-eqz v9, :cond_4

    move/from16 v20, v6

    goto :goto_1

    :cond_4
    const/16 v20, 0x0

    :goto_1
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v17, v20

    const/16 v20, 0x4

    const/16 v21, 0x0

    move-object/from16 v18, v14

    move-object v14, v10

    const/4 v10, 0x0

    move-object/from16 v22, v19

    move-object/from16 v19, v15

    move-object/from16 v15, v22

    invoke-direct/range {v7 .. v21}, Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/time/LocalDateTime;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v3, v4, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v2, Lcom/vuitton/android/presentation/screen/feed/FeedBottomSheet$CalendarEvent;->a:Lcom/vuitton/android/presentation/screen/feed/FeedBottomSheet$CalendarEvent;

    invoke-virtual {v1, v2}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->qa(Lcom/vuitton/android/presentation/screen/feed/FeedBottomSheet;)V

    :cond_5
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/vuitton/android/presentation/screen/feed/FeedNotification$ErrorGeneric;->a:Lcom/vuitton/android/presentation/screen/feed/FeedNotification$ErrorGeneric;

    invoke-virtual {v1, v0}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->Lc(Lcom/vuitton/android/presentation/screen/feed/FeedNotification;)V

    :cond_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
