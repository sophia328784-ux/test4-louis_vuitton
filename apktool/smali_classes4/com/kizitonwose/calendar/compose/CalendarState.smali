.class public final Lcom/kizitonwose/calendar/compose/CalendarState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/gestures/ScrollableState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kizitonwose/calendar/compose/CalendarState$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u000eB;\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/kizitonwose/calendar/compose/CalendarState;",
        "Landroidx/compose/foundation/gestures/ScrollableState;",
        "Ljava/time/YearMonth;",
        "startMonth",
        "endMonth",
        "Ljava/time/DayOfWeek;",
        "firstDayOfWeek",
        "firstVisibleMonth",
        "Lcom/kizitonwose/calendar/core/OutDateStyle;",
        "outDateStyle",
        "Lcom/kizitonwose/calendar/compose/VisibleItemState;",
        "visibleItemState",
        "<init>",
        "(Ljava/time/YearMonth;Ljava/time/YearMonth;Ljava/time/DayOfWeek;Ljava/time/YearMonth;Lcom/kizitonwose/calendar/core/OutDateStyle;Lcom/kizitonwose/calendar/compose/VisibleItemState;)V",
        "Companion",
        "compose_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final k:Lcom/kizitonwose/calendar/compose/CalendarState$Companion;

.field public static final l:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;


# instance fields
.field public final a:Landroidx/compose/runtime/MutableState;

.field public final b:Landroidx/compose/runtime/MutableState;

.field public final c:Landroidx/compose/runtime/MutableState;

.field public final d:Landroidx/compose/runtime/MutableState;

.field public final e:Landroidx/compose/runtime/State;

.field public final f:Landroidx/compose/runtime/State;

.field public final g:Landroidx/compose/foundation/lazy/LazyListState;

.field public final h:Lcom/kizitonwose/calendar/compose/ItemPlacementInfo;

.field public final i:Landroidx/compose/runtime/MutableState;

