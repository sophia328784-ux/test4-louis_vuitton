.class public final synthetic Lci;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/kizitonwose/calendar/compose/CalendarState;


# direct methods
.method public synthetic constructor <init>(Lcom/kizitonwose/calendar/compose/CalendarState;I)V
    .locals 0

    iput p2, p0, Lci;->b:I

    iput-object p1, p0, Lci;->c:Lcom/kizitonwose/calendar/compose/CalendarState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lci;->b:I

    iget-object p0, p0, Lci;->c:Lcom/kizitonwose/calendar/compose/CalendarState;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/kizitonwose/calendar/compose/CalendarState;->j:Lcom/kizitonwose/calendar/data/DataStore;

    iget-object p0, p0, Lcom/kizitonwose/calendar/compose/CalendarState;->g:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->j()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->g()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->N(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getIndex()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/kizitonwose/calendar/data/DataStore;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/kizitonwose/calendar/core/CalendarMonth;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/kizitonwose/calendar/compose/CalendarState;->j:Lcom/kizitonwose/calendar/data/DataStore;

    iget-object p0, p0, Lcom/kizitonwose/calendar/compose/CalendarState;->g:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->h()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/kizitonwose/calendar/data/DataStore;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/kizitonwose/calendar/core/CalendarMonth;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
