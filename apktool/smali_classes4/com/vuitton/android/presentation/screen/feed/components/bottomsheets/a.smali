.class public final synthetic Lcom/vuitton/android/presentation/screen/feed/components/bottomsheets/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/feed/components/c;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/feed/components/c;

.field public final synthetic f:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;Lcom/vuitton/android/presentation/screen/feed/components/c;Lcom/vuitton/android/presentation/screen/feed/components/c;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/feed/components/bottomsheets/a;->b:Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/feed/components/bottomsheets/a;->c:Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/feed/components/bottomsheets/a;->d:Lcom/vuitton/android/presentation/screen/feed/components/c;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/feed/components/bottomsheets/a;->e:Lcom/vuitton/android/presentation/screen/feed/components/c;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/feed/components/bottomsheets/a;->f:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    move-object/from16 v11, p1

    check-cast v11, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/2addr v0, v3

    invoke-interface {v11, v0, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/feed/components/bottomsheets/a;->b:Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v1, v4

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_1

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v4, v1, :cond_2

    :cond_1
    new-instance v4, Lcom/vuitton/android/presentation/screen/feed/components/bottomsheets/CalendarEventBottomSheetContentKt$CalendarEventBottomSheetContent$1$1$1;

    const/4 v1, 0x0

    invoke-direct {v4, v3, v2, v1}, Lcom/vuitton/android/presentation/screen/feed/components/bottomsheets/CalendarEventBottomSheetContentKt$CalendarEventBottomSheetContent$1$1$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v0, v4}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v1, "CalendarEventBottomSheetContent$lambda$0"

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const-string v1, "feedBottomSheet_calendarEvent_view"

    invoke-static {v0, v1}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iget-object v9, v2, Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;->d:Ljava/lang/String;

    new-instance v1, Lp0;

    const/4 v8, 0x5

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/feed/components/bottomsheets/a;->c:Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/feed/components/bottomsheets/a;->d:Lcom/vuitton/android/presentation/screen/feed/components/c;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/feed/components/bottomsheets/a;->e:Lcom/vuitton/android/presentation/screen/feed/components/c;

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/feed/components/bottomsheets/a;->f:Lkotlin/jvm/functions/Function0;

    invoke-direct/range {v1 .. v8}, Lp0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const p0, 0x1e77a02

    invoke-static {p0, v1, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v10

    const/16 v13, 0x30

    const/16 v14, 0x7fa

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v9

    const/4 v9, 0x0

    const/4 v12, 0x0

    invoke-static/range {v0 .. v14}, Lcom/vuitton/android/designkit/components/components/LVCustomBottomSheetContentKt;->a(Landroidx/compose/ui/Modifier;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    goto :goto_1

    :cond_3
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
