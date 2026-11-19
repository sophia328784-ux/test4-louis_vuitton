.class public final synthetic Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic e:Landroidx/compose/foundation/lazy/LazyListState;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/lazy/LazyListState;I)V
    .locals 0

    iput p4, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/b;->b:I

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/b;->c:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/b;->d:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/b;->e:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/b;->b:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/b;->e:Landroidx/compose/foundation/lazy/LazyListState;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/b;->d:Lkotlinx/coroutines/CoroutineScope;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/b;->c:Lkotlin/jvm/functions/Function1;

    check-cast p1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/Step;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormComponentKt$DistantRepairFormComponent$1$1$2$1$1$1;

    invoke-direct {p0, v3, v2}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormComponentKt$DistantRepairFormComponent$1$1$2$1$1$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Lkotlin/coroutines/Continuation;)V

    invoke-static {v4, v2, v2, p0, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormComponentKt$DistantRepairFormComponent$1$1$3$1$1$1;

    invoke-direct {p0, v3, v2}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormComponentKt$DistantRepairFormComponent$1$1$3$1$1$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Lkotlin/coroutines/Continuation;)V

    invoke-static {v4, v2, v2, p0, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
