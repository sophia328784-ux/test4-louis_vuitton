.class public final synthetic Lcom/kizitonwose/calendar/compose/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/kizitonwose/calendar/compose/CalendarState;

.field public final synthetic c:Lcom/kizitonwose/calendar/compose/ContentHeightMode;

.field public final synthetic d:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic e:Lkotlin/jvm/functions/Function4;


# direct methods
.method public synthetic constructor <init>(Lcom/kizitonwose/calendar/compose/CalendarState;Lcom/kizitonwose/calendar/compose/ContentHeightMode;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kizitonwose/calendar/compose/a;->b:Lcom/kizitonwose/calendar/compose/CalendarState;

    iput-object p2, p0, Lcom/kizitonwose/calendar/compose/a;->c:Lcom/kizitonwose/calendar/compose/ContentHeightMode;

    iput-object p3, p0, Lcom/kizitonwose/calendar/compose/a;->d:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iput-object p4, p0, Lcom/kizitonwose/calendar/compose/a;->e:Lkotlin/jvm/functions/Function4;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/kizitonwose/calendar/compose/a;->b:Lcom/kizitonwose/calendar/compose/CalendarState;

    iget-object v1, p1, Lcom/kizitonwose/calendar/compose/CalendarState;->i:Landroidx/compose/runtime/MutableState;

    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kizitonwose/calendar/compose/CalendarInfo;

    iget v1, v1, Lcom/kizitonwose/calendar/compose/CalendarInfo;->a:I

    new-instance v2, Lcom/kizitonwose/calendar/compose/CalendarKt$Calendar$1$1$1;

    iget-object v4, p1, Lcom/kizitonwose/calendar/compose/CalendarState;->j:Lcom/kizitonwose/calendar/data/DataStore;

    const-string v7, "get(I)Ljava/lang/Object;"

    const/4 v8, 0x0

    const/4 v3, 0x1

    const-class v5, Lcom/kizitonwose/calendar/data/DataStore;

    const-string v6, "get"

    invoke-direct/range {v2 .. v8}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v3, Lcom/kizitonwose/calendar/compose/CalendarKt$Calendar$1$1$2;

    iget-object v5, p1, Lcom/kizitonwose/calendar/compose/CalendarState;->h:Lcom/kizitonwose/calendar/compose/ItemPlacementInfo;

    const-string v8, "onItemPlaced(Lcom/kizitonwose/calendar/compose/ItemCoordinates;)V"

    const/4 v9, 0x0

    const/4 v4, 0x1

    const-class v6, Lcom/kizitonwose/calendar/compose/ItemPlacementInfo;

    const-string v7, "onItemPlaced"

    invoke-direct/range {v3 .. v9}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/kizitonwose/calendar/compose/a;->c:Lcom/kizitonwose/calendar/compose/ContentHeightMode;

    iget-object v4, p0, Lcom/kizitonwose/calendar/compose/a;->d:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iget-object v5, p0, Lcom/kizitonwose/calendar/compose/a;->e:Lkotlin/jvm/functions/Function4;

    move-object v6, v3

    move-object v3, p1

    invoke-static/range {v0 .. v6}, Lcom/kizitonwose/calendar/compose/CalendarMonthsKt;->a(Landroidx/compose/foundation/lazy/LazyListScope;ILkotlin/jvm/functions/Function1;Lcom/kizitonwose/calendar/compose/ContentHeightMode;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function1;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