.field public final j:Lcom/kizitonwose/calendar/data/DataStore;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/kizitonwose/calendar/compose/CalendarState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kizitonwose/calendar/compose/CalendarState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kizitonwose/calendar/compose/CalendarState;->k:Lcom/kizitonwose/calendar/compose/CalendarState$Companion;

    new-instance v0, Lt;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Lt;-><init>(I)V

    new-instance v1, Ljh;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljh;-><init>(I)V

    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/ListSaverKt;->a(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    move-result-object v0

    sput-object v0, Lcom/kizitonwose/calendar/compose/CalendarState;->l:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    return-void
.end method

.method public constructor <init>(Ljava/time/YearMonth;Ljava/time/YearMonth;Ljava/time/DayOfWeek;Ljava/time/YearMonth;Lcom/kizitonwose/calendar/core/OutDateStyle;Lcom/kizitonwose/calendar/compose/VisibleItemState;)V
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Lcom/kizitonwose/calendar/compose/CalendarState;->a:Landroidx/compose/runtime/MutableState;

    invoke-static {p2}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Lcom/kizitonwose/calendar/compose/CalendarState;->b:Landroidx/compose/runtime/MutableState;

    invoke-static {p3}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p2

    iput-object p2, p0, Lcom/kizitonwose/calendar/compose/CalendarState;->c:Landroidx/compose/runtime/MutableState;

    invoke-static {p5}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p3

    iput-object p3, p0, Lcom/kizitonwose/calendar/compose/CalendarState;->d:Landroidx/compose/runtime/MutableState;

    new-instance p5, Lci;

    const/4 v0, 0x0

    invoke-direct {p5, p0, v0}, Lci;-><init>(Lcom/kizitonwose/calendar/compose/CalendarState;I)V

    invoke-static {p5}, Landroidx/compose/runtime/SnapshotStateKt;->e(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object p5

    iput-object p5, p0, Lcom/kizitonwose/calendar/compose/CalendarState;->e:Landroidx/compose/runtime/State;

    new-instance p5, Lci;

    const/4 v1, 0x1

    invoke-direct {p5, p0, v1}, Lci;-><init>(Lcom/kizitonwose/calendar/compose/CalendarState;I)V

    invoke-static {p5}, Landroidx/compose/runtime/SnapshotStateKt;->e(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object p5

    iput-object p5, p0, Lcom/kizitonwose/calendar/compose/CalendarState;->f:Landroidx/compose/runtime/State;

    new-instance p5, Landroidx/compose/foundation/lazy/LazyListState;

    if-eqz p6, :cond_0

    iget p4, p6, Lcom/kizitonwose/calendar/compose/VisibleItemState;->b:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p4}, Lcom/kizitonwose/calendar/compose/CalendarState;->f(Ljava/time/YearMonth;)Ljava/lang/Integer;

    move-result-object p4

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    goto :goto_0

    :cond_1
    move p4, v0

    :goto_0
    if-eqz p6, :cond_2

    iget v0, p6, Lcom/kizitonwose/calendar/compose/VisibleItemState;->c:I

    :cond_2
    invoke-direct {p5, p4, v0}, Landroidx/compose/foundation/lazy/LazyListState;-><init>(II)V

    iput-object p5, p0, Lcom/kizitonwose/calendar/compose/CalendarState;->g:Landroidx/compose/foundation/lazy/LazyListState;

    new-instance p4, Lcom/kizitonwose/calendar/compose/ItemPlacementInfo;

    invoke-direct {p4}, Lcom/kizitonwose/calendar/compose/ItemPlacementInfo;-><init>()V

    iput-object p4, p0, Lcom/kizitonwose/calendar/compose/CalendarState;->h:Lcom/kizitonwose/calendar/compose/ItemPlacementInfo;

    new-instance v2, Lcom/kizitonwose/calendar/compose/CalendarInfo;

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/kizitonwose/calendar/compose/CalendarInfo;-><init>(ILjava/time/DayOfWeek;Lcom/kizitonwose/calendar/core/OutDateStyle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v2}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p4

    iput-object p4, p0, Lcom/kizitonwose/calendar/compose/CalendarState;->i:Landroidx/compose/runtime/MutableState;

    new-instance p5, Lcom/kizitonwose/calendar/data/DataStore;

    new-instance p6, Lc1;

    const/16 v0, 0x1a

    invoke-direct {p6, p0, v0}, Lc1;-><init>(Ljava/lang/Object;I)V

    const/4 v0, 0x0

    invoke-direct {p5, v0, p6, v1, v0}, Lcom/kizitonwose/calendar/data/DataStore;-><init>(Ljava/util/Map;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p5, p0, Lcom/kizitonwose/calendar/compose/CalendarState;->j:Lcom/kizitonwose/calendar/data/DataStore;

    invoke-virtual {p5}, Lcom/kizitonwose/calendar/data/DataStore;->clear()V

    invoke-virtual {p0}, Lcom/kizitonwose/calendar/compose/CalendarState;->g()Ljava/time/YearMonth;

    move-result-object p5

    move-object p6, p1

    check-cast p6, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p6}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/time/YearMonth;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6, p5}, Ljava/time/YearMonth;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_3

    new-instance p5, Lcom/kizitonwose/calendar/compose/CalendarInfo;

    invoke-virtual {p0}, Lcom/kizitonwose/calendar/compose/CalendarState;->g()Ljava/time/YearMonth;

    move-result-object p0

    check-cast p1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/time/YearMonth;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p6, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {p6, p0, p1}, Ljava/time/temporal/ChronoUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide p0

    long-to-int p0, p0

    add-int/2addr p0, v1

    check-cast p2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/time/DayOfWeek;

    check-cast p3, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kizitonwose/calendar/core/OutDateStyle;

    invoke-direct {p5, p0, p1, p2}, Lcom/kizitonwose/calendar/compose/CalendarInfo;-><init>(ILjava/time/DayOfWeek;Lcom/kizitonwose/calendar/core/OutDateStyle;)V

    check-cast p4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p4, p5}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    return-void

    :cond_3
    const-string p0, "start: "

    const-string p1, " is greater than end: "

    invoke-static {p0, p5, p1, p6}, Llc0;->o(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-object p0, p0, Lcom/kizitonwose/calendar/compose/CalendarState;->g:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->a()Z

    move-result p0

    return p0
.end method

.method public final b()Z
    .locals 0

    iget-object p0, p0, Lcom/kizitonwose/calendar/compose/CalendarState;->g:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->b()Z

    move-result p0

    return p0
.end method

.method public final c(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/kizitonwose/calendar/compose/CalendarState;->g:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/LazyListState;->c(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final d()Z
    .locals 0

    iget-object p0, p0, Lcom/kizitonwose/calendar/compose/CalendarState;->g:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->d()Z

    move-result p0

    return p0
.end method

.method public final e(F)F
    .locals 0

    iget-object p0, p0, Lcom/kizitonwose/calendar/compose/CalendarState;->g:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/LazyListState;->e(F)F

    move-result p0

    return p0
.end method

.method public final f(Ljava/time/YearMonth;)Ljava/lang/Integer;
    .locals 2

    invoke-virtual {p0}, Lcom/kizitonwose/calendar/compose/CalendarState;->g()Ljava/time/YearMonth;

    move-result-object v0

    iget-object v1, p0, Lcom/kizitonwose/calendar/compose/CalendarState;->b:Landroidx/compose/runtime/MutableState;

    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/YearMonth;

    invoke-virtual {p1, v1}, Ljava/time/YearMonth;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/time/YearMonth;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/kizitonwose/calendar/compose/CalendarState;->g()Ljava/time/YearMonth;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v0, p0, p1}, Ljava/time/temporal/ChronoUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide p0

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const/4 p0, 0x0

    return-object p0
.end method

.method public final g()Ljava/time/YearMonth;
    .locals 0

    iget-object p0, p0, Lcom/kizitonwose/calendar/compose/CalendarState;->a:Landroidx/compose/runtime/MutableState;

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/time/YearMonth;

    return-object p0
.end method
