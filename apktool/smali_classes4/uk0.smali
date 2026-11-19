.class public final synthetic Luk0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;

.field public final synthetic d:Lkotlin/jvm/functions/Function2;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    iput p5, p0, Luk0;->b:I

    iput-object p1, p0, Luk0;->c:Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;

    iput-object p2, p0, Luk0;->d:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Luk0;->e:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Luk0;->f:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget v0, p0, Luk0;->b:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    check-cast p1, Landroidx/compose/foundation/lazy/LazyListScope;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lzk0;

    const/4 v9, 0x1

    iget-object v5, p0, Luk0;->c:Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;

    iget-object v6, p0, Luk0;->d:Lkotlin/jvm/functions/Function2;

    iget-object v7, p0, Luk0;->e:Lkotlin/jvm/functions/Function1;

    iget-object v8, p0, Luk0;->f:Lkotlin/jvm/functions/Function0;

    invoke-direct/range {v4 .. v9}, Lzk0;-><init>(Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;I)V

    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v0, 0x7b20997

    invoke-direct {p0, v0, v2, v4}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {p1, v3, p0, v1}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lzk0;

    const/4 v9, 0x0

    iget-object v5, p0, Luk0;->c:Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;

    iget-object v6, p0, Luk0;->d:Lkotlin/jvm/functions/Function2;

    iget-object v7, p0, Luk0;->e:Lkotlin/jvm/functions/Function1;

    iget-object v8, p0, Luk0;->f:Lkotlin/jvm/functions/Function0;

    invoke-direct/range {v4 .. v9}, Lzk0;-><init>(Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;I)V

    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v0, -0x19f3196e

    invoke-direct {p0, v0, v2, v4}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {p1, v3, p0, v1}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
