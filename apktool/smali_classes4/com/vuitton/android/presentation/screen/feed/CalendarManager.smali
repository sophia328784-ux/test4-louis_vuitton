.class public final Lcom/vuitton/android/presentation/screen/feed/CalendarManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B1\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/feed/CalendarManager;",
        "",
        "Landroid/app/Application;",
        "application",
        "Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;",
        "passAppLogger",
        "Lcom/vuitton/android/domain/usecase/calendar/GetCalendarEventsUseCase;",
        "getCalendarEventsUseCase",
        "Lcom/vuitton/android/domain/usecase/calendar/RemoveCalendarEventUseCase;",
        "removeCalendarEventUseCase",
        "Lcom/vuitton/android/domain/usecase/calendar/UpdateCalendarEventsUseCase;",
        "updateCalendarEventsUseCase",
        "<init>",
        "(Landroid/app/Application;Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;Lcom/vuitton/android/domain/usecase/calendar/GetCalendarEventsUseCase;Lcom/vuitton/android/domain/usecase/calendar/RemoveCalendarEventUseCase;Lcom/vuitton/android/domain/usecase/calendar/UpdateCalendarEventsUseCase;)V",
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
.field public final a:Landroid/app/Application;

.field public final b:Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;

.field public final c:Lcom/vuitton/android/domain/usecase/calendar/GetCalendarEventsUseCase;

.field public final d:Lcom/vuitton/android/domain/usecase/calendar/RemoveCalendarEventUseCase;

