.class public final synthetic Llx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Landroidx/compose/foundation/lazy/LazyListState;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(ZLandroidx/compose/foundation/lazy/LazyListState;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    iput p4, p0, Llx;->b:I

    iput-boolean p1, p0, Llx;->c:Z

    iput-object p2, p0, Llx;->d:Landroidx/compose/foundation/lazy/LazyListState;

    iput-object p3, p0, Llx;->e:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Llx;->b:I

    iget-object v1, p0, Llx;->e:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Llx;->d:Landroidx/compose/foundation/lazy/LazyListState;

    iget-boolean p0, p0, Llx;->c:Z

    check-cast p1, Ljava/lang/Boolean;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz p0, :cond_0

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/feed/components/FeedDiscoverSuccessScreenKt;->b(Landroidx/compose/foundation/lazy/LazyListState;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_0

    :cond_1
    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_0
    return-object p0

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz p0, :cond_2

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/feed/components/FeedDiscoverSuccessScreenKt;->b(Landroidx/compose/foundation/lazy/LazyListState;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_1

    :cond_3
    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
