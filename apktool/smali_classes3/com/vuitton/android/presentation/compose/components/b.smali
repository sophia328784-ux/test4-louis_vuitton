.class public final synthetic Lcom/vuitton/android/presentation/compose/components/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/time/YearMonth;

.field public final synthetic d:Ljava/time/YearMonth;

.field public final synthetic e:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic f:Lcom/kizitonwose/calendar/compose/CalendarState;


# direct methods
.method public synthetic constructor <init>(Ljava/time/YearMonth;Ljava/time/YearMonth;Lkotlinx/coroutines/CoroutineScope;Lcom/kizitonwose/calendar/compose/CalendarState;I)V
    .locals 0

    iput p5, p0, Lcom/vuitton/android/presentation/compose/components/b;->b:I

    iput-object p1, p0, Lcom/vuitton/android/presentation/compose/components/b;->c:Ljava/time/YearMonth;

    iput-object p2, p0, Lcom/vuitton/android/presentation/compose/components/b;->d:Ljava/time/YearMonth;

    iput-object p3, p0, Lcom/vuitton/android/presentation/compose/components/b;->e:Lkotlinx/coroutines/CoroutineScope;

    iput-object p4, p0, Lcom/vuitton/android/presentation/compose/components/b;->f:Lcom/kizitonwose/calendar/compose/CalendarState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lcom/vuitton/android/presentation/compose/components/b;->b:I

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/vuitton/android/presentation/compose/components/b;->f:Lcom/kizitonwose/calendar/compose/CalendarState;

    iget-object v3, p0, Lcom/vuitton/android/presentation/compose/components/b;->e:Lkotlinx/coroutines/CoroutineScope;

    iget-object v4, p0, Lcom/vuitton/android/presentation/compose/components/b;->d:Ljava/time/YearMonth;

    iget-object p0, p0, Lcom/vuitton/android/presentation/compose/components/b;->c:Ljava/time/YearMonth;

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/vuitton/android/presentation/compose/components/LVCalendarKt;->a:F

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/vuitton/android/presentation/compose/components/LVCalendarKt$LVCalendar$3$1$4$1$1;

    invoke-direct {v0, v2, p0, v5}, Lcom/vuitton/android/presentation/compose/components/LVCalendarKt$LVCalendar$3$1$4$1$1;-><init>(Lcom/kizitonwose/calendar/compose/CalendarState;Ljava/time/YearMonth;Lkotlin/coroutines/Continuation;)V

    invoke-static {v3, v5, v5, v0, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget v0, Lcom/vuitton/android/presentation/compose/components/LVCalendarKt;->a:F

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/vuitton/android/presentation/compose/components/LVCalendarKt$LVCalendar$3$1$3$1$1;

    invoke-direct {v0, v2, p0, v5}, Lcom/vuitton/android/presentation/compose/components/LVCalendarKt$LVCalendar$3$1$3$1$1;-><init>(Lcom/kizitonwose/calendar/compose/CalendarState;Ljava/time/YearMonth;Lkotlin/coroutines/Continuation;)V

    invoke-static {v3, v5, v5, v0, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