.field public final e:Lcom/vuitton/android/domain/usecase/calendar/UpdateCalendarEventsUseCase;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;Lcom/vuitton/android/domain/usecase/calendar/GetCalendarEventsUseCase;Lcom/vuitton/android/domain/usecase/calendar/RemoveCalendarEventUseCase;Lcom/vuitton/android/domain/usecase/calendar/UpdateCalendarEventsUseCase;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/feed/CalendarManager;->a:Landroid/app/Application;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/feed/CalendarManager;->b:Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/feed/CalendarManager;->c:Lcom/vuitton/android/domain/usecase/calendar/GetCalendarEventsUseCase;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/feed/CalendarManager;->d:Lcom/vuitton/android/domain/usecase/calendar/RemoveCalendarEventUseCase;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/feed/CalendarManager;->e:Lcom/vuitton/android/domain/usecase/calendar/UpdateCalendarEventsUseCase;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p3, Lcom/vuitton/android/presentation/screen/feed/CalendarManager$addEventToCalendar$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/presentation/screen/feed/CalendarManager$addEventToCalendar$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/feed/CalendarManager$addEventToCalendar$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/feed/CalendarManager$addEventToCalendar$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/feed/CalendarManager$addEventToCalendar$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/presentation/screen/feed/CalendarManager$addEventToCalendar$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/CalendarManager;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/presentation/screen/feed/CalendarManager$addEventToCalendar$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/feed/CalendarManager$addEventToCalendar$1;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/vuitton/android/presentation/screen/feed/CalendarManager$addEventToCalendar$1;->b:Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/Result;

    iget-object p1, p3, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p3, p0, Lcom/vuitton/android/presentation/screen/feed/CalendarManager;->a:Landroid/app/Application;

    invoke-static {p1, p2, p3}, Lcom/vuitton/android/presentation/utils/CalendarUtilsKt;->a(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;Landroid/content/Context;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_4

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2, p1, p3}, Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;->a(Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;

    move-result-object p1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/CalendarManager;->e:Lcom/vuitton/android/domain/usecase/calendar/UpdateCalendarEventsUseCase;

    new-instance p2, Lcom/vuitton/foundation/model/domain/model/calendar/CalendarEvent;

    iget-object p3, p1, Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;->b:Ljava/lang/Long;

    iget-object v2, p1, Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;->a:Ljava/lang/String;

    iget-object v4, p1, Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;->c:Ljava/lang/String;

    invoke-direct {p2, p3, v2, v4}, Lcom/vuitton/foundation/model/domain/model/calendar/CalendarEvent;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/feed/CalendarManager$addEventToCalendar$1;->b:Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;

    iput v3, v0, Lcom/vuitton/android/presentation/screen/feed/CalendarManager$addEventToCalendar$1;->e:I

    invoke-virtual {p0, p2, v0}, Lcom/vuitton/android/domain/usecase/calendar/UpdateCalendarEventsUseCase;->a(Lcom/vuitton/foundation/model/domain/model/calendar/CalendarEvent;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v5, p1

    move-object p1, p0

    move-object p0, v5

    :goto_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    return-object p0

    :cond_4
    const-string p0, "Event ID is null"

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public final b(Lcom/vuitton/android/presentation/screen/feed/models/CalendarEventData;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/vuitton/android/presentation/screen/feed/CalendarManager$checkForSavedCalendarEventsAndGetEventId$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/screen/feed/CalendarManager$checkForSavedCalendarEventsAndGetEventId$1;

    iget v3, v2, Lcom/vuitton/android/presentation/screen/feed/CalendarManager$checkForSavedCalendarEventsAndGetEventId$1;->g:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/vuitton/android/presentation/screen/feed/CalendarManager$checkForSavedCalendarEventsAndGetEventId$1;->g:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/vuitton/android/presentation/screen/feed/CalendarManager$checkForSavedCalendarEventsAndGetEventId$1;

    invoke-direct {v2, v0, v1}, Lcom/vuitton/android/presentation/screen/feed/CalendarManager$checkForSavedCalendarEventsAndGetEventId$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/CalendarManager;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/feed/CalendarManager$checkForSavedCalendarEventsAndGetEventId$1;->e:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/vuitton/android/presentation/screen/feed/CalendarManager$checkForSavedCalendarEventsAndGetEventId$1;->g:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/Result;

    iget-object v0, v1, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v8

    :cond_2
    iget v0, v2, Lcom/vuitton/android/presentation/screen/feed/CalendarManager$checkForSavedCalendarEventsAndGetEventId$1;->d:I

    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/feed/CalendarManager$checkForSavedCalendarEventsAndGetEventId$1;->c:Lcom/vuitton/android/presentation/screen/feed/CalendarManager;

    iget-object v9, v2, Lcom/vuitton/android/presentation/screen/feed/CalendarManager$checkForSavedCalendarEventsAndGetEventId$1;->b:Lcom/vuitton/android/presentation/screen/feed/models/CalendarEventData;

    :try_start_1
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/Result;

    iget-object v1, v1, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v19, v1

    move v1, v0

    move-object v0, v4

    move-object v4, v9

    move-object/from16 v9, v19

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/feed/CalendarManager;->c:Lcom/vuitton/android/domain/usecase/calendar/GetCalendarEventsUseCase;

    move-object/from16 v4, p1

    iput-object v4, v2, Lcom/vuitton/android/presentation/screen/feed/CalendarManager$checkForSavedCalendarEventsAndGetEventId$1;->b:Lcom/vuitton/android/presentation/screen/feed/models/CalendarEventData;

    iput-object v0, v2, Lcom/vuitton/android/presentation/screen/feed/CalendarManager$checkForSavedCalendarEventsAndGetEventId$1;->c:Lcom/vuitton/android/presentation/screen/feed/CalendarManager;

    iput v7, v2, Lcom/vuitton/android/presentation/screen/feed/CalendarManager$checkForSavedCalendarEventsAndGetEventId$1;->d:I

    iput v6, v2, Lcom/vuitton/android/presentation/screen/feed/CalendarManager$checkForSavedCalendarEventsAndGetEventId$1;->g:I

    invoke-virtual {v1, v2}, Lcom/vuitton/android/domain/usecase/calendar/GetCalendarEventsUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_4

    goto/16 :goto_4

    :cond_4
    move-object v9, v1

    move v1, v7

    :goto_1
    invoke-static {v9}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v9, Ljava/util/List;

    invoke-static {v9}, Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModelKt;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;

    iget-object v11, v11, Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;->a:Ljava/lang/String;

    iget-object v12, v4, Lcom/vuitton/android/presentation/screen/feed/models/CalendarEventData;->a:Ljava/lang/String;

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    goto :goto_2

    :cond_6
    move-object v10, v8

    :goto_2
    check-cast v10, Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;

    if-eqz v10, :cond_8

    iget-object v4, v10, Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;->b:Ljava/lang/Long;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/feed/CalendarManager;->a:Landroid/app/Application;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_8

    :goto_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_7

    move v7, v6

    goto :goto_3

    :cond_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz v7, :cond_9

    iget-object v8, v10, Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;->b:Ljava/lang/Long;

    goto :goto_6

    :cond_9
    if-eqz v10, :cond_b

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/feed/CalendarManager;->d:Lcom/vuitton/android/domain/usecase/calendar/RemoveCalendarEventUseCase;

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/calendar/CalendarEvent;

    iget-object v6, v10, Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;->b:Ljava/lang/Long;

    iget-object v7, v10, Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;->a:Ljava/lang/String;

    iget-object v9, v10, Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;->c:Ljava/lang/String;

    invoke-direct {v4, v6, v7, v9}, Lcom/vuitton/foundation/model/domain/model/calendar/CalendarEvent;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, v2, Lcom/vuitton/android/presentation/screen/feed/CalendarManager$checkForSavedCalendarEventsAndGetEventId$1;->b:Lcom/vuitton/android/presentation/screen/feed/models/CalendarEventData;

    iput-object v8, v2, Lcom/vuitton/android/presentation/screen/feed/CalendarManager$checkForSavedCalendarEventsAndGetEventId$1;->c:Lcom/vuitton/android/presentation/screen/feed/CalendarManager;

    iput v1, v2, Lcom/vuitton/android/presentation/screen/feed/CalendarManager$checkForSavedCalendarEventsAndGetEventId$1;->d:I

    iput v5, v2, Lcom/vuitton/android/presentation/screen/feed/CalendarManager$checkForSavedCalendarEventsAndGetEventId$1;->g:I

    invoke-virtual {v0, v4, v2}, Lcom/vuitton/android/domain/usecase/calendar/RemoveCalendarEventUseCase;->a(Lcom/vuitton/foundation/model/domain/model/calendar/CalendarEvent;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_a

    :goto_4
    return-object v3

    :cond_a
    :goto_5
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    :cond_b
    :goto_6
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v8

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public final c(Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, Lcom/vuitton/android/presentation/screen/feed/CalendarManager$removeEventFromCalendar$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/presentation/screen/feed/CalendarManager$removeEventFromCalendar$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/feed/CalendarManager$removeEventFromCalendar$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/feed/CalendarManager$removeEventFromCalendar$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/feed/CalendarManager$removeEventFromCalendar$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/screen/feed/CalendarManager$removeEventFromCalendar$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/CalendarManager;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/presentation/screen/feed/CalendarManager$removeEventFromCalendar$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/feed/CalendarManager$removeEventFromCalendar$1;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/feed/CalendarManager$removeEventFromCalendar$1;->b:Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p2, p1, Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;->b:Ljava/lang/Long;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    new-instance p2, Ljava/lang/Long;

    invoke-direct {p2, v5, v6}, Ljava/lang/Long;-><init>(J)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/feed/CalendarManager;->a:Landroid/app/Application;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/vuitton/android/presentation/utils/CalendarUtilsKt;->b(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v6, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, p2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v2, v5, v6}, Lcom/vuitton/android/presentation/utils/CalendarUtilsKt;->d(Landroid/content/ContentResolver;J)V

    :cond_3
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/CalendarManager;->d:Lcom/vuitton/android/domain/usecase/calendar/RemoveCalendarEventUseCase;

    new-instance p2, Lcom/vuitton/foundation/model/domain/model/calendar/CalendarEvent;

    iget-object v2, p1, Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;->b:Ljava/lang/Long;

    iget-object v5, p1, Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;->a:Ljava/lang/String;

    iget-object v6, p1, Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;->c:Ljava/lang/String;

    invoke-direct {p2, v2, v5, v6}, Lcom/vuitton/foundation/model/domain/model/calendar/CalendarEvent;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/feed/CalendarManager$removeEventFromCalendar$1;->b:Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;

    iput v4, v0, Lcom/vuitton/android/presentation/screen/feed/CalendarManager$removeEventFromCalendar$1;->e:I

    invoke-virtual {p0, p2, v0}, Lcom/vuitton/android/domain/usecase/calendar/RemoveCalendarEventUseCase;->a(Lcom/vuitton/foundation/model/domain/model/calendar/CalendarEvent;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v3, p0}, Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;->a(Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;

    move-result-object p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    return-object p0

    :cond_5
    const-string p0, "Event ID is null"

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method
